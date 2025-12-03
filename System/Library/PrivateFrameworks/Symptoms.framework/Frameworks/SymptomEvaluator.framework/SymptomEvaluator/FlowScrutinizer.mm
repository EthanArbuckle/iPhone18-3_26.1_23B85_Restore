@interface FlowScrutinizer
+ (FlowScrutinizer)sharedInstance;
- (BOOL)isFlushableOriginLedgerAfterFlushingSubsidiaries:(id)subsidiaries atMachAbsTime:(unint64_t)time;
- (FlowScrutinizer)init;
- (id)_findFlowOriginLedgerWithSnapshot:(id)snapshot;
- (int)setConfiguration:(id)configuration;
- (unsigned)_dispositionForPossibleLargeTransferOn:(id)on provisionally:(unsigned int)provisionally;
- (void)_coreMediaAssetDownloadCompletion:(id)completion for:(id)for at:(double)at;
- (void)_coreMediaAssetDownloadFlushAll;
- (void)_handleFlowDeltas:(id)deltas snapshot:(id)snapshot;
- (void)addActivityBitmapFromSnapshot:(id)snapshot;
- (void)addDelegate:(id)delegate;
- (void)addFlowStateForOrigin:(id)origin array:(id)array;
- (void)addStateForOrigin:(id)origin named:(id)named array:(id)array isExtension:(BOOL)extension isDelegate:(BOOL)delegate verbose:(BOOL)verbose;
- (void)assetDownloadScrutinyOnBehalfOf:(id)of required:(BOOL)required;
- (void)cellFlowScrutinyOnBehalfOf:(id)of required:(BOOL)required;
- (void)clearAVSamplesIfAllIdle:(id)idle time:(double)time;
- (void)expectedTransferScrutinyOnBehalfOf:(id)of required:(BOOL)required;
- (void)flushInactiveLedgersAtMachAbsTime:(unint64_t)time;
- (void)noteCoreMediaAssetDownloadEvent:(unint64_t)event downloadUUID:(id)d byProcess:(id)process onBehalfOf:(id)of duration:(double)duration at:(double)at;
- (void)removeDelegate:(id)delegate;
- (void)restoreDefaults;
- (void)scrutinizeFlow:(id)flow withClassification:(id)classification;
- (void)updateAudioVideoSamplesWithTime:(double)time bumpSamples:(BOOL)samples;
- (void)updateTransferSizeFlowsWithTime:(double)time;
- (void)wifiFlowScrutinyOnBehalfOf:(id)of required:(BOOL)required;
@end

@implementation FlowScrutinizer

