@interface WiFiUsageLQMWindowAnalysisRoaming
+ (BOOL)isColocatedRoam:(id)a3;
+ (BOOL)isWNMRoam:(id)a3;
+ (id)bssSupportWithFlags:(id)a3;
- ($6E47B81FEB72AA1B248A20B58E3F028F)roamConfigCriteria;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamConfigChannels;
- (WiFiUsageLQMWindowAnalysisRoaming)initWithRollingWindow:(id)a3 WithRoamingState:(BOOL)a4 andReasonString:(id)a5 andStatus:(unint64_t)a6 asString:(id)a7 andLatency:(unint64_t)a8 andRoamData:(id)a9 andCurrentBSSSession:(id)a10 andContext:(context)a11 andPingPongStats:(id)a12 andTimestamp:(id)a13 onQueue:(id)a14;
- (id)addDimensionsTo:(id)a3;
- (void)setRoamConfigChannels:(id *)a3;
- (void)setRoamConfigCriteria:(id *)a3;
@end

@implementation WiFiUsageLQMWindowAnalysisRoaming

- (WiFiUsageLQMWindowAnalysisRoaming)initWithRollingWindow:(id)a3 WithRoamingState:(BOOL)a4 andReasonString:(id)a5 andStatus:(unint64_t)a6 asString:(id)a7 andLatency:(unint64_t)a8 andRoamData:(id)a9 andCurrentBSSSession:(id)a10 andContext:(context)a11 andPingPongStats:(id)a12 andTimestamp:(id)a13 onQueue:(id)a14
{
  v56 = a6;
  v17 = a5;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v21 = a12;
  v60.receiver = self;
  v60.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  v22 = [(WiFiUsageLQMWindowAnalysis *)&v60 initWithRollingWindow:a3 andReason:@"Roaming" andContext:*&a11.var0 & 0xFFFFFFLL andTimestamp:a13 onQueue:a14];
  v23 = v22;
  if (v22)
  {
    [(WiFiUsageLQMWindowAnalysisRoaming *)v22 setRoamingReason:v17];
    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamingStatus:v18];
    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setLatency:a8];
    v24 = [v19 objectForKey:@"ROAMEDEVENT_FLAGS"];
    v25 = v18;
    if ((v56 & 0x1FF) != 0)
    {
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamBssSupports:0];
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setIsWNMScoreRoam:0];
      v26 = 0;
    }

    else
    {
      [WiFiUsageLQMWindowAnalysisRoaming bssSupportWithFlags:v24];
      v28 = v27 = v19;
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamBssSupports:v28];

      v19 = v27;
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setIsWNMScoreRoam:[WiFiUsageLQMWindowAnalysisRoaming isWNMRoam:v24]];
      v26 = [WiFiUsageLQMWindowAnalysisRoaming isColocatedRoam:v24];
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setIsColocatedRoam:v26];
    if (v20)
    {
      -[WiFiUsageLQMWindowAnalysisRoaming setRoamConfigTriggerRssi:](v23, "setRoamConfigTriggerRssi:", [v20 roamConfigTriggerRssi]);
      [v20 roamConfigChannels];
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamConfigChannels:&v58];
      [v20 roamConfigCriteria];
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
    v29 = [v19 objectForKey:@"ROAMEDEVENT_ORIGIN_RSSI"];
    v51 = v29;
    if (v29)
    {
      v30 = [v29 integerValue];
    }

    else
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setOriginRssi:v30];
    v31 = [v19 objectForKey:@"ROAMEDEVENT_TARGET_RSSI"];
    v50 = v31;
    if (v31)
    {
      v32 = [v31 integerValue];
    }

    else
    {
      v32 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v55 = v17;
    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setTargetRssi:v32];
    v53 = v21;
    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setPingPongStats:v21];
    -[WiFiUsageLQMWindowAnalysisRoaming setRoamSuppressionEnabledPerc:](v23, "setRoamSuppressionEnabledPerc:", [v20 inRoamSuppressionEnabledDurationPerc]);
    -[WiFiUsageLQMWindowAnalysisRoaming setFirstRoamAfterRoamRecommLifted:](v23, "setFirstRoamAfterRoamRecommLifted:", [v20 roamsAfterSupprLifted] == 1);
    if (v23->_firstRoamAfterRoamRecommLifted)
    {
      [v20 lastRoamSuppressionWaitForRoamStart];
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamSuppressionWaitForRoamStart:?];
      [v20 lastRoamSuppressionWaitForRoamEnd];
      [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamSuppressionWaitForRoamEnd:?];
    }

    v33 = [v19 objectForKey:@"ROAM_SCAN_SUMMARY"];
    v57 = v19;
    v34 = [v19 objectForKey:@"ROAMEDEVENT_CHANNELS_SCANNED_COUNT"];
    v35 = [v33 objectForKey:@"ROAM_SCAN_DURATION"];
    v36 = [v33 objectForKey:@"ROAM_NUM_FULL_BAND_SCANS"];
    v37 = [v33 objectForKey:@"ROAM_NUM_PARTIAL_SCANS"];
    if (v34)
    {
      v38 = [v34 unsignedIntegerValue];
    }

    else
    {
      v38 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamScannedChannelCount:v38];
    if (v35)
    {
      v39 = [v35 unsignedIntegerValue];
    }

    else
    {
      v39 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setScanDuration:v39];
    if (v36)
    {
      v40 = [v36 unsignedIntegerValue];
    }

    else
    {
      v40 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamFullBandScanCount:v40];
    v52 = v25;
    v49 = v24;
    if (v37)
    {
      v41 = [v37 unsignedIntegerValue];
    }

    else
    {
      v41 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamPartialBandScanCount:v41];
    v42 = [v57 objectForKey:@"ROAM_PKT_LOSS_INFO"];
    v43 = [v42 objectForKey:@"ROAM_PKTS_PENDING_AQM"];
    v44 = [v42 objectForKey:@"ROAM_PKTS_PENDING_TXSUBQ"];
    if (v43)
    {
      v45 = [v43 unsignedIntegerValue];
    }

    else
    {
      v45 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamPktsPendingAqm:v45];
    if (v44)
    {
      v46 = [v44 unsignedIntegerValue];
    }

    else
    {
      v46 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(WiFiUsageLQMWindowAnalysisRoaming *)v23 setRoamPktsPendingTxSubQ:v46];
    v47 = v23;

    v17 = v55;
    v19 = v57;
    v18 = v52;
    v21 = v53;
  }

  return v23;
}

