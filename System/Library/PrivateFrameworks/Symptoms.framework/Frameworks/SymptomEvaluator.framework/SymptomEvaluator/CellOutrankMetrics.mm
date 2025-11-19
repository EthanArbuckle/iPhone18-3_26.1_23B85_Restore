@interface CellOutrankMetrics
- (CellOutrankMetrics)initWithQueue:(id)a3;
- (id)_dailyOutrankMetricDictionary;
- (id)_outrankMetricForNew:(id)a3 old:(id)a4 withDelayedItems:(BOOL)a5;
- (id)getState:(BOOL)a3;
- (void)_captureOutrankEntryAdditionalState:(id)a3 flags:(unint64_t)a4;
- (void)_resetDailyTelemetryMetrics;
- (void)_sendDailyOutrankMetric;
- (void)_sendOutrankMetricNew:(id)a3 old:(id)a4 withDelayedItems:(BOOL)a5;
- (void)_setupDailyTelemetryTimer;
- (void)_updateStateDeltas:(id)a3 duration:(double)a4;
- (void)_updateStateTransitionMetricsForNewState:(unsigned int)a3 oldState:(unsigned int)a4;
- (void)didSampleFlows;
- (void)reportABCCase:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)updateMetricsForState:(id)a3;
- (void)updateOutrankExitMetrics:(id)a3;
@end

@implementation CellOutrankMetrics

- (void)didSampleFlows
{
  outrankPollingMode = self->_outrankPollingMode;
  if (outrankPollingMode == 2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v6 - self->_sampledTallyTimestamp <= 2.0 || v6 - self->_outrankEntryTimestamp <= self->_delayedMeasurementInterval)
    {
      v12 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "COSM Metrics didSampleFlows insufficient elapsed time for second sample", v13, 2u);
      }
    }

    else
    {
      v7 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "COSM Metrics didSampleFlows handle second sample", v14, 2u);
      }

      v8 = [(NSMutableArray *)self->_stateHistory count];
      v9 = v8 - 2;
      if (v8 >= 2)
      {
        v10 = [(NSMutableArray *)self->_stateHistory objectAtIndexedSubscript:v8 - 1];
        v11 = [(NSMutableArray *)self->_stateHistory objectAtIndexedSubscript:v9];
        [(CellOutrankMetrics *)self _logMetricDictionaryForNew:v10 old:v11 withDelayedItems:1 why:@"didSampleFlows"];
        [(CellOutrankMetrics *)self _sendOutrankMetricNew:v10 old:v11 withDelayedItems:1];
      }

      self->_outrankPollingMode = 0;
    }
  }

  else if (outrankPollingMode == 1)
  {
    v4 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "COSM Metrics didSampleFlows handle first sample", buf, 2u);
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_sampledTallyTimestamp = v5;
    self->_sampledCellGrandTally = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
    self->_sampledWifiGrandTally = [TrackedFlow wifiNonLocalUsageGrandTallyAfterAdding:0];
    self->_outrankPollingMode = 2;
  }
}