+ (FlowScrutinizer)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__FlowScrutinizer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (unsigned)_dispositionForPossibleLargeTransferOn:(id)on provisionally:(unsigned int)provisionally
{
  v21 = *MEMORY[0x277D85DE8];
  onCopy = on;
  if ([onCopy rxTransferSizeUpperThreshold])
  {
    if (([onCopy txTransferSizeUpperThreshold] & 1) == 0 && (objc_msgSend(onCopy, "txTransferSizeLowerThreshold") & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  rxTransferSizeLowerThreshold = [onCopy rxTransferSizeLowerThreshold];
  if ([onCopy txTransferSizeUpperThreshold])
  {
    if (rxTransferSizeLowerThreshold)
    {
      goto LABEL_10;
    }

LABEL_13:
    provisionallyCopy = 33;
    goto LABEL_15;
  }

  txTransferSizeLowerThreshold = [onCopy txTransferSizeLowerThreshold];
  if (rxTransferSizeLowerThreshold)
  {
    if ((txTransferSizeLowerThreshold & 1) == 0)
    {
LABEL_11:
      provisionallyCopy = 32;
      goto LABEL_15;
    }

LABEL_10:
    provisionallyCopy = 34;
    goto LABEL_15;
  }

  if (txTransferSizeLowerThreshold)
  {
    goto LABEL_13;
  }

  [onCopy setHasPossibleTransferSizeDisposition:0];
  provisionallyCopy = provisionally;
LABEL_15:
  v9 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v13 = 134218754;
    flowIdentifier = [onCopy flowIdentifier];
    v15 = 1024;
    provisionallyCopy2 = provisionally;
    v17 = 1024;
    v18 = provisionallyCopy;
    v19 = 2112;
    v20 = onCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "_dispositionForPossibleLargeTransferOn: %lld  %d -> %d on %@", &v13, 0x22u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return provisionallyCopy;
}

- (void)_handleFlowDeltas:(id)deltas snapshot:(id)snapshot
{
  v113 = *MEMORY[0x277D85DE8];
  deltasCopy = deltas;
  snapshotCopy = snapshot;
  [snapshotCopy flowSnapshotTimeIntervalSinceReferenceDate];
  v9 = v8;
  [deltasCopy prevSampleTime];
  v11 = v9 - v10;
  [snapshotCopy flowSnapshotTimeIntervalSinceReferenceDate];
  [deltasCopy setPrevSampleTime:?];
  deltaAccountingRxCellularBytes = [snapshotCopy deltaAccountingRxCellularBytes];
  deltaAccountingTxCellularBytes = [snapshotCopy deltaAccountingTxCellularBytes];
  deltaAccountingRxWiFiBytes = [snapshotCopy deltaAccountingRxWiFiBytes];
  deltaAccountingTxWiFiBytes = [snapshotCopy deltaAccountingTxWiFiBytes];
  v16 = deltaAccountingTxWiFiBytes;
  if (!deltaAccountingRxCellularBytes && !deltaAccountingTxCellularBytes && !deltaAccountingRxWiFiBytes && !deltaAccountingTxWiFiBytes)
  {
    if ([deltasCopy lastSampleWasIdle])
    {
      alternatingIdleNonIdlePeriods = [deltasCopy alternatingIdleNonIdlePeriods];
      lastObject = [alternatingIdleNonIdlePeriods lastObject];

      [(FlowSample *)lastObject elapsedTime];
      [(FlowSample *)lastObject setElapsedTime:v11 + v19];
    }

    else
    {
      [deltasCopy pendingFlowNonIdleDuration];
      [deltasCopy setPendingFlowNonIdleDuration:v11 + v30];
      [deltasCopy pendingFlowNonIdleDuration];
      v11 = v31;
      if (v31 <= 0.8)
      {
        goto LABEL_26;
      }

      [deltasCopy setPendingFlowNonIdleDuration:0.0];
      [deltasCopy setLastSampleWasIdle:1];
      alternatingIdleNonIdlePeriods2 = [deltasCopy alternatingIdleNonIdlePeriods];

      if (!alternatingIdleNonIdlePeriods2)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [deltasCopy setAlternatingIdleNonIdlePeriods:v33];
      }

      nonIdleSamples = [deltasCopy nonIdleSamples];
      if (nonIdleSamples)
      {
        v35 = nonIdleSamples;
        nonIdleSamples2 = [deltasCopy nonIdleSamples];
        v37 = [nonIdleSamples2 count];

        if (v37)
        {
          nonIdleSamples3 = [deltasCopy nonIdleSamples];
          v39 = [nonIdleSamples3 objectAtIndexedSubscript:0];

          nonIdleSamples4 = [deltasCopy nonIdleSamples];
          v41 = [nonIdleSamples4 count];

          if (v41 >= 2)
          {
            v42 = 1;
            do
            {
              nonIdleSamples5 = [deltasCopy nonIdleSamples];
              v44 = [nonIdleSamples5 objectAtIndexedSubscript:v42];
              [v39 accumulateFrom:v44];

              ++v42;
              nonIdleSamples6 = [deltasCopy nonIdleSamples];
              v46 = [nonIdleSamples6 count];
            }

            while (v46 > v42);
          }

          nonIdleSamples7 = [deltasCopy nonIdleSamples];
          [nonIdleSamples7 removeAllObjects];

          alternatingIdleNonIdlePeriods3 = [deltasCopy alternatingIdleNonIdlePeriods];
          [alternatingIdleNonIdlePeriods3 addObject:v39];
        }
      }

      lastObject = objc_alloc_init(FlowSample);
      [(FlowSample *)lastObject setElapsedTime:v11];
      alternatingIdleNonIdlePeriods4 = [deltasCopy alternatingIdleNonIdlePeriods];
      [alternatingIdleNonIdlePeriods4 addObject:lastObject];

      alternatingIdleNonIdlePeriods5 = [deltasCopy alternatingIdleNonIdlePeriods];
      v51 = [alternatingIdleNonIdlePeriods5 count];
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
          alternatingIdleNonIdlePeriods6 = [deltasCopy alternatingIdleNonIdlePeriods];
          [alternatingIdleNonIdlePeriods6 removeObjectAtIndex:0];

          alternatingIdleNonIdlePeriods7 = [deltasCopy alternatingIdleNonIdlePeriods];
          v55 = [alternatingIdleNonIdlePeriods7 count];
          v56 = self->_maxAlternatingIdleNonIdleSamples;
        }

        while (v55 > v56);
      }
    }

    deltaAccountingTxCellularBytes = 0;
LABEL_26:
    [deltasCopy flowIdleDuration];
    [deltasCopy setFlowIdleDuration:v11 + v57];
    goto LABEL_57;
  }

  [deltasCopy setLastSampleWasIdle:0];
  nonIdleSamples8 = [deltasCopy nonIdleSamples];

  if (!nonIdleSamples8)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [deltasCopy setNonIdleSamples:v21];
  }

  nonIdleSamples9 = [deltasCopy nonIdleSamples];
  lastObject2 = [nonIdleSamples9 lastObject];

  [deltasCopy pendingFlowNonIdleDuration];
  if (v24 > 0.0)
  {
    if (lastObject2)
    {
      [deltasCopy pendingFlowNonIdleDuration];
      v26 = v25 * 0.5;
      [lastObject2 elapsedTime];
      [lastObject2 setElapsedTime:v27 + v26];
      [deltasCopy pendingFlowNonIdleDuration];
      v29 = v28 * 0.5;
    }

    else
    {
      v58 = deltaAccountingTxCellularBytes;
      v59 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v103 = deltasCopy;
        _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, "_handleFlowDeltas finds no prev sample when pendingFlowNonIdleDuration, ledger %{public}@", buf, 0xCu);
      }

      [deltasCopy pendingFlowNonIdleDuration];
      deltaAccountingTxCellularBytes = v58;
    }

    v11 = v11 + v29;
    [deltasCopy setPendingFlowNonIdleDuration:0.0];
  }

  if (lastObject2 && (([lastObject2 elapsedTime], v11 < 0.8) || v11 + v60 < 2.0))
  {
    [lastObject2 elapsedTime];
    [lastObject2 setElapsedTime:v11 + v76];
    [lastObject2 setTotalObservedCellRxBytes:{objc_msgSend(lastObject2, "totalObservedCellRxBytes") + objc_msgSend(snapshotCopy, "deltaAccountingRxCellularBytes")}];
    [lastObject2 setTotalObservedCellTxBytes:{objc_msgSend(lastObject2, "totalObservedCellTxBytes") + objc_msgSend(snapshotCopy, "deltaAccountingTxCellularBytes")}];
    [lastObject2 setTotalObservedWiFiRxBytes:{objc_msgSend(lastObject2, "totalObservedWiFiRxBytes") + deltaAccountingRxWiFiBytes}];
    [lastObject2 setTotalObservedWiFiTxBytes:{objc_msgSend(lastObject2, "totalObservedWiFiTxBytes") + v16}];
  }

  else
  {
    v61 = deltaAccountingTxCellularBytes;
    v62 = objc_alloc_init(FlowSample);
    [(FlowSample *)v62 setElapsedTime:v11];
    [(FlowSample *)v62 setTotalObservedCellRxBytes:deltaAccountingRxCellularBytes];
    log = v61;
    [(FlowSample *)v62 setTotalObservedCellTxBytes:v61];
    v98 = deltaAccountingRxWiFiBytes;
    [(FlowSample *)v62 setTotalObservedWiFiRxBytes:deltaAccountingRxWiFiBytes];
    v99 = v16;
    [(FlowSample *)v62 setTotalObservedWiFiTxBytes:v16];
    if ([snapshotCopy interfaceCellular])
    {
      flowuuid = [snapshotCopy flowuuid];
      [(FlowSample *)v62 acquireCeilingValuesForCellFlow:flowuuid];
    }

    nonIdleSamples10 = [deltasCopy nonIdleSamples];
    [nonIdleSamples10 addObject:v62];

    nonIdleSamples11 = [deltasCopy nonIdleSamples];
    v66 = [nonIdleSamples11 count];
    maxContinuouslyActiveSamples = self->_maxContinuouslyActiveSamples;

    if (v66 > maxContinuouslyActiveSamples)
    {
      do
      {
        nonIdleSamples12 = [deltasCopy nonIdleSamples];
        v69 = [nonIdleSamples12 objectAtIndexedSubscript:0];
        nonIdleSamples13 = [deltasCopy nonIdleSamples];
        v71 = [nonIdleSamples13 objectAtIndexedSubscript:1];
        [v69 accumulateFrom:v71];

        nonIdleSamples14 = [deltasCopy nonIdleSamples];
        [nonIdleSamples14 removeObjectAtIndex:1];

        nonIdleSamples15 = [deltasCopy nonIdleSamples];
        v74 = [nonIdleSamples15 count];
        v75 = self->_maxContinuouslyActiveSamples;
      }

      while (v74 > v75);
    }

    deltaAccountingRxWiFiBytes = v98;
    v16 = v99;
    deltaAccountingTxCellularBytes = log;
  }

  if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
  {
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setTotalRxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_cellInterfaceSampler totalRxIfTypeBytes]+ deltaAccountingRxCellularBytes];
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setTotalTxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_cellInterfaceSampler totalTxIfTypeBytes]+ deltaAccountingTxCellularBytes];
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setLastInterfaceTrafficTimestamp:apparentTime()];
  }

  if (deltaAccountingRxWiFiBytes | v16)
  {
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setTotalRxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler totalRxIfTypeBytes]+ deltaAccountingRxWiFiBytes];
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setTotalTxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler totalTxIfTypeBytes]+ v16];
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setLastInterfaceTrafficTimestamp:apparentTime()];
  }

  [deltasCopy setTotalObservedCellRxBytes:{objc_msgSend(deltasCopy, "totalObservedCellRxBytes") + deltaAccountingRxCellularBytes}];
  [deltasCopy setTotalObservedCellTxBytes:{objc_msgSend(deltasCopy, "totalObservedCellTxBytes") + deltaAccountingTxCellularBytes}];
  [deltasCopy setTotalObservedWiFiRxBytes:{objc_msgSend(deltasCopy, "totalObservedWiFiRxBytes") + deltaAccountingRxWiFiBytes}];
  [deltasCopy setTotalObservedWiFiTxBytes:{objc_msgSend(deltasCopy, "totalObservedWiFiTxBytes") + v16}];
  if (trafficClassIsAudioVideo([snapshotCopy trafficClass]))
  {
    if (([snapshotCopy isADaemon] & 1) != 0 || !objc_msgSend(snapshotCopy, "uiBackgroundAudioCapable"))
    {
      v83 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        loga = v83;
        processName = [snapshotCopy processName];
        processID = [snapshotCopy processID];
        v86 = deltaAccountingTxCellularBytes;
        v87 = deltaAccountingRxWiFiBytes;
        isADaemon = [snapshotCopy isADaemon];
        uiBackgroundAudioCapable = [snapshotCopy uiBackgroundAudioCapable];
        *buf = 138413058;
        v103 = processName;
        v104 = 1024;
        *v105 = processID;
        *&v105[4] = 1024;
        *&v105[6] = isADaemon;
        deltaAccountingRxWiFiBytes = v87;
        deltaAccountingTxCellularBytes = v86;
        LOWORD(v106) = 1024;
        *(&v106 + 2) = uiBackgroundAudioCapable;
        _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_DEBUG, "Ignoring A/V bytes from %@[%d], daemon = %d, backgroundAudio = %d", buf, 0x1Eu);
      }
    }

    else
    {
      v77 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
      {
        v78 = v77;
        processName2 = [snapshotCopy processName];
        processID2 = [snapshotCopy processID];
        *buf = 134219266;
        v103 = deltaAccountingRxCellularBytes;
        v104 = 2048;
        *v105 = deltaAccountingRxWiFiBytes;
        *&v105[8] = 2048;
        v106 = deltaAccountingTxCellularBytes;
        v107 = 2048;
        v108 = v16;
        v109 = 2112;
        v110 = processName2;
        v111 = 1024;
        v112 = processID2;
        _os_log_impl(&dword_23255B000, v78, OS_LOG_TYPE_INFO, "Accumulating A/V cell/Wifi  rx: %llu/%llu, tx: %llu/%llu bytes from %@[%d]", buf, 0x3Au);
      }

      v81 = self->_totalCellAudioVideoTxBytes + deltaAccountingTxCellularBytes;
      self->_totalCellAudioVideoRxBytes += deltaAccountingRxCellularBytes;
      self->_totalCellAudioVideoTxBytes = v81;
      v82 = self->_totalWiFiAudioVideoTxBytes + v16;
      self->_totalWiFiAudioVideoRxBytes += deltaAccountingRxWiFiBytes;
      self->_totalWiFiAudioVideoTxBytes = v82;
    }
  }

  v90 = mbpsThroughput(deltaAccountingRxWiFiBytes + deltaAccountingRxCellularBytes, v11);
  v91 = mbpsThroughput(v16 + deltaAccountingTxCellularBytes, v11);
  [deltasCopy maxRxThroughput];
  if (v90 > v92)
  {
    [deltasCopy setMaxRxThroughput:v90];
  }

  [deltasCopy maxTxThroughput];
  if (v91 > v93)
  {
    [deltasCopy setMaxTxThroughput:v91];
  }

  [deltasCopy flowNonIdleDuration];
  [deltasCopy setFlowNonIdleDuration:v11 + v94];
