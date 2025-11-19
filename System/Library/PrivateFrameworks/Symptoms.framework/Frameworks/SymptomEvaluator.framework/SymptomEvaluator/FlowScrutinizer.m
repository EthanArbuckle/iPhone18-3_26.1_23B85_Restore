@interface FlowScrutinizer
+ (FlowScrutinizer)sharedInstance;
- (BOOL)isFlushableOriginLedgerAfterFlushingSubsidiaries:(id)a3 atMachAbsTime:(unint64_t)a4;
- (FlowScrutinizer)init;
- (id)_findFlowOriginLedgerWithSnapshot:(id)a3;
- (int)setConfiguration:(id)a3;
- (unsigned)_dispositionForPossibleLargeTransferOn:(id)a3 provisionally:(unsigned int)a4;
- (void)_coreMediaAssetDownloadCompletion:(id)a3 for:(id)a4 at:(double)a5;
- (void)_coreMediaAssetDownloadFlushAll;
- (void)_handleFlowDeltas:(id)a3 snapshot:(id)a4;
- (void)addActivityBitmapFromSnapshot:(id)a3;
- (void)addDelegate:(id)a3;
- (void)addFlowStateForOrigin:(id)a3 array:(id)a4;
- (void)addStateForOrigin:(id)a3 named:(id)a4 array:(id)a5 isExtension:(BOOL)a6 isDelegate:(BOOL)a7 verbose:(BOOL)a8;
- (void)assetDownloadScrutinyOnBehalfOf:(id)a3 required:(BOOL)a4;
- (void)cellFlowScrutinyOnBehalfOf:(id)a3 required:(BOOL)a4;
- (void)clearAVSamplesIfAllIdle:(id)a3 time:(double)a4;
- (void)expectedTransferScrutinyOnBehalfOf:(id)a3 required:(BOOL)a4;
- (void)flushInactiveLedgersAtMachAbsTime:(unint64_t)a3;
- (void)noteCoreMediaAssetDownloadEvent:(unint64_t)a3 downloadUUID:(id)a4 byProcess:(id)a5 onBehalfOf:(id)a6 duration:(double)a7 at:(double)a8;
- (void)removeDelegate:(id)a3;
- (void)restoreDefaults;
- (void)scrutinizeFlow:(id)a3 withClassification:(id)a4;
- (void)updateAudioVideoSamplesWithTime:(double)a3 bumpSamples:(BOOL)a4;
- (void)updateTransferSizeFlowsWithTime:(double)a3;
- (void)wifiFlowScrutinyOnBehalfOf:(id)a3 required:(BOOL)a4;
@end

@implementation FlowScrutinizer

+ (FlowScrutinizer)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__FlowScrutinizer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_27 != -1)
  {
    dispatch_once(&sharedInstance_pred_27, block);
  }

  v2 = sharedInstance_sharedInstance_28;

  return v2;
}

uint64_t __33__FlowScrutinizer_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_28;
  sharedInstance_sharedInstance_28 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (FlowScrutinizer)init
{
  v24.receiver = self;
  v24.super_class = FlowScrutinizer;
  v2 = [(FlowScrutinizer *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    originLedgers = v2->_originLedgers;
    v2->_originLedgers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transferSizeFlows = v2->_transferSizeFlows;
    v2->_transferSizeFlows = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cellAudioVideoSamples = v2->_cellAudioVideoSamples;
    v2->_cellAudioVideoSamples = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    wifiAudioVideoSamples = v2->_wifiAudioVideoSamples;
    v2->_wifiAudioVideoSamples = v9;

    v11 = [PhysicalInterfaceSampler sharedInstanceForInterfaceType:2];
    cellInterfaceSampler = v2->_cellInterfaceSampler;
    v2->_cellInterfaceSampler = v11;

    v13 = [PhysicalInterfaceSampler sharedInstanceForInterfaceType:1];
    wifiInterfaceSampler = v2->_wifiInterfaceSampler;
    v2->_wifiInterfaceSampler = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    cellFlowScrutinyRequesters = v2->_cellFlowScrutinyRequesters;
    v2->_cellFlowScrutinyRequesters = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    wifiFlowScrutinyRequesters = v2->_wifiFlowScrutinyRequesters;
    v2->_wifiFlowScrutinyRequesters = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    assetDownloadScrutinyRequesters = v2->_assetDownloadScrutinyRequesters;
    v2->_assetDownloadScrutinyRequesters = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    expectedTransferScrutinyRequesters = v2->_expectedTransferScrutinyRequesters;
    v2->_expectedTransferScrutinyRequesters = v21;

    [(FlowScrutinizer *)v2 restoreDefaults];
  }

  return v2;
}

- (unsigned)_dispositionForPossibleLargeTransferOn:(id)a3 provisionally:(unsigned int)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 rxTransferSizeUpperThreshold])
  {
    if (([v5 txTransferSizeUpperThreshold] & 1) == 0 && (objc_msgSend(v5, "txTransferSizeLowerThreshold") & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = [v5 rxTransferSizeLowerThreshold];
  if ([v5 txTransferSizeUpperThreshold])
  {
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_13:
    v8 = 33;
    goto LABEL_15;
  }

  v7 = [v5 txTransferSizeLowerThreshold];
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
LABEL_11:
      v8 = 32;
      goto LABEL_15;
    }

LABEL_10:
    v8 = 34;
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_13;
  }

  [v5 setHasPossibleTransferSizeDisposition:0];
  v8 = a4;
LABEL_15:
  v9 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v13 = 134218754;
    v14 = [v5 flowIdentifier];
    v15 = 1024;
    v16 = a4;
    v17 = 1024;
    v18 = v8;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "_dispositionForPossibleLargeTransferOn: %lld  %d -> %d on %@", &v13, 0x22u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_handleFlowDeltas:(id)a3 snapshot:(id)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 flowSnapshotTimeIntervalSinceReferenceDate];
  v9 = v8;
  [v6 prevSampleTime];
  v11 = v9 - v10;
  [v7 flowSnapshotTimeIntervalSinceReferenceDate];
  [v6 setPrevSampleTime:?];
  v12 = [v7 deltaAccountingRxCellularBytes];
  v13 = [v7 deltaAccountingTxCellularBytes];
  v14 = [v7 deltaAccountingRxWiFiBytes];
  v15 = [v7 deltaAccountingTxWiFiBytes];
  v16 = v15;
  if (!v12 && !v13 && !v14 && !v15)
  {
    if ([v6 lastSampleWasIdle])
    {
      v17 = [v6 alternatingIdleNonIdlePeriods];
      v18 = [v17 lastObject];

      [(FlowSample *)v18 elapsedTime];
      [(FlowSample *)v18 setElapsedTime:v11 + v19];
    }

    else
    {
      [v6 pendingFlowNonIdleDuration];
      [v6 setPendingFlowNonIdleDuration:v11 + v30];
      [v6 pendingFlowNonIdleDuration];
      v11 = v31;
      if (v31 <= 0.8)
      {
        goto LABEL_26;
      }

      [v6 setPendingFlowNonIdleDuration:0.0];
      [v6 setLastSampleWasIdle:1];
      v32 = [v6 alternatingIdleNonIdlePeriods];

      if (!v32)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [v6 setAlternatingIdleNonIdlePeriods:v33];
      }

      v34 = [v6 nonIdleSamples];
      if (v34)
      {
        v35 = v34;
        v36 = [v6 nonIdleSamples];
        v37 = [v36 count];

        if (v37)
        {
          v38 = [v6 nonIdleSamples];
          v39 = [v38 objectAtIndexedSubscript:0];

          v40 = [v6 nonIdleSamples];
          v41 = [v40 count];

          if (v41 >= 2)
          {
            v42 = 1;
            do
            {
              v43 = [v6 nonIdleSamples];
              v44 = [v43 objectAtIndexedSubscript:v42];
              [v39 accumulateFrom:v44];

              ++v42;
              v45 = [v6 nonIdleSamples];
              v46 = [v45 count];
            }

            while (v46 > v42);
          }

          v47 = [v6 nonIdleSamples];
          [v47 removeAllObjects];

          v48 = [v6 alternatingIdleNonIdlePeriods];
          [v48 addObject:v39];
        }
      }

      v18 = objc_alloc_init(FlowSample);
      [(FlowSample *)v18 setElapsedTime:v11];
      v49 = [v6 alternatingIdleNonIdlePeriods];
      [v49 addObject:v18];

      v50 = [v6 alternatingIdleNonIdlePeriods];
      v51 = [v50 count];
      maxAlternatingIdleNonIdleSamples = self->_maxAlternatingIdleNonIdleSamples;

      if (v51 <= maxAlternatingIdleNonIdleSamples)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          v53 = [v6 alternatingIdleNonIdlePeriods];
          [v53 removeObjectAtIndex:0];

          v54 = [v6 alternatingIdleNonIdlePeriods];
          v55 = [v54 count];
          v56 = self->_maxAlternatingIdleNonIdleSamples;
        }

        while (v55 > v56);
      }
    }

    v13 = 0;