- (id)_outrankMetricForNew:(id)a3 old:(id)a4 withDelayedItems:(BOOL)a5
{
  v5 = a5;
  v102 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[COSMStateSummary primaryReasonFromFlags:state:](COSMStateSummary, "primaryReasonFromFlags:state:", [v8 reasonFlags], objc_msgSend(v8, "cosmState"));
  v11 = +[COSMStateSummary primaryReasonFromFlags:state:](COSMStateSummary, "primaryReasonFromFlags:state:", [v9 reasonFlags], objc_msgSend(v9, "cosmState"));
  v12 = v11;
  if (v10 == -1 || v11 == -1)
  {
    v14 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      *buf = 67109888;
      *v93 = v10;
      *&v93[4] = 1024;
      *&v93[6] = [v8 cosmState];
      LOWORD(v94) = 1024;
      *(&v94 + 2) = v12;
      HIWORD(v94) = 1024;
      *v95 = [v9 cosmState];
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "COSM Metrics primary reason error. Former %d state %d current %d state %d", buf, 0x1Au);
    }

    v16 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = +[COSMStateSummary summaryFromFlags:](COSMStateSummary, "summaryFromFlags:", [v8 reasonFlags]);
      *buf = 138412290;
      *v93 = v18;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "COSM Metrics new flags %@", buf, 0xCu);
    }

    v19 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = +[COSMStateSummary summaryFromFlags:](COSMStateSummary, "summaryFromFlags:", [v9 reasonFlags]);
      *buf = 138412290;
      *v93 = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "COSM Metrics old flags %@", buf, 0xCu);
    }

    v22 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v93 = v8;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "COSM Metrics new items %{public}@", buf, 0xCu);
    }

    v23 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v93 = v9;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "COSM Metrics old items %{public}@", buf, 0xCu);
    }

    [(CellOutrankMetrics *)self reportABCCase:@"SIS primary reason error"];
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "cellularBandwidth")}];
  [v24 setObject:v25 forKeyedSubscript:@"cellularBandwidth"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "cellularExpensive")}];
  [v24 setObject:v26 forKeyedSubscript:@"cellularExpensive"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "cellularNRFrequencyBand")}];
  [v24 setObject:v27 forKeyedSubscript:@"cellularNRFrequencyBand"];

  v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "cellularRAT")}];
  [v24 setObject:v28 forKeyedSubscript:@"cellularRAT"];

  v29 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "cellularRSRP")}];
  [v24 setObject:v29 forKeyedSubscript:@"cellularRSRP"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "cellularWRMExpensive")}];
  [v24 setObject:v30 forKeyedSubscript:@"cellularWRMExpensive"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "cosmState")}];
  [v24 setObject:v31 forKeyedSubscript:@"cosmCurrentState"];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  [v24 setObject:v32 forKeyedSubscript:@"cosmCurrentStateEntryPrimaryReason"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "reasonFlags")}];
  [v24 setObject:v33 forKeyedSubscript:@"cosmCurrentStateEntryReason"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "cosmState")}];
  [v24 setObject:v34 forKeyedSubscript:@"cosmFormerState"];

  [v8 timestamp];
  v36 = v35;
  [v9 timestamp];
  v38 = [(CellOutrankMetrics *)self secondsToMetricsAccuracy:v36 - v37];
  [v24 setObject:v38 forKeyedSubscript:@"cosmFormerStateDuration"];

  v39 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  [v24 setObject:v39 forKeyedSubscript:@"cosmFormerStateEntryPrimaryReason"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "reasonFlags")}];
  [v24 setObject:v40 forKeyedSubscript:@"cosmFormerStateEntryReason"];

  [v24 setObject:&unk_2847EFD40 forKeyedSubscript:@"cosmReasonRevision"];
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "wifiSecure")}];
  [v24 setObject:v41 forKeyedSubscript:@"wifiGoodSecurity"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[COSMStateSummary wifiPublicTypeFromFlags:](COSMStateSummary, "wifiPublicTypeFromFlags:", objc_msgSend(v8, "reasonFlags"))}];
  [v24 setObject:v42 forKeyedSubscript:@"wifiPublicType"];

  v43 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "wifiRAT")}];
  [v24 setObject:v43 forKeyedSubscript:@"wifiRAT"];

  v44 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "wifiRSSI")}];
  [v24 setObject:v44 forKeyedSubscript:@"wifiRSSI"];

  v45 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "outrankPercentIconShown")}];
  [v24 setObject:v45 forKeyedSubscript:@"outrankPercentIconShown"];

  v46 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "outrankNumIconOnTransitions")}];
  [v24 setObject:v46 forKeyedSubscript:@"outrankNumIconOnTransitions"];

  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularBandwidth"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularNRFrequencyBand"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularRAT"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularRSRP"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularThroughput"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedMeasureIncludesExploitation"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedMeasurementOffsetInterval"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedWiFiThroughput"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"outrankNumFGAppsExploiting"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"outrankNumFGAppsNonExploiting"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"outrankPercentFGExploited"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"outrankPercentFGNonExploited"];
  v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "cellPrivateNetworkActive")}];
  [v24 setObject:v47 forKeyedSubscript:@"cellPrivateNetworkActive"];

  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"numSISFlows"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"numNonAppleStackFlows"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"numAppleStackFlows"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"wifiLargeTransferInitiatingCount"];
  [v24 setObject:&unk_2847EFE40 forKeyedSubscript:@"wifiLargeTransferHysteresisDuration"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"wifiLargeTransferHysteresisWins"];
  if ([v9 cosmState] == 3)
  {
    v48 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "outrankNumFGAppsExploiting")}];
    [v24 setObject:v48 forKeyedSubscript:@"outrankNumFGAppsExploiting"];

    v49 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "outrankNumFGAppsNonExploiting")}];
    [v24 setObject:v49 forKeyedSubscript:@"outrankNumFGAppsNonExploiting"];

    v50 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "outrankPercentFGExploited")}];
    [v24 setObject:v50 forKeyedSubscript:@"outrankPercentFGExploited"];

    v51 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "outrankPercentFGNonExploited")}];
    [v24 setObject:v51 forKeyedSubscript:@"outrankPercentFGNonExploited"];

    v52 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "openedSISFlows") - objc_msgSend(v9, "openedSISFlows")}];
    [v24 setObject:v52 forKeyedSubscript:@"numSISFlows"];

    v53 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "openedNonAppleStackFlows") - objc_msgSend(v9, "openedNonAppleStackFlows")}];
    [v24 setObject:v53 forKeyedSubscript:@"numNonAppleStackFlows"];

    v54 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "openedAppleStackFlows") - objc_msgSend(v9, "openedAppleStackFlows")}];
    [v24 setObject:v54 forKeyedSubscript:@"numAppleStackFlows"];

    v55 = [v9 wifiLargeTransferInitiatingName];

    if (v55)
    {
      v56 = [v9 wifiLargeTransferInitiatingName];
      [v24 setObject:v56 forKeyedSubscript:@"wifiLargeTransferInitiatingName"];

      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v9, "wifiLargeTransferInitiatingCount")}];
      [v24 setObject:v57 forKeyedSubscript:@"wifiLargeTransferInitiatingCount"];

      v58 = MEMORY[0x277CCABB0];
      [v8 largeTransferHysteresisTime];
      v60 = v59;
      [v9 largeTransferHysteresisTime];
      v62 = [v58 numberWithDouble:v60 - v61];
      [v24 setObject:v62 forKeyedSubscript:@"wifiLargeTransferHysteresisDuration"];

      v63 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "largeTransferHysteresisWins") - objc_msgSend(v9, "largeTransferHysteresisWins")}];
      [v24 setObject:v63 forKeyedSubscript:@"wifiLargeTransferHysteresisWins"];
    }
  }

  if (v5)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v65 = v64;
    [v8 timestamp];
    v67 = (v65 + 0.5 - v66);
    v68 = [MEMORY[0x277CCABB0] numberWithInt:{-[CellularStateRelay cellBandwidth](self->_cellRelay, "cellBandwidth")}];
    [v24 setObject:v68 forKeyedSubscript:@"delayedCellularBandwidth"];

    v69 = [MEMORY[0x277CCABB0] numberWithChar:{-[CellularStateRelay nrFrequencyBand](self->_cellRelay, "nrFrequencyBand")}];
    [v24 setObject:v69 forKeyedSubscript:@"delayedCellularNRFrequencyBand"];

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[NetworkStateRelay radioTechnology](self->_cellRelay, "radioTechnology")}];
    [v24 setObject:v70 forKeyedSubscript:@"delayedCellularRAT"];

    v71 = [MEMORY[0x277CCABB0] numberWithInt:{-[CellularStateRelay cellRSRP](self->_cellRelay, "cellRSRP")}];
    [v24 setObject:v71 forKeyedSubscript:@"delayedCellularRSRP"];

    v72 = [MEMORY[0x277CCABB0] numberWithInt:v67];
    [v24 setObject:v72 forKeyedSubscript:@"delayedMeasurementOffsetInterval"];

    v73 = [MEMORY[0x277CCABB0] numberWithInt:{-[CellOutrankController numForegroundAppsExploitingOutrank](self->_cellOutrankController, "numForegroundAppsExploitingOutrank") > 0}];
    [v24 setObject:v73 forKeyedSubscript:@"delayedMeasureIncludesExploitation"];

    v74 = v65 - self->_sampledTallyTimestamp;
    if (v74 > 0.0)
    {
      v75 = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
      v76 = [TrackedFlow wifiNonLocalUsageGrandTallyAfterAdding:0];
      v77 = v75 - self->_sampledCellGrandTally;
      v90 = v76 - self->_sampledWifiGrandTally;
      v91 = v76;
      v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(8 * (v77 / v74) + 999) / 0x3E8];
      [v24 setObject:v78 forKeyedSubscript:@"delayedCellularThroughput"];

      v79 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(8 * (v90 / v74) + 999) / 0x3E8];
      [v24 setObject:v79 forKeyedSubscript:@"delayedWiFiThroughput"];

      v80 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        sampledCellGrandTally = self->_sampledCellGrandTally;
        v82 = v80;
        v83 = [v24 objectForKeyedSubscript:@"delayedCellularThroughput"];
        *buf = 134219266;
        *v93 = v74;
        *&v93[8] = 2048;
        v94 = sampledCellGrandTally;
        *v95 = 2048;
        *&v95[2] = v75;
        v96 = 2048;
        v97 = v77;
        v98 = 2048;
        v99 = (v77 / v74);
        v100 = 2112;
        v101 = v83;
        _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_DEBUG, "COSM Metrics delta interval %.3f cell before %llu after %llu delta %llu bytes/sec %lld reported kbps %@", buf, 0x3Eu);
      }

      v84 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        sampledWifiGrandTally = self->_sampledWifiGrandTally;
        v86 = v84;
        v87 = [v24 objectForKeyedSubscript:@"delayedWiFiThroughput"];
        *buf = 134219266;
        *v93 = v74;
        *&v93[8] = 2048;
        v94 = sampledWifiGrandTally;
        *v95 = 2048;
        *&v95[2] = v91;
        v96 = 2048;
        v97 = v90;
        v98 = 2048;
        v99 = (v90 / v74);
        v100 = 2112;
        v101 = v87;
        _os_log_impl(&dword_23255B000, v86, OS_LOG_TYPE_DEBUG, "COSM Metrics delta interval %.3f wifi before %llu after %llu delta %llu bytes/sec %lld reported kbps %@", buf, 0x3Eu);
      }
    }
  }

  v88 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_sendOutrankMetricNew:(id)a3 old:(id)a4 withDelayedItems:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  v8 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSM Metrics calling AnalyticsSendEventLazy", buf, 2u);
  }

  v11 = v6;
  v9 = v7;
  v10 = v6;
  AnalyticsSendEventLazy();
}