LABEL_57:
  if ([snapshotCopy firstOccurrence])
  {
    if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
    {
LABEL_64:
      v96 = 1;
      goto LABEL_65;
    }

LABEL_62:
    if (([snapshotCopy interfaceCellular] & 1) == 0 && !objc_msgSend(snapshotCopy, "rxCellularBytes"))
    {
      v96 = 1;
      if (![snapshotCopy txCellularBytes])
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    goto LABEL_64;
  }

  snapshotReason = [snapshotCopy snapshotReason];
  v96 = snapshotReason == 2;
  if (!(deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes))
  {
    if (snapshotReason != 2)
    {
      if (!(deltaAccountingRxWiFiBytes | v16))
      {
        goto LABEL_74;
      }

      goto LABEL_67;
    }

    goto LABEL_62;
  }

LABEL_65:
  [(FlowHistorian *)self->_cellInterfaceSampler applyDeltaRx:deltaAccountingRxCellularBytes deltaTx:deltaAccountingTxCellularBytes snapshot:snapshotCopy];
LABEL_66:
  if (deltaAccountingRxWiFiBytes | v16 || v96 && (([snapshotCopy interfaceWiFi] & 1) != 0 || objc_msgSend(snapshotCopy, "rxWiFiBytes") || objc_msgSend(snapshotCopy, "txWiFiBytes")))
  {
LABEL_67:
    [(FlowHistorian *)self->_wifiInterfaceSampler applyDeltaRx:deltaAccountingRxWiFiBytes deltaTx:v16 snapshot:snapshotCopy];
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
              delegates = [v4 delegates];
              v2 = [delegates objectForKeyedSubscript:v10];

              if (v2)
              {
                currentAssetDownloads = [v2 currentAssetDownloads];

                if (currentAssetDownloads)
                {
                  v13 = flowScrutinyLogHandle;
                  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    v14 = v13;
                    currentAssetDownloads2 = [v2 currentAssetDownloads];
                    *buf = 138412290;
                    v31 = currentAssetDownloads2;
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

- (void)_coreMediaAssetDownloadCompletion:(id)completion for:(id)for at:(double)at
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  forCopy = for;
  downloadState = [completionCopy downloadState];
  [completionCopy thisRunStartTime];
  v11 = at - v10;
  if (downloadState == 3)
  {
    [completionCopy prevRunIdleTime];
    [completionCopy setPrevRunIdleTime:v12 + v11];
  }

  else
  {
    [completionCopy prevRunBusyTime];
    [completionCopy setPrevRunBusyTime:v13 + v11];
    [completionCopy setPrevRunsCellRxBytes:{objc_msgSend(forCopy, "totalObservedCellRxBytes") - objc_msgSend(completionCopy, "thisRunStartCellRxBytes") + objc_msgSend(completionCopy, "prevRunsCellRxBytes")}];
    [completionCopy setPrevRunsCellTxBytes:{objc_msgSend(forCopy, "totalObservedCellTxBytes") - objc_msgSend(completionCopy, "thisRunStartCellTxBytes") + objc_msgSend(completionCopy, "prevRunsCellTxBytes")}];
    [completionCopy setPrevRunsWiFiRxBytes:{objc_msgSend(forCopy, "totalObservedWiFiRxBytes") - objc_msgSend(completionCopy, "thisRunStartWiFiRxBytes") + objc_msgSend(completionCopy, "prevRunsWiFiRxBytes")}];
    [completionCopy setPrevRunsWiFiTxBytes:{objc_msgSend(forCopy, "totalObservedWiFiTxBytes") - objc_msgSend(completionCopy, "thisRunStartWiFiTxBytes") + objc_msgSend(completionCopy, "prevRunsWiFiTxBytes")}];
  }

  v14 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = completionCopy;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer finishing asset download %@", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)noteCoreMediaAssetDownloadEvent:(unint64_t)event downloadUUID:(id)d byProcess:(id)process onBehalfOf:(id)of duration:(double)duration at:(double)at
{
  v121 = *MEMORY[0x277D85DE8];
  dCopy = d;
  processCopy = process;
  ofCopy = of;
  if (activeTraceTargets)
  {
    traceEntry(1, "[FlowScrutinizer noteCoreMediaAssetDownloadEvent:downloadUUID:byProcess:onBehalfOf:duration:at:]", "%d %@ %@ %@ %f %t", v16, v17, v18, v19, v20, event);
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

  if (event != 1)
  {
    if (dCopy)
    {
      v93 = ofCopy;
      v95 = dCopy;
      v45 = processCopy;
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
      eventCopy = event;
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
        delegates = [v52 delegates];
        v40 = [delegates objectForKeyedSubscript:v45];

        if (v40)
        {
          currentAssetDownloads = [(CoreMediaDownload *)v40 currentAssetDownloads];

          if (currentAssetDownloads)
          {
            currentAssetDownloads2 = [(CoreMediaDownload *)v40 currentAssetDownloads];
            v56 = [currentAssetDownloads2 objectForKeyedSubscript:v95];

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
          dCopy = v95;
LABEL_79:
          processCopy = v45;
LABEL_80:
          ofCopy = v93;
          goto LABEL_81;
        }
      }

      if (eventCopy == 2)
      {
        v33 = v56;
        [(FlowScrutinizer *)self _coreMediaAssetDownloadCompletion:v56 for:v40 at:at];
        currentAssetDownloads3 = [(CoreMediaDownload *)v40 currentAssetDownloads];
        dCopy = v95;
        [currentAssetDownloads3 removeObjectForKey:v95];

        goto LABEL_79;
      }

      dCopy = v95;
      v33 = v56;
      if (eventCopy == 3)
      {
        processCopy = v45;
        if ([(NSMutableDictionary *)v56 downloadState]!= 3)
        {
          [(NSMutableDictionary *)v56 thisRunStartTime];
          v91 = at - v90;
          [(NSMutableDictionary *)v56 prevRunBusyTime];
          [(NSMutableDictionary *)v56 setPrevRunBusyTime:v92 + v91];
          [(NSMutableDictionary *)v56 setThisRunStartTime:at];
          [(NSMutableDictionary *)v56 setPrevRunsCellRxBytes:[(CoreMediaDownload *)v40 totalObservedCellRxBytes]- [(NSMutableDictionary *)v56 thisRunStartCellRxBytes]+ [(NSMutableDictionary *)v56 prevRunsCellRxBytes]];
          [(NSMutableDictionary *)v56 setPrevRunsCellTxBytes:[(CoreMediaDownload *)v40 totalObservedCellTxBytes]- [(NSMutableDictionary *)v56 thisRunStartCellTxBytes]+ [(NSMutableDictionary *)v56 prevRunsCellTxBytes]];
          [(NSMutableDictionary *)v56 setPrevRunsWiFiRxBytes:[(CoreMediaDownload *)v40 totalObservedWiFiRxBytes]- [(NSMutableDictionary *)v56 thisRunStartWiFiRxBytes]+ [(NSMutableDictionary *)v56 prevRunsWiFiRxBytes]];
          [(NSMutableDictionary *)v56 setPrevRunsWiFiTxBytes:[(CoreMediaDownload *)v40 totalObservedWiFiTxBytes]- [(NSMutableDictionary *)v56 thisRunStartWiFiTxBytes]+ [(NSMutableDictionary *)v56 prevRunsWiFiTxBytes]];
          [(NSMutableDictionary *)v56 setDownloadState:3];
          goto LABEL_80;
        }

        v85 = flowScrutinyLogHandle;
        ofCopy = v93;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }

        *buf = 0;
        v86 = "FlowScrutinizer told to pause an asset download that is already paused";
      }

      else
      {
        processCopy = v45;
        ofCopy = v93;
        if (eventCopy != 4)
        {
          goto LABEL_81;
        }

        if ([(NSMutableDictionary *)v56 downloadState]== 3)
        {
          [(NSMutableDictionary *)v56 thisRunStartTime];
          v78 = at - v77;
          [(NSMutableDictionary *)v56 prevRunIdleTime];
          [(NSMutableDictionary *)v56 setPrevRunIdleTime:v79 + v78];
          [(NSMutableDictionary *)v56 setThisRunStartTime:at];
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
      v94 = ofCopy;
      v60 = *v107;
      v97 = v33;
      v98 = processCopy;
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
          delegates2 = [v62 delegates];
          v64 = [delegates2 objectForKeyedSubscript:processCopy];

          if (v64)
          {
            currentAssetDownloads4 = [v64 currentAssetDownloads];

            if (currentAssetDownloads4)
            {
              v101 = v62;
              currentAssetDownloads5 = [v64 currentAssetDownloads];
              allKeys = [currentAssetDownloads5 allKeys];

              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v68 = allKeys;
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
                    currentAssetDownloads6 = [v64 currentAssetDownloads];
                    v75 = [currentAssetDownloads6 objectForKeyedSubscript:v73];
                    [(FlowScrutinizer *)self _coreMediaAssetDownloadCompletion:v75 for:v64 at:at];

                    currentAssetDownloads7 = [v64 currentAssetDownloads];
                    [currentAssetDownloads7 removeObjectForKey:v73];
                  }

                  v70 = [v68 countByEnumeratingWithState:&v102 objects:v114 count:16];
                }

                while (v70);
              }

              v33 = v97;
              processCopy = v98;
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
      ofCopy = v94;
      dCopy = 0;
    }

    goto LABEL_82;
  }

  if (!ofCopy)
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

  v22 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:ofCopy];
  if (!v22)
  {
    v22 = objc_alloc_init(FlowOriginLedger);
    [(FlowOriginLedger *)v22 setName:ofCopy];
    [(NSMutableDictionary *)self->_originLedgers setObject:v22 forKeyedSubscript:ofCopy];
    v23 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v118 = ofCopy;
      v119 = 2114;
      v120 = v22;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "Origin ledger created for media download event  %{public}@ -> %{public}@", buf, 0x16u);
    }
  }

  delegates3 = [(FlowOriginLedger *)v22 delegates];

  if (!delegates3)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(FlowOriginLedger *)v22 setDelegates:v25];
  }

  delegates4 = [(FlowOriginLedger *)v22 delegates];
  v27 = [delegates4 objectForKeyedSubscript:processCopy];

  if (!v27)
  {
    v28 = objc_alloc_init(FlowOriginLedger);
    processCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", ofCopy, processCopy];
    [(FlowOriginLedger *)v28 setName:processCopy];

    delegates5 = [(FlowOriginLedger *)v22 delegates];
    [delegates5 setObject:v28 forKeyedSubscript:processCopy];

    v31 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v118 = processCopy;
      v119 = 2114;
      v120 = v28;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "Origin ledger (delegate) created for media download event  %{public}@ -> %{public}@", buf, 0x16u);
    }
  }

  delegates6 = [(FlowOriginLedger *)v22 delegates];
  v33 = [delegates6 objectForKeyedSubscript:processCopy];

  currentAssetDownloads8 = [(NSMutableDictionary *)v33 currentAssetDownloads];

  if (!currentAssetDownloads8)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)v33 setCurrentAssetDownloads:v35];
  }

  currentAssetDownloads9 = [(NSMutableDictionary *)v33 currentAssetDownloads];
  v37 = [currentAssetDownloads9 objectForKeyedSubscript:dCopy];

  if (!v37)
  {
    v40 = objc_alloc_init(CoreMediaDownload);
    [(CoreMediaDownload *)v40 setStartTime:at];
    [(CoreMediaDownload *)v40 setEstimatedDuration:duration];
    [(CoreMediaDownload *)v40 setThisRunStartTime:at];
    [(CoreMediaDownload *)v40 setThisRunStartCellRxBytes:[(NSMutableDictionary *)v33 totalObservedCellRxBytes]];
    [(CoreMediaDownload *)v40 setThisRunStartCellTxBytes:[(NSMutableDictionary *)v33 totalObservedCellTxBytes]];
    if (self->_minCoreMediaAssetDownloadEstimatedDuration <= duration)
    {
      v82 = 1;
    }

    else
    {
      v82 = 5;
    }

    [(CoreMediaDownload *)v40 setDownloadState:v82];
    currentAssetDownloads10 = [(NSMutableDictionary *)v33 currentAssetDownloads];
    [currentAssetDownloads10 setObject:v40 forKeyedSubscript:dCopy];

    goto LABEL_81;
  }

  v38 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "FlowScrutinizer told to start a previously known asset download", buf, 2u);
  }

  currentAssetDownloads11 = [(NSMutableDictionary *)v33 currentAssetDownloads];
  v40 = [currentAssetDownloads11 objectForKeyedSubscript:dCopy];

  [(CoreMediaDownload *)v40 estimatedDuration];
  if (v41 < duration)
  {
    [(CoreMediaDownload *)v40 setEstimatedDuration:duration];
    if (self->_minCoreMediaAssetDownloadEstimatedDuration <= duration && [(CoreMediaDownload *)v40 downloadState]== 5)
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

- (void)scrutinizeFlow:(id)flow withClassification:(id)classification
{
  v112 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  classificationCopy = classification;
  v8 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    verboseDescription = [flowCopy verboseDescription];
    *buf = 138412546;
    v106 = verboseDescription;
    v107 = 2112;
    *v108 = classificationCopy;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "FlowScrutinizer scrutinize snapshot %@ classification %@", buf, 0x16u);
  }

  snapshotReason = [flowCopy snapshotReason];
  if (classificationCopy)
  {
    v12 = snapshotReason;
    disposition = [classificationCopy disposition];
    v14 = disposition;
    if ((disposition - 5) < 4)
    {
      goto LABEL_5;
    }

    if (disposition == 40)
    {
      goto LABEL_118;
    }

    if (disposition == 3)
    {
LABEL_5:
      v103 = 1;
    }

    else
    {
      v103 = 0;
    }

    originLedgers = self->_originLedgers;
    attributedEntity = [flowCopy attributedEntity];
    v17 = [(NSMutableDictionary *)originLedgers objectForKeyedSubscript:attributedEntity];

    if (!v17)
    {
      v17 = objc_alloc_init(FlowOriginLedger);
      v18 = MEMORY[0x277CCACA8];
      attributedEntity2 = [flowCopy attributedEntity];
      v20 = [v18 stringWithFormat:@"%@", attributedEntity2];
      [(FlowOriginLedger *)v17 setName:v20];

      v21 = self->_originLedgers;
      attributedEntity3 = [flowCopy attributedEntity];
      [(NSMutableDictionary *)v21 setObject:v17 forKeyedSubscript:attributedEntity3];

      v23 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v24 = v23;
        attributedEntity4 = [flowCopy attributedEntity];
        *buf = 138543618;
        v106 = attributedEntity4;
        v107 = 2114;
        *v108 = v17;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Origin ledger created for new flow %{public}@ -> %{public}@", buf, 0x16u);
      }
    }

    delegateName = [flowCopy delegateName];

    v104 = v12;
    if (delegateName)
    {
      delegateName2 = [flowCopy delegateName];
      attributedEntity5 = [flowCopy attributedEntity];
      v29 = [delegateName2 isEqualToString:attributedEntity5];

      if ((v29 & 1) == 0)
      {
        delegates = [(FlowOriginLedger *)v17 delegates];

        if (!delegates)
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [(FlowOriginLedger *)v17 setDelegates:v31];
        }

        delegates2 = [(FlowOriginLedger *)v17 delegates];
        delegateName3 = [flowCopy delegateName];
        v34 = [delegates2 objectForKeyedSubscript:delegateName3];

        if (!v34)
        {
          v35 = objc_alloc_init(FlowOriginLedger);
          v36 = MEMORY[0x277CCACA8];
          attributedEntity6 = [flowCopy attributedEntity];
          delegateName4 = [flowCopy delegateName];
          v39 = [v36 stringWithFormat:@"%@:%@", attributedEntity6, delegateName4];
          [(FlowOriginLedger *)v35 setName:v39];

          delegates3 = [(FlowOriginLedger *)v17 delegates];
          delegateName5 = [flowCopy delegateName];
          [delegates3 setObject:v35 forKeyedSubscript:delegateName5];

          v42 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v43 = v42;
            delegateName6 = [flowCopy delegateName];
            *buf = 138543618;
            v106 = delegateName6;
            v107 = 2114;
            *v108 = v35;
            _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "Origin ledger (delegate) created for new flow %{public}@ -> %{public}@", buf, 0x16u);
          }
        }

        delegates4 = [(FlowOriginLedger *)v17 delegates];
        delegateName7 = [flowCopy delegateName];
        v47 = [delegates4 objectForKeyedSubscript:delegateName7];

        v17 = v47;
      }
    }

    v48 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(flowCopy, "sourceIdentifier")}];
    currentFlows = [(FlowOriginLedger *)v17 currentFlows];
    v50 = [currentFlows objectForKeyedSubscript:v48];

    if (!v50)
    {
      if (![(NSMutableDictionary *)self->_transferSizeFlows count])
      {
        goto LABEL_50;
      }

      flowuuid = [flowCopy flowuuid];

      if (!flowuuid)
      {
        goto LABEL_50;
      }

      transferSizeFlows = self->_transferSizeFlows;
      flowuuid2 = [flowCopy flowuuid];
      v53 = [(NSMutableDictionary *)transferSizeFlows objectForKeyedSubscript:flowuuid2];

      if (v53)
      {
        rxTransferSizeUpperThreshold = [(FlowLedger *)v53 rxTransferSizeLowerThreshold]|| [(FlowLedger *)v53 rxTransferSizeUpperThreshold];
        if (self->_accumulateCellAppHistoryEpisodes && [flowCopy interfaceCellular])
        {
          attributedEntity7 = [flowCopy attributedEntity];
          v64 = [AppHistoryScreener fetchEpisodeFor:attributedEntity7 inbound:rxTransferSizeUpperThreshold];
          [(FlowLedger *)v53 setAppEpisode:v64];

          v65 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            log = v65;
            appEpisode = [(FlowLedger *)v53 appEpisode];
            if ([appEpisode screenIn])
            {
              v66 = "IN";
            }

            else
            {
              v66 = "OUT";
            }

            flowuuid3 = [flowCopy flowuuid];
            attributedEntity8 = [flowCopy attributedEntity];
            appEpisode2 = [(FlowLedger *)v53 appEpisode];
            *buf = 136315906;
            v106 = v66;
            v12 = v104;
            v107 = 2112;
            *v108 = flowuuid3;
            *&v108[8] = 2112;
            v109 = attributedEntity8;
            v110 = 2048;
            v111 = appEpisode2;
            _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "App episode screened %s provisional item %@ for app %@ (episode: %p)", buf, 0x2Au);
          }

          appEpisode3 = [(FlowLedger *)v53 appEpisode];
          if ([appEpisode3 screenIn])
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
      currentFlows2 = [(FlowOriginLedger *)v17 currentFlows];

      if (!currentFlows2)
      {
        v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(FlowOriginLedger *)v17 setCurrentFlows:v70];
      }

      currentFlows3 = [(FlowOriginLedger *)v17 currentFlows];
      [currentFlows3 setObject:v53 forKeyedSubscript:v48];

      [(FlowLedger *)v53 setCreatorLedger:v17];
      -[FlowLedger setFlowIdentifier:](v53, "setFlowIdentifier:", [flowCopy sourceIdentifier]);
      -[FlowLedger setFlowStartedAsForeground:](v53, "setFlowStartedAsForeground:", [flowCopy startAppStateIsForeground]);
      flowType = [flowCopy flowType];
      [(FlowLedger *)v53 setFlowType:flowType];

      -[FlowLedger setInterfaceCellular:](v53, "setInterfaceCellular:", [flowCopy interfaceCellular]);
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
        flowuuid4 = [flowCopy flowuuid];

        if (flowuuid4)
        {
          flowuuid5 = [flowCopy flowuuid];
          v75 = [flowuuid5 copy];
          [(FlowLedger *)v53 setFlowUUID:v75];
        }

        -[FlowLedger setTrafficClass:](v53, "setTrafficClass:", [flowCopy trafficClass]);
        if (v103 && [flowCopy snapshotAppStateIsForeground])
        {
          [(FlowLedger *)v53 setNotedAsFGAudioVideoTC:1];
          numNotedAsFGAudioVideoTC = self->_numNotedAsFGAudioVideoTC;
          self->_numNotedAsFGAudioVideoTC = numNotedAsFGAudioVideoTC + 1;
          if (!numNotedAsFGAudioVideoTC)
          {
            [(FlowScrutinizer *)self setHasForegroundAVTrafficClassFlows:1];
          }

          if ([flowCopy interfaceCellular])
          {
            [(FlowLedger *)v53 setNotedAsCellFGAudioVideoTC:1];
            numNotedAsCellFGAudioVideoTC = self->_numNotedAsCellFGAudioVideoTC;
            self->_numNotedAsCellFGAudioVideoTC = numNotedAsCellFGAudioVideoTC + 1;
            if (!numNotedAsCellFGAudioVideoTC)
            {
              [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:1];
            }
          }

          else if ([flowCopy interfaceWiFi])
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

        [flowCopy flowDuration];
        if (v79 <= 5.0)
        {
          [flowCopy flowStartTimeIntervalSinceReferenceDate];
        }

        else
        {
          [flowCopy flowSnapshotTimeIntervalSinceReferenceDate];
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
      if (v103 && ([flowCopy snapshotAppStateIsForeground] & 1) != 0)
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

      selfCopy2 = self;
      v61 = 0;
    }

    else
    {
      if (!v103 || ![flowCopy snapshotAppStateIsForeground])
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

      if ([flowCopy interfaceCellular])
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

      if (![flowCopy interfaceWiFi] || (-[FlowLedger setNotedAsWiFiFGAudioVideoTC:](v50, "setNotedAsWiFiFGAudioVideoTC:", 1), v96 = self->_numNotedAsWiFiFGAudioVideoTC, self->_numNotedAsWiFiFGAudioVideoTC = v96 + 1, v96))
      {
LABEL_29:
        v53 = v50;
LABEL_97:
        snapshotAppStateIsForeground = [flowCopy snapshotAppStateIsForeground];
        [(FlowLedger *)v53 setFlowLastSeenAsForeground:snapshotAppStateIsForeground];
        [(FlowOriginLedger *)v17 setMostRecentFlowSeenAsForeground:snapshotAppStateIsForeground];
        if (v50 || ([flowCopy flowDuration], v81 <= 5.0))
        {
          [(FlowScrutinizer *)self _handleFlowDeltas:v53 snapshot:flowCopy];
          -[FlowOriginLedger setTotalObservedCellRxBytes:](v17, "setTotalObservedCellRxBytes:", -[FlowOriginLedger totalObservedCellRxBytes](v17, "totalObservedCellRxBytes") + [flowCopy deltaAccountingRxCellularBytes]);
          -[FlowOriginLedger setTotalObservedCellTxBytes:](v17, "setTotalObservedCellTxBytes:", -[FlowOriginLedger totalObservedCellTxBytes](v17, "totalObservedCellTxBytes") + [flowCopy deltaAccountingTxCellularBytes]);
          -[FlowOriginLedger setTotalObservedWiFiRxBytes:](v17, "setTotalObservedWiFiRxBytes:", -[FlowOriginLedger totalObservedWiFiRxBytes](v17, "totalObservedWiFiRxBytes") + [flowCopy deltaAccountingRxWiFiBytes]);
          -[FlowOriginLedger setTotalObservedWiFiTxBytes:](v17, "setTotalObservedWiFiTxBytes:", -[FlowOriginLedger totalObservedWiFiTxBytes](v17, "totalObservedWiFiTxBytes") + [flowCopy deltaAccountingTxWiFiBytes]);
        }

        if (v104 == 2)
        {
          [(FlowOriginLedger *)v17 setLastUsed:apparentTime()];
          [(FlowLedger *)v53 setCreatorLedger:0];
          currentFlows4 = [(FlowOriginLedger *)v17 currentFlows];
          [currentFlows4 removeObjectForKey:v48];

          [(FlowOriginLedger *)v17 setClosedFlows:[(FlowOriginLedger *)v17 closedFlows]+ 1];
          if ([(FlowLedger *)v53 expectedTransferState]!= 1)
          {
            appEpisode4 = [(FlowLedger *)v53 appEpisode];

            if (appEpisode4)
            {
              v84 = flowScrutinyLogHandle;
              if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
              {
                v85 = v84;
                appEpisode5 = [(FlowLedger *)v53 appEpisode];
                flowUUID = [(FlowLedger *)v53 flowUUID];
                *buf = 134218242;
                v106 = appEpisode5;
                v107 = 2112;
                *v108 = flowUUID;
                _os_log_impl(&dword_23255B000, v85, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ in state kNWStatsSnapshotOnClose", buf, 0x16u);
              }

              appEpisode6 = [(FlowLedger *)v53 appEpisode];
              [appEpisode6 accrueRewardFromFlow:v53];

              [(FlowLedger *)v53 setAppEpisode:0];
            }

            v89 = self->_transferSizeFlows;
            flowUUID2 = [(FlowLedger *)v53 flowUUID];
            [(NSMutableDictionary *)v89 removeObjectForKey:flowUUID2];

            [(FlowLedger *)v53 setExpectedTransferState:1];
            ++self->_numClosedFlowsForExpectedTransferSymptoms;
          }
        }

        v91 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v92 = v91;
          reportedDisposition = [(FlowLedger *)v53 reportedDisposition];
          *buf = 138412802;
          v106 = v48;
          v107 = 1024;
          *v108 = reportedDisposition;
          *&v108[4] = 1024;
          *&v108[6] = v14;
          _os_log_impl(&dword_23255B000, v92, OS_LOG_TYPE_DEBUG, "FlowScrutinizer disposition for %@ %d -> %d", buf, 0x18u);
        }

        if (v14 != [(FlowLedger *)v53 reportedDisposition])
        {
          [(FlowScrutinizer *)self _reportClassificationChange:v48 new:v14 ledger:v53 snapshot:flowCopy];
          [(FlowLedger *)v53 setReportedDisposition:v14];
        }

        if (([flowCopy deltaAccountingRxCellularBytes] || objc_msgSend(flowCopy, "deltaAccountingTxCellularBytes")) && !-[FlowScrutinizer cellThroughputAdviserShouldRun](self, "cellThroughputAdviserShouldRun"))
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

      selfCopy2 = self;
      v61 = 1;
    }

    [(FlowScrutinizer *)selfCopy2 setHasForegroundWiFiAVTrafficClassFlows:v61];
    goto LABEL_29;
  }

LABEL_118:

  v95 = *MEMORY[0x277D85DE8];
}