LABEL_26:
    [v6 flowIdleDuration];
    [v6 setFlowIdleDuration:v11 + v57];
    goto LABEL_57;
  }

  [v6 setLastSampleWasIdle:0];
  v20 = [v6 nonIdleSamples];

  if (!v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v6 setNonIdleSamples:v21];
  }

  v22 = [v6 nonIdleSamples];
  v23 = [v22 lastObject];

  [v6 pendingFlowNonIdleDuration];
  if (v24 > 0.0)
  {
    if (v23)
    {
      [v6 pendingFlowNonIdleDuration];
      v26 = v25 * 0.5;
      [v23 elapsedTime];
      [v23 setElapsedTime:v27 + v26];
      [v6 pendingFlowNonIdleDuration];
      v29 = v28 * 0.5;
    }

    else
    {
      v58 = v13;
      v59 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v103 = v6;
        _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, "_handleFlowDeltas finds no prev sample when pendingFlowNonIdleDuration, ledger %{public}@", buf, 0xCu);
      }

      [v6 pendingFlowNonIdleDuration];
      v13 = v58;
    }

    v11 = v11 + v29;
    [v6 setPendingFlowNonIdleDuration:0.0];
  }

  if (v23 && (([v23 elapsedTime], v11 < 0.8) || v11 + v60 < 2.0))
  {
    [v23 elapsedTime];
    [v23 setElapsedTime:v11 + v76];
    [v23 setTotalObservedCellRxBytes:{objc_msgSend(v23, "totalObservedCellRxBytes") + objc_msgSend(v7, "deltaAccountingRxCellularBytes")}];
    [v23 setTotalObservedCellTxBytes:{objc_msgSend(v23, "totalObservedCellTxBytes") + objc_msgSend(v7, "deltaAccountingTxCellularBytes")}];
    [v23 setTotalObservedWiFiRxBytes:{objc_msgSend(v23, "totalObservedWiFiRxBytes") + v14}];
    [v23 setTotalObservedWiFiTxBytes:{objc_msgSend(v23, "totalObservedWiFiTxBytes") + v16}];
  }

  else
  {
    v61 = v13;
    v62 = objc_alloc_init(FlowSample);
    [(FlowSample *)v62 setElapsedTime:v11];
    [(FlowSample *)v62 setTotalObservedCellRxBytes:v12];
    log = v61;
    [(FlowSample *)v62 setTotalObservedCellTxBytes:v61];
    v98 = v14;
    [(FlowSample *)v62 setTotalObservedWiFiRxBytes:v14];
    v99 = v16;
    [(FlowSample *)v62 setTotalObservedWiFiTxBytes:v16];
    if ([v7 interfaceCellular])
    {
      v63 = [v7 flowuuid];
      [(FlowSample *)v62 acquireCeilingValuesForCellFlow:v63];
    }

    v64 = [v6 nonIdleSamples];
    [v64 addObject:v62];

    v65 = [v6 nonIdleSamples];
    v66 = [v65 count];
    maxContinuouslyActiveSamples = self->_maxContinuouslyActiveSamples;

    if (v66 > maxContinuouslyActiveSamples)
    {
      do
      {
        v68 = [v6 nonIdleSamples];
        v69 = [v68 objectAtIndexedSubscript:0];
        v70 = [v6 nonIdleSamples];
        v71 = [v70 objectAtIndexedSubscript:1];
        [v69 accumulateFrom:v71];

        v72 = [v6 nonIdleSamples];
        [v72 removeObjectAtIndex:1];

        v73 = [v6 nonIdleSamples];
        v74 = [v73 count];
        v75 = self->_maxContinuouslyActiveSamples;
      }

      while (v74 > v75);
    }

    v14 = v98;
    v16 = v99;
    v13 = log;
  }

  if (v12 | v13)
  {
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setTotalRxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_cellInterfaceSampler totalRxIfTypeBytes]+ v12];
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setTotalTxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_cellInterfaceSampler totalTxIfTypeBytes]+ v13];
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setLastInterfaceTrafficTimestamp:apparentTime()];
  }

  if (v14 | v16)
  {
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setTotalRxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler totalRxIfTypeBytes]+ v14];
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setTotalTxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler totalTxIfTypeBytes]+ v16];
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setLastInterfaceTrafficTimestamp:apparentTime()];
  }

  [v6 setTotalObservedCellRxBytes:{objc_msgSend(v6, "totalObservedCellRxBytes") + v12}];
  [v6 setTotalObservedCellTxBytes:{objc_msgSend(v6, "totalObservedCellTxBytes") + v13}];
  [v6 setTotalObservedWiFiRxBytes:{objc_msgSend(v6, "totalObservedWiFiRxBytes") + v14}];
  [v6 setTotalObservedWiFiTxBytes:{objc_msgSend(v6, "totalObservedWiFiTxBytes") + v16}];
  if (trafficClassIsAudioVideo([v7 trafficClass]))
  {
    if (([v7 isADaemon] & 1) != 0 || !objc_msgSend(v7, "uiBackgroundAudioCapable"))
    {
      v83 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        loga = v83;
        v84 = [v7 processName];
        v85 = [v7 processID];
        v86 = v13;
        v87 = v14;
        v88 = [v7 isADaemon];
        v89 = [v7 uiBackgroundAudioCapable];
        *buf = 138413058;
        v103 = v84;
        v104 = 1024;
        *v105 = v85;
        *&v105[4] = 1024;
        *&v105[6] = v88;
        v14 = v87;
        v13 = v86;
        LOWORD(v106) = 1024;
        *(&v106 + 2) = v89;
        _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_DEBUG, "Ignoring A/V bytes from %@[%d], daemon = %d, backgroundAudio = %d", buf, 0x1Eu);
      }
    }

    else
    {
      v77 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
      {
        v78 = v77;
        v79 = [v7 processName];
        v80 = [v7 processID];
        *buf = 134219266;
        v103 = v12;
        v104 = 2048;
        *v105 = v14;
        *&v105[8] = 2048;
        v106 = v13;
        v107 = 2048;
        v108 = v16;
        v109 = 2112;
        v110 = v79;
        v111 = 1024;
        v112 = v80;
        _os_log_impl(&dword_23255B000, v78, OS_LOG_TYPE_INFO, "Accumulating A/V cell/Wifi  rx: %llu/%llu, tx: %llu/%llu bytes from %@[%d]", buf, 0x3Au);
      }

      v81 = self->_totalCellAudioVideoTxBytes + v13;
      self->_totalCellAudioVideoRxBytes += v12;
      self->_totalCellAudioVideoTxBytes = v81;
      v82 = self->_totalWiFiAudioVideoTxBytes + v16;
      self->_totalWiFiAudioVideoRxBytes += v14;
      self->_totalWiFiAudioVideoTxBytes = v82;
    }
  }

  v90 = mbpsThroughput(v14 + v12, v11);
  v91 = mbpsThroughput(v16 + v13, v11);
  [v6 maxRxThroughput];
  if (v90 > v92)
  {
    [v6 setMaxRxThroughput:v90];
  }

  [v6 maxTxThroughput];
  if (v91 > v93)
  {
    [v6 setMaxTxThroughput:v91];
  }

  [v6 flowNonIdleDuration];
  [v6 setFlowNonIdleDuration:v11 + v94];