id __65__CellOutrankMetrics__sendOutrankMetricNew_old_withDelayedItems___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _outrankMetricForNew:*(a1 + 40) old:*(a1 + 48) withDelayedItems:*(a1 + 56)];
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v1;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSM Metrics return to AnalyticsSendEventLazy is %{public}@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)_updateStateDeltas:(id)a3 duration:(double)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(CellOutrankController *)self->_cellOutrankController cellOutrankIconSetDuration];
  v8 = v7;
  [(CellOutrankController *)self->_cellOutrankController cellOutrankFGExploitDuration];
  v10 = v9;
  [(CellOutrankController *)self->_cellOutrankController cellOutrankFGNonExploitDuration];
  v12 = v11;
  if (a4 <= 0.0)
  {
LABEL_24:
    [v6 setOutrankPercentIconShown:0xFFFFFFFFLL];
    [v6 setOutrankPercentFGExploited:0xFFFFFFFFLL];
    [v6 setOutrankPercentFGNonExploited:0xFFFFFFFFLL];
    goto LABEL_25;
  }

  v13 = v8 - self->_prevCellOutrankIconSetDuration;
  v14 = v10 - self->_prevCellOutrankFGExploitDuration;
  v15 = v11 - self->_prevCellOutrankFGNonExploitDuration;
  [v6 setOutrankPercentIconShown:(v13 * 100.0 / a4)];
  [v6 setOutrankPercentFGExploited:(v14 * 100.0 / a4)];
  [v6 setOutrankPercentFGNonExploited:(v15 * 100.0 / a4)];
  if (![v6 outrankPercentIconShown] && v13 > 0.0)
  {
    [v6 setOutrankPercentIconShown:1];
  }

  if (![v6 outrankPercentFGExploited] && v14 > 0.0)
  {
    [v6 setOutrankPercentFGExploited:1];
  }

  if (![v6 outrankPercentFGNonExploited] && v15 > 0.0)
  {
    [v6 setOutrankPercentFGNonExploited:1];
  }

  v16 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v39 = 67109632;
    *v40 = [v6 outrankPercentIconShown];
    *&v40[4] = 1024;
    *&v40[6] = [v6 outrankPercentFGExploited];
    LOWORD(v41) = 1024;
    *(&v41 + 2) = [v6 outrankPercentFGNonExploited];
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "COSM Metrics _updateStateDeltas percent icon shown %d fg-exploit %d fg-non-exploit %d", &v39, 0x14u);
  }

  v18 = [v6 outrankPercentFGExploited];
  if (([v6 outrankPercentFGNonExploited] + v18) > 100 || objc_msgSend(v6, "outrankPercentIconShown") >= 101)
  {
    v19 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v39 = 134217984;
      *v40 = a4;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "COSM Metrics percentage error, measurement duration %.3f", &v39, 0xCu);
    }

    v20 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      prevCellOutrankIconSetDuration = self->_prevCellOutrankIconSetDuration;
      v22 = v20;
      v23 = [v6 outrankPercentIconShown];
      v39 = 134218752;
      *v40 = prevCellOutrankIconSetDuration;
      *&v40[8] = 2048;
      v41 = v8;
      v42 = 2048;
      v43 = v13;
      v44 = 1024;
      v45 = v23;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "COSM Metrics possible icon set prev %.3f new %.3f diff %.3f percent %d", &v39, 0x26u);
    }

    v24 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      prevCellOutrankFGExploitDuration = self->_prevCellOutrankFGExploitDuration;
      v26 = v24;
      v27 = [v6 outrankPercentFGExploited];
      v39 = 134218752;
      *v40 = prevCellOutrankFGExploitDuration;
      *&v40[8] = 2048;
      v41 = v10;
      v42 = 2048;
      v43 = v14;
      v44 = 1024;
      v45 = v27;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "COSM Metrics fg exploit duration prev %.3f new %.3f diff %.3f percent %d", &v39, 0x26u);
    }

    v28 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      prevCellOutrankFGNonExploitDuration = self->_prevCellOutrankFGNonExploitDuration;
      v30 = v28;
      v31 = [v6 outrankPercentFGNonExploited];
      v39 = 134218752;
      *v40 = prevCellOutrankFGNonExploitDuration;
      *&v40[8] = 2048;
      v41 = v12;
      v42 = 2048;
      v43 = v15;
      v44 = 1024;
      v45 = v31;
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "COSM Metrics fg non-exploit duration prev %.3f new %.3f diff %.3f percent %d", &v39, 0x26u);
    }

    [(CellOutrankMetrics *)self reportABCCase:@"Metrics percentage error"];
    goto LABEL_24;
  }