- (id)_findFlowOriginLedgerWithSnapshot:(id)snapshot
{
  v27 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  attributedEntity = [snapshotCopy attributedEntity];
  attributedExtension = [snapshotCopy attributedExtension];
  if (attributedEntity)
  {
    v7 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:attributedEntity];
    if (!v7)
    {
      v7 = objc_alloc_init(FlowOriginLedger);
      [(FlowOriginLedger *)v7 setName:attributedEntity];
      [(NSMutableDictionary *)self->_originLedgers setObject:v7 forKeyedSubscript:attributedEntity];
      v8 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
        *buf = 134218498;
        sourceIdentifier = [snapshotCopy sourceIdentifier];
        v23 = 2114;
        v24 = attributedEntity;
        v25 = 2114;
        v26 = v7;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Origin ledger created for snapshot %lld %{public}@ -> %{public}@", buf, 0x20u);
      }
    }

    if (attributedExtension)
    {
      appExtensions = [(FlowOriginLedger *)v7 appExtensions];

      if (!appExtensions)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(FlowOriginLedger *)v7 setAppExtensions:v11];
      }

      appExtensions2 = [(FlowOriginLedger *)v7 appExtensions];
      v13 = [appExtensions2 objectForKeyedSubscript:attributedExtension];

      if (!v13)
      {
        v13 = objc_alloc_init(FlowOriginLedger);
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", attributedEntity, attributedExtension];
        [(FlowOriginLedger *)v13 setName:v14];

        appExtensions3 = [(FlowOriginLedger *)v7 appExtensions];
        [appExtensions3 setObject:v13 forKeyedSubscript:attributedExtension];

        v16 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v17 = v16;
          sourceIdentifier2 = [snapshotCopy sourceIdentifier];
          *buf = 134218498;
          sourceIdentifier = sourceIdentifier2;
          v23 = 2114;
          v24 = attributedExtension;
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

- (void)addActivityBitmapFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = [(FlowScrutinizer *)self _findFlowOriginLedgerWithSnapshot:snapshotCopy];
  [v5 addActivityBitmapForSnapshot:snapshotCopy];
}