LABEL_57:
  if ([v7 firstOccurrence])
  {
    if (v12 | v13)
    {
LABEL_64:
      v96 = 1;
      goto LABEL_65;
    }

LABEL_62:
    if (([v7 interfaceCellular] & 1) == 0 && !objc_msgSend(v7, "rxCellularBytes"))
    {
      v96 = 1;
      if (![v7 txCellularBytes])
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v95 = [v7 snapshotReason];
  v96 = v95 == 2;
  if (!(v12 | v13))
  {
    if (v95 != 2)
    {
      if (!(v14 | v16))
      {
        goto LABEL_74;
      }

      goto LABEL_67;
    }

    goto LABEL_62;
  }

LABEL_65:
  [(FlowHistorian *)self->_cellInterfaceSampler applyDeltaRx:v12 deltaTx:v13 snapshot:v7];
LABEL_66:
  if (v14 | v16 || v96 && (([v7 interfaceWiFi] & 1) != 0 || objc_msgSend(v7, "rxWiFiBytes") || objc_msgSend(v7, "txWiFiBytes")))
  {
LABEL_67:
    [(FlowHistorian *)self->_wifiInterfaceSampler applyDeltaRx:v14 deltaTx:v16 snapshot:v7];
  }

LABEL_74:

  v97 = *MEMORY[0x277D85DE8];
}

- (void)_coreMediaAssetDownloadFlushAll
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_originLedgers;
  v20 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  v2 = 0;
  if (v20)
  {
    v18 = *v27;
    do
    {
      v3 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v3;
        v4 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v3)];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v5 = [&unk_2847EEC28 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v23;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              v9 = v2;
              if (*v23 != v7)
              {
                objc_enumerationMutation(&unk_2847EEC28);
              }

              v10 = *(*(&v22 + 1) + 8 * i);
              v11 = [v4 delegates];
              v2 = [v11 objectForKeyedSubscript:v10];

              if (v2)
              {
                v12 = [v2 currentAssetDownloads];

                if (v12)
                {
                  v13 = flowScrutinyLogHandle;
                  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    v14 = v13;
                    v15 = [v2 currentAssetDownloads];
                    *buf = 138412290;
                    v31 = v15;
                    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer _coreMediaAssetDownloadFlushAll, flush %@", buf, 0xCu);
                  }

                  [v2 setCurrentAssetDownloads:0];
                }
              }
            }

            v6 = [&unk_2847EEC28 countByEnumeratingWithState:&v22 objects:v32 count:16];
          }

          while (v6);
        }

        v3 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v20);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_coreMediaAssetDownloadCompletion:(id)a3 for:(id)a4 at:(double)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 downloadState];
  [v7 thisRunStartTime];
  v11 = a5 - v10;
  if (v9 == 3)
  {
    [v7 prevRunIdleTime];
    [v7 setPrevRunIdleTime:v12 + v11];
  }

  else
  {
    [v7 prevRunBusyTime];
    [v7 setPrevRunBusyTime:v13 + v11];
    [v7 setPrevRunsCellRxBytes:{objc_msgSend(v8, "totalObservedCellRxBytes") - objc_msgSend(v7, "thisRunStartCellRxBytes") + objc_msgSend(v7, "prevRunsCellRxBytes")}];
    [v7 setPrevRunsCellTxBytes:{objc_msgSend(v8, "totalObservedCellTxBytes") - objc_msgSend(v7, "thisRunStartCellTxBytes") + objc_msgSend(v7, "prevRunsCellTxBytes")}];
    [v7 setPrevRunsWiFiRxBytes:{objc_msgSend(v8, "totalObservedWiFiRxBytes") - objc_msgSend(v7, "thisRunStartWiFiRxBytes") + objc_msgSend(v7, "prevRunsWiFiRxBytes")}];
    [v7 setPrevRunsWiFiTxBytes:{objc_msgSend(v8, "totalObservedWiFiTxBytes") - objc_msgSend(v7, "thisRunStartWiFiTxBytes") + objc_msgSend(v7, "prevRunsWiFiTxBytes")}];
  }

  v14 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer finishing asset download %@", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)noteCoreMediaAssetDownloadEvent:(unint64_t)a3 downloadUUID:(id)a4 byProcess:(id)a5 onBehalfOf:(id)a6 duration:(double)a7 at:(double)a8
{
  v121 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v21 = a6;
  if (activeTraceTargets)
  {
    traceEntry(1, "[FlowScrutinizer noteCoreMediaAssetDownloadEvent:downloadUUID:byProcess:onBehalfOf:duration:at:]", "%d %@ %@ %@ %f %t", v16, v17, v18, v19, v20, a3);
  }

  if (!self->_assetDownloadsScrutinized)
  {
    v43 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 0;
    v44 = "noteCoreMediaAssetDownloadEvent called when no scrutiny required";
LABEL_26:
    _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, v44, buf, 2u);
    goto LABEL_86;
  }

  if (a3 != 1)
  {
    if (v14)
    {
      v93 = v21;
      v95 = v14;
      v45 = v15;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v46 = self->_originLedgers;
      v47 = [(NSMutableDictionary *)v46 countByEnumeratingWithState:&v110 objects:v116 count:16];
      if (!v47)
      {
        v40 = 0;
        goto LABEL_72;
      }

      v48 = v47;
      v100 = a3;
      v40 = 0;
      v49 = *v111;
LABEL_30:
      v50 = 0;
      while (1)
      {
        v51 = v40;
        if (*v111 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v52 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:*(*(&v110 + 1) + 8 * v50)];
        v53 = [v52 delegates];
        v40 = [v53 objectForKeyedSubscript:v45];

        if (v40)
        {
          v54 = [(CoreMediaDownload *)v40 currentAssetDownloads];

          if (v54)
          {
            v55 = [(CoreMediaDownload *)v40 currentAssetDownloads];
            v56 = [v55 objectForKeyedSubscript:v95];

            if (v56)
            {
              break;
            }
          }
        }

        if (v48 == ++v50)
        {
          v48 = [(NSMutableDictionary *)v46 countByEnumeratingWithState:&v110 objects:v116 count:16];
          if (v48)
          {
            goto LABEL_30;
          }

LABEL_72:

          v84 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v84, OS_LOG_TYPE_ERROR, "FlowScrutinizer can't find a core media asset download", buf, 2u);
          }

          v33 = 0;
          v14 = v95;
LABEL_79:
          v15 = v45;
LABEL_80:
          v21 = v93;
          goto LABEL_81;
        }
      }

      if (v100 == 2)
      {
        v33 = v56;
        [(FlowScrutinizer *)self _coreMediaAssetDownloadCompletion:v56 for:v40 at:a8];
        v87 = [(CoreMediaDownload *)v40 currentAssetDownloads];
        v14 = v95;
        [v87 removeObjectForKey:v95];

        goto LABEL_79;
      }

      v14 = v95;
      v33 = v56;
      if (v100 == 3)
      {
        v15 = v45;
        if ([(NSMutableDictionary *)v56 downloadState]!= 3)
        {
          [(NSMutableDictionary *)v56 thisRunStartTime];
          v91 = a8 - v90;
          [(NSMutableDictionary *)v56 prevRunBusyTime];
          [(NSMutableDictionary *)v56 setPrevRunBusyTime:v92 + v91];
          [(NSMutableDictionary *)v56 setThisRunStartTime:a8];
          [(NSMutableDictionary *)v56 setPrevRunsCellRxBytes:[(CoreMediaDownload *)v40 totalObservedCellRxBytes]- [(NSMutableDictionary *)v56 thisRunStartCellRxBytes]+ [(NSMutableDictionary *)v56 prevRunsCellRxBytes]];
          [(NSMutableDictionary *)v56 setPrevRunsCellTxBytes:[(CoreMediaDownload *)v40 totalObservedCellTxBytes]- [(NSMutableDictionary *)v56 thisRunStartCellTxBytes]+ [(NSMutableDictionary *)v56 prevRunsCellTxBytes]];
          [(NSMutableDictionary *)v56 setPrevRunsWiFiRxBytes:[(CoreMediaDownload *)v40 totalObservedWiFiRxBytes]- [(NSMutableDictionary *)v56 thisRunStartWiFiRxBytes]+ [(NSMutableDictionary *)v56 prevRunsWiFiRxBytes]];
          [(NSMutableDictionary *)v56 setPrevRunsWiFiTxBytes:[(CoreMediaDownload *)v40 totalObservedWiFiTxBytes]- [(NSMutableDictionary *)v56 thisRunStartWiFiTxBytes]+ [(NSMutableDictionary *)v56 prevRunsWiFiTxBytes]];
          [(NSMutableDictionary *)v56 setDownloadState:3];
          goto LABEL_80;
        }

        v85 = flowScrutinyLogHandle;
        v21 = v93;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }

        *buf = 0;
        v86 = "FlowScrutinizer told to pause an asset download that is already paused";
      }

      else
      {
        v15 = v45;
        v21 = v93;
        if (v100 != 4)
        {
          goto LABEL_81;
        }

        if ([(NSMutableDictionary *)v56 downloadState]== 3)
        {
          [(NSMutableDictionary *)v56 thisRunStartTime];
          v78 = a8 - v77;
          [(NSMutableDictionary *)v56 prevRunIdleTime];
          [(NSMutableDictionary *)v56 setPrevRunIdleTime:v79 + v78];
          [(NSMutableDictionary *)v56 setThisRunStartTime:a8];
          [(NSMutableDictionary *)v56 setThisRunStartCellRxBytes:[(CoreMediaDownload *)v40 totalObservedCellRxBytes]];
          [(NSMutableDictionary *)v56 setThisRunStartCellTxBytes:[(CoreMediaDownload *)v40 totalObservedCellTxBytes]];
          [(NSMutableDictionary *)v56 setThisRunStartWiFiRxBytes:[(CoreMediaDownload *)v40 totalObservedWiFiRxBytes]];
          [(NSMutableDictionary *)v56 setThisRunStartWiFiTxBytes:[(CoreMediaDownload *)v40 totalObservedWiFiTxBytes]];
          [(NSMutableDictionary *)v56 estimatedDuration];
          v42 = v56;
          if (v80 >= self->_minCoreMediaAssetDownloadEstimatedDuration)
          {
            goto LABEL_87;
          }

          v81 = 5;
          goto LABEL_88;
        }

        v85 = flowScrutinyLogHandle;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }

        *buf = 0;
        v86 = "FlowScrutinizer told to resume an asset download that wasn't paused";
      }

      _os_log_impl(&dword_23255B000, v85, OS_LOG_TYPE_ERROR, v86, buf, 2u);
      goto LABEL_81;
    }

    v57 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_ERROR, "Apparent mediaserverd restart, clearing any current asset downloads", buf, 2u);
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v33 = self->_originLedgers;
    v58 = [(NSMutableDictionary *)v33 countByEnumeratingWithState:&v106 objects:v115 count:16];
    if (v58)
    {
      v59 = v58;
      v94 = v21;
      v60 = *v107;
      v97 = v33;
      v98 = v15;
      v96 = *v107;
      do
      {
        v61 = 0;
        v99 = v59;
        do
        {
          if (*v107 != v60)
          {
            objc_enumerationMutation(v33);
          }

          v62 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:*(*(&v106 + 1) + 8 * v61)];
          v63 = [v62 delegates];
          v64 = [v63 objectForKeyedSubscript:v15];

          if (v64)
          {
            v65 = [v64 currentAssetDownloads];

            if (v65)
            {
              v101 = v62;
              v66 = [v64 currentAssetDownloads];
              v67 = [v66 allKeys];

              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v68 = v67;
              v69 = [v68 countByEnumeratingWithState:&v102 objects:v114 count:16];
              if (v69)
              {
                v70 = v69;
                v71 = *v103;
                do
                {
                  for (i = 0; i != v70; ++i)
                  {
                    if (*v103 != v71)
                    {
                      objc_enumerationMutation(v68);
                    }

                    v73 = *(*(&v102 + 1) + 8 * i);
                    v74 = [v64 currentAssetDownloads];
                    v75 = [v74 objectForKeyedSubscript:v73];
                    [(FlowScrutinizer *)self _coreMediaAssetDownloadCompletion:v75 for:v64 at:a8];

                    v76 = [v64 currentAssetDownloads];
                    [v76 removeObjectForKey:v73];
                  }

                  v70 = [v68 countByEnumeratingWithState:&v102 objects:v114 count:16];
                }

                while (v70);
              }

              v33 = v97;
              v15 = v98;
              v60 = v96;
              v59 = v99;
              v62 = v101;
            }
          }

          ++v61;
        }

        while (v61 != v59);
        v59 = [(NSMutableDictionary *)v33 countByEnumeratingWithState:&v106 objects:v115 count:16];
      }

      while (v59);
      v21 = v94;
      v14 = 0;
    }

    goto LABEL_82;
  }

  if (!v21)
  {
    v43 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 0;
    v44 = "FlowScrutinizer handed null originator for asset download start";
    goto LABEL_26;
  }

  v22 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:v21];
  if (!v22)
  {
    v22 = objc_alloc_init(FlowOriginLedger);
    [(FlowOriginLedger *)v22 setName:v21];
    [(NSMutableDictionary *)self->_originLedgers setObject:v22 forKeyedSubscript:v21];
    v23 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v118 = v21;
      v119 = 2114;
      v120 = v22;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "Origin ledger created for media download event  %{public}@ -> %{public}@", buf, 0x16u);
    }
  }

  v24 = [(FlowOriginLedger *)v22 delegates];

  if (!v24)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(FlowOriginLedger *)v22 setDelegates:v25];
  }

  v26 = [(FlowOriginLedger *)v22 delegates];
  v27 = [v26 objectForKeyedSubscript:v15];

  if (!v27)
  {
    v28 = objc_alloc_init(FlowOriginLedger);
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", v21, v15];
    [(FlowOriginLedger *)v28 setName:v29];

    v30 = [(FlowOriginLedger *)v22 delegates];
    [v30 setObject:v28 forKeyedSubscript:v15];

    v31 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v118 = v15;
      v119 = 2114;
      v120 = v28;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "Origin ledger (delegate) created for media download event  %{public}@ -> %{public}@", buf, 0x16u);
    }
  }

  v32 = [(FlowOriginLedger *)v22 delegates];
  v33 = [v32 objectForKeyedSubscript:v15];

  v34 = [(NSMutableDictionary *)v33 currentAssetDownloads];

  if (!v34)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)v33 setCurrentAssetDownloads:v35];
  }

  v36 = [(NSMutableDictionary *)v33 currentAssetDownloads];
  v37 = [v36 objectForKeyedSubscript:v14];

  if (!v37)
  {
    v40 = objc_alloc_init(CoreMediaDownload);
    [(CoreMediaDownload *)v40 setStartTime:a8];
    [(CoreMediaDownload *)v40 setEstimatedDuration:a7];
    [(CoreMediaDownload *)v40 setThisRunStartTime:a8];
    [(CoreMediaDownload *)v40 setThisRunStartCellRxBytes:[(NSMutableDictionary *)v33 totalObservedCellRxBytes]];
    [(CoreMediaDownload *)v40 setThisRunStartCellTxBytes:[(NSMutableDictionary *)v33 totalObservedCellTxBytes]];
    if (self->_minCoreMediaAssetDownloadEstimatedDuration <= a7)
    {
      v82 = 1;
    }

    else
    {
      v82 = 5;
    }

    [(CoreMediaDownload *)v40 setDownloadState:v82];
    v83 = [(NSMutableDictionary *)v33 currentAssetDownloads];
    [v83 setObject:v40 forKeyedSubscript:v14];

    goto LABEL_81;
  }

  v38 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "FlowScrutinizer told to start a previously known asset download", buf, 2u);
  }

  v39 = [(NSMutableDictionary *)v33 currentAssetDownloads];
  v40 = [v39 objectForKeyedSubscript:v14];

  [(CoreMediaDownload *)v40 estimatedDuration];
  if (v41 < a7)
  {
    [(CoreMediaDownload *)v40 setEstimatedDuration:a7];
    if (self->_minCoreMediaAssetDownloadEstimatedDuration <= a7 && [(CoreMediaDownload *)v40 downloadState]== 5)
    {
      v42 = v40;
LABEL_87:
      v81 = 1;
LABEL_88:
      [(CoreMediaDownload *)v42 setDownloadState:v81];
    }
  }