LABEL_25:
  self->_prevCellOutrankIconSetDuration = v8;
  self->_prevCellOutrankFGExploitDuration = v10;
  self->_prevCellOutrankFGNonExploitDuration = v12;
  v32 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    cellOutrankController = self->_cellOutrankController;
    v34 = v32;
    v35 = [(CellOutrankController *)cellOutrankController cellOutrankIconSetEvents];
    prevCellOutrankIconSetEvents = self->_prevCellOutrankIconSetEvents;
    v39 = 67109376;
    *v40 = v35;
    *&v40[4] = 1024;
    *&v40[6] = prevCellOutrankIconSetEvents;
    _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "COSM Metrics _updateStateDeltas current set events %d, prev %d", &v39, 0xEu);
  }

  v37 = [(CellOutrankController *)self->_cellOutrankController cellOutrankIconSetEvents];
  [v6 setOutrankNumIconOnTransitions:v37 - self->_prevCellOutrankIconSetEvents];
  self->_prevCellOutrankIconSetEvents = v37;

  v38 = *MEMORY[0x277D85DE8];
}

- (void)updateOutrankExitMetrics:(id)a3
{
  cellOutrankController = self->_cellOutrankController;
  v5 = a3;
  [v5 setOutrankNumFGAppsExploiting:{-[CellOutrankController numForegroundAppsExploitingOutrank](cellOutrankController, "numForegroundAppsExploitingOutrank")}];
  [v5 setOutrankNumFGAppsNonExploiting:{-[CellOutrankController numForegroundAppsNonExploitingOutrank](self->_cellOutrankController, "numForegroundAppsNonExploitingOutrank")}];
}

- (void)_captureOutrankEntryAdditionalState:(id)a3 flags:(unint64_t)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((v4 & 0x200) != 0)
  {
    wifiThroughputAdviser = self->_wifiThroughputAdviser;
    if (wifiThroughputAdviser)
    {
      v8 = [(WiFiThroughputAdviser *)wifiThroughputAdviser largeTransferAssessor];

      if (v8)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [(WiFiThroughputAdviser *)self->_wifiThroughputAdviser largeTransferAssessor];
        v10 = [v9 currentActiveTransferApps];

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v23;
          do
          {
            v15 = 0;
            do
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v22 + 1) + 8 * v15);
              v17 = [v6 wifiLargeTransferInitiatingName];
              if (!v17 || (v18 = v17, v19 = [v16 totalWiFiRxTransferSize], v18, v19 > v13))
              {
                v13 = [v16 totalWiFiRxTransferSize];
                v20 = [v16 name];
                [v6 setWifiLargeTransferInitiatingName:v20];

                [v6 setWifiLargeTransferInitiatingCount:{objc_msgSend(v16, "totalWiFiRxTransferSize")}];
              }

              ++v15;
            }

            while (v12 != v15);
            v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v12);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)reportABCCase:(id)a3
{
  v3 = a3;
  v4 = +[CellOutrankHandler sharedInstance];
  [v4 reportOutrankABCCase:v3 singleShot:1];
}