- (void)clearAVSamplesIfAllIdle:(id)idle time:(double)time
{
  idleCopy = idle;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__FlowScrutinizer_clearAVSamplesIfAllIdle_time___block_invoke;
  v9[3] = &unk_27898E108;
  *&v9[6] = time;
  v9[4] = self;
  v9[5] = &v10;
  [idleCopy enumerateObjectsWithOptions:2 usingBlock:v9];
  if (*(v11 + 24) == 1)
  {
    v7 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "All AudioVideoSamples, including the latest sampling are idle, clearing", v8, 2u);
    }

    [idleCopy removeAllObjects];
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

- (void)updateAudioVideoSamplesWithTime:(double)time bumpSamples:(BOOL)samples
{
  if (self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate == 0.0)
  {
LABEL_2:
    *&self->_lastSampledCellAudioVideoRxBytes = *&self->_totalCellAudioVideoRxBytes;
    *&self->_lastSampledWiFiAudioVideoRxBytes = *&self->_totalWiFiAudioVideoRxBytes;
    self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate = time;
    return;
  }

  if (samples)
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
      *&v29[6] = time;
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
      *&v27[6] = time;
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
      [(FlowScrutinizer *)self clearAVSamplesIfAllIdle:self->_cellAudioVideoSamples time:time];
    }

    if (v20 && [(NSMutableArray *)self->_wifiAudioVideoSamples count])
    {
      [(FlowScrutinizer *)self clearAVSamplesIfAllIdle:self->_wifiAudioVideoSamples time:time];
    }

    if (totalCellAudioVideoRxBytes != lastSampledCellAudioVideoRxBytes || totalCellAudioVideoTxBytes != lastSampledCellAudioVideoTxBytes || [(NSMutableArray *)self->_cellAudioVideoSamples count])
    {
      v22 = objc_alloc_init(AudioVideoSample);
      [(AudioVideoSample *)v22 setStartTimeIntervalSinceReferenceDate:self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v22 setElapsedTime:time - self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
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
      [(AudioVideoSample *)v23 setElapsedTime:time - self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
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

- (void)updateTransferSizeFlowsWithTime:(double)time
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
          expectedTransferState = [v13 expectedTransferState];
          if (expectedTransferState == 5)
          {
            [v13 transferStateEntryTimestamp];
            if (v15 == 0.0)
            {
              [v13 setTransferStateEntryTimestamp:time];
            }

            else
            {
              [v13 transferStateEntryTimestamp];
              if (time - v16 > self->_transferSizeFlowFailedThresholdQuarantineTime)
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

          else if (expectedTransferState == 2)
          {
            [v13 transferStateEntryTimestamp];
            if (time - v34 > 10.0)
            {
              appEpisode = [v13 appEpisode];

              if (appEpisode)
              {
                v36 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
                {
                  v37 = v36;
                  appEpisode2 = [v13 appEpisode];
                  flowUUID = [v13 flowUUID];
                  *buf = 134218242;
                  v50 = appEpisode2;
                  v51 = 2112;
                  v52 = flowUUID;
                  _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ in state kExpectedTransferStateProvisional", buf, 0x16u);
                }

                appEpisode3 = [v13 appEpisode];
                [appEpisode3 accrueRewardFromFlow:v13];

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
            alternatingIdleNonIdlePeriods = [v13 alternatingIdleNonIdlePeriods];

            if (alternatingIdleNonIdlePeriods)
            {
              alternatingIdleNonIdlePeriods2 = [v13 alternatingIdleNonIdlePeriods];
              lastObject = [alternatingIdleNonIdlePeriods2 lastObject];

              [lastObject elapsedTime];
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
            appEpisode4 = [v13 appEpisode];

            if (appEpisode4)
            {
              v25 = *v10;
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
              {
                v26 = v25;
                appEpisode5 = [v13 appEpisode];
                [v13 flowUUID];
                v28 = v9;
                v29 = v5;
                v31 = v30 = v10;
                maxFlowIdleTimeWhileMarkedWithTransferSize = self->_maxFlowIdleTimeWhileMarkedWithTransferSize;
                *buf = v43;
                v50 = appEpisode5;
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

              appEpisode6 = [v13 appEpisode];
              [appEpisode6 accrueRewardFromFlow:v13];

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

- (void)addDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
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

    [(NSMutableSet *)delegates addObject:delegateCopy];
    v8 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = delegateCopy;
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
      v15 = delegateCopy;
      v9 = "FlowScrutinizer failed attempt to add delegate, selector not supported by %@";
      v10 = v12;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)delegate
{
  delegates = self->_delegates;
  if (delegates)
  {
    [(NSMutableSet *)delegates removeObject:delegate];
  }
}

- (void)cellFlowScrutinyOnBehalfOf:(id)of required:(BOOL)required
{
  requiredCopy = required;
  ofCopy = of;
  cellFlowScrutinyRequesters = self->_cellFlowScrutinyRequesters;
  v9 = ofCopy;
  if (requiredCopy)
  {
    [(NSMutableSet *)cellFlowScrutinyRequesters addObject:ofCopy];
    v8 = 2;
LABEL_3:
    self->_cellFlowsScrutinized = v8;
    goto LABEL_7;
  }

  [(NSMutableSet *)cellFlowScrutinyRequesters removeObject:ofCopy];
  if (![(NSMutableSet *)self->_cellFlowScrutinyRequesters count]&& self->_cellFlowsScrutinized == 2)
  {
    v8 = 1;
    goto LABEL_3;
  }

LABEL_7:
}

- (void)wifiFlowScrutinyOnBehalfOf:(id)of required:(BOOL)required
{
  requiredCopy = required;
  ofCopy = of;
  wifiFlowScrutinyRequesters = self->_wifiFlowScrutinyRequesters;
  v9 = ofCopy;
  if (requiredCopy)
  {
    [(NSMutableSet *)wifiFlowScrutinyRequesters addObject:ofCopy];
    v8 = 2;
LABEL_3:
    self->_wifiFlowsScrutinized = v8;
    goto LABEL_7;
  }

  [(NSMutableSet *)wifiFlowScrutinyRequesters removeObject:ofCopy];
  if (![(NSMutableSet *)self->_wifiFlowScrutinyRequesters count]&& self->_wifiFlowsScrutinized == 2)
  {
    v8 = 1;
    goto LABEL_3;
  }

LABEL_7:
}

- (void)assetDownloadScrutinyOnBehalfOf:(id)of required:(BOOL)required
{
  requiredCopy = required;
  ofCopy = of;
  assetDownloadScrutinyRequesters = self->_assetDownloadScrutinyRequesters;
  v9 = ofCopy;
  if (requiredCopy)
  {
    [(NSMutableSet *)assetDownloadScrutinyRequesters addObject:ofCopy];
    v8 = 1;
  }

  else
  {
    [(NSMutableSet *)assetDownloadScrutinyRequesters removeObject:ofCopy];
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

- (void)expectedTransferScrutinyOnBehalfOf:(id)of required:(BOOL)required
{
  requiredCopy = required;
  ofCopy = of;
  expectedTransferScrutinyRequesters = self->_expectedTransferScrutinyRequesters;
  v9 = ofCopy;
  if (requiredCopy)
  {
    [(NSMutableSet *)expectedTransferScrutinyRequesters addObject:ofCopy];
    v8 = 1;
  }

  else
  {
    [(NSMutableSet *)expectedTransferScrutinyRequesters removeObject:ofCopy];
    if ([(NSMutableSet *)self->_expectedTransferScrutinyRequesters count])
    {
      goto LABEL_6;
    }

    v8 = 0;
  }

  self->_expectedTransfersScrutinized = v8;
LABEL_6:
}

- (void)flushInactiveLedgersAtMachAbsTime:(unint64_t)time
{
  v29 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_originLedgers allKeys];
  v6 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v25 = allKeys;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "flushInactiveLedgers check list is %{public}@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = allKeys;
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
        v15 = [(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v14 atMachAbsTime:time];
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

- (BOOL)isFlushableOriginLedgerAfterFlushingSubsidiaries:(id)subsidiaries atMachAbsTime:(unint64_t)time
{
  v97 = *MEMORY[0x277D85DE8];
  subsidiariesCopy = subsidiaries;
  appExtensions = [subsidiariesCopy appExtensions];

  if (appExtensions)
  {
    appExtensions2 = [subsidiariesCopy appExtensions];
    allKeys = [appExtensions2 allKeys];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v10 = allKeys;
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
          appExtensions3 = [subsidiariesCopy appExtensions];
          v18 = [appExtensions3 objectForKeyedSubscript:v16];

          if ([(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v18 atMachAbsTime:time])
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

            appExtensions4 = [subsidiariesCopy appExtensions];
            [appExtensions4 setObject:0 forKeyedSubscript:v16];
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v80 objects:v96 count:16];
      }

      while (v13);
    }

    appExtensions5 = [subsidiariesCopy appExtensions];
    v22 = [appExtensions5 count];

    if (!v22)
    {
      [subsidiariesCopy setAppExtensions:0];
    }
  }

  delegates = [subsidiariesCopy delegates];

  if (delegates)
  {
    delegates2 = [subsidiariesCopy delegates];
    allKeys2 = [delegates2 allKeys];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v26 = allKeys2;
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
          delegates3 = [subsidiariesCopy delegates];
          v34 = [delegates3 objectForKeyedSubscript:v32];

          if ([(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v34 atMachAbsTime:time])
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

            delegates4 = [subsidiariesCopy delegates];
            [delegates4 setObject:0 forKeyedSubscript:v32];
          }
        }

        v29 = [v26 countByEnumeratingWithState:&v76 objects:v95 count:16];
      }

      while (v29);
    }

    delegates5 = [subsidiariesCopy delegates];
    v38 = [delegates5 count];

    if (!v38)
    {
      [subsidiariesCopy setDelegates:0];
    }
  }

  activityBitmaps = [subsidiariesCopy activityBitmaps];

  if (activityBitmaps)
  {
    activityBitmaps2 = [subsidiariesCopy activityBitmaps];
    allKeys3 = [activityBitmaps2 allKeys];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    activityBitmaps = allKeys3;
    v42 = [activityBitmaps countByEnumeratingWithState:&v72 objects:v94 count:16];
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
            objc_enumerationMutation(activityBitmaps);
          }

          v46 = *(*(&v72 + 1) + 8 * k);
          activityBitmaps3 = [subsidiariesCopy activityBitmaps];
          v48 = [activityBitmaps3 objectForKeyedSubscript:v46];

          if ([v48 isOutdated:time])
          {
            activityBitmaps4 = [subsidiariesCopy activityBitmaps];
            [activityBitmaps4 setObject:0 forKeyedSubscript:v46];
          }

          else
          {
            [v48 freeUpBufferSpace];
          }
        }

        v43 = [activityBitmaps countByEnumeratingWithState:&v72 objects:v94 count:16];
      }

      while (v43);
    }

    activityBitmaps5 = [subsidiariesCopy activityBitmaps];
    v51 = [activityBitmaps5 count];

    if (!v51)
    {
      [subsidiariesCopy setActivityBitmaps:0];
    }
  }

  appExtensions6 = [subsidiariesCopy appExtensions];
  if (appExtensions6 || ([subsidiariesCopy delegates], (appExtensions6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    currentFlows = appExtensions6;
LABEL_48:

    goto LABEL_49;
  }

  currentFlows = [subsidiariesCopy currentFlows];
  if (currentFlows)
  {
    activityBitmaps = [subsidiariesCopy currentFlows];
    if ([activityBitmaps count])
    {

      goto LABEL_48;
    }
  }

  activityBitmaps6 = [subsidiariesCopy activityBitmaps];
  if (activityBitmaps6)
  {
    activityBitmaps7 = [subsidiariesCopy activityBitmaps];
    if ([activityBitmaps7 count])
    {
      v67 = 0;
    }

    else
    {
      [subsidiariesCopy durationSinceLastUse];
      v67 = v69 > 900.0;
    }
  }

  else
  {
    [subsidiariesCopy durationSinceLastUse];
    v67 = v68 > 900.0;
  }

  if (currentFlows)
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
    name = [subsidiariesCopy name];
    [subsidiariesCopy durationSinceLastUse];
    v58 = v57;
    appExtensions7 = [subsidiariesCopy appExtensions];
    delegates6 = [subsidiariesCopy delegates];
    activityBitmaps8 = [subsidiariesCopy activityBitmaps];
    *buf = 138544386;
    v85 = name;
    v86 = 2048;
    v87 = v58;
    v88 = 2114;
    v89 = appExtensions7;
    v90 = 2114;
    v91 = delegates6;
    v92 = 2114;
    v93 = activityBitmaps8;
    _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "Skip flush origin ledger, name %{public}@ duration %.3f extensions %{public}@ delegates %{public}@ bitmaps %{public}@", buf, 0x34u);
  }

  v62 = 0;
LABEL_52:

  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

- (void)addFlowStateForOrigin:(id)origin array:(id)array
{
  v61 = *MEMORY[0x277D85DE8];
  originCopy = origin;
  arrayCopy = array;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [originCopy currentFlows];
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
        currentFlows = [originCopy currentFlows];
        v10 = [currentFlows objectForKeyedSubscript:v8];

        v11 = MEMORY[0x277CCACA8];
        briefDescription = [v10 briefDescription];
        v13 = [v11 stringWithFormat:@"      %@", briefDescription];

        [arrayCopy addObject:v13];
        alternatingIdleNonIdlePeriods = [v10 alternatingIdleNonIdlePeriods];
        if (alternatingIdleNonIdlePeriods)
        {
          v15 = alternatingIdleNonIdlePeriods;
          alternatingIdleNonIdlePeriods2 = [v10 alternatingIdleNonIdlePeriods];
          v17 = [alternatingIdleNonIdlePeriods2 count];

          if (v17)
          {
            v44 = v13;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            alternatingIdleNonIdlePeriods3 = [v10 alternatingIdleNonIdlePeriods];
            v19 = [alternatingIdleNonIdlePeriods3 countByEnumeratingWithState:&v50 objects:v59 count:16];
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
                    objc_enumerationMutation(alternatingIdleNonIdlePeriods3);
                  }

                  v24 = [MEMORY[0x277CCACA8] stringWithFormat:v22, *(*(&v50 + 1) + 8 * j)];
                  [arrayCopy addObject:v24];

                  v22 = @"                           %@";
                }

                v20 = [alternatingIdleNonIdlePeriods3 countByEnumeratingWithState:&v50 objects:v59 count:16];
                v22 = @"                           %@";
              }

              while (v20);
            }

            v13 = v44;
          }
        }

        nonIdleSamples = [v10 nonIdleSamples];
        if (nonIdleSamples)
        {
          v26 = nonIdleSamples;
          nonIdleSamples2 = [v10 nonIdleSamples];
          v28 = [nonIdleSamples2 count];

          if (v28)
          {
            v45 = v13;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            nonIdleSamples3 = [v10 nonIdleSamples];
            v30 = [nonIdleSamples3 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
                    objc_enumerationMutation(nonIdleSamples3);
                  }

                  v35 = [MEMORY[0x277CCACA8] stringWithFormat:v33, *(*(&v46 + 1) + 8 * k)];
                  [arrayCopy addObject:v35];

                  v33 = @"                           %@";
                }

                v31 = [nonIdleSamples3 countByEnumeratingWithState:&v46 objects:v58 count:16];
                v33 = @"                           %@";
              }

              while (v31);
            }

            statisticsDescription = [v10 statisticsDescription];
            if (statisticsDescription)
            {
              v37 = MEMORY[0x277CCACA8];
              flowType = [v10 flowType];
              v39 = [v37 stringWithFormat:@"           %@ %@", flowType, statisticsDescription];
              [arrayCopy addObject:v39];
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

- (void)addStateForOrigin:(id)origin named:(id)named array:(id)array isExtension:(BOOL)extension isDelegate:(BOOL)delegate verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  delegateCopy = delegate;
  extensionCopy = extension;
  v107 = *MEMORY[0x277D85DE8];
  originCopy = origin;
  namedCopy = named;
  arrayCopy = array;
  if (delegateCopy)
  {
    v15 = @"    ";
    if (!extensionCopy)
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
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(combined cell rx %lld tx %lld wifi rx %lld tx %lld) ", objc_msgSend(originCopy, "totalWithDelegatesCellRxBytes"), objc_msgSend(originCopy, "totalWithDelegatesCellTxBytes"), objc_msgSend(originCopy, "totalWithDelegatesWiFiRxBytes"), objc_msgSend(originCopy, "totalWithDelegatesWiFiTxBytes")];
    v19 = &stru_2847966D8;
    if (extensionCopy)
    {
      v19 = @"  ";
    }

    obj = v19;
    v17 = @"for";
    v18 = @"extension";
  }

  v20 = MEMORY[0x277CCACA8];
  v84 = extensionCopy;
  if (extensionCopy)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  totalObservedCellRxBytes = [originCopy totalObservedCellRxBytes];
  v23 = [originCopy totalObservedWiFiRxBytes] + totalObservedCellRxBytes;
  totalObservedWiFiTxBytes = [originCopy totalObservedWiFiTxBytes];
  v25 = [originCopy totalObservedWiFiTxBytes] + totalObservedWiFiTxBytes;
  closedFlows = [originCopy closedFlows];
  [originCopy lastUsed];
  v28 = dateStringMillisecondsFromReferenceInterval(v27);
  v80 = namedCopy;
  v29 = [v20 stringWithFormat:@"%@ FlowOriginLedger %@ %@, rx %lld tx %lld %@num closed %lld last access %@", obj, v21, namedCopy, v23, v25, v16, closedFlows, v28];

  v79 = v29;
  [arrayCopy addObject:v29];
  v81 = v16;
  if (verboseCopy)
  {
    activityBitmaps = [originCopy activityBitmaps];
    if (activityBitmaps)
    {
      v31 = activityBitmaps;
      activityBitmaps2 = [originCopy activityBitmaps];
      v33 = [activityBitmaps2 count];

      if (v33)
      {
        v34 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"    Associated bitmaps: "];
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        obja = [originCopy activityBitmaps];
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
              intValue = [(__CFString *)v39 intValue];
              v41 = @"CompanionLink";
              if (intValue != 7)
              {
                v41 = v39;
              }

              if (intValue == 5)
              {
                v41 = @"Cell";
              }

              if (intValue == 3)
              {
                v42 = @"WiFi";
              }

              else
              {
                v42 = v41;
              }

              activityBitmaps3 = [originCopy activityBitmaps];
              v44 = [activityBitmaps3 objectForKeyedSubscript:v39];
              [v34 appendFormat:@"%@ -> %@ ", v42, v44];
            }

            v36 = [obja countByEnumeratingWithState:&v99 objects:v106 count:16];
          }

          while (v36);
        }

        [arrayCopy addObject:v34];
      }
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    currentAssetDownloads = [originCopy currentAssetDownloads];
    v46 = [currentAssetDownloads countByEnumeratingWithState:&v95 objects:v105 count:16];
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
            objc_enumerationMutation(currentAssetDownloads);
          }

          v50 = *(*(&v95 + 1) + 8 * j);
          currentAssetDownloads2 = [originCopy currentAssetDownloads];
          v52 = [currentAssetDownloads2 objectForKeyedSubscript:v50];

          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"      AssetDownload %@:  %@", v50, v52];
          [arrayCopy addObject:v53];
        }

        v47 = [currentAssetDownloads countByEnumeratingWithState:&v95 objects:v105 count:16];
      }

      while (v47);
    }

    [(FlowScrutinizer *)self addFlowStateForOrigin:originCopy array:arrayCopy];
    v16 = v81;
  }

  delegates = [originCopy delegates];

  if (delegates)
  {
    delegates2 = [originCopy delegates];
    allKeys = [delegates2 allKeys];
    v57 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

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
          delegates3 = [originCopy delegates];
          v65 = [delegates3 objectForKeyedSubscript:v63];

          [(FlowScrutinizer *)self addStateForOrigin:v65 named:v63 array:arrayCopy isExtension:v84 isDelegate:1 verbose:verboseCopy];
        }

        v60 = [v58 countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v60);
    }

    v16 = v81;
  }

  appExtensions = [originCopy appExtensions];

  if (appExtensions)
  {
    appExtensions2 = [originCopy appExtensions];
    allKeys2 = [appExtensions2 allKeys];
    v69 = [allKeys2 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

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
          appExtensions3 = [originCopy appExtensions];
          v77 = [appExtensions3 objectForKeyedSubscript:v75];

          [(FlowScrutinizer *)self addStateForOrigin:v77 named:v75 array:arrayCopy isExtension:1 isDelegate:0 verbose:verboseCopy];
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

- (int)setConfiguration:(id)configuration
{
  v11 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = configurationCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer handle new configuration parameters %{public}@", &v9, 0xCu);
  }

  [configurationCopy extractKey:@"maxActiveSamples" toUint64:&self->_maxContinuouslyActiveSamples defaultTo:30];
  [configurationCopy extractKey:@"maxAlternatingSamples" toUint64:&self->_maxAlternatingIdleNonIdleSamples defaultTo:21];
  [configurationCopy extractKey:@"maxAlternatingSamples" toDouble:&self->_minCoreMediaAssetDownloadEstimatedDuration defaultTo:600.0];
  [configurationCopy extractKey:@"TransferSizeFailedThresholdQuarantineTime" toDouble:&self->_transferSizeFlowFailedThresholdQuarantineTime defaultTo:600.0];
  [configurationCopy extractKey:@"MaxFlowIdleTimeWhileMarkedWithTransferSize" toDouble:&self->_maxFlowIdleTimeWhileMarkedWithTransferSize defaultTo:900.0];
  [configurationCopy extractKey:@"IdleDurationStopNonCoreMediaThroughputReporting" toDouble:&self->_idleDurationStopNonCoreMediaThroughputReporting defaultTo:10.0];
  v6 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(FlowScrutinizer *)self restoreDefaults];
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

@end