LABEL_81:

LABEL_82:
  if (![(FlowScrutinizer *)self cellThroughputAdviserShouldRun])
  {
    v88 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v88, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer setting cellThroughputAdviserShouldRun after receipt of coremedia asset download event", buf, 2u);
    }

    [(FlowScrutinizer *)self setCellThroughputAdviserShouldRun:1];
  }

LABEL_86:

  v89 = *MEMORY[0x277D85DE8];
}

- (void)scrutinizeFlow:(id)a3 withClassification:(id)a4
{
  v112 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [v6 verboseDescription];
    *buf = 138412546;
    v106 = v10;
    v107 = 2112;
    *v108 = v7;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "FlowScrutinizer scrutinize snapshot %@ classification %@", buf, 0x16u);
  }

  v11 = [v6 snapshotReason];
  if (v7)
  {
    v12 = v11;
    v13 = [v7 disposition];
    v14 = v13;
    if ((v13 - 5) < 4)
    {
      goto LABEL_5;
    }

    if (v13 == 40)
    {
      goto LABEL_118;
    }

    if (v13 == 3)
    {
LABEL_5:
      v103 = 1;
    }

    else
    {
      v103 = 0;
    }

    originLedgers = self->_originLedgers;
    v16 = [v6 attributedEntity];
    v17 = [(NSMutableDictionary *)originLedgers objectForKeyedSubscript:v16];

    if (!v17)
    {
      v17 = objc_alloc_init(FlowOriginLedger);
      v18 = MEMORY[0x277CCACA8];
      v19 = [v6 attributedEntity];
      v20 = [v18 stringWithFormat:@"%@", v19];
      [(FlowOriginLedger *)v17 setName:v20];

      v21 = self->_originLedgers;
      v22 = [v6 attributedEntity];
      [(NSMutableDictionary *)v21 setObject:v17 forKeyedSubscript:v22];

      v23 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v24 = v23;
        v25 = [v6 attributedEntity];
        *buf = 138543618;
        v106 = v25;
        v107 = 2114;
        *v108 = v17;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Origin ledger created for new flow %{public}@ -> %{public}@", buf, 0x16u);
      }
    }

    v26 = [v6 delegateName];

    v104 = v12;
    if (v26)
    {
      v27 = [v6 delegateName];
      v28 = [v6 attributedEntity];
      v29 = [v27 isEqualToString:v28];

      if ((v29 & 1) == 0)
      {
        v30 = [(FlowOriginLedger *)v17 delegates];

        if (!v30)
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [(FlowOriginLedger *)v17 setDelegates:v31];
        }

        v32 = [(FlowOriginLedger *)v17 delegates];
        v33 = [v6 delegateName];
        v34 = [v32 objectForKeyedSubscript:v33];

        if (!v34)
        {
          v35 = objc_alloc_init(FlowOriginLedger);
          v36 = MEMORY[0x277CCACA8];
          v37 = [v6 attributedEntity];
          v38 = [v6 delegateName];
          v39 = [v36 stringWithFormat:@"%@:%@", v37, v38];
          [(FlowOriginLedger *)v35 setName:v39];

          v40 = [(FlowOriginLedger *)v17 delegates];
          v41 = [v6 delegateName];
          [v40 setObject:v35 forKeyedSubscript:v41];

          v42 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v43 = v42;
            v44 = [v6 delegateName];
            *buf = 138543618;
            v106 = v44;
            v107 = 2114;
            *v108 = v35;
            _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "Origin ledger (delegate) created for new flow %{public}@ -> %{public}@", buf, 0x16u);
          }
        }

        v45 = [(FlowOriginLedger *)v17 delegates];
        v46 = [v6 delegateName];
        v47 = [v45 objectForKeyedSubscript:v46];

        v17 = v47;
      }
    }

    v48 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "sourceIdentifier")}];
    v49 = [(FlowOriginLedger *)v17 currentFlows];
    v50 = [v49 objectForKeyedSubscript:v48];

    if (!v50)
    {
      if (![(NSMutableDictionary *)self->_transferSizeFlows count])
      {
        goto LABEL_50;
      }

      v54 = [v6 flowuuid];

      if (!v54)
      {
        goto LABEL_50;
      }

      transferSizeFlows = self->_transferSizeFlows;
      v56 = [v6 flowuuid];
      v53 = [(NSMutableDictionary *)transferSizeFlows objectForKeyedSubscript:v56];

      if (v53)
      {
        v57 = [(FlowLedger *)v53 rxTransferSizeLowerThreshold]|| [(FlowLedger *)v53 rxTransferSizeUpperThreshold];
        if (self->_accumulateCellAppHistoryEpisodes && [v6 interfaceCellular])
        {
          v101 = [v6 attributedEntity];
          v64 = [AppHistoryScreener fetchEpisodeFor:v101 inbound:v57];
          [(FlowLedger *)v53 setAppEpisode:v64];

          v65 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            log = v65;
            v100 = [(FlowLedger *)v53 appEpisode];
            if ([v100 screenIn])
            {
              v66 = "IN";
            }

            else
            {
              v66 = "OUT";
            }

            v102 = [v6 flowuuid];
            v98 = [v6 attributedEntity];
            v97 = [(FlowLedger *)v53 appEpisode];
            *buf = 136315906;
            v106 = v66;
            v12 = v104;
            v107 = 2112;
            *v108 = v102;
            *&v108[8] = 2112;
            v109 = v98;
            v110 = 2048;
            v111 = v97;
            _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "App episode screened %s provisional item %@ for app %@ (episode: %p)", buf, 0x2Au);
          }

          v67 = [(FlowLedger *)v53 appEpisode];
          if ([v67 screenIn])
          {
            v68 = 3;
          }

          else
          {
            v68 = 6;
          }

          [(FlowLedger *)v53 setExpectedTransferState:v68];
        }

        else
        {
          [(FlowLedger *)v53 setExpectedTransferState:3];
        }

        v14 = [(FlowScrutinizer *)self _dispositionForPossibleLargeTransferOn:v53 provisionally:v14];
      }

      else
      {
LABEL_50:
        v53 = objc_alloc_init(FlowLedger);
        [(FlowLedger *)v53 setExpectedTransferState:1];
        [(FlowLedger *)v53 setReportedDisposition:43];
      }

      ++self->_numFlowsScrutinized;
      v69 = [(FlowOriginLedger *)v17 currentFlows];

      if (!v69)
      {
        v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(FlowOriginLedger *)v17 setCurrentFlows:v70];
      }

      v71 = [(FlowOriginLedger *)v17 currentFlows];
      [v71 setObject:v53 forKeyedSubscript:v48];

      [(FlowLedger *)v53 setCreatorLedger:v17];
      -[FlowLedger setFlowIdentifier:](v53, "setFlowIdentifier:", [v6 sourceIdentifier]);
      -[FlowLedger setFlowStartedAsForeground:](v53, "setFlowStartedAsForeground:", [v6 startAppStateIsForeground]);
      v72 = [v6 flowType];
      [(FlowLedger *)v53 setFlowType:v72];

      -[FlowLedger setInterfaceCellular:](v53, "setInterfaceCellular:", [v6 interfaceCellular]);
      [(FlowLedger *)v53 setLatestClassification:@"default"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(FlowLedger *)v53 setFlowIsTCP:1];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(FlowLedger *)v53 setFlowIsUDP:1];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(FlowLedger *)v53 setFlowIsQUIC:1];
          }
        }
      }

      if (v12 != 2)
      {
        v73 = [v6 flowuuid];

        if (v73)
        {
          v74 = [v6 flowuuid];
          v75 = [v74 copy];
          [(FlowLedger *)v53 setFlowUUID:v75];
        }

        -[FlowLedger setTrafficClass:](v53, "setTrafficClass:", [v6 trafficClass]);
        if (v103 && [v6 snapshotAppStateIsForeground])
        {
          [(FlowLedger *)v53 setNotedAsFGAudioVideoTC:1];
          numNotedAsFGAudioVideoTC = self->_numNotedAsFGAudioVideoTC;
          self->_numNotedAsFGAudioVideoTC = numNotedAsFGAudioVideoTC + 1;
          if (!numNotedAsFGAudioVideoTC)
          {
            [(FlowScrutinizer *)self setHasForegroundAVTrafficClassFlows:1];
          }

          if ([v6 interfaceCellular])
          {
            [(FlowLedger *)v53 setNotedAsCellFGAudioVideoTC:1];
            numNotedAsCellFGAudioVideoTC = self->_numNotedAsCellFGAudioVideoTC;
            self->_numNotedAsCellFGAudioVideoTC = numNotedAsCellFGAudioVideoTC + 1;
            if (!numNotedAsCellFGAudioVideoTC)
            {
              [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:1];
            }
          }

          else if ([v6 interfaceWiFi])
          {
            [(FlowLedger *)v53 setNotedAsWiFiFGAudioVideoTC:1];
            numNotedAsWiFiFGAudioVideoTC = self->_numNotedAsWiFiFGAudioVideoTC;
            self->_numNotedAsWiFiFGAudioVideoTC = numNotedAsWiFiFGAudioVideoTC + 1;
            if (!numNotedAsWiFiFGAudioVideoTC)
            {
              [(FlowScrutinizer *)self setHasForegroundWiFiAVTrafficClassFlows:1];
            }
          }
        }

        [v6 flowDuration];
        if (v79 <= 5.0)
        {
          [v6 flowStartTimeIntervalSinceReferenceDate];
        }

        else
        {
          [v6 flowSnapshotTimeIntervalSinceReferenceDate];
        }

        [(FlowLedger *)v53 setPrevSampleTime:?];
      }

      goto LABEL_97;
    }

    if (v12 == 2)
    {
      if ([(FlowLedger *)v50 notedAsFGAudioVideoTC])
      {
        --self->_numNotedAsFGAudioVideoTC;
      }

      if ([(FlowLedger *)v50 notedAsCellFGAudioVideoTC])
      {
        v51 = self->_numNotedAsCellFGAudioVideoTC;
        self->_numNotedAsCellFGAudioVideoTC = v51 - 1;
        if (v51 <= 1)
        {
          [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:0];
        }
      }

      if ([(FlowLedger *)v50 notedAsWiFiFGAudioVideoTC])
      {
        v52 = self->_numNotedAsWiFiFGAudioVideoTC;
        self->_numNotedAsWiFiFGAudioVideoTC = v52 - 1;
        if (v52 <= 1)
        {
          [(FlowScrutinizer *)self setHasForegroundWiFiAVTrafficClassFlows:0];
        }
      }

      v14 = 43;
      goto LABEL_29;
    }

    if ([(FlowLedger *)v50 hasPossibleTransferSizeDisposition])
    {
      v14 = [(FlowScrutinizer *)self _dispositionForPossibleLargeTransferOn:v50 provisionally:v14];
    }

    if ([(FlowLedger *)v50 notedAsFGAudioVideoTC])
    {
      if (v103 && ([v6 snapshotAppStateIsForeground] & 1) != 0)
      {
        goto LABEL_29;
      }

      --self->_numNotedAsFGAudioVideoTC;
      [(FlowLedger *)v50 setNotedAsFGAudioVideoTC:0];
      if ([(FlowLedger *)v50 notedAsCellFGAudioVideoTC])
      {
        v58 = self->_numNotedAsCellFGAudioVideoTC;
        self->_numNotedAsCellFGAudioVideoTC = v58 - 1;
        if (v58 <= 1)
        {
          [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:0];
        }
      }

      if (![(FlowLedger *)v50 notedAsWiFiFGAudioVideoTC])
      {
        goto LABEL_29;
      }

      v59 = self->_numNotedAsWiFiFGAudioVideoTC;
      self->_numNotedAsWiFiFGAudioVideoTC = v59 - 1;
      if (v59 > 1)
      {
        goto LABEL_29;
      }

      v60 = self;
      v61 = 0;
    }

    else
    {
      if (!v103 || ![v6 snapshotAppStateIsForeground])
      {
        goto LABEL_29;
      }

      [(FlowLedger *)v50 setNotedAsFGAudioVideoTC:1];
      v62 = self->_numNotedAsFGAudioVideoTC;
      self->_numNotedAsFGAudioVideoTC = v62 + 1;
      if (!v62)
      {
        [(FlowScrutinizer *)self setHasForegroundAVTrafficClassFlows:1];
      }

      if ([v6 interfaceCellular])
      {
        [(FlowLedger *)v50 setNotedAsCellFGAudioVideoTC:1];
        v63 = self->_numNotedAsCellFGAudioVideoTC;
        self->_numNotedAsCellFGAudioVideoTC = v63 + 1;
        if (!v63)
        {
          [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:1];
        }

        goto LABEL_29;
      }

      if (![v6 interfaceWiFi] || (-[FlowLedger setNotedAsWiFiFGAudioVideoTC:](v50, "setNotedAsWiFiFGAudioVideoTC:", 1), v96 = self->_numNotedAsWiFiFGAudioVideoTC, self->_numNotedAsWiFiFGAudioVideoTC = v96 + 1, v96))
      {
LABEL_29:
        v53 = v50;
LABEL_97:
        v80 = [v6 snapshotAppStateIsForeground];
        [(FlowLedger *)v53 setFlowLastSeenAsForeground:v80];
        [(FlowOriginLedger *)v17 setMostRecentFlowSeenAsForeground:v80];
        if (v50 || ([v6 flowDuration], v81 <= 5.0))
        {
          [(FlowScrutinizer *)self _handleFlowDeltas:v53 snapshot:v6];
          -[FlowOriginLedger setTotalObservedCellRxBytes:](v17, "setTotalObservedCellRxBytes:", -[FlowOriginLedger totalObservedCellRxBytes](v17, "totalObservedCellRxBytes") + [v6 deltaAccountingRxCellularBytes]);
          -[FlowOriginLedger setTotalObservedCellTxBytes:](v17, "setTotalObservedCellTxBytes:", -[FlowOriginLedger totalObservedCellTxBytes](v17, "totalObservedCellTxBytes") + [v6 deltaAccountingTxCellularBytes]);
          -[FlowOriginLedger setTotalObservedWiFiRxBytes:](v17, "setTotalObservedWiFiRxBytes:", -[FlowOriginLedger totalObservedWiFiRxBytes](v17, "totalObservedWiFiRxBytes") + [v6 deltaAccountingRxWiFiBytes]);
          -[FlowOriginLedger setTotalObservedWiFiTxBytes:](v17, "setTotalObservedWiFiTxBytes:", -[FlowOriginLedger totalObservedWiFiTxBytes](v17, "totalObservedWiFiTxBytes") + [v6 deltaAccountingTxWiFiBytes]);
        }

        if (v104 == 2)
        {
          [(FlowOriginLedger *)v17 setLastUsed:apparentTime()];
          [(FlowLedger *)v53 setCreatorLedger:0];
          v82 = [(FlowOriginLedger *)v17 currentFlows];
          [v82 removeObjectForKey:v48];

          [(FlowOriginLedger *)v17 setClosedFlows:[(FlowOriginLedger *)v17 closedFlows]+ 1];
          if ([(FlowLedger *)v53 expectedTransferState]!= 1)
          {
            v83 = [(FlowLedger *)v53 appEpisode];

            if (v83)
            {
              v84 = flowScrutinyLogHandle;
              if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
              {
                v85 = v84;
                v86 = [(FlowLedger *)v53 appEpisode];
                v87 = [(FlowLedger *)v53 flowUUID];
                *buf = 134218242;
                v106 = v86;
                v107 = 2112;
                *v108 = v87;
                _os_log_impl(&dword_23255B000, v85, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ in state kNWStatsSnapshotOnClose", buf, 0x16u);
              }

              v88 = [(FlowLedger *)v53 appEpisode];
              [v88 accrueRewardFromFlow:v53];

              [(FlowLedger *)v53 setAppEpisode:0];
            }

            v89 = self->_transferSizeFlows;
            v90 = [(FlowLedger *)v53 flowUUID];
            [(NSMutableDictionary *)v89 removeObjectForKey:v90];

            [(FlowLedger *)v53 setExpectedTransferState:1];
            ++self->_numClosedFlowsForExpectedTransferSymptoms;
          }
        }

        v91 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v92 = v91;
          v93 = [(FlowLedger *)v53 reportedDisposition];
          *buf = 138412802;
          v106 = v48;
          v107 = 1024;
          *v108 = v93;
          *&v108[4] = 1024;
          *&v108[6] = v14;
          _os_log_impl(&dword_23255B000, v92, OS_LOG_TYPE_DEBUG, "FlowScrutinizer disposition for %@ %d -> %d", buf, 0x18u);
        }

        if (v14 != [(FlowLedger *)v53 reportedDisposition])
        {
          [(FlowScrutinizer *)self _reportClassificationChange:v48 new:v14 ledger:v53 snapshot:v6];
          [(FlowLedger *)v53 setReportedDisposition:v14];
        }

        if (([v6 deltaAccountingRxCellularBytes] || objc_msgSend(v6, "deltaAccountingTxCellularBytes")) && !-[FlowScrutinizer cellThroughputAdviserShouldRun](self, "cellThroughputAdviserShouldRun"))
        {
          v94 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v94, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer setting cellThroughputAdviserShouldRun after receipt of cellular data", buf, 2u);
          }

          [(FlowScrutinizer *)self setCellThroughputAdviserShouldRun:1];
        }

        goto LABEL_118;
      }

      v60 = self;
      v61 = 1;
    }

    [(FlowScrutinizer *)v60 setHasForegroundWiFiAVTrafficClassFlows:v61];
    goto LABEL_29;
  }