- (id)getState:(BOOL)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_stateHistory;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"<prev>   ";
    v8 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 cosmState])
        {
          v12 = [v11 cosmState];
          v13 = @"<armed>  ";
          if (v12 != 2)
          {
            v14 = [v11 cosmState];
            v13 = @"<unknown>";
            if (v14 == 3)
            {
              v13 = @"<outrank>";
            }
          }
        }

        else
        {
          v13 = @"<idle>   ";
        }

        v7 = v13;
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        [v11 timestamp];
        v17 = dateStringMillisecondsFromReferenceInterval(v16);
        v18 = +[COSMStateSummary summaryFromFlags:](COSMStateSummary, "summaryFromFlags:", [v11 reasonFlags]);
        v19 = [v15 initWithFormat:@"COSMMetrics %@  %@ -> %@  %@", v17, v10, v7, v18];
        [v4 addObject:v19];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = @"<prev>   ";
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_resetDailyTelemetryMetrics
{
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Resetting metrics for next-day collection", v9, 2u);
  }

  self->_sporadicIsKnown = 0;
  *&self->_durationInIdleState = 0u;
  *&self->_numberOfIdleToArmedTransitions = 0u;
  *&self->_numTimesWiFiEligible = 0u;
  *&self->_durationInArmedState = 0u;
  self->_durationForCellInexpensive = 0.0;
  self->_durationForCellWRMInexpensive = 0.0;
  self->_durationOnSporadicNetwork = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_lastTransitionToIdleState = _Q0;
  *&self->_lastTransitionToOutrankState = _Q0;
  *&self->_lastCellInexpensive = _Q0;
}