+ (BOOL)isColocatedRoam:(id)a3
{
  if (a3)
  {
    return ([a3 unsignedIntegerValue] >> 7) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)isWNMRoam:(id)a3
{
  if (a3)
  {
    return ([a3 unsignedIntegerValue] >> 6) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (id)bssSupportWithFlags:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = [v3 unsignedIntegerValue];
  v6 = v5;
  if (v5)
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

  else if ((v5 & 2) == 0)
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

- (id)addDimensionsTo:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v64 addDimensionsTo:v4];
  [v4 setObject:self->_roamingReason forKeyedSubscript:@"roamingReason"];
  [v4 setObject:self->_roamingStatus forKeyedSubscript:@"roamingStatus"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isWNMScoreRoam];
  [v4 setObject:v6 forKeyedSubscript:@"roamIsWNMScoreRoam"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isColocatedRoam];
  [v4 setObject:v7 forKeyedSubscript:@"roamIsColocatedRoam"];

  [v4 setObject:self->_roamBssSupports forKeyedSubscript:@"roamTargetBssSupports"];
  v8 = [WiFiUsageLQMTransformations numberForKeyPath:@"roamConfigTriggerRssi" ofObject:self];
  [v4 setObject:v8 forKeyedSubscript:@"roamConfigTriggerRssi"];

  v9 = *&self->_roamConfigChannels.valueByBand[2];
  v63[0] = *self->_roamConfigChannels.valueByBand;
  v63[1] = v9;
  v10 = [WiFiUsagePrivacyFilter getLabelForIntegerByBand:v63];
  [v4 setObject:v10 forKeyedSubscript:@"roamConfigChannelsByBand"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.isAllowed];
  [v4 setObject:v11 forKeyedSubscript:@"roamConfigIsARAllowed"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.forceApply];
  [v4 setObject:v12 forKeyedSubscript:@"roamConfigIsARForceApplied"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.deviceSupport];
  [v4 setObject:v13 forKeyedSubscript:@"roamConfigDeviceSupportsAR"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.isEAP];
  [v4 setObject:v14 forKeyedSubscript:@"roamConfigIsEAP"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.environment];
  [v4 setObject:v15 forKeyedSubscript:@"roamConfigEnv"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.networkOfInterestType];
  [v4 setObject:v16 forKeyedSubscript:@"roamConfigNetworkType"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.LOIType];
  [v4 setObject:v17 forKeyedSubscript:@"roamConfigARLOIType"];

  originRssi = self->_originRssi;
  if (originRssi == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setObject:0 forKeyedSubscript:@"roamOriginRssi"];
  }

  else
  {
    v19 = [WiFiUsageLQMTransformations getBinRssi:originRssi As:0];
    [v4 setObject:v19 forKeyedSubscript:@"roamOriginRssi"];
  }

  targetRssi = self->_targetRssi;
  if (targetRssi == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setObject:0 forKeyedSubscript:@"roamTargetRssi"];
  }

  else
  {
    v21 = [WiFiUsageLQMTransformations getBinRssi:targetRssi As:0];
    [v4 setObject:v21 forKeyedSubscript:@"roamTargetRssi"];
  }

  v62.receiver = self;
  v62.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  v22 = [(WiFiUsageLQMWindowAnalysis *)&v62 windowBeforeTrigger];
  v23 = [v22 samples];
  v24 = [v23 lastObject];
  v25 = [WiFiUsageLQMTransformations numberForKeyPath:@"driverRoamRecommended" ofObject:v24];
  [v4 setObject:v25 forKeyedSubscript:@"roamingRecommended"];

  v61.receiver = self;
  v61.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  v26 = [(WiFiUsageLQMWindowAnalysis *)&v61 windowBeforeTrigger];
  v27 = [v26 samples];
  v28 = [v27 lastObject];
  v29 = [WiFiUsageLQMTransformations numberForKeyPath:@"driverTDrecommended" ofObject:v28];
  [v4 setObject:v29 forKeyedSubscript:@"tdRecommended"];

  v60.receiver = self;
  v60.super_class = WiFiUsageLQMWindowAnalysisRoaming;
  v30 = [(WiFiUsageLQMWindowAnalysis *)&v60 windowBeforeTrigger];
  v31 = [v30 samples];
  v32 = [v31 lastObject];

  v33 = [WiFiUsageLQMTransformations numberForKeyPath:@"chanQualScore" ofObject:v32];
  [v4 setObject:v33 forKeyedSubscript:@"last_chanQualScore_before"];

  v34 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLatencyScore" ofObject:v32];
  [v4 setObject:v34 forKeyedSubscript:@"last_txLatencyScore_before"];

  v35 = [WiFiUsageLQMTransformations numberForKeyPath:@"rxLatencyScore" ofObject:v32];
  [v4 setObject:v35 forKeyedSubscript:@"last_rxLatencyScore_before"];

  v36 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLossScore" ofObject:v32];
  [v4 setObject:v36 forKeyedSubscript:@"last_txLossScore_before"];

  v37 = [WiFiUsageLQMTransformations numberForKeyPath:@"rxLossScore" ofObject:v32];
  [v4 setObject:v37 forKeyedSubscript:@"last_rxLossScore_before"];

  v38 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLatencyP95" ofObject:v32];
  v39 = v38;
  if (v38)
  {
    v40 = +[WiFiUsageLQMSample binLabelfromFieldName:value:](WiFiUsageLQMUserSample, "binLabelfromFieldName:value:", @"txLatencyP95", [v38 unsignedIntegerValue]);
    [v4 setObject:v40 forKeyedSubscript:@"last_txLatencyP95_before"];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:@"last_txLatencyP95_before"];
  }

  v41 = [WiFiUsageLQMTransformations numberForKeyPath:@"pingPongNth" ofObject:self->_pingPongStats];
  [v4 setObject:v41 forKeyedSubscript:@"roamPingPongNth"];

  v42 = [WiFiUsageLQMTransformations getLabelPingPongStats:self->_pingPongStats];
  [v4 setObject:v42 forKeyedSubscript:@"roamPingPongSequence"];

  v43 = [WiFiUsagePrivacyFilter getBinEvery10Over100:self->_roamSuppressionEnabledPerc As:0];
  [v4 setObject:v43 forKeyedSubscript:@"roamSuppressedEnabledPerc"];

  if (self->_firstRoamAfterRoamRecommLifted)
  {
    v44 = [WiFiUsageLQMTransformations getBinForRoamingLatency:(self->_roamSuppressionWaitForRoamStart * 1000.0) As:0];
    [v4 setObject:v44 forKeyedSubscript:@"roamSuppressionWaitForRoamStart"];

    v45 = [WiFiUsageLQMTransformations getBinForRoamingLatency:(self->_roamSuppressionWaitForRoamEnd * 1000.0) As:0];
    [v4 setObject:v45 forKeyedSubscript:@"roamSuppressionWaitForRoamEnd"];
  }

  latency = self->_latency;
  if (latency == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setObject:0 forKeyedSubscript:@"roamingLatencyms"];
  }

  else
  {
    v47 = [WiFiUsageLQMTransformations getBinForRoamingLatency:latency As:0];
    [v4 setObject:v47 forKeyedSubscript:@"roamingLatencyms"];
  }

  scanDuration = self->_scanDuration;
  if (scanDuration == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setObject:0 forKeyedSubscript:@"roamScanDuration"];
  }

  else
  {
    v49 = [WiFiUsageLQMTransformations getBinForRoamingLatency:scanDuration As:0];
    [v4 setObject:v49 forKeyedSubscript:@"roamScanDuration"];
  }

  v50 = [WiFiUsageLQMTransformations getBinScannedChannels:self->_roamScannedChannelCount As:0];
  [v4 setObject:v50 forKeyedSubscript:@"roamScannedChannelCountAsString"];

  v51 = [WiFiUsageLQMTransformations numberForKeyPath:@"roamFullBandScanCount" ofObject:self];
  v52 = [v51 description];
  [v4 setObject:v52 forKeyedSubscript:@"roamFullBandScanCount"];

  v53 = [WiFiUsageLQMTransformations numberForKeyPath:@"roamPartialBandScanCount" ofObject:self];
  v54 = [v53 description];
  [v4 setObject:v54 forKeyedSubscript:@"roamPartialBandScanCount"];

  roamPktsPendingAqm = self->_roamPktsPendingAqm;
  if (roamPktsPendingAqm == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setObject:0 forKeyedSubscript:@"roamPktsPendingAqm"];
  }

  else
  {
    v56 = [WiFiUsageLQMTransformations getBinFrames:roamPktsPendingAqm As:0];
    [v4 setObject:v56 forKeyedSubscript:@"roamPktsPendingAqm"];
  }

  roamPktsPendingTxSubQ = self->_roamPktsPendingTxSubQ;
  if (roamPktsPendingTxSubQ == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setObject:0 forKeyedSubscript:@"roamPktsPendingTxSubQ"];
  }

  else
  {
    v58 = [WiFiUsageLQMTransformations getBinFrames:roamPktsPendingTxSubQ As:0];
    [v4 setObject:v58 forKeyedSubscript:@"roamPktsPendingTxSubQ"];
  }

  return v4;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamConfigChannels
{
  v3 = *self[10].var0;
  *retstr->var0 = *&self[9].var0[2];
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setRoamConfigChannels:(id *)a3
{
  v3 = *&a3->var0[2];
  *self->_roamConfigChannels.valueByBand = *a3->var0;
  *&self->_roamConfigChannels.valueByBand[2] = v3;
}

- ($6E47B81FEB72AA1B248A20B58E3F028F)roamConfigCriteria
{
  v3 = *&self[11].var0;
  *&retstr->var0 = *&self[10].var5;
  *&retstr->var5 = v3;
  return self;
}

- (void)setRoamConfigCriteria:(id *)a3
{
  v3 = *&a3->var5;
  *&self->_roamConfigCriteria.isAllowed = *&a3->var0;
  *&self->_roamConfigCriteria.networkOfInterestType = v3;
}

@end