LABEL_118:

  v95 = *MEMORY[0x277D85DE8];
}

- (id)_findFlowOriginLedgerWithSnapshot:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 attributedEntity];
  v6 = [v4 attributedExtension];
  if (v5)
  {
    v7 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:v5];
    if (!v7)
    {
      v7 = objc_alloc_init(FlowOriginLedger);
      [(FlowOriginLedger *)v7 setName:v5];
      [(NSMutableDictionary *)self->_originLedgers setObject:v7 forKeyedSubscript:v5];
      v8 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
        *buf = 134218498;
        v22 = [v4 sourceIdentifier];
        v23 = 2114;
        v24 = v5;
        v25 = 2114;
        v26 = v7;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Origin ledger created for snapshot %lld %{public}@ -> %{public}@", buf, 0x20u);
      }
    }

    if (v6)
    {
      v10 = [(FlowOriginLedger *)v7 appExtensions];

      if (!v10)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(FlowOriginLedger *)v7 setAppExtensions:v11];
      }

      v12 = [(FlowOriginLedger *)v7 appExtensions];
      v13 = [v12 objectForKeyedSubscript:v6];

      if (!v13)
      {
        v13 = objc_alloc_init(FlowOriginLedger);
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v5, v6];
        [(FlowOriginLedger *)v13 setName:v14];

        v15 = [(FlowOriginLedger *)v7 appExtensions];
        [v15 setObject:v13 forKeyedSubscript:v6];

        v16 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v17 = v16;
          v18 = [v4 sourceIdentifier];
          *buf = 134218498;
          v22 = v18;
          v23 = 2114;
          v24 = v6;
          v25 = 2114;
          v26 = v13;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Origin ledger (extension) created for snapshot %lld %{public}@ -> %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v13 = v7;
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)addActivityBitmapFromSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(FlowScrutinizer *)self _findFlowOriginLedgerWithSnapshot:v4];
  [v5 addActivityBitmapForSnapshot:v4];
}