- (void)_updateStateTransitionMetricsForNewState:(unsigned int)a3 oldState:(unsigned int)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (a3 != a4)
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 67109376;
      v25 = a4;
      v26 = 1024;
      v27 = a3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Updating metrics on state transition %d -> %d", &v24, 0xEu);
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (a3 == 3)
    {
      self->_lastTransitionToOutrankState = v11;
      if (a4)
      {
        lastTransitionToArmedState = self->_lastTransitionToArmedState;
        if (lastTransitionToArmedState == -1.0)
        {
          lastTransitionToArmedState = self->_lastDailyTelemetryTimestamp;
          if (lastTransitionToArmedState == -1.0)
          {
            lastTransitionToArmedState = self->_startedCollectingMetricsFrom;
          }
        }

        v17 = v11 - lastTransitionToArmedState;
        if (v17 >= 5.0)
        {
          ++self->_numberOfTimesInArmedStateForAtLeastFiveSeconds;
        }

        self->_durationInArmedState = v17 + self->_durationInArmedState;
        ++self->_numberOfArmedToOutrankTransitions;
      }

      else
      {
        lastTransitionToIdleState = self->_lastTransitionToIdleState;
        if (lastTransitionToIdleState == -1.0)
        {
          lastTransitionToIdleState = self->_lastDailyTelemetryTimestamp;
          if (lastTransitionToIdleState == -1.0)
          {
            lastTransitionToIdleState = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationInIdleState = self->_durationInIdleState + v11 - lastTransitionToIdleState;
        ++self->_numberOfIdleToOutrankTransitions;
        *&self->_numberOfIdleToArmedTransitions = vadd_s32(*&self->_numberOfIdleToArmedTransitions, 0x100000001);
      }
    }

    else if (a3 == 2)
    {
      self->_lastTransitionToArmedState = v11;
      if (a4)
      {
        lastTransitionToOutrankState = self->_lastTransitionToOutrankState;
        if (lastTransitionToOutrankState == -1.0)
        {
          lastTransitionToOutrankState = self->_lastDailyTelemetryTimestamp;
          if (lastTransitionToOutrankState == -1.0)
          {
            lastTransitionToOutrankState = self->_startedCollectingMetricsFrom;
          }
        }

        v15 = v11 - lastTransitionToOutrankState;
        if (v15 >= 5.0)
        {
          ++self->_numberOfTimesInOutrankStateForAtLeastFiveSeconds;
        }

        self->_durationInOutrankState = v15 + self->_durationInOutrankState;
      }

      else
      {
        lastDailyTelemetryTimestamp = self->_lastTransitionToIdleState;
        if (lastDailyTelemetryTimestamp == -1.0)
        {
          lastDailyTelemetryTimestamp = self->_lastDailyTelemetryTimestamp;
          if (lastDailyTelemetryTimestamp == -1.0)
          {
            lastDailyTelemetryTimestamp = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationInIdleState = self->_durationInIdleState + v11 - lastDailyTelemetryTimestamp;
        ++self->_numberOfIdleToArmedTransitions;
      }
    }

    else
    {
      if (a3)
      {
        v18 = outrankLogHandle;
        if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        v24 = 67109120;
        v25 = a3;
        v5 = "COSM Daily Metrics: Got undefined COSM state %d";
        v6 = v18;
        v7 = 8;
        goto LABEL_4;
      }

      self->_lastTransitionToIdleState = v11;
      if (a4 == 3)
      {
        startedCollectingMetricsFrom = self->_lastTransitionToOutrankState;
        if (startedCollectingMetricsFrom == -1.0)
        {
          startedCollectingMetricsFrom = self->_lastDailyTelemetryTimestamp;
          if (startedCollectingMetricsFrom == -1.0)
          {
            startedCollectingMetricsFrom = self->_startedCollectingMetricsFrom;
          }
        }

        v13 = v11 - startedCollectingMetricsFrom;
        if (v13 >= 5.0)
        {
          ++self->_numberOfTimesInOutrankStateForAtLeastFiveSeconds;
        }

        self->_durationInOutrankState = v13 + self->_durationInOutrankState;
        ++self->_numberOfOutrankToIdleTransitions;
      }

      else
      {
        v19 = self->_lastTransitionToArmedState;
        if (v19 == -1.0)
        {
          v19 = self->_lastDailyTelemetryTimestamp;
          if (v19 == -1.0)
          {
            v19 = self->_startedCollectingMetricsFrom;
          }
        }

        v20 = v11 - v19;
        if (v20 >= 5.0)
        {
          ++self->_numberOfTimesInArmedStateForAtLeastFiveSeconds;
        }

        self->_durationInArmedState = v20 + self->_durationInArmedState;
      }
    }

    self->_currentCOSMState = a3;
    goto LABEL_48;
  }

  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    v5 = "COSM Daily Metrics: Obtained same state after COSM state transition";
    v6 = v4;
    v7 = 2;
LABEL_4:
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, v5, &v24, v7);
  }

LABEL_48:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateMetricsForState:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138477827;
    v25 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Updating metrics for state %{private}@", &v24, 0xCu);
  }

  numTimesWiFiEligible = self->_numTimesWiFiEligible;
  numTimesCellEligible = self->_numTimesCellEligible;
  numTimesWiFiAndCellEligible = self->_numTimesWiFiAndCellEligible;
  prevWiFiEligible = self->_prevWiFiEligible;
  if (prevWiFiEligible != [v4 wifiEligible])
  {
    if ([v4 wifiEligible])
    {
      ++self->_numTimesWiFiEligible;
    }

    self->_prevWiFiEligible = [v4 wifiEligible];
  }

  prevCellEligible = self->_prevCellEligible;
  if (prevCellEligible != [v4 cellEligible])
  {
    if ([v4 cellEligible])
    {
      ++self->_numTimesCellEligible;
    }

    self->_prevCellEligible = [v4 cellEligible];
  }

  if (self->_numTimesCellEligible + self->_numTimesWiFiEligible != numTimesCellEligible + numTimesWiFiEligible && [v4 cellEligible] && objc_msgSend(v4, "wifiEligible"))
  {
    ++self->_numTimesWiFiAndCellEligible;
  }

  prevDeviceEligible = self->_prevDeviceEligible;
  if (prevDeviceEligible != [v4 deviceEligible])
  {
    if (([v4 deviceEligible] & 1) == 0 && self->_numTimesWiFiAndCellEligible > numTimesWiFiAndCellEligible)
    {
      ++self->_numTimesWiFiAndCellEligibleDeviceIneligible;
    }

    self->_prevDeviceEligible = [v4 deviceEligible];
  }

  prevCellPrivateNetworkActive = self->_prevCellPrivateNetworkActive;
  if (prevCellPrivateNetworkActive != [v4 cellPrivateNetworkActive])
  {
    if ([v4 cellPrivateNetworkActive])
    {
      ++self->_numTimesCellPrivateNetworkActive;
    }

    self->_prevCellPrivateNetworkActive = [v4 cellPrivateNetworkActive];
  }

  sporadicIsKnown = self->_sporadicIsKnown;
  if (sporadicIsKnown != [v4 wifiKnowableSporadic] && objc_msgSend(v4, "wifiKnowableSporadic"))
  {
    self->_sporadicIsKnown = 1;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v15 = v14;
  prevWiFiSporadic = self->_prevWiFiSporadic;
  if (prevWiFiSporadic != [v4 wifiSporadic])
  {
    if ([v4 wifiSporadic])
    {
      self->_lastEntryToSporadicNetwork = v15;
    }

    else
    {
      lastEntryToSporadicNetwork = self->_lastEntryToSporadicNetwork;
      if (lastEntryToSporadicNetwork == -1.0)
      {
        lastEntryToSporadicNetwork = self->_lastDailyTelemetryTimestamp;
        if (lastEntryToSporadicNetwork == -1.0)
        {
          lastEntryToSporadicNetwork = self->_startedCollectingMetricsFrom;
        }
      }

      self->_durationOnSporadicNetwork = self->_durationOnSporadicNetwork + v15 - lastEntryToSporadicNetwork;
    }

    self->_prevWiFiSporadic = [v4 wifiSporadic];
  }

  v18 = [v4 cellExpensive];
  v19 = [v4 cellWRMExpensive];
  v20 = v19 ^ 1;
  if (self->_prevCellInexpensive != (v18 ^ 1))
  {
    if (v18)
    {
      lastCellInexpensive = self->_lastCellInexpensive;
      if (lastCellInexpensive == -1.0)
      {
        lastCellInexpensive = self->_lastDailyTelemetryTimestamp;
        if (lastCellInexpensive == -1.0)
        {
          lastCellInexpensive = self->_startedCollectingMetricsFrom;
        }
      }

      self->_durationForCellInexpensive = self->_durationForCellInexpensive + v15 - lastCellInexpensive;
    }

    else
    {
      self->_lastCellInexpensive = v15;
    }

    self->_prevCellInexpensive = v18 ^ 1;
  }

  if (self->_prevCellWRMInexpensive != v20)
  {
    if (v19)
    {
      lastCellWRMInexpensive = self->_lastCellWRMInexpensive;
      if (lastCellWRMInexpensive == -1.0)
      {
        lastCellWRMInexpensive = self->_lastDailyTelemetryTimestamp;
        if (lastCellWRMInexpensive == -1.0)
        {
          lastCellWRMInexpensive = self->_startedCollectingMetricsFrom;
        }
      }

      self->_durationForCellWRMInexpensive = self->_durationForCellWRMInexpensive + v15 - lastCellWRMInexpensive;
    }

    else
    {
      self->_lastCellWRMInexpensive = v15;
    }

    self->_prevCellWRMInexpensive = v20;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setupDailyTelemetryTimer
{
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Setting up daily telemetry timer", buf, 2u);
  }

  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  dailyTelemetryTimer = self->_dailyTelemetryTimer;
  self->_dailyTelemetryTimer = v4;

  if (self->_dailyTelemetryTimer)
  {
    objc_initWeak(buf, self);
    v6 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 86400000000000);
    dispatch_source_set_timer(self->_dailyTelemetryTimer, v6, 0x4E94914F0000uLL, 0x12A05F200uLL);
    v7 = self->_dailyTelemetryTimer;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__CellOutrankMetrics__setupDailyTelemetryTimer__block_invoke;
    v9[3] = &unk_27898BA88;
    objc_copyWeak(&v10, buf);
    v9[4] = self;
    dispatch_source_set_event_handler(v7, v9);
    dispatch_resume(self->_dailyTelemetryTimer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "COSM Daily Metrics: Error creating daily telemetry timer", buf, 2u);
    }
  }
}

