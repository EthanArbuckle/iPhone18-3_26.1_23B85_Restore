@interface WiFiUsageLQMWindowAnalysisRoaming
+ (BOOL)isColocatedRoam:(id)roam;
+ (BOOL)isWNMRoam:(id)roam;
+ (id)bssSupportWithFlags:(id)flags;
- ($6E47B81FEB72AA1B248A20B58E3F028F)roamConfigCriteria;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamConfigChannels;
- (WiFiUsageLQMWindowAnalysisRoaming)initWithRollingWindow:(id)window WithRoamingState:(BOOL)state andReasonString:(id)string andStatus:(unint64_t)status asString:(id)asString andLatency:(unint64_t)latency andRoamData:(id)data andCurrentBSSSession:(id)self0 andContext:(context)self1 andPingPongStats:(id)self2 andTimestamp:(id)self3 onQueue:(id)self4;
- (id)addDimensionsTo:(id)to;
- (void)setRoamConfigChannels:(id *)channels;
- (void)setRoamConfigCriteria:(id *)criteria;
@end

@implementation WiFiUsageLQMWindowAnalysisRoaming

- (WiFiUsageLQMWindowAnalysisRoaming)initWithRollingWindow:(id)window WithRoamingState:(BOOL)state andReasonString:(id)string andStatus:(unint64_t)status asString:(id)asString andLatency:(unint64_t)latency andRoamData:(id)data andCurrentBSSSession:(id)self0 andContext:(context)self1 andPingPongStats:(id)self2 andTimestamp:(id)self3 onQueue:(id)self4
{
  statusCopy = status;
  stringCopy = string;
  asStringCopy = asString;
  dataCopy = data;
  sessionCopy = session;
  statsCopy = stats;
  v60.receiver = self;
  v60.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  v22 = [(WiFiUsageLQMWindowAnalysis *)&v60 initWithRollingWindow:window andReason:@"Roaming" andContext:*&context.var0 & 0xFFFFFFLL andTimestamp:timestamp onQueue:queue];
  v23 = v22;
  if (v22)
  {
    [(WiFiUsageLQMWindowAnalysisRoaming *)v22 setRoamingReason:stringCopy];
    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamingStatus:asStringCopy];
    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setLatency:latency];
    v24 = [dataCopy objectForKey:@"ROAMEDEVENT_FLAGS"];
    v25 = asStringCopy;
    if ((statusCopy & 0x1FF) != 0)
    {
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamBssSupports:0];
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setIsWNMScoreRoam:0];
      v26 = 0;
    }

    else
    {
      [WiFiUsageLQMWindowAnalysisRoaming bssSupportWithFlags:v24];
      v28 = v27 = dataCopy;
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamBssSupports:v28];

      dataCopy = v27;
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setIsWNMScoreRoam:[WiFiUsageLQMWindowAnalysisRoaming isWNMRoam:v24]];
      v26 = [WiFiUsageLQMWindowAnalysisRoaming isColocatedRoam:v24];
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setIsColocatedRoam:v26];
    if (sessionCopy)
    {
      -[WiFiUsageLQMWindowAnalysisRoaming setRoamConfigTriggerRssi:](v23, "setRoamConfigTriggerRssi:", [sessionCopy roamConfigTriggerRssi]);
      [sessionCopy roamConfigChannels];
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamConfigChannels:&v58];
      [sessionCopy roamConfigCriteria];
    }

    else
    {
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamConfigTriggerRssi:0x7FFFFFFFFFFFFFFFLL];
      v58 = 0u;
      v59 = 0u;
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamConfigChannels:&v58];
      v58 = 0u;
      v59 = 0u;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamConfigCriteria:&v58];
    v29 = [dataCopy objectForKey:@"ROAMEDEVENT_ORIGIN_RSSI"];
    v51 = v29;
    if (v29)
    {
      integerValue = [v29 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setOriginRssi:integerValue];
    v31 = [dataCopy objectForKey:@"ROAMEDEVENT_TARGET_RSSI"];
    v50 = v31;
    if (v31)
    {
      integerValue2 = [v31 integerValue];
    }

    else
    {
      integerValue2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v55 = stringCopy;
    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setTargetRssi:integerValue2];
    v53 = statsCopy;
    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setPingPongStats:statsCopy];
    -[WiFiUsageLQMWindowAnalysisRoaming setRoamSuppressionEnabledPerc:](v23, "setRoamSuppressionEnabledPerc:", [sessionCopy inRoamSuppressionEnabledDurationPerc]);
    -[WiFiUsageLQMWindowAnalysisRoaming setFirstRoamAfterRoamRecommLifted:](v23, "setFirstRoamAfterRoamRecommLifted:", [sessionCopy roamsAfterSupprLifted] == 1);
    if (v23->_firstRoamAfterRoamRecommLifted)
    {
      [sessionCopy lastRoamSuppressionWaitForRoamStart];
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamSuppressionWaitForRoamStart:?];
      [sessionCopy lastRoamSuppressionWaitForRoamEnd];
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamSuppressionWaitForRoamEnd:?];
    }

    v33 = [dataCopy objectForKey:@"ROAM_SCAN_SUMMARY"];
    v57 = dataCopy;
    v34 = [dataCopy objectForKey:@"ROAMEDEVENT_CHANNELS_SCANNED_COUNT"];
    v35 = [v33 objectForKey:@"ROAM_SCAN_DURATION"];
    v36 = [v33 objectForKey:@"ROAM_NUM_FULL_BAND_SCANS"];
    v37 = [v33 objectForKey:@"ROAM_NUM_PARTIAL_SCANS"];
    if (v34)
    {
      unsignedIntegerValue = [v34 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamScannedChannelCount:unsignedIntegerValue];
    if (v35)
    {
      unsignedIntegerValue2 = [v35 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setScanDuration:unsignedIntegerValue2];
    if (v36)
    {
      unsignedIntegerValue3 = [v36 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamFullBandScanCount:unsignedIntegerValue3];
    v52 = v25;
    v49 = v24;
    if (v37)
    {
      unsignedIntegerValue4 = [v37 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamPartialBandScanCount:unsignedIntegerValue4];
    v42 = [v57 objectForKey:@"ROAM_PKT_LOSS_INFO"];
    v43 = [v42 objectForKey:@"ROAM_PKTS_PENDING_AQM"];
    v44 = [v42 objectForKey:@"ROAM_PKTS_PENDING_TXSUBQ"];
    if (v43)
    {
      unsignedIntegerValue5 = [v43 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamPktsPendingAqm:unsignedIntegerValue5];
    if (v44)
    {
      unsignedIntegerValue6 = [v44 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamPktsPendingTxSubQ:unsignedIntegerValue6];
    v47 = v23;

    stringCopy = v55;
    dataCopy = v57;
    asStringCopy = v52;
    statsCopy = v53;
  }

  return v23;
}

+ (BOOL)isColocatedRoam:(id)roam
{
  if (roam)
  {
    return ([roam unsignedIntegerValue] >> 7) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)isWNMRoam:(id)roam
{
  if (roam)
  {
    return ([roam unsignedIntegerValue] >> 6) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (id)bssSupportWithFlags:(id)flags
{
  flagsCopy = flags;
  v4 = objc_opt_new();
  if (!flagsCopy)
  {
    goto LABEL_9;
  }

  unsignedIntegerValue = [flagsCopy unsignedIntegerValue];
  v6 = unsignedIntegerValue;
  if (unsignedIntegerValue)
  {
    [v4 appendString:@"NR&"];
    if ((v6 & 2) == 0)
    {
LABEL_4:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((unsignedIntegerValue & 2) == 0)
  {
    goto LABEL_4;
  }

  [v4 appendString:@"FT&"];
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    [v4 appendString:@"adaptiveFBT&"];
    if ((v6 & 0x10) == 0)
    {
LABEL_7:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  [v4 appendString:@"BTM&"];
  if ((v6 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  [v4 appendString:@"fastlane&"];
  if ((v6 & 0x20) != 0)
  {
LABEL_8:
    [v4 appendString:@"ntwAssurance&"];
  }

LABEL_9:
  v7 = [MEMORY[0x277CCACA8] stringWithString:v4];

  return v7;
}

- (id)addDimensionsTo:(id)to
{
  toCopy = to;
  v64.receiver = self;
  v64.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v64 addDimensionsTo:toCopy];
  [toCopy setObject:self->_roamingReason forKeyedSubscript:@"roamingReason"];
  [toCopy setObject:self->_roamingStatus forKeyedSubscript:@"roamingStatus"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isWNMScoreRoam];
  [toCopy setObject:v6 forKeyedSubscript:@"roamIsWNMScoreRoam"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isColocatedRoam];
  [toCopy setObject:v7 forKeyedSubscript:@"roamIsColocatedRoam"];

  [toCopy setObject:self->_roamBssSupports forKeyedSubscript:@"roamTargetBssSupports"];
  v8 = [WiFiUsageLQMTransformations numberForKeyPath:@"roamConfigTriggerRssi" ofObject:self];
  [toCopy setObject:v8 forKeyedSubscript:@"roamConfigTriggerRssi"];

  v9 = *&self->_roamConfigChannels.valueByBand[2];
  v63[0] = *self->_roamConfigChannels.valueByBand;
  v63[1] = v9;
  v10 = [WiFiUsagePrivacyFilter getLabelForIntegerByBand:v63];
  [toCopy setObject:v10 forKeyedSubscript:@"roamConfigChannelsByBand"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.isAllowed];
  [toCopy setObject:v11 forKeyedSubscript:@"roamConfigIsARAllowed"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.forceApply];
  [toCopy setObject:v12 forKeyedSubscript:@"roamConfigIsARForceApplied"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.deviceSupport];
  [toCopy setObject:v13 forKeyedSubscript:@"roamConfigDeviceSupportsAR"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.isEAP];
  [toCopy setObject:v14 forKeyedSubscript:@"roamConfigIsEAP"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.environment];
  [toCopy setObject:v15 forKeyedSubscript:@"roamConfigEnv"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.networkOfInterestType];
  [toCopy setObject:v16 forKeyedSubscript:@"roamConfigNetworkType"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.LOIType];
  [toCopy setObject:v17 forKeyedSubscript:@"roamConfigARLOIType"];

  originRssi = self->_originRssi;
  if (originRssi == 0x7FFFFFFFFFFFFFFFLL)
  {
    [toCopy setObject:0 forKeyedSubscript:@"roamOriginRssi"];
  }

  else
  {
    v19 = [WiFiUsageLQMTransformations getBinRssi:originRssi As:0];
    [toCopy setObject:v19 forKeyedSubscript:@"roamOriginRssi"];
  }

  targetRssi = self->_targetRssi;
  if (targetRssi == 0x7FFFFFFFFFFFFFFFLL)
  {
    [toCopy setObject:0 forKeyedSubscript:@"roamTargetRssi"];
  }

  else
  {
    v21 = [WiFiUsageLQMTransformations getBinRssi:targetRssi As:0];
    [toCopy setObject:v21 forKeyedSubscript:@"roamTargetRssi"];
  }

  v62.receiver = self;
  v62.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  windowBeforeTrigger = [(WiFiUsageLQMWindowAnalysis *)&v62 windowBeforeTrigger];
  samples = [windowBeforeTrigger samples];
  lastObject = [samples lastObject];
  v25 = [WiFiUsageLQMTransformations numberForKeyPath:@"driverRoamRecommended" ofObject:lastObject];
  [toCopy setObject:v25 forKeyedSubscript:@"roamingRecommended"];

  v61.receiver = self;
  v61.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  windowBeforeTrigger2 = [(WiFiUsageLQMWindowAnalysis *)&v61 windowBeforeTrigger];
  samples2 = [windowBeforeTrigger2 samples];
  lastObject2 = [samples2 lastObject];
  v29 = [WiFiUsageLQMTransformations numberForKeyPath:@"driverTDrecommended" ofObject:lastObject2];
  [toCopy setObject:v29 forKeyedSubscript:@"tdRecommended"];

  v60.receiver = self;
  v60.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  windowBeforeTrigger3 = [(WiFiUsageLQMWindowAnalysis *)&v60 windowBeforeTrigger];
  samples3 = [windowBeforeTrigger3 samples];
  lastObject3 = [samples3 lastObject];

  v33 = [WiFiUsageLQMTransformations numberForKeyPath:@"chanQualScore" ofObject:lastObject3];
  [toCopy setObject:v33 forKeyedSubscript:@"last_chanQualScore_before"];

  v34 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLatencyScore" ofObject:lastObject3];
  [toCopy setObject:v34 forKeyedSubscript:@"last_txLatencyScore_before"];

  v35 = [WiFiUsageLQMTransformations numberForKeyPath:@"rxLatencyScore" ofObject:lastObject3];
  [toCopy setObject:v35 forKeyedSubscript:@"last_rxLatencyScore_before"];

  v36 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLossScore" ofObject:lastObject3];
  [toCopy setObject:v36 forKeyedSubscript:@"last_txLossScore_before"];

  v37 = [WiFiUsageLQMTransformations numberForKeyPath:@"rxLossScore" ofObject:lastObject3];
  [toCopy setObject:v37 forKeyedSubscript:@"last_rxLossScore_before"];

  v38 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLatencyP95" ofObject:lastObject3];
  v39 = v38;
  if (v38)
  {
    v40 = +[WiFiUsageLQMSample binLabelfromFieldName:value:](WiFiUsageLQMUserSample, "binLabelfromFieldName:value:", @"txLatencyP95", [v38 unsignedIntegerValue]);
    [toCopy setObject:v40 forKeyedSubscript:@"last_txLatencyP95_before"];
  }

  else
  {
    [toCopy setObject:0 forKeyedSubscript:@"last_txLatencyP95_before"];
  }

  v41 = [WiFiUsageLQMTransformations numberForKeyPath:@"pingPongNth" ofObject:self->_pingPongStats];
  [toCopy setObject:v41 forKeyedSubscript:@"roamPingPongNth"];

  v42 = [WiFiUsageLQMTransformations getLabelPingPongStats:self->_pingPongStats];
  [toCopy setObject:v42 forKeyedSubscript:@"roamPingPongSequence"];

  v43 = [WiFiUsagePrivacyFilter getBinEvery10Over100:self->_roamSuppressionEnabledPerc As:0];
  [toCopy setObject:v43 forKeyedSubscript:@"roamSuppressedEnabledPerc"];

  if (self->_firstRoamAfterRoamRecommLifted)
  {
    v44 = [WiFiUsageLQMTransformations getBinForRoamingLatency:(self->_roamSuppressionWaitForRoamStart * 1000.0) As:0];
    [toCopy setObject:v44 forKeyedSubscript:@"roamSuppressionWaitForRoamStart"];

    v45 = [WiFiUsageLQMTransformations getBinForRoamingLatency:(self->_roamSuppressionWaitForRoamEnd * 1000.0) As:0];
    [toCopy setObject:v45 forKeyedSubscript:@"roamSuppressionWaitForRoamEnd"];
  }

  latency = self->_latency;
  if (latency == 0x7FFFFFFFFFFFFFFFLL)
  {
    [toCopy setObject:0 forKeyedSubscript:@"roamingLatencyms"];
  }

  else
  {
    v47 = [WiFiUsageLQMTransformations getBinForRoamingLatency:latency As:0];
    [toCopy setObject:v47 forKeyedSubscript:@"roamingLatencyms"];
  }

  scanDuration = self->_scanDuration;
  if (scanDuration == 0x7FFFFFFFFFFFFFFFLL)
  {
    [toCopy setObject:0 forKeyedSubscript:@"roamScanDuration"];
  }

  else
  {
    v49 = [WiFiUsageLQMTransformations getBinForRoamingLatency:scanDuration As:0];
    [toCopy setObject:v49 forKeyedSubscript:@"roamScanDuration"];
  }

  v50 = [WiFiUsageLQMTransformations getBinScannedChannels:self->_roamScannedChannelCount As:0];
  [toCopy setObject:v50 forKeyedSubscript:@"roamScannedChannelCountAsString"];

  v51 = [WiFiUsageLQMTransformations numberForKeyPath:@"roamFullBandScanCount" ofObject:self];
  v52 = [v51 description];
  [toCopy setObject:v52 forKeyedSubscript:@"roamFullBandScanCount"];

  v53 = [WiFiUsageLQMTransformations numberForKeyPath:@"roamPartialBandScanCount" ofObject:self];
  v54 = [v53 description];
  [toCopy setObject:v54 forKeyedSubscript:@"roamPartialBandScanCount"];

  roamPktsPendingAqm = self->_roamPktsPendingAqm;
  if (roamPktsPendingAqm == 0x7FFFFFFFFFFFFFFFLL)
  {
    [toCopy setObject:0 forKeyedSubscript:@"roamPktsPendingAqm"];
  }

  else
  {
    v56 = [WiFiUsageLQMTransformations getBinFrames:roamPktsPendingAqm As:0];
    [toCopy setObject:v56 forKeyedSubscript:@"roamPktsPendingAqm"];
  }

  roamPktsPendingTxSubQ = self->_roamPktsPendingTxSubQ;
  if (roamPktsPendingTxSubQ == 0x7FFFFFFFFFFFFFFFLL)
  {
    [toCopy setObject:0 forKeyedSubscript:@"roamPktsPendingTxSubQ"];
  }

  else
  {
    v58 = [WiFiUsageLQMTransformations getBinFrames:roamPktsPendingTxSubQ As:0];
    [toCopy setObject:v58 forKeyedSubscript:@"roamPktsPendingTxSubQ"];
  }

  return toCopy;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamConfigChannels
{
  v3 = *self[10].var0;
  *retstr->var0 = *&self[9].var0[2];
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setRoamConfigChannels:(id *)channels
{
  v3 = *&channels->var0[2];
  *self->_roamConfigChannels.valueByBand = *channels->var0;
  *&self->_roamConfigChannels.valueByBand[2] = v3;
}

- ($6E47B81FEB72AA1B248A20B58E3F028F)roamConfigCriteria
{
  v3 = *&self[11].var0;
  *&retstr->var0 = *&self[10].var5;
  *&retstr->var5 = v3;
  return self;
}

- (void)setRoamConfigCriteria:(id *)criteria
{
  v3 = *&criteria->var5;
  *&self->_roamConfigCriteria.isAllowed = *&criteria->var0;
  *&self->_roamConfigCriteria.networkOfInterestType = v3;
}

@end