- (void)clearAVSamplesIfAllIdle:(id)a3 time:(double)a4
{
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__FlowScrutinizer_clearAVSamplesIfAllIdle_time___block_invoke;
  v9[3] = &unk_27898E108;
  *&v9[6] = a4;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateObjectsWithOptions:2 usingBlock:v9];
  if (*(v11 + 24) == 1)
  {
    v7 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "All AudioVideoSamples, including the latest sampling are idle, clearing", v8, 2u);
    }

    [v6 removeAllObjects];
  }

  _Block_object_dispose(&v10, 8);
}

void __48__FlowScrutinizer_clearAVSamplesIfAllIdle_time___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 startTimeIntervalSinceReferenceDate];
  v7 = v6;
  [v9 elapsedTime];
  if (v7 + v8 > *(a1 + 48) - *(*(a1 + 32) + 216) && ([v9 rxBytes] || objc_msgSend(v9, "txBytes")))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)updateAudioVideoSamplesWithTime:(double)a3 bumpSamples:(BOOL)a4
{
  if (self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate == 0.0)
  {
LABEL_2:
    *&self->_lastSampledCellAudioVideoRxBytes = *&self->_totalCellAudioVideoRxBytes;
    *&self->_lastSampledWiFiAudioVideoRxBytes = *&self->_totalWiFiAudioVideoRxBytes;
    self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate = a3;
    return;
  }

  if (a4)
  {
    totalCellAudioVideoRxBytes = self->_totalCellAudioVideoRxBytes;
    totalCellAudioVideoTxBytes = self->_totalCellAudioVideoTxBytes;
    lastSampledCellAudioVideoRxBytes = self->_lastSampledCellAudioVideoRxBytes;
    lastSampledCellAudioVideoTxBytes = self->_lastSampledCellAudioVideoTxBytes;
    totalWiFiAudioVideoRxBytes = self->_totalWiFiAudioVideoRxBytes;
    totalWiFiAudioVideoTxBytes = self->_totalWiFiAudioVideoTxBytes;
    lastSampledWiFiAudioVideoRxBytes = self->_lastSampledWiFiAudioVideoRxBytes;
    lastSampledWiFiAudioVideoTxBytes = self->_lastSampledWiFiAudioVideoTxBytes;
    v14 = totalCellAudioVideoRxBytes == lastSampledCellAudioVideoRxBytes && totalCellAudioVideoTxBytes == lastSampledCellAudioVideoTxBytes;
    v15 = v14;
    if (v14 && [(NSMutableArray *)self->_cellAudioVideoSamples count])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 1;
      cellAudioVideoSamples = self->_cellAudioVideoSamples;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __63__FlowScrutinizer_updateAudioVideoSamplesWithTime_bumpSamples___block_invoke;
      v29[3] = &unk_27898E108;
      *&v29[6] = a3;
      v29[4] = self;
      v29[5] = &v30;
      [(NSMutableArray *)cellAudioVideoSamples enumerateObjectsWithOptions:2 usingBlock:v29];
      if (*(v31 + 24) == 1)
      {
        v25 = v15;
        v17 = totalWiFiAudioVideoRxBytes;
        v18 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "All Cell AudioVideoSamples, including the latest sampling are idle, clearing", buf, 2u);
        }

        [(NSMutableArray *)self->_cellAudioVideoSamples removeAllObjects];
        totalWiFiAudioVideoRxBytes = v17;
        v15 = v25;
      }

      _Block_object_dispose(&v30, 8);
    }

    v26 = totalWiFiAudioVideoRxBytes;
    v19 = totalWiFiAudioVideoRxBytes == lastSampledWiFiAudioVideoRxBytes && totalWiFiAudioVideoTxBytes == lastSampledWiFiAudioVideoTxBytes;
    v20 = v19;
    if (v19 && [(NSMutableArray *)self->_wifiAudioVideoSamples count])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 1;
      wifiAudioVideoSamples = self->_wifiAudioVideoSamples;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__FlowScrutinizer_updateAudioVideoSamplesWithTime_bumpSamples___block_invoke_47;
      v27[3] = &unk_27898E108;
      *&v27[6] = a3;
      v27[4] = self;
      v27[5] = &v30;
      [(NSMutableArray *)wifiAudioVideoSamples enumerateObjectsWithOptions:2 usingBlock:v27];
      if (*(v31 + 24) == 1)
      {
        log = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "All WiFi AudioVideoSamples, including the latest sampling are idle, clearing", buf, 2u);
        }

        [(NSMutableArray *)self->_wifiAudioVideoSamples removeAllObjects];
      }

      _Block_object_dispose(&v30, 8);
    }

    if (v15 && [(NSMutableArray *)self->_cellAudioVideoSamples count])
    {
      [(FlowScrutinizer *)self clearAVSamplesIfAllIdle:self->_cellAudioVideoSamples time:a3];
    }

    if (v20 && [(NSMutableArray *)self->_wifiAudioVideoSamples count])
    {
      [(FlowScrutinizer *)self clearAVSamplesIfAllIdle:self->_wifiAudioVideoSamples time:a3];
    }

    if (totalCellAudioVideoRxBytes != lastSampledCellAudioVideoRxBytes || totalCellAudioVideoTxBytes != lastSampledCellAudioVideoTxBytes || [(NSMutableArray *)self->_cellAudioVideoSamples count])
    {
      v22 = objc_alloc_init(AudioVideoSample);
      [(AudioVideoSample *)v22 setStartTimeIntervalSinceReferenceDate:self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v22 setElapsedTime:a3 - self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v22 setRxBytes:totalCellAudioVideoRxBytes - lastSampledCellAudioVideoRxBytes];
      [(AudioVideoSample *)v22 setTxBytes:totalCellAudioVideoTxBytes - lastSampledCellAudioVideoTxBytes];
      [(NSMutableArray *)self->_cellAudioVideoSamples addObject:v22];
      if ([(NSMutableArray *)self->_cellAudioVideoSamples count]>= 0x15)
      {
        [(NSMutableArray *)self->_cellAudioVideoSamples removeObjectAtIndex:0];
      }
    }

    if (v26 != lastSampledWiFiAudioVideoRxBytes || totalWiFiAudioVideoTxBytes != lastSampledWiFiAudioVideoTxBytes || [(NSMutableArray *)self->_wifiAudioVideoSamples count])
    {
      v23 = objc_alloc_init(AudioVideoSample);
      [(AudioVideoSample *)v23 setStartTimeIntervalSinceReferenceDate:self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v23 setElapsedTime:a3 - self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v23 setRxBytes:v26 - lastSampledWiFiAudioVideoRxBytes];
      [(AudioVideoSample *)v23 setTxBytes:totalWiFiAudioVideoTxBytes - lastSampledWiFiAudioVideoTxBytes];
      [(NSMutableArray *)self->_wifiAudioVideoSamples addObject:v23];
      if ([(NSMutableArray *)self->_wifiAudioVideoSamples count]>= 0x15)
      {
        [(NSMutableArray *)self->_wifiAudioVideoSamples removeObjectAtIndex:0];
      }
    }

    goto LABEL_2;
  }
}