void __47__CellOutrankMetrics__setupDailyTelemetryTimer__block_invoke(uint64_t a1)
{
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Running scheduled daily telemetry collection block", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendDailyOutrankMetric];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 224) = v5;
    [v4 _resetDailyTelemetryMetrics];
  }

  else
  {
    v6 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "COSM Daily Metrics: Skipping daily telemetry collection on nil instance", v7, 2u);
    }
  }
}

- (void)_sendDailyOutrankMetric
{
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Calling AnalyticsSendEventLazy to send Daily COSM Metrics to CA", buf, 2u);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v4, buf);
  AnalyticsSendEventLazy();
  objc_destroyWeak(&v4);
  objc_destroyWeak(buf);
}

id __45__CellOutrankMetrics__sendDailyOutrankMetric__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _dailyOutrankMetricDictionary];
  }

  else
  {
    v4 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "COSM Daily Metrics: Cannot send daily telemetry due to nil instance", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)_dailyOutrankMetricDictionary
{
  v42 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  currentCOSMState = self->_currentCOSMState;
  switch(currentCOSMState)
  {
    case 3u:
      lastTransitionToOutrankState = self->_lastTransitionToOutrankState;
      if (lastTransitionToOutrankState == -1.0)
      {
        lastTransitionToOutrankState = self->_lastDailyTelemetryTimestamp;
        if (lastTransitionToOutrankState == -1.0)
        {
          lastTransitionToOutrankState = self->_startedCollectingMetricsFrom;
        }
      }

      v10 = v4 - lastTransitionToOutrankState;
      if (v10 >= 5.0)
      {
        ++self->_numberOfTimesInOutrankStateForAtLeastFiveSeconds;
      }

      self->_durationInOutrankState = v10 + self->_durationInOutrankState;
      goto LABEL_20;
    case 2u:
      lastTransitionToArmedState = self->_lastTransitionToArmedState;
      if (lastTransitionToArmedState == -1.0)
      {
        lastTransitionToArmedState = self->_lastDailyTelemetryTimestamp;
        if (lastTransitionToArmedState == -1.0)
        {
          lastTransitionToArmedState = self->_startedCollectingMetricsFrom;
        }
      }

      v8 = v4 - lastTransitionToArmedState;
      if (v8 >= 5.0)
      {
        ++self->_numberOfTimesInArmedStateForAtLeastFiveSeconds;
      }

      self->_durationInArmedState = v8 + self->_durationInArmedState;
      goto LABEL_20;
    case 0u:
      lastTransitionToIdleState = self->_lastTransitionToIdleState;
      if (lastTransitionToIdleState == -1.0)
      {
        lastTransitionToIdleState = self->_lastDailyTelemetryTimestamp;
        if (lastTransitionToIdleState == -1.0)
        {
          lastTransitionToIdleState = self->_startedCollectingMetricsFrom;
        }
      }

      self->_durationInIdleState = self->_durationInIdleState + v4 - lastTransitionToIdleState;
LABEL_20:
      if (self->_prevWiFiSporadic)
      {
        lastEntryToSporadicNetwork = self->_lastEntryToSporadicNetwork;
        if (lastEntryToSporadicNetwork == -1.0)
        {
          lastEntryToSporadicNetwork = self->_lastDailyTelemetryTimestamp;
          if (lastEntryToSporadicNetwork == -1.0)
          {
            lastEntryToSporadicNetwork = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationOnSporadicNetwork = self->_durationOnSporadicNetwork + v4 - lastEntryToSporadicNetwork;
      }

      if (self->_prevCellInexpensive)
      {
        lastCellInexpensive = self->_lastCellInexpensive;
        if (lastCellInexpensive == -1.0)
        {
          lastCellInexpensive = self->_lastDailyTelemetryTimestamp;
          if (lastCellInexpensive == -1.0)
          {
            lastCellInexpensive = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationForCellInexpensive = self->_durationForCellInexpensive + v4 - lastCellInexpensive;
      }

      if (self->_prevCellWRMInexpensive)
      {
        lastCellWRMInexpensive = self->_lastCellWRMInexpensive;
        if (lastCellWRMInexpensive == -1.0)
        {
          lastCellWRMInexpensive = self->_lastDailyTelemetryTimestamp;
          if (lastCellWRMInexpensive == -1.0)
          {
            lastCellWRMInexpensive = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationForCellWRMInexpensive = self->_durationForCellWRMInexpensive + v4 - lastCellWRMInexpensive;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      lastDailyTelemetryTimestamp = self->_lastDailyTelemetryTimestamp;
      if (lastDailyTelemetryTimestamp == -1.0)
      {
        lastDailyTelemetryTimestamp = self->_startedCollectingMetricsFrom;
      }

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v4 - lastDailyTelemetryTimestamp)];
      [v14 setObject:v16 forKeyedSubscript:@"timePeriod"];

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesWiFiEligible];
      [v14 setObject:v17 forKeyedSubscript:@"numTimesWiFiEligible"];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesCellEligible];
      [v14 setObject:v18 forKeyedSubscript:@"numTimesCellEligible"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesWiFiAndCellEligible];
      [v14 setObject:v19 forKeyedSubscript:@"numTimesWiFiAndCellEligible"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesWiFiAndCellEligibleDeviceIneligible];
      [v14 setObject:v20 forKeyedSubscript:@"numTimesWiFiAndCellEligibleDeviceIneligible"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesCellPrivateNetworkActive];
      [v14 setObject:v21 forKeyedSubscript:@"numTimesCellPrivateNetworkActive"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationInArmedState];
      [v14 setObject:v22 forKeyedSubscript:@"totalDurationInArmedState"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationInOutrankState];
      [v14 setObject:v23 forKeyedSubscript:@"totalDurationInOutrankState"];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationInIdleState];
      [v14 setObject:v24 forKeyedSubscript:@"totalDurationInIdleState"];

      v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_sporadicIsKnown];
      [v14 setObject:v25 forKeyedSubscript:@"isSporadicKnown"];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationOnSporadicNetwork];
      [v14 setObject:v26 forKeyedSubscript:@"totalDurationOnSporadicNetworks"];

      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfTimesInArmedStateForAtLeastFiveSeconds];
      [v14 setObject:v27 forKeyedSubscript:@"numberOfTimesInArmedStateForAtLeastFiveSeconds"];

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfTimesInOutrankStateForAtLeastFiveSeconds];
      [v14 setObject:v28 forKeyedSubscript:@"numberOfTimesInOutrankStateForAtLeastFiveSeconds"];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfIdleToArmedTransitions];
      [v14 setObject:v29 forKeyedSubscript:@"numberOfIdleToArmedTransitions"];

      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfArmedToOutrankTransitions];
      [v14 setObject:v30 forKeyedSubscript:@"numberOfArmedToOutrankTransitions"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfOutrankToIdleTransitions];
      [v14 setObject:v31 forKeyedSubscript:@"numberOfOutrankToIdleTransitions"];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfIdleToOutrankTransitions];
      [v14 setObject:v32 forKeyedSubscript:@"numberOfIdleToOutrankTransitions"];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationForCellInexpensive];
      [v14 setObject:v33 forKeyedSubscript:@"totalDurationForCellInexpensive"];

      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationForCellWRMInexpensive];
      [v14 setObject:v34 forKeyedSubscript:@"totalDurationForCellWRMInexpensive"];

      v35 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 138477827;
        v41 = v14;
        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Posting metric dictionary %{private}@ to CA", &v40, 0xCu);
      }

      goto LABEL_42;
  }

  v36 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
  {
    v37 = self->_currentCOSMState;
    v40 = 67109120;
    LODWORD(v41) = v37;
    _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "COSM Daily Metrics: Got unexpected COSM state %d", &v40, 8u);
  }

  v14 = 0;