void __63__FlowScrutinizer_updateAudioVideoSamplesWithTime_bumpSamples___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 startTimeIntervalSinceReferenceDate];
  v7 = v6;
  [v9 elapsedTime];
  if (v7 + v8 > *(a1 + 48) - *(*(a1 + 32) + 216) && ([v9 rxBytes] || objc_msgSend(v9, "txBytes")))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __63__FlowScrutinizer_updateAudioVideoSamplesWithTime_bumpSamples___block_invoke_47(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 startTimeIntervalSinceReferenceDate];
  v7 = v6;
  [v9 elapsedTime];
  if (v7 + v8 > *(a1 + 48) - *(*(a1 + 32) + 216) && ([v9 rxBytes] || objc_msgSend(v9, "txBytes")))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)updateTransferSizeFlowsWithTime:(double)a3
{
  v58 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_transferSizeFlows count])
  {
    [(NSMutableDictionary *)self->_transferSizeFlows allKeys];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v5 = v48 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v46;
      v10 = &flowScrutinyLogHandle;
      *&v7 = 134218754;
      v43 = v7;
      while (2)
      {
        v11 = 0;
        v44 = v8;
        do
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v45 + 1) + 8 * v11);
          v13 = [(NSMutableDictionary *)self->_transferSizeFlows objectForKeyedSubscript:v12, v43];
          v14 = [v13 expectedTransferState];
          if (v14 == 5)
          {
            [v13 transferStateEntryTimestamp];
            if (v15 == 0.0)
            {
              [v13 setTransferStateEntryTimestamp:a3];
            }

            else
            {
              [v13 transferStateEntryTimestamp];
              if (a3 - v16 > self->_transferSizeFlowFailedThresholdQuarantineTime)
              {
                v17 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v50 = v12;
                  _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer end of quarantine for flow %@", buf, 0xCu);
                }

                [v13 setExpectedTransferState:3];
              }
            }
          }

          else if (v14 == 2)
          {
            [v13 transferStateEntryTimestamp];
            if (a3 - v34 > 10.0)
            {
              v35 = [v13 appEpisode];

              if (v35)
              {
                v36 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
                {
                  v37 = v36;
                  v38 = [v13 appEpisode];
                  v39 = [v13 flowUUID];
                  *buf = 134218242;
                  v50 = v38;
                  v51 = 2112;
                  v52 = v39;
                  _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ in state kExpectedTransferStateProvisional", buf, 0x16u);
                }

                v40 = [v13 appEpisode];
                [v40 accrueRewardFromFlow:v13];

                [v13 setAppEpisode:0];
              }

              v41 = *v10;
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v50 = v12;
                _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "FlowScrutinizer unable to match Flow UUID %@ to actual flow", buf, 0xCu);
              }

              [(NSMutableDictionary *)self->_transferSizeFlows removeObjectForKey:v12];

              v13 = 0;
            }

            goto LABEL_39;
          }

          v18 = 0.0;
          if ([v13 lastSampleWasIdle])
          {
            v19 = [v13 alternatingIdleNonIdlePeriods];

            if (v19)
            {
              v20 = [v13 alternatingIdleNonIdlePeriods];
              v21 = [v20 lastObject];

              [v21 elapsedTime];
              v18 = v22;
            }
          }

          if (v18 > self->_maxFlowIdleTimeWhileMarkedWithTransferSize)
          {
            v23 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v13;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "FlowScrutinizer updateTransferSizeFlowsWithTime, excessive idle while marked with transfer size, clearing %@", buf, 0xCu);
            }

            [v13 setRxTransferSizeLowerThreshold:0];
            [v13 setRxTransferSizeUpperThreshold:0];
            [v13 setTxTransferSizeLowerThreshold:0];
            [v13 setTxTransferSizeUpperThreshold:0];
            [v13 setExpectedTransferState:1];
            v24 = [v13 appEpisode];

            if (v24)
            {
              v25 = *v10;
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
              {
                v26 = v25;
                v27 = [v13 appEpisode];
                [v13 flowUUID];
                v28 = v9;
                v29 = v5;
                v31 = v30 = v10;
                maxFlowIdleTimeWhileMarkedWithTransferSize = self->_maxFlowIdleTimeWhileMarkedWithTransferSize;
                *buf = v43;
                v50 = v27;
                v51 = 2112;
                v52 = v31;
                v53 = 2048;
                v54 = v18;
                v55 = 2048;
                v56 = maxFlowIdleTimeWhileMarkedWithTransferSize;
                _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ with idle time %f greater than: %f", buf, 0x2Au);

                v10 = v30;
                v5 = v29;
                v9 = v28;
                v8 = v44;
              }

              v33 = [v13 appEpisode];
              [v33 accrueRewardFromFlow:v13];

              [v13 setAppEpisode:0];
            }

            [(NSMutableDictionary *)self->_transferSizeFlows removeObjectForKey:v12];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    delegates = self->_delegates;
    if (!delegates)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_delegates;
      self->_delegates = v6;

      delegates = self->_delegates;
    }

    [(NSMutableSet *)delegates addObject:v4];
    v8 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      v9 = "FlowScrutinizer add delegate %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_23255B000, v10, v11, v9, &v14, 0xCu);
    }
  }

  else
  {
    v12 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      v9 = "FlowScrutinizer failed attempt to add delegate, selector not supported by %@";
      v10 = v12;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)a3
{
  delegates = self->_delegates;
  if (delegates)
  {
    [(NSMutableSet *)delegates removeObject:a3];
  }
}

- (void)cellFlowScrutinyOnBehalfOf:(id)a3 required:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  cellFlowScrutinyRequesters = self->_cellFlowScrutinyRequesters;
  v9 = v6;
  if (v4)
  {
    [(NSMutableSet *)cellFlowScrutinyRequesters addObject:v6];
    v8 = 2;
LABEL_3:
    self->_cellFlowsScrutinized = v8;
    goto LABEL_7;
  }

  [(NSMutableSet *)cellFlowScrutinyRequesters removeObject:v6];
  if (![(NSMutableSet *)self->_cellFlowScrutinyRequesters count]&& self->_cellFlowsScrutinized == 2)
  {
    v8 = 1;
    goto LABEL_3;
  }

LABEL_7:
}

- (void)wifiFlowScrutinyOnBehalfOf:(id)a3 required:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  wifiFlowScrutinyRequesters = self->_wifiFlowScrutinyRequesters;
  v9 = v6;
  if (v4)
  {
    [(NSMutableSet *)wifiFlowScrutinyRequesters addObject:v6];
    v8 = 2;
LABEL_3:
    self->_wifiFlowsScrutinized = v8;
    goto LABEL_7;
  }

  [(NSMutableSet *)wifiFlowScrutinyRequesters removeObject:v6];
  if (![(NSMutableSet *)self->_wifiFlowScrutinyRequesters count]&& self->_wifiFlowsScrutinized == 2)
  {
    v8 = 1;
    goto LABEL_3;
  }

LABEL_7:
}

- (void)assetDownloadScrutinyOnBehalfOf:(id)a3 required:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  assetDownloadScrutinyRequesters = self->_assetDownloadScrutinyRequesters;
  v9 = v6;
  if (v4)
  {
    [(NSMutableSet *)assetDownloadScrutinyRequesters addObject:v6];
    v8 = 1;
  }

  else
  {
    [(NSMutableSet *)assetDownloadScrutinyRequesters removeObject:v6];
    if ([(NSMutableSet *)self->_assetDownloadScrutinyRequesters count])
    {
      goto LABEL_6;
    }

    [(FlowScrutinizer *)self _coreMediaAssetDownloadFlushAll];
    v8 = 0;
  }

  self->_assetDownloadsScrutinized = v8;
LABEL_6:
}

- (void)expectedTransferScrutinyOnBehalfOf:(id)a3 required:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  expectedTransferScrutinyRequesters = self->_expectedTransferScrutinyRequesters;
  v9 = v6;
  if (v4)
  {
    [(NSMutableSet *)expectedTransferScrutinyRequesters addObject:v6];
    v8 = 1;
  }

  else
  {
    [(NSMutableSet *)expectedTransferScrutinyRequesters removeObject:v6];
    if ([(NSMutableSet *)self->_expectedTransferScrutinyRequesters count])
    {
      goto LABEL_6;
    }

    v8 = 0;
  }

  self->_expectedTransfersScrutinized = v8;
LABEL_6:
}

- (void)flushInactiveLedgersAtMachAbsTime:(unint64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableDictionary *)self->_originLedgers allKeys];
  v6 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "flushInactiveLedgers check list is %{public}@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    *&v9 = 138543618;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:v13, v19, v20];
        v15 = [(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v14 atMachAbsTime:a3];
        v16 = flowScrutinyLogHandle;
        if (v15)
        {
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v25 = v13;
            v26 = 2114;
            v27 = v14;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Flush top level origin ledger %{public}@ -> %{public}@", buf, 0x16u);
          }

          [(NSMutableDictionary *)self->_originLedgers setObject:0 forKeyedSubscript:v13];
        }

        else if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = v19;
          v25 = v13;
          v26 = 2114;
          v27 = v14;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "Skip flush top level origin ledger %{public}@ -> %{public}@", buf, 0x16u);
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v10);
  }

  v17 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "flushInactiveLedgers complete", buf, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFlushableOriginLedgerAfterFlushingSubsidiaries:(id)a3 atMachAbsTime:(unint64_t)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 appExtensions];

  if (v7)
  {
    v8 = [v6 appExtensions];
    v9 = [v8 allKeys];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v80 objects:v96 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v81;
      *&v12 = 138543618;
      v70 = v12;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v81 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v80 + 1) + 8 * i);
          v17 = [v6 appExtensions];
          v18 = [v17 objectForKeyedSubscript:v16];

          if ([(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v18 atMachAbsTime:a4])
          {
            v19 = flowScrutinyLogHandle;
            if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v70;
              v85 = v16;
              v86 = 2114;
              v87 = v18;
              _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Flush extension origin ledger %{public}@ -> %{public}@", buf, 0x16u);
            }

            v20 = [v6 appExtensions];
            [v20 setObject:0 forKeyedSubscript:v16];
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v80 objects:v96 count:16];
      }

      while (v13);
    }

    v21 = [v6 appExtensions];
    v22 = [v21 count];

    if (!v22)
    {
      [v6 setAppExtensions:0];
    }
  }

  v23 = [v6 delegates];

  if (v23)
  {
    v24 = [v6 delegates];
    v25 = [v24 allKeys];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v76 objects:v95 count:16];
    if (v27)
    {
      v29 = v27;
      v30 = *v77;
      *&v28 = 138543618;
      v71 = v28;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v77 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v76 + 1) + 8 * j);
          v33 = [v6 delegates];
          v34 = [v33 objectForKeyedSubscript:v32];

          if ([(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v34 atMachAbsTime:a4])
          {
            v35 = flowScrutinyLogHandle;
            if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v71;
              v85 = v32;
              v86 = 2114;
              v87 = v34;
              _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "Flush delegate origin ledger %{public}@ -> %{public}@", buf, 0x16u);
            }

            v36 = [v6 delegates];
            [v36 setObject:0 forKeyedSubscript:v32];
          }
        }

        v29 = [v26 countByEnumeratingWithState:&v76 objects:v95 count:16];
      }

      while (v29);
    }

    v37 = [v6 delegates];
    v38 = [v37 count];

    if (!v38)
    {
      [v6 setDelegates:0];
    }
  }

  v39 = [v6 activityBitmaps];

  if (v39)
  {
    v40 = [v6 activityBitmaps];
    v41 = [v40 allKeys];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v39 = v41;
    v42 = [v39 countByEnumeratingWithState:&v72 objects:v94 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v73;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v73 != v44)
          {
            objc_enumerationMutation(v39);
          }

          v46 = *(*(&v72 + 1) + 8 * k);
          v47 = [v6 activityBitmaps];
          v48 = [v47 objectForKeyedSubscript:v46];

          if ([v48 isOutdated:a4])
          {
            v49 = [v6 activityBitmaps];
            [v49 setObject:0 forKeyedSubscript:v46];
          }

          else
          {
            [v48 freeUpBufferSpace];
          }
        }

        v43 = [v39 countByEnumeratingWithState:&v72 objects:v94 count:16];
      }

      while (v43);
    }

    v50 = [v6 activityBitmaps];
    v51 = [v50 count];

    if (!v51)
    {
      [v6 setActivityBitmaps:0];
    }
  }

  v52 = [v6 appExtensions];
  if (v52 || ([v6 delegates], (v52 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v53 = v52;
LABEL_48:

    goto LABEL_49;
  }

  v53 = [v6 currentFlows];
  if (v53)
  {
    v39 = [v6 currentFlows];
    if ([v39 count])
    {

      goto LABEL_48;
    }
  }

  v65 = [v6 activityBitmaps];
  if (v65)
  {
    v66 = [v6 activityBitmaps];
    if ([v66 count])
    {
      v67 = 0;
    }

    else
    {
      [v6 durationSinceLastUse];
      v67 = v69 > 900.0;
    }
  }

  else
  {
    [v6 durationSinceLastUse];
    v67 = v68 > 900.0;
  }

  if (v53)
  {
  }

  if (v67)
  {
    v62 = 1;
    goto LABEL_52;
  }

LABEL_49:
  v54 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v55 = v54;
    v56 = [v6 name];
    [v6 durationSinceLastUse];
    v58 = v57;
    v59 = [v6 appExtensions];
    v60 = [v6 delegates];
    v61 = [v6 activityBitmaps];
    *buf = 138544386;
    v85 = v56;
    v86 = 2048;
    v87 = v58;
    v88 = 2114;
    v89 = v59;
    v90 = 2114;
    v91 = v60;
    v92 = 2114;
    v93 = v61;
    _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "Skip flush origin ledger, name %{public}@ duration %.3f extensions %{public}@ delegates %{public}@ bitmaps %{public}@", buf, 0x34u);
  }

  v62 = 0;
LABEL_52:

  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

- (void)addFlowStateForOrigin:(id)a3 array:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v5 currentFlows];
  v43 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v43)
  {
    v42 = *v55;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v54 + 1) + 8 * i);
        v9 = [v5 currentFlows];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = MEMORY[0x277CCACA8];
        v12 = [v10 briefDescription];
        v13 = [v11 stringWithFormat:@"      %@", v12];

        [v6 addObject:v13];
        v14 = [v10 alternatingIdleNonIdlePeriods];
        if (v14)
        {
          v15 = v14;
          v16 = [v10 alternatingIdleNonIdlePeriods];
          v17 = [v16 count];

          if (v17)
          {
            v44 = v13;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v18 = [v10 alternatingIdleNonIdlePeriods];
            v19 = [v18 countByEnumeratingWithState:&v50 objects:v59 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v51;
              v22 = @"           idle/non-idle   %@";
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v51 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v24 = [MEMORY[0x277CCACA8] stringWithFormat:v22, *(*(&v50 + 1) + 8 * j)];
                  [v6 addObject:v24];

                  v22 = @"                           %@";
                }

                v20 = [v18 countByEnumeratingWithState:&v50 objects:v59 count:16];
                v22 = @"                           %@";
              }

              while (v20);
            }

            v13 = v44;
          }
        }

        v25 = [v10 nonIdleSamples];
        if (v25)
        {
          v26 = v25;
          v27 = [v10 nonIdleSamples];
          v28 = [v27 count];

          if (v28)
          {
            v45 = v13;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v29 = [v10 nonIdleSamples];
            v30 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v47;
              v33 = @"           continuous      %@";
              do
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v47 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v35 = [MEMORY[0x277CCACA8] stringWithFormat:v33, *(*(&v46 + 1) + 8 * k)];
                  [v6 addObject:v35];

                  v33 = @"                           %@";
                }

                v31 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
                v33 = @"                           %@";
              }

              while (v31);
            }

            v36 = [v10 statisticsDescription];
            if (v36)
            {
              v37 = MEMORY[0x277CCACA8];
              v38 = [v10 flowType];
              v39 = [v37 stringWithFormat:@"           %@ %@", v38, v36];
              [v6 addObject:v39];
            }

            v13 = v45;
          }
        }
      }

      v43 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v43);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)addStateForOrigin:(id)a3 named:(id)a4 array:(id)a5 isExtension:(BOOL)a6 isDelegate:(BOOL)a7 verbose:(BOOL)a8
{
  v86 = a8;
  v8 = a7;
  v9 = a6;
  v107 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v8)
  {
    v15 = @"    ";
    if (!v9)
    {
      v15 = @"  ";
    }

    obj = v15;
    v16 = &stru_2847966D8;
    v17 = @"delegate";
    v18 = @"extension-delegate";
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(combined cell rx %lld tx %lld wifi rx %lld tx %lld) ", objc_msgSend(v12, "totalWithDelegatesCellRxBytes"), objc_msgSend(v12, "totalWithDelegatesCellTxBytes"), objc_msgSend(v12, "totalWithDelegatesWiFiRxBytes"), objc_msgSend(v12, "totalWithDelegatesWiFiTxBytes")];
    v19 = &stru_2847966D8;
    if (v9)
    {
      v19 = @"  ";
    }

    obj = v19;
    v17 = @"for";
    v18 = @"extension";
  }

  v20 = MEMORY[0x277CCACA8];
  v84 = v9;
  if (v9)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  v22 = [v12 totalObservedCellRxBytes];
  v23 = [v12 totalObservedWiFiRxBytes] + v22;
  v24 = [v12 totalObservedWiFiTxBytes];
  v25 = [v12 totalObservedWiFiTxBytes] + v24;
  v26 = [v12 closedFlows];
  [v12 lastUsed];
  v28 = dateStringMillisecondsFromReferenceInterval(v27);
  v80 = v13;
  v29 = [v20 stringWithFormat:@"%@ FlowOriginLedger %@ %@, rx %lld tx %lld %@num closed %lld last access %@", obj, v21, v13, v23, v25, v16, v26, v28];

  v79 = v29;
  [v14 addObject:v29];
  v81 = v16;
  if (v86)
  {
    v30 = [v12 activityBitmaps];
    if (v30)
    {
      v31 = v30;
      v32 = [v12 activityBitmaps];
      v33 = [v32 count];

      if (v33)
      {
        v34 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"    Associated bitmaps: "];
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        obja = [v12 activityBitmaps];
        v35 = [obja countByEnumeratingWithState:&v99 objects:v106 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v100;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v100 != v37)
              {
                objc_enumerationMutation(obja);
              }

              v39 = *(*(&v99 + 1) + 8 * i);
              v40 = [(__CFString *)v39 intValue];
              v41 = @"CompanionLink";
              if (v40 != 7)
              {
                v41 = v39;
              }

              if (v40 == 5)
              {
                v41 = @"Cell";
              }

              if (v40 == 3)
              {
                v42 = @"WiFi";
              }

              else
              {
                v42 = v41;
              }

              v43 = [v12 activityBitmaps];
              v44 = [v43 objectForKeyedSubscript:v39];
              [v34 appendFormat:@"%@ -> %@ ", v42, v44];
            }

            v36 = [obja countByEnumeratingWithState:&v99 objects:v106 count:16];
          }

          while (v36);
        }

        [v14 addObject:v34];
      }
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v45 = [v12 currentAssetDownloads];
    v46 = [v45 countByEnumeratingWithState:&v95 objects:v105 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v96;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v96 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v95 + 1) + 8 * j);
          v51 = [v12 currentAssetDownloads];
          v52 = [v51 objectForKeyedSubscript:v50];

          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"      AssetDownload %@:  %@", v50, v52];
          [v14 addObject:v53];
        }

        v47 = [v45 countByEnumeratingWithState:&v95 objects:v105 count:16];
      }

      while (v47);
    }

    [(FlowScrutinizer *)self addFlowStateForOrigin:v12 array:v14];
    v16 = v81;
  }

  v54 = [v12 delegates];

  if (v54)
  {
    v55 = [v12 delegates];
    v56 = [v55 allKeys];
    v57 = [v56 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v58 = v57;
    v59 = [v58 countByEnumeratingWithState:&v91 objects:v104 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v92;
      do
      {
        for (k = 0; k != v60; ++k)
        {
          if (*v92 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v91 + 1) + 8 * k);
          v64 = [v12 delegates];
          v65 = [v64 objectForKeyedSubscript:v63];

          [(FlowScrutinizer *)self addStateForOrigin:v65 named:v63 array:v14 isExtension:v84 isDelegate:1 verbose:v86];
        }

        v60 = [v58 countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v60);
    }

    v16 = v81;
  }

  v66 = [v12 appExtensions];

  if (v66)
  {
    v67 = [v12 appExtensions];
    v68 = [v67 allKeys];
    v69 = [v68 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v70 = v69;
    v71 = [v70 countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v88;
      do
      {
        for (m = 0; m != v72; ++m)
        {
          if (*v88 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v87 + 1) + 8 * m);
          v76 = [v12 appExtensions];
          v77 = [v76 objectForKeyedSubscript:v75];

          [(FlowScrutinizer *)self addStateForOrigin:v77 named:v75 array:v14 isExtension:1 isDelegate:0 verbose:v86];
        }

        v72 = [v70 countByEnumeratingWithState:&v87 objects:v103 count:16];
      }

      while (v72);
    }

    v16 = v81;
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)restoreDefaults
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer restore configuration defaults", v4, 2u);
  }

  *&self->_maxContinuouslyActiveSamples = xmmword_232816E40;
  *&self->_minCoreMediaAssetDownloadEstimatedDuration = vdupq_n_s64(0x4082C00000000000uLL);
  self->_maxFlowIdleTimeWhileMarkedWithTransferSize = 900.0;
  self->_idleDurationStopNonCoreMediaThroughputReporting = 10.0;
}

- (int)setConfiguration:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer handle new configuration parameters %{public}@", &v9, 0xCu);
  }

  [v4 extractKey:@"maxActiveSamples" toUint64:&self->_maxContinuouslyActiveSamples defaultTo:30];
  [v4 extractKey:@"maxAlternatingSamples" toUint64:&self->_maxAlternatingIdleNonIdleSamples defaultTo:21];
  [v4 extractKey:@"maxAlternatingSamples" toDouble:&self->_minCoreMediaAssetDownloadEstimatedDuration defaultTo:600.0];
  [v4 extractKey:@"TransferSizeFailedThresholdQuarantineTime" toDouble:&self->_transferSizeFlowFailedThresholdQuarantineTime defaultTo:600.0];
  [v4 extractKey:@"MaxFlowIdleTimeWhileMarkedWithTransferSize" toDouble:&self->_maxFlowIdleTimeWhileMarkedWithTransferSize defaultTo:900.0];
  [v4 extractKey:@"IdleDurationStopNonCoreMediaThroughputReporting" toDouble:&self->_idleDurationStopNonCoreMediaThroughputReporting defaultTo:10.0];
  v6 = [v4 objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(FlowScrutinizer *)self restoreDefaults];
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

@end