LABEL_42:
  v38 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setConfiguration:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CellOutrankHandler new configuration parameters %{public}@", &v8, 0xCu);
  }

  [v4 extractKey:@"metricsMeasurementDelay" toDouble:&self->_delayedMeasurementInterval defaultTo:5.0];
  [v4 extractKey:@"metricsMaxHistory" toUint32:&self->_maxStateHistory defaultTo:12];
  v6 = [v4 objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(CellOutrankMetrics *)self restoreDefaults];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (CellOutrankMetrics)initWithQueue:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = CellOutrankMetrics;
  v6 = [(CellOutrankMetrics *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [NetworkStateRelay getStateRelayFor:5];
    cellRelay = v7->_cellRelay;
    v7->_cellRelay = v8;

    v10 = [NetworkStateRelay getStateRelayFor:3];
    wifiRelay = v7->_wifiRelay;
    v7->_wifiRelay = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stateHistory = v7->_stateHistory;
    v7->_stateHistory = v12;

    v14 = +[CellOutrankController sharedInstance];
    cellOutrankController = v7->_cellOutrankController;
    v7->_cellOutrankController = v14;

    v16 = +[WiFiThroughputAdviser sharedInstance];
    wifiThroughputAdviser = v7->_wifiThroughputAdviser;
    v7->_wifiThroughputAdviser = v16;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7->_startedCollectingMetricsFrom = v18;
    v7->_lastDailyTelemetryTimestamp = -1.0;
    *&v7->_prevWiFiEligible = 0;
    *&v7->_prevCellPrivateNetworkActive = 0;
    v7->_prevDeviceEligible = 1;
    [(CellOutrankMetrics *)v7 _resetDailyTelemetryMetrics];
    [(CellOutrankMetrics *)v7 _setupDailyTelemetryTimer];
    [(CellOutrankMetrics *)v7 restoreDefaults];
  }

  return v7;
}

@end