@interface CellThroughputAdviser
+ (CellThroughputAdviser)sharedInstance;
- (BOOL)_powerLogActionForNewAdvice:(unsigned int)advice cause:(unint64_t)cause at:(double)at;
- (BOOL)checkBackgroundTransferCauses:(unint64_t *)causes;
- (BOOL)checkCoreMediaAssetDownloadCauses:(unint64_t *)causes;
- (BOOL)checkLibnetcoreLargeTransferCauses:(unint64_t *)causes andOptOuts:(unint64_t *)outs;
- (BOOL)encodingRepresentsInt:(id)int;
- (BOOL)encodingRepresentsNSString:(id)string;
- (BOOL)encodingRepresentsNSTimeInterval:(id)interval;
- (BOOL)encodingRepresentsNSUUID:(id)d;
- (BOOL)encodingRepresentsUint64:(id)uint64;
- (CellThroughputAdviser)init;
- (CellThroughputAdviserDelegate)delegate;
- (double)_minRequiredBackgroundTransferThroughputForCurrentRadioState;
- (double)_minRequiredCoreMediaAssetDownloadThroughputForCurrentRadioState;
- (double)_minRequiredLargeTransferThroughputForCurrentRadioState;
- (double)encodingToNSTimeInterval:(id)interval;
- (id)_causeInitiators:(unint64_t)initiators;
- (id)_getCombinedStateAt:(double)at;
- (id)_getState:(BOOL)state;
- (id)_initiatorNameSetFromCauseArray:(id)array;
- (id)currentAWDSymptomsCellularSDMPollingStatistics;
- (id)currentAWDSymptomsCellularSDMTimeStatistics;
- (id)encodingToNSString:(id)string;
- (id)encodingToNSUUID:(id)d;
- (id)getStateAt:(double)at;
- (id)jsonForAWDReport:(id)report;
- (id)jsonForClassification:(id)classification;
- (id)jsonForSnapshot:(id)snapshot;
- (id)jsonForTimeInterval:(double)interval indent:(int)indent;
- (id)jsonForUUID:(id)d;
- (int)configureInstance:(id)instance;
- (int)encodingToInt:(id)int;
- (int64_t)configItemToLongLong:(id)long;
- (unint64_t)_backgroundTransferActiveCauseForCurrentRadioState;
- (unint64_t)_backgroundTransferHysteresisCauseForCurrentRadioState;
- (unint64_t)_coreMediaAssetDownloadActiveCauseForCurrentRadioState;
- (unint64_t)_coreMediaAssetDownloadHysteresisCauseForCurrentRadioState;
- (unint64_t)_largeTransferContinuesCauseForCurrentRadioState;
- (unint64_t)_largeTransferFinalHysteresisCauseForCurrentRadioState;
- (unint64_t)_largeTransferHysteresisCauseForCurrentRadioState;
- (unint64_t)encodingToUint64:(id)uint64;
- (unsigned)determineAdvice:(unint64_t *)advice;
- (unsigned)determineNonCoreMediaRxThroughput:(double *)throughput txThroughput:(double *)txThroughput;
- (void)_assessActivityStateForQuiesce;
- (void)_checkPendingTimers:(double)timers;
- (void)_dumpArray:(id)array;
- (void)_finishPowerLogCollection;
- (void)_initiatorArray:(id)array addOriginNameWithForegroundPrefix:(id)prefix;
- (void)_refreshAdvice:(int)advice;
- (void)_setPreviousSDMParticipantsOfAdviceChangeMetric:(id)metric;
- (void)_setPriorThroughputOfAdviceChangeMetric:(id)metric at:(double)at;
- (void)_setSubsequentThroughputOfAdviceChangeMetric:(id)metric;
- (void)_updateSDMAdviceMetricState:(id)state at:(double)at;
- (void)didPollFlowsAt:(double)at periodic:(BOOL)periodic;
- (void)notePollIntervalForMetrics:(double)metrics;
- (void)noteSizeableBackgroundTransferEventName:(id)name event:(unint64_t)event downloadSizeBytes:(unint64_t)bytes uploadSizeBytes:(unint64_t)sizeBytes at:(double)at;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performAction:(id)action verbose:(BOOL)verbose;
- (void)performActivityStatsTimekeeping;
- (void)postCAEvent:(id)event withName:(id)name;
- (void)quiesce;
- (void)reportPeriodicAWDStatistics;
- (void)restoreDefaults;
- (void)sendSDMAdviceChangeMetric:(id)metric;
- (void)setPollingRate:(double)rate;
- (void)setPropertyChangeTimestamp:(double)timestamp;
- (void)setQueue:(id)queue;
- (void)setTimerCallbackWithSimulatedDelay:(double)delay context:(id)context;
- (void)unquiesce;
- (void)willPollFlows;
@end

@implementation CellThroughputAdviser

- (void)performActivityStatsTimekeeping
{
  v3 = apparentTime();
  lastActivityStatsUpdate = self->_lastActivityStatsUpdate;
  if (lastActivityStatsUpdate <= 0.0)
  {
    self->_pollIntervalHistogramResetTime = v3;
    self->_lastStateUpdate = v3;
  }

  else
  {
    v5 = v3 - lastActivityStatsUpdate;
    if (v3 - lastActivityStatsUpdate > 0.0)
    {
      if (self->_enabled)
      {
        if (self->_quiesced)
        {
          self->_totalQuiesceTime = v5 + self->_totalQuiesceTime;
        }

        else
        {
          if (v5 <= 40.0)
          {
            v7 = v5 + self->_totalActiveTime;
          }

          else
          {
            configuredPollingRate = self->_configuredPollingRate;
            self->_totalInferredSleepTime = self->_totalInferredSleepTime + v5 - configuredPollingRate;
            v7 = configuredPollingRate + self->_totalActiveTime;
          }

          self->_totalActiveTime = v7;
        }
      }

      else
      {
        self->_totalDisabledTime = v5 + self->_totalDisabledTime;
      }
    }
  }

  if (v3 >= lastActivityStatsUpdate)
  {
    self->_lastActivityStatsUpdate = v3;
  }
}

- (void)willPollFlows
{
  if ((activeTraceTargets & 4) != 0)
  {
    traceEntry(2, "[CellThroughputAdviser willPollFlows]", "", v2, v3, v4, v5, v6, v9);
  }

  v8 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "CellThroughputAdviser willPollFlows", &v9, 2u);
  }

  self->_pollInProgress = 1;
}

- (void)_assessActivityStateForQuiesce
{
  if (self->_enabled)
  {
    v7 = v2;
    v8 = v3;
    if (!self->_quiesced && (self->_reportedCause & 0x70) != 0 && [(FlowOracle *)self->_flowOracle hadZeroCellInterfaceTrafficForLast:self->_inactivityTimeoutForQuiesce]&& ![(FlowOracle *)self->_flowOracle numLowerThresholdTransferSizes]&& ![(FlowOracle *)self->_flowOracle numUpperThresholdTransferSizes]&& ![(FlowOracle *)self->_flowOracle numActiveCoreMediaAssetDownloads]&& ![(FlowOracle *)self->_flowOracle numCandidateCoreMediaAssetDownloads])
    {
      v5 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser, about to quiesce due to inactivity", v6, 2u);
      }

      [(CellThroughputAdviser *)self quiesce];
    }
  }
}

- (CellThroughputAdviser)init
{
  v7.receiver = self;
  v7.super_class = CellThroughputAdviser;
  v2 = [(CellThroughputAdviser *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_quiesced = 1;
    v2->_lastAudioVideoReport = 0.0;
    v2->_lastPollTime = 0.0;
    v2->_pollIntervalHistogramResetTime = 0.0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    backgroundTransfers = v3->_backgroundTransfers;
    v3->_backgroundTransfers = v4;

    *v3->_pollIntervalHistogram = 0u;
    *&v3->_pollIntervalHistogram[28] = 0u;
    *&v3->_pollIntervalHistogram[32] = 0u;
    *&v3->_pollIntervalHistogram[20] = 0u;
    *&v3->_pollIntervalHistogram[24] = 0u;
    *&v3->_pollIntervalHistogram[12] = 0u;
    *&v3->_pollIntervalHistogram[16] = 0u;
    *&v3->_pollIntervalHistogram[4] = 0u;
    *&v3->_pollIntervalHistogram[8] = 0u;
    v3->_nrFrequencyBand = -1;
    [(CellThroughputAdviser *)v3 restoreDefaults];
  }

  return v3;
}

+ (CellThroughputAdviser)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CellThroughputAdviser_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_25 != -1)
  {
    dispatch_once(&sharedInstance_pred_25, block);
  }

  v2 = sharedInstance_sharedInstance_26;

  return v2;
}

void __39__CellThroughputAdviser_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_26;
  sharedInstance_sharedInstance_26 = v1;

  v3 = +[FlowOracle sharedInstance];
  [sharedInstance_sharedInstance_26 setFlowOracle:v3];

  v4 = [sharedInstance_sharedInstance_26 flowOracle];
  v5 = [v4 flowScrutinizer];

  if (!v5)
  {
    v6 = +[FlowScrutinizer sharedInstance];
    v7 = [sharedInstance_sharedInstance_26 flowOracle];
    [v7 setFlowScrutinizer:v6];
  }

  v8 = +[FlowScrutinizer sharedInstance];
  [sharedInstance_sharedInstance_26 setFlowScrutinizer:v8];

  v10 = [sharedInstance_sharedInstance_26 flowScrutinizer];
  v9 = [sharedInstance_sharedInstance_26 flowOracle];
  [v9 setFlowScrutinizer:v10];
}

- (void)setQueue:(id)queue
{
  objc_storeStrong(&self->_queue, queue);
  queueCopy = queue;
  v5 = [[WiFiViabilityMonitor alloc] initWithQueue:queueCopy];
  wifiViabilityMonitor = self->_wifiViabilityMonitor;
  self->_wifiViabilityMonitor = v5;

  v7 = +[FlowRefreshScheduler sharedInstance];
  refreshScheduler = self->_refreshScheduler;
  self->_refreshScheduler = v7;

  [(FlowRefreshScheduler *)self->_refreshScheduler addDelegate:self];
}

- (id)jsonForSnapshot:(id)snapshot
{
  dictionaryForm = [snapshot dictionaryForm];
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryForm options:1 error:0];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"    {\n        objectname:        NWStatsProtocolSnapshot, \n        object:\n%@\n    }, \n", v5];

  return v6;
}

- (id)jsonForClassification:(id)classification
{
  if (classification)
  {
    dictionaryForm = [classification dictionaryForm];
    v4 = MEMORY[0x277CCAAA0];
  }

  else
  {
    v5 = MEMORY[0x277CCAAA0];
    dictionaryForm = [MEMORY[0x277CBEAC0] dictionary];
    v4 = v5;
  }

  v6 = [v4 dataWithJSONObject:dictionaryForm options:1 error:0];

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"    {\n        objectname:        FlowClassification, \n        object:\n%@\n    }, \n", v7];

  return v8;
}

- (id)jsonForAWDReport:(id)report
{
  reportCopy = report;
  v4 = reportCopy;
  if (reportCopy)
  {
    v5 = [reportCopy description];
    v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:@"\];
    v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  }

  else
  {
    v7 = @"<null>";
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"    {\n        objectname:        %@, \n        object:\n%@\n    }", v9, v7];

  return v10;
}

- (id)jsonForUUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    dCopy = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
  }

  v4 = MEMORY[0x277CCACA8];
  uUIDString = [dCopy UUIDString];
  v6 = [v4 stringWithFormat:@"    {\n        objectname:        NSUUID, \n        object:            %@\n    }, \n", uUIDString];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)encodingRepresentsNSUUID:(id)d
{
  v3 = [(CellThroughputAdviser *)self encodingToNSUUID:d];
  v4 = v3 != 0;

  return v4;
}

- (id)encodingToNSUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = [dCopy objectForKeyedSubscript:@"objectname"];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [dCopy objectForKeyedSubscript:@"objectname"];
  if (([v6 isEqualToString:@"NSUUID"] & 1) == 0 || (objc_msgSend(dCopy, "objectForKeyedSubscript:", @"object"), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    v12 = 0;
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [dCopy objectForKeyedSubscript:@"object"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [dCopy objectForKeyedSubscript:@"object"];
  v12 = [v11 initWithUUIDString:v5];
LABEL_13:

LABEL_9:

  return v12;
}

- (BOOL)encodingRepresentsUint64:(id)uint64
{
  uint64Copy = uint64;
  if (uint64Copy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [uint64Copy objectForKeyedSubscript:@"objectname"];
    if (v4)
    {
      v5 = [uint64Copy objectForKeyedSubscript:@"objectname"];
      if ([v5 isEqualToString:@"uint64_t"])
      {
        v6 = [uint64Copy objectForKeyedSubscript:@"object"];
        if (v6)
        {
          v7 = [uint64Copy objectForKeyedSubscript:@"object"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)encodingToUint64:(id)uint64
{
  uint64Copy = uint64;
  if ([(CellThroughputAdviser *)self encodingRepresentsUint64:uint64Copy])
  {
    v5 = [uint64Copy objectForKeyedSubscript:@"object"];
    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (BOOL)encodingRepresentsInt:(id)int
{
  intCopy = int;
  if (intCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [intCopy objectForKeyedSubscript:@"objectname"];
    if (v4)
    {
      v5 = [intCopy objectForKeyedSubscript:@"objectname"];
      if ([v5 isEqualToString:@"int"])
      {
        v6 = [intCopy objectForKeyedSubscript:@"object"];
        if (v6)
        {
          v7 = [intCopy objectForKeyedSubscript:@"object"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (int)encodingToInt:(id)int
{
  intCopy = int;
  if ([(CellThroughputAdviser *)self encodingRepresentsInt:intCopy])
  {
    v5 = [intCopy objectForKeyedSubscript:@"object"];
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)encodingRepresentsNSString:(id)string
{
  stringCopy = string;
  if (stringCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [stringCopy objectForKeyedSubscript:@"objectname"];
    if (v4)
    {
      v5 = [stringCopy objectForKeyedSubscript:@"objectname"];
      if ([v5 isEqualToString:@"NSString"])
      {
        v6 = [stringCopy objectForKeyedSubscript:@"object"];
        if (v6)
        {
          v7 = [stringCopy objectForKeyedSubscript:@"object"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)encodingToNSString:(id)string
{
  stringCopy = string;
  if ([(CellThroughputAdviser *)self encodingRepresentsNSString:stringCopy])
  {
    v5 = [stringCopy objectForKeyedSubscript:@"object"];
    if (![v5 isEqualToString:@"(null)"])
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)jsonForTimeInterval:(double)interval indent:(int)indent
{
  string = [MEMORY[0x277CCACA8] string];
  v7 = string;
  if (indent < 1)
  {
    v9 = string;
  }

  else
  {
    v8 = indent + 1;
    do
    {
      v9 = [v7 stringByAppendingString:@" "];

      --v8;
      v7 = v9;
    }

    while (v8 > 1);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = dateStringMillisecondsFromReferenceInterval(interval);
  v12 = [v10 stringWithFormat:@"%@{\n%@    type:         NSTimeInterval, \n%@    readable:     %@, \n%@    seconds:      %f\n%@}", v9, v9, v9, v11, v9, *&interval, v9];

  return v12;
}

- (BOOL)encodingRepresentsNSTimeInterval:(id)interval
{
  intervalCopy = interval;
  if (intervalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [intervalCopy objectForKeyedSubscript:@"type"];
    if (v4)
    {
      v5 = [intervalCopy objectForKeyedSubscript:@"type"];
      if ([v5 isEqualToString:@"NSTimeInterval"])
      {
        v6 = [intervalCopy objectForKeyedSubscript:@"seconds"];
        if (v6)
        {
          v7 = [intervalCopy objectForKeyedSubscript:@"seconds"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (double)encodingToNSTimeInterval:(id)interval
{
  intervalCopy = interval;
  v5 = 0.0;
  if ([(CellThroughputAdviser *)self encodingRepresentsNSTimeInterval:intervalCopy])
  {
    v6 = [intervalCopy objectForKeyedSubscript:@"seconds"];
    [v6 doubleValue];
    v5 = v7;
  }

  return v5;
}

- (void)_initiatorArray:(id)array addOriginNameWithForegroundPrefix:(id)prefix
{
  arrayCopy = array;
  prefixCopy = prefix;
  if (arrayCopy)
  {
    if (prefixCopy)
    {
      name = [prefixCopy name];

      if (name)
      {
        if ([arrayCopy count] <= 2)
        {
          v7 = objc_alloc(MEMORY[0x277CCACA8]);
          if ([prefixCopy mostRecentFlowSeenAsForeground])
          {
            v8 = @"fg";
          }

          else
          {
            v8 = @"bg";
          }

          name2 = [prefixCopy name];
          v10 = [v7 initWithFormat:@"%@:%@", v8, name2];

          if (v10)
          {
            [arrayCopy addObject:v10];
          }
        }
      }
    }
  }
}

- (id)_causeInitiators:(unint64_t)initiators
{
  initiatorsCopy = initiators;
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = initiatorsCopy & 0x1FF;
  switch(v6)
  {
    case 8:
      coreMediaAssetDownloadContributors = [(FlowOracle *)self->_flowOracle coreMediaAssetDownloadContributors];
      busiestCellOrigin = coreMediaAssetDownloadContributors;
      if (coreMediaAssetDownloadContributors)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v14 = [coreMediaAssetDownloadContributors countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v21;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(busiestCellOrigin);
              }

              [(CellThroughputAdviser *)self _initiatorArray:v5 addOriginNameWithForegroundPrefix:*(*(&v20 + 1) + 8 * i)];
            }

            v15 = [busiestCellOrigin countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v15);
        }
      }

      break;
    case 4:
      busiestCellOrigin = [(FlowOracle *)self->_flowOracle busiestCellOrigin];
      [(CellThroughputAdviser *)self _initiatorArray:v5 addOriginNameWithForegroundPrefix:busiestCellOrigin];
      break;
    case 1:
      transferContributors = [(FlowOracle *)self->_flowOracle transferContributors];
      busiestCellOrigin = transferContributors;
      if (transferContributors)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [transferContributors countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(busiestCellOrigin);
              }

              [(CellThroughputAdviser *)self _initiatorArray:v5 addOriginNameWithForegroundPrefix:*(*(&v24 + 1) + 8 * j)];
            }

            v10 = [busiestCellOrigin countByEnumeratingWithState:&v24 objects:v29 count:16];
          }

          while (v10);
        }
      }

      break;
    default:
      goto LABEL_23;
  }

LABEL_23:
  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_initiatorNameSetFromCauseArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy && [arrayCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) substringFromIndex:{3, v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)postCAEvent:(id)event withName:(id)name
{
  eventCopy = event;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained postCAEvent:eventCopy withName:nameCopy];
  }
}

- (void)sendSDMAdviceChangeMetric:(id)metric
{
  v40 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(metricCopy, "previousAdvice")}];
  [dictionary setObject:v6 forKeyedSubscript:@"previousAdvice"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metricCopy, "previousAdviceCause")}];
  [dictionary setObject:v7 forKeyedSubscript:@"previousAdviceCause"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metricCopy, "previousAdviceInitialCause")}];
  [dictionary setObject:v8 forKeyedSubscript:@"previousAdviceInitialCause"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metricCopy, "previousAdviceDuration")}];
  [dictionary setObject:v9 forKeyedSubscript:@"previousAdviceDuration"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricCopy, "previousScreenIsDark")}];
  [dictionary setObject:v10 forKeyedSubscript:@"previousScreenIsDark"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricCopy, "previousScreenIsLocked")}];
  [dictionary setObject:v11 forKeyedSubscript:@"previousScreenIsLocked"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metricCopy, "dlPriorThroughputBps")}];
  [dictionary setObject:v12 forKeyedSubscript:@"dlPriorThroughput"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metricCopy, "ulPriorThroughputBps")}];
  [dictionary setObject:v13 forKeyedSubscript:@"ulPriorThroughput"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(metricCopy, "newAdvice")}];
  [dictionary setObject:v14 forKeyedSubscript:@"newAdvice"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metricCopy, "newAdviceCause")}];
  [dictionary setObject:v15 forKeyedSubscript:@"newAdviceCause"];

  adviceInitiatingNames = [metricCopy adviceInitiatingNames];
  [dictionary setObject:adviceInitiatingNames forKeyedSubscript:@"adviceInitiatingNames"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricCopy, "newScreenIsDark")}];
  [dictionary setObject:v17 forKeyedSubscript:@"newScreenIsDark"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricCopy, "newScreenIsLocked")}];
  [dictionary setObject:v18 forKeyedSubscript:@"newScreenIsLocked"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metricCopy, "dlSubsequentThroughputBps")}];
  [dictionary setObject:v19 forKeyedSubscript:@"dlSubsequentThroughput"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metricCopy, "ulSubsequentThroughputBps")}];
  [dictionary setObject:v20 forKeyedSubscript:@"ulSubsequentThroughput"];

  selfCopy = self;
  [(CellThroughputAdviser *)self postCAEvent:dictionary withName:@"com.apple.symptoms.SDM.AdviceChange"];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [metricCopy previousAdviceParticipants];
  v22 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        name = [v26 name];
        [dictionary setObject:name forKeyedSubscript:@"prevAdviceParticipant_name"];

        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v26, "participationDelta")}];
        [dictionary setObject:v28 forKeyedSubscript:@"prevAdviceParticipant_participationDelta"];

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v26, "periodDuration")}];
        [dictionary setObject:v29 forKeyedSubscript:@"prevAdviceParticipant_periodDuration"];

        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v26, "dlThroughputBps")}];
        [dictionary setObject:v30 forKeyedSubscript:@"prevAdviceParticipant_dlThroughput"];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v26, "ulThroughputBps")}];
        [dictionary setObject:v31 forKeyedSubscript:@"prevAdviceParticipant_ulThroughput"];

        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v26, "additionalFlags")}];
        [dictionary setObject:v32 forKeyedSubscript:@"prevAdviceParticipant_additionalFlags"];

        [(CellThroughputAdviser *)selfCopy postCAEvent:dictionary withName:@"com.apple.symptoms.SDM.AdviceChange.PreviousParticipant"];
      }

      v23 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v23);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_setSubsequentThroughputOfAdviceChangeMetric:(id)metric
{
  flowScrutinizer = self->_flowScrutinizer;
  metricCopy = metric;
  cellInterfaceSampler = [(FlowScrutinizer *)flowScrutinizer cellInterfaceSampler];
  interfaceSamples = [cellInterfaceSampler interfaceSamples];

  lastObject = [interfaceSamples lastObject];
  [metricCopy setDlSubsequentThroughputBps:{objc_msgSend(lastObject, "rxThroughputBps")}];
  [metricCopy setUlSubsequentThroughputBps:{objc_msgSend(lastObject, "txThroughputBps")}];
}

- (void)_setPriorThroughputOfAdviceChangeMetric:(id)metric at:(double)at
{
  v22 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  cellInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  interfaceSamples = [cellInterfaceSampler interfaceSamples];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  reverseObjectEnumerator = [interfaceSamples reverseObjectEnumerator];
  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [v14 startTimeIntervalSinceReferenceDate];
        if (at - v15 > 6.0)
        {
          [metricCopy setDlPriorThroughputBps:{objc_msgSend(v14, "rxThroughputBps")}];
          [metricCopy setUlPriorThroughputBps:{objc_msgSend(v14, "txThroughputBps")}];
          goto LABEL_11;
        }
      }

      v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setPreviousSDMParticipantsOfAdviceChangeMetric:(id)metric
{
  v51 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  if ([(NSSet *)self->_previousSampleContributors count])
  {
    reportedCause = self->_reportedCause;
    if ((reportedCause & 0x70) != 0)
    {
      v6 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        previousSampleContributors = self->_previousSampleContributors;
        *buf = 138412290;
        v45 = previousSampleContributors;
        v8 = "CA finds default screen state has unexpected contributors %@";
        v9 = v6;
        v10 = OS_LOG_TYPE_ERROR;
LABEL_35:
        _os_log_impl(&dword_23255B000, v9, v10, v8, buf, 0xCu);
      }
    }

    else if ((reportedCause & 0x80) != 0)
    {
      v34 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v35 = self->_previousSampleContributors;
        *buf = 138412290;
        v45 = v35;
        v8 = "CA ignores residual contributors when reporting an admin override %@";
        v9 = v34;
        v10 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_35;
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = self->_previousSampleContributors;
      v39 = [(NSSet *)obj countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v39)
      {
        v38 = *v41;
LABEL_8:
        v11 = 0;
        while (1)
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * v11);
          sampledAsHighTransferSize = [v12 sampledAsHighTransferSize];
          if ([v12 sampledAsHighInterfaceUse])
          {
            sampledAsHighTransferSize |= 4uLL;
          }

          if ([v12 sampledAsCoreMediaAssetDownload])
          {
            sampledAsHighTransferSize |= 8uLL;
          }

          if ([v12 sampledCoreMediaAssetDownloadInactive])
          {
            sampledAsHighTransferSize |= 0x2000000000uLL;
          }

          CApreviousAdviceInitiators = self->_CApreviousAdviceInitiators;
          name = [v12 name];
          LODWORD(CApreviousAdviceInitiators) = [(NSSet *)CApreviousAdviceInitiators containsObject:name];

          if (CApreviousAdviceInitiators)
          {
            sampledAsHighTransferSize |= 0x1000uLL;
          }

          v16 = sampledAsHighTransferSize | [v12 sampleAdditionalFlags];
          v17 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
          {
            v18 = v17;
            name2 = [v12 name];
            v20 = cellThroughputAdviceCauseFlagsToString(v16);
            *buf = 138412802;
            v45 = name2;
            v46 = 2048;
            v47 = v16;
            v48 = 2112;
            v49 = v20;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "CA collection for participant %@ has additional flags 0x%llx %@", buf, 0x20u);
          }

          v21 = objc_alloc_init(SDMParticipant);
          v22 = objc_alloc(MEMORY[0x277CCACA8]);
          v23 = @"bg";
          if ([v12 sampleStartedInForegroundState])
          {
            v24 = @"fg";
          }

          else
          {
            v24 = @"bg";
          }

          if ([v12 mostRecentFlowSeenAsForeground])
          {
            v23 = @"fg";
          }

          name3 = [v12 name];
          v26 = [v22 initWithFormat:@"%@:%@:%@", v24, v23, name3];
          [(SDMParticipant *)v21 setName:v26];

          [v12 sampleStartTime];
          if (v27 == 0.0)
          {
            v29 = 0;
          }

          else
          {
            [v12 sampleStartTime];
            v29 = (v28 - self->_sampleStartTime + 0.49);
          }

          [(SDMParticipant *)v21 setParticipationDelta:v29];
          [v12 sampleTotalBusyTime];
          [(SDMParticipant *)v21 setPeriodDuration:(v30 + 0.49)];
          -[SDMParticipant setDlThroughputBps:](v21, "setDlThroughputBps:", [v12 sampleCellRxThroughputBps]);
          -[SDMParticipant setUlThroughputBps:](v21, "setUlThroughputBps:", [v12 sampleCellTxThroughputBps]);
          [(SDMParticipant *)v21 setAdditionalFlags:v16];
          previousAdviceParticipants = [metricCopy previousAdviceParticipants];
          [previousAdviceParticipants addObject:v21];

          previousAdviceParticipants2 = [metricCopy previousAdviceParticipants];
          v33 = [previousAdviceParticipants2 count];

          if (v33 > 2)
          {
            break;
          }

          if (v39 == ++v11)
          {
            v39 = [(NSSet *)obj countByEnumeratingWithState:&v40 objects:v50 count:16];
            if (v39)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_updateSDMAdviceMetricState:(id)state at:(double)at
{
  v6 = [(CellThroughputAdviser *)self _initiatorNameSetFromCauseArray:state];
  CApreviousAdviceInitiators = self->_CApreviousAdviceInitiators;
  self->_CApreviousAdviceInitiators = v6;

  *&self->_CApreviousIsScreenDark = *&self->_isScreenDark;
  self->_CAtimeOfLastReport = at;
}

void __56__CellThroughputAdviser__CAActionForNewAdvice_cause_at___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 564);
    v10[0] = 67109376;
    v10[1] = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "CA delayed collection, seqno %d %d", v10, 0xEu);
  }

  v5 = *(a1 + 32);
  if (*(a1 + 40) == *(v5 + 564))
  {
    [v5 _setSubsequentThroughputOfAdviceChangeMetric:*(v5 + 600)];
    [*(a1 + 32) sendSDMAdviceChangeMetric:*(*(a1 + 32) + 600)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 600);
    *(v6 + 600) = 0;
  }

  else
  {
    v8 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "CA metrics collection of interface stats skipped, transaction already completed", v10, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __53__CellThroughputAdviser__startPowerLogCollectionFor___block_invoke(uint64_t a1)
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  v2 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 560);
    *buf = 67109376;
    v26[0] = v3;
    LOWORD(v26[1]) = 1024;
    *(&v26[1] + 2) = v4;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "PowerLog delayed collection, seqno %d %d", buf, 0xEu);
  }

  v5 = *(a1 + 32);
  if (*(a1 + 40) == *(v5 + 560))
  {
    v6 = [*(v5 + 696) cellInterfaceSampler];
    v7 = [v6 interfaceSamples];

    if (v7)
    {
      v8 = [v7 lastObject];
      v9 = v8;
      if (v8)
      {
        v10 = MEMORY[0x277CCABB0];
        [v8 rxThroughput];
        v12 = [v10 numberWithInt:(v11 * 1000.0)];
        [*(*(a1 + 32) + 592) setObject:v12 forKeyedSubscript:@"HighThroughputLinkRxTputAfterStart"];

        v13 = MEMORY[0x277CCABB0];
        [v9 txThroughput];
        v15 = [v13 numberWithInt:(v14 * 1000.0)];
        [*(*(a1 + 32) + 592) setObject:v15 forKeyedSubscript:@"HighThroughputLinkTxTputAfterStart"];
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 672));
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v17 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*(a1 + 32) + 592);
        *buf = 138412290;
        *v26 = v22;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser send intermediate _pendingPowerLogReport %@ to delegate", buf, 0xCu);
      }

      if ((activeTraceTargets & 4) != 0)
      {
        traceCallout(2, "[CellThroughputAdviser _startPowerLogCollectionFor:]_block_invoke", "sendPowerLogReport:isStart:", "%@ %d", v18, v19, v20, v21, *(*(a1 + 32) + 592));
      }

      [WeakRetained sendPowerLogReport:*(*(a1 + 32) + 592) isStart:1];
    }
  }

  else
  {
    v23 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "PowerLog collection of interface stats skipped, transaction already completed", buf, 2u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_finishPowerLogCollection
{
  v47 = *MEMORY[0x277D85DE8];
  pendingPowerLogReport = self->_pendingPowerLogReport;
  if (pendingPowerLogReport)
  {
    v4 = [(NSMutableDictionary *)pendingPowerLogReport objectForKeyedSubscript:@"HighThroughputStartTime"];
    [v4 doubleValue];
    v6 = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:apparentTime() + 978307200.0 - v6];
    [(NSMutableDictionary *)self->_pendingPowerLogReport setObject:v7 forKeyedSubscript:@"HighThroughputDuration"];

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selfCopy = self;
    obj = self->_previousSampleContributors;
    if (obj)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = [(NSSet *)obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v37)
      {
        v36 = *v39;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            v10 = v8;
            if (*v39 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v38 + 1) + 8 * i);
            sampledAsHighTransferSize = [v11 sampledAsHighTransferSize];
            if ([v11 sampledAsHighInterfaceUse])
            {
              sampledAsHighTransferSize |= 4uLL;
            }

            if ([v11 sampledAsCoreMediaAssetDownload])
            {
              v13 = sampledAsHighTransferSize | 8;
            }

            else
            {
              v13 = sampledAsHighTransferSize;
            }

            v14 = objc_alloc(MEMORY[0x277CBEB38]);
            v44[0] = @"Participant";
            name = [v11 name];
            v45[0] = name;
            v44[1] = @"Reason";
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
            v45[1] = v16;
            v44[2] = @"Duration";
            v17 = MEMORY[0x277CCABB0];
            [v11 sampleTotalBusyTime];
            v18 = [v17 numberWithDouble:?];
            v45[2] = v18;
            v44[3] = @"RxBytes";
            v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "sampleCellRxBytes")}];
            v45[3] = v19;
            v44[4] = @"TxBytes";
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "sampleCellTxBytes")}];
            v45[4] = v20;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];
            v22 = [v14 initWithDictionary:v21];

            v8 = v10;
            [v10 addObject:v22];
          }

          v37 = [(NSSet *)obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v37);
      }
    }

    if ([v8 count] >= 4)
    {
      do
      {
        [v8 removeLastObject];
      }

      while ([v8 count] > 3);
    }

    [(NSMutableDictionary *)selfCopy->_pendingPowerLogReport setObject:v8 forKeyedSubscript:@"HighThroughputParticipants"];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v24 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v29 = selfCopy->_pendingPowerLogReport;
        *buf = 138412290;
        v43 = v29;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser send final _pendingPowerLogReport %@ to delegate", buf, 0xCu);
      }

      if ((activeTraceTargets & 4) != 0)
      {
        traceCallout(2, "[CellThroughputAdviser _finishPowerLogCollection]", "sendPowerLogReport:isStart:", "%@ %d", v25, v26, v27, v28, selfCopy->_pendingPowerLogReport);
      }

      [WeakRetained sendPowerLogReport:selfCopy->_pendingPowerLogReport isStart:0];
    }

    ++selfCopy->_powerLogSeqno;
    v30 = selfCopy->_pendingPowerLogReport;
    selfCopy->_pendingPowerLogReport = 0;

    v31 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      powerLogSeqno = selfCopy->_powerLogSeqno;
      *buf = 67109120;
      LODWORD(v43) = powerLogSeqno;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser finish report with  seqno %d", buf, 8u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_powerLogActionForNewAdvice:(unsigned int)advice cause:(unint64_t)cause at:(double)at
{
  if (self->_reportedAdvice != advice)
  {
    if (advice == 3 && (cause & 0xD) != 0)
    {
      [(CellThroughputAdviser *)self _startPowerLogCollectionFor:at];
      return 1;
    }

    if (self->_pendingPowerLogReport)
    {
      [(CellThroughputAdviser *)self _finishPowerLogCollection];
    }
  }

  return 0;
}

- (void)reportPeriodicAWDStatistics
{
  currentAWDSymptomsCellularSDMPollingStatistics = [(CellThroughputAdviser *)self currentAWDSymptomsCellularSDMPollingStatistics];
  if (currentAWDSymptomsCellularSDMPollingStatistics)
  {
    [(CellThroughputAdviser *)self postAWDMetric:currentAWDSymptomsCellularSDMPollingStatistics withIdentifier:3145752];
  }

  currentAWDSymptomsCellularSDMTimeStatistics = [(CellThroughputAdviser *)self currentAWDSymptomsCellularSDMTimeStatistics];
  [(CellThroughputAdviser *)self postAWDMetric:currentAWDSymptomsCellularSDMTimeStatistics withIdentifier:3145753];
}

- (id)currentAWDSymptomsCellularSDMPollingStatistics
{
  if (self->_pollIntervalHistogramResetTime == 0.0)
  {
    v6 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Trying to retrieve polling statistics before initializing resetTime", v8, 2u);
    }

    v5 = 0;
  }

  else
  {
    v3 = apparentTime();
    v4 = (v3 - self->_pollIntervalHistogramResetTime);
    v5 = objc_alloc_init(AWDSymptomsCellularSDMPollingStatistics);
    [(AWDSymptomsCellularSDMPollingStatistics *)v5 setPollIntervalVersion:1];
    [(AWDSymptomsCellularSDMPollingStatistics *)v5 setDurationSeconds:v4];
    [(AWDSymptomsCellularSDMPollingStatistics *)v5 setPollingIntervalCounts:self->_pollIntervalHistogram count:36];
    self->_pollIntervalHistogramResetTime = v3;
    *self->_pollIntervalHistogram = 0u;
    *&self->_pollIntervalHistogram[4] = 0u;
    *&self->_pollIntervalHistogram[8] = 0u;
    *&self->_pollIntervalHistogram[12] = 0u;
    *&self->_pollIntervalHistogram[16] = 0u;
    *&self->_pollIntervalHistogram[20] = 0u;
    *&self->_pollIntervalHistogram[24] = 0u;
    *&self->_pollIntervalHistogram[28] = 0u;
    *&self->_pollIntervalHistogram[32] = 0u;
  }

  return v5;
}

- (id)currentAWDSymptomsCellularSDMTimeStatistics
{
  v3 = objc_alloc_init(AWDSymptomsCellularSDMTimeStatistics);
  [(AWDSymptomsCellularSDMTimeStatistics *)v3 setTotalTimeSeconds:(self->_totalActiveTime + self->_totalQuiesceTime + self->_totalDisabledTime + self->_totalInferredSleepTime)];
  [(AWDSymptomsCellularSDMTimeStatistics *)v3 setTotalActiveTimeSeconds:self->_totalActiveTime];
  [(AWDSymptomsCellularSDMTimeStatistics *)v3 setTotalQuiesceTimeSeconds:(self->_totalQuiesceTime + self->_totalDisabledTime)];
  [(AWDSymptomsCellularSDMTimeStatistics *)v3 setTotalInferredSleepTimeSeconds:self->_totalInferredSleepTime];

  return v3;
}

- (double)_minRequiredCoreMediaAssetDownloadThroughputForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 440;
  if (nrFrequencyBand == 2)
  {
    v3 = 456;
  }

  v4 = nrFrequencyBand == 1;
  v5 = 448;
  if (!v4)
  {
    v5 = v3;
  }

  return *(&self->super.isa + v5);
}

- (unint64_t)_coreMediaAssetDownloadActiveCauseForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 0x20000000008;
  if (nrFrequencyBand == 2)
  {
    v3 = 0x80000000008;
  }

  if (nrFrequencyBand == 1)
  {
    return 0x40000000008;
  }

  else
  {
    return v3;
  }
}

- (double)_minRequiredBackgroundTransferThroughputForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 480;
  if (nrFrequencyBand == 2)
  {
    v3 = 496;
  }

  v4 = nrFrequencyBand == 1;
  v5 = 488;
  if (!v4)
  {
    v5 = v3;
  }

  return *(&self->super.isa + v5);
}

- (unint64_t)_backgroundTransferActiveCauseForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 0x20000000000100;
  if (nrFrequencyBand == 2)
  {
    v3 = 0x80000000000100;
  }

  if (nrFrequencyBand == 1)
  {
    return 0x40000000000100;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_backgroundTransferHysteresisCauseForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 0x200000000000100;
  if (nrFrequencyBand == 2)
  {
    v3 = 0x800000000000100;
  }

  if (nrFrequencyBand == 1)
  {
    return 0x400000000000100;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_coreMediaAssetDownloadHysteresisCauseForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 0x200000000008;
  if (nrFrequencyBand == 2)
  {
    v3 = 0x800000000008;
  }

  if (nrFrequencyBand == 1)
  {
    return 0x400000000008;
  }

  else
  {
    return v3;
  }
}

- (BOOL)checkCoreMediaAssetDownloadCauses:(unint64_t *)causes
{
  v5 = apparentTime();
  if ([(FlowOracle *)self->_flowOracle numActiveCoreMediaAssetDownloads])
  {
    [(CellThroughputAdviser *)self _minRequiredCoreMediaAssetDownloadThroughputForCurrentRadioState];
    v7 = v6;
    [(FlowOracle *)self->_flowOracle coreMediaAssetDownloadRelatedRecentThroughput];
    if (v8 >= v7)
    {
      [(FlowOracle *)self->_flowOracle markCoreMediaAssetDownloadsAsActive];
      self->_lastAssetDownloadUsageTimestamp = v5;
      _coreMediaAssetDownloadActiveCauseForCurrentRadioState = [(CellThroughputAdviser *)self _coreMediaAssetDownloadActiveCauseForCurrentRadioState];
    }

    else
    {
      if (v5 - self->_lastAssetDownloadUsageTimestamp > self->_maxAssetDownloadDurationBelowThreshold)
      {
        self->_lastAssetDownloadUsageTimestamp = 0.0;
        [(FlowOracle *)self->_flowOracle markCoreMediaAssetDownloadsAsInactiveAt:v5];
        goto LABEL_5;
      }

      _coreMediaAssetDownloadActiveCauseForCurrentRadioState = [(CellThroughputAdviser *)self _coreMediaAssetDownloadHysteresisCauseForCurrentRadioState];
    }

    if (!_coreMediaAssetDownloadActiveCauseForCurrentRadioState)
    {
      return _coreMediaAssetDownloadActiveCauseForCurrentRadioState;
    }

    goto LABEL_12;
  }

LABEL_5:
  _coreMediaAssetDownloadActiveCauseForCurrentRadioState = [(FlowOracle *)self->_flowOracle numCandidateCoreMediaAssetDownloads];
  if (_coreMediaAssetDownloadActiveCauseForCurrentRadioState)
  {
    [(FlowOracle *)self->_flowOracle coreMediaAssetDownloadRelatedRecentThroughput];
    if (v10 < self->_minAssetDownloadThroughputForUpgrade)
    {
      LOBYTE(_coreMediaAssetDownloadActiveCauseForCurrentRadioState) = 0;
      return _coreMediaAssetDownloadActiveCauseForCurrentRadioState;
    }

    [(FlowOracle *)self->_flowOracle markCoreMediaAssetDownloadsAsActive];
    self->_lastAssetDownloadUsageTimestamp = v5;
    _coreMediaAssetDownloadActiveCauseForCurrentRadioState = 0x8000000008;
LABEL_12:
    *causes = _coreMediaAssetDownloadActiveCauseForCurrentRadioState;
    LOBYTE(_coreMediaAssetDownloadActiveCauseForCurrentRadioState) = 1;
  }

  return _coreMediaAssetDownloadActiveCauseForCurrentRadioState;
}

- (BOOL)checkBackgroundTransferCauses:(unint64_t *)causes
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = apparentTime();
  if ([(NSMutableSet *)self->_backgroundTransfers count]&& self->_lastBackgroundTransferUsageTimestamp > 0.0)
  {
    [(CellThroughputAdviser *)self _minRequiredBackgroundTransferThroughputForCurrentRadioState];
    v7 = v6;
    [(FlowOracle *)self->_flowOracle backgroundCellTransferRecentThroughput];
    v9 = v8;
    v10 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v22 = 134218240;
      v23 = v9;
      v24 = 2048;
      v25 = v7;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Checking for continuous background transfers throughput %.4f vs. %.4f", &v22, 0x16u);
    }

    if (v9 >= v7)
    {
      goto LABEL_19;
    }

    if (v5 - self->_lastBackgroundTransferUsageTimestamp <= self->_maxBackgroundTransferDurationBelowThreshold)
    {
      _backgroundTransferHysteresisCauseForCurrentRadioState = [(CellThroughputAdviser *)self _backgroundTransferHysteresisCauseForCurrentRadioState];
      goto LABEL_10;
    }

    [(NSMutableSet *)self->_backgroundTransfers removeAllObjects];
    self->_lastBackgroundTransferNotifiedTimestamp = 0.0;
    self->_lastBackgroundTransferUsageTimestamp = 0.0;
    v11 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      maxBackgroundTransferDurationBelowThreshold = self->_maxBackgroundTransferDurationBelowThreshold;
      v22 = 134217984;
      v23 = maxBackgroundTransferDurationBelowThreshold;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Cleared backgroundTransfers as throughput stayed below threshold longer than %.4f seconds", &v22, 0xCu);
    }
  }

  _backgroundTransferHysteresisCauseForCurrentRadioState = 0;
LABEL_10:
  if (![(NSMutableSet *)self->_backgroundTransfers count]|| self->_lastBackgroundTransferUsageTimestamp != 0.0)
  {
    goto LABEL_20;
  }

  minBackgroundTransferThroughputForUpgrade = self->_minBackgroundTransferThroughputForUpgrade;
  [(FlowOracle *)self->_flowOracle backgroundCellTransferRecentThroughput];
  v16 = v15;
  v17 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134218240;
    v23 = v16;
    v24 = 2048;
    v25 = minBackgroundTransferThroughputForUpgrade;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Checking for new background transfers throughput %.4f vs. %.4f", &v22, 0x16u);
  }

  if (v16 >= minBackgroundTransferThroughputForUpgrade)
  {
LABEL_19:
    _backgroundTransferHysteresisCauseForCurrentRadioState = [(CellThroughputAdviser *)self _backgroundTransferActiveCauseForCurrentRadioState];
    self->_lastBackgroundTransferUsageTimestamp = v5;
    goto LABEL_20;
  }

  lastBackgroundTransferNotifiedTimestamp = self->_lastBackgroundTransferNotifiedTimestamp;
  if (lastBackgroundTransferNotifiedTimestamp > 0.0 && v5 - lastBackgroundTransferNotifiedTimestamp > self->_maxBackgroundTransferDurationBelowThreshold)
  {
    [(NSMutableSet *)self->_backgroundTransfers removeAllObjects];
    self->_lastBackgroundTransferNotifiedTimestamp = 0.0;
    self->_lastBackgroundTransferUsageTimestamp = 0.0;
    v19 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Cleared backgroundTransfers ledger as background transfers throughput never went above threshold", &v22, 2u);
    }
  }

LABEL_20:
  if (_backgroundTransferHysteresisCauseForCurrentRadioState)
  {
    *causes = _backgroundTransferHysteresisCauseForCurrentRadioState;
  }

  result = _backgroundTransferHysteresisCauseForCurrentRadioState != 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)_minRequiredLargeTransferThroughputForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 424;
  if (nrFrequencyBand == 2)
  {
    v3 = 416;
  }

  v4 = nrFrequencyBand == 1;
  v5 = 408;
  if (!v4)
  {
    v5 = v3;
  }

  return *(&self->super.isa + v5);
}

- (unint64_t)_largeTransferContinuesCauseForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 4194305;
  if (nrFrequencyBand != 2)
  {
    v3 = 1048577;
  }

  if (nrFrequencyBand == 1)
  {
    return 2097153;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_largeTransferHysteresisCauseForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 33554433;
  if (nrFrequencyBand == 2)
  {
    v3 = 134217729;
  }

  if (nrFrequencyBand == 1)
  {
    return 67108865;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_largeTransferFinalHysteresisCauseForCurrentRadioState
{
  nrFrequencyBand = self->_nrFrequencyBand;
  v3 = 536870913;
  if (nrFrequencyBand == 2)
  {
    v3 = 2147483649;
  }

  if (nrFrequencyBand == 1)
  {
    return 1073741825;
  }

  else
  {
    return v3;
  }
}

- (BOOL)checkLibnetcoreLargeTransferCauses:(unint64_t *)causes andOptOuts:(unint64_t *)outs
{
  v7 = apparentTime();
  numCloakedTransferSizes = [(FlowOracle *)self->_flowOracle numCloakedTransferSizes];
  if ([(FlowOracle *)self->_flowOracle numActiveTransferSizes])
  {
    [(CellThroughputAdviser *)self _minRequiredLargeTransferThroughputForCurrentRadioState];
    v10 = v9;
    [(FlowOracle *)self->_flowOracle transferSizeRelatedRecentCellThroughput];
    if (v11 > v10)
    {
      self->_lastTransferSizeUsageTimestamp = v7;
      _largeTransferContinuesCauseForCurrentRadioState = [(CellThroughputAdviser *)self _largeTransferContinuesCauseForCurrentRadioState];
      goto LABEL_18;
    }

    if (self->_lastStateUpdate - self->_lastTransferSizeUsageTimestamp <= self->_lastPromotedTransferSizeDampeningInterval)
    {
      _largeTransferContinuesCauseForCurrentRadioState = [(CellThroughputAdviser *)self _largeTransferHysteresisCauseForCurrentRadioState];
      goto LABEL_18;
    }

    self->_lastTransferSizeUsageTimestamp = 0.0;
    [(FlowOracle *)self->_flowOracle markTransferSizeFlowsAsInactive];
  }

  if ([(FlowOracle *)self->_flowOracle numUpperThresholdTransferSizes])
  {
    [(FlowOracle *)self->_flowOracle transferSizeRelatedRecentCellThroughput];
    if (v13 > self->_minTransferSizeThroughputForUpgrade)
    {
      v14 = 65537;
      self->_lastTransferSizeUsageTimestamp = v7;
      [(FlowOracle *)self->_flowOracle markTransferSizeFlowsAsActive];
      goto LABEL_19;
    }
  }

  if ([(FlowOracle *)self->_flowOracle numLowerThresholdTransferSizes]>= self->_numLowerTransferThresholdFlowsForUpperThreshold)
  {
    [(FlowOracle *)self->_flowOracle transferSizeRelatedRecentCellThroughput];
    if (v15 > self->_minTransferSizeThroughputForUpgrade)
    {
      self->_lastTransferSizeUsageTimestamp = v7;
      [(FlowOracle *)self->_flowOracle markTransferSizeFlowsAsActive];
      v14 = 131073;
      goto LABEL_19;
    }
  }

  lastTransferSizeUsageTimestamp = self->_lastTransferSizeUsageTimestamp;
  if (lastTransferSizeUsageTimestamp <= 0.0)
  {
    v14 = 0;
    goto LABEL_19;
  }

  if (self->_lastStateUpdate - lastTransferSizeUsageTimestamp > self->_lastHighTransferSizeDampeningInterval)
  {
    v14 = 0;
    self->_lastTransferSizeUsageTimestamp = 0.0;
    goto LABEL_19;
  }

  _largeTransferContinuesCauseForCurrentRadioState = [(CellThroughputAdviser *)self _largeTransferFinalHysteresisCauseForCurrentRadioState];
LABEL_18:
  v14 = _largeTransferContinuesCauseForCurrentRadioState;
LABEL_19:
  if (numCloakedTransferSizes)
  {
    *outs = 32769;
  }

  if (v14)
  {
    *causes = v14;
  }

  return v14 != 0;
}

- (unsigned)determineAdvice:(unint64_t *)advice
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = 0;
  self->_lastStateUpdate = apparentTime();
  if (!self->_enabled)
  {
    v37 = 128;
    adviceForSustainedHighInterfaceThroughput = 4;
    if (!advice)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  adminAdviceOverride = self->_adminAdviceOverride;
  if (adminAdviceOverride > 1)
  {
    if (adminAdviceOverride == 4)
    {
      adviceForSustainedHighInterfaceThroughput = 3;
      goto LABEL_14;
    }

    if (adminAdviceOverride == 3)
    {
      adviceForSustainedHighInterfaceThroughput = 1;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (adminAdviceOverride)
  {
    if (adminAdviceOverride == 1)
    {
      adviceForSustainedHighInterfaceThroughput = 2;
LABEL_14:
      v7 = 128;
LABEL_15:
      v37 = v7;
      goto LABEL_16;
    }

LABEL_11:
    adviceForSustainedHighInterfaceThroughput = 0;
    goto LABEL_14;
  }

  if ([(CellThroughputAdviser *)self checkCoreMediaAssetDownloadCauses:&v37]|| [(CellThroughputAdviser *)self checkBackgroundTransferCauses:&v37]|| [(CellThroughputAdviser *)self checkLibnetcoreLargeTransferCauses:&v37 andOptOuts:&v36])
  {
    goto LABEL_35;
  }

  if ([(FlowOracle *)self->_flowOracle hasSustainedConservativeHighCellInterfaceThroughput]|| self->_interfaceThresholdsResponsive && [(FlowOracle *)self->_flowOracle hasSustainedResponsiveHighCellInterfaceThroughput])
  {
    v23 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      flowOracle = self->_flowOracle;
      v25 = v23;
      LODWORD(flowOracle) = [(FlowOracle *)flowOracle hasSustainedConservativeHighCellInterfaceThroughput];
      interfaceThresholdsResponsive = self->_interfaceThresholdsResponsive;
      hasSustainedResponsiveHighCellInterfaceThroughput = [(FlowOracle *)self->_flowOracle hasSustainedResponsiveHighCellInterfaceThroughput];
      *buf = 67109632;
      *v39 = flowOracle;
      *&v39[4] = 1024;
      *&v39[6] = interfaceThresholdsResponsive;
      LOWORD(v40) = 1024;
      *(&v40 + 2) = hasSustainedResponsiveHighCellInterfaceThroughput;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "CellThroughputAdviser sustained-high-interface-usasge, conservative %d responsive-ok %d responsive %d", buf, 0x14u);
    }

    self->_lastHighInterfaceUse = self->_lastStateUpdate;
    adviceForSustainedHighInterfaceThroughput = self->_adviceForSustainedHighInterfaceThroughput;
    hasSustainedHighCellInterfaceRxThroughput = [(FlowOracle *)self->_flowOracle hasSustainedHighCellInterfaceRxThroughput];
    hasSustainedHighCellInterfaceTxThroughput = [(FlowOracle *)self->_flowOracle hasSustainedHighCellInterfaceTxThroughput];
    if (hasSustainedHighCellInterfaceRxThroughput)
    {
      if (hasSustainedHighCellInterfaceTxThroughput)
      {
        v30 = 0x800000004;
      }

      else
      {
        v30 = 0x100000004;
      }
    }

    else if (hasSustainedHighCellInterfaceTxThroughput)
    {
      v30 = 0x400000004;
    }

    else
    {
      v30 = 0x1000000004;
    }

    v37 = v30;
    self->_lastHighInterfaceUse = self->_lastStateUpdate;
  }

  else
  {
    lastHighInterfaceUse = self->_lastHighInterfaceUse;
    if (lastHighInterfaceUse > 0.0)
    {
      if (self->_lastStateUpdate - lastHighInterfaceUse <= self->_lastHighInterfaceUseDampeningInterval)
      {
        v37 = 0x200000004;
        adviceForSustainedHighInterfaceThroughput = self->_adviceForSustainedHighInterfaceThroughput;
        goto LABEL_16;
      }

      self->_lastHighInterfaceUse = 0.0;
    }

    if (self->_isScreenDark)
    {
      v32 = 32;
LABEL_56:
      v37 = v32;
      adviceForSustainedHighInterfaceThroughput = 2;
      goto LABEL_16;
    }

    if (self->_isScreenLocked)
    {
      v32 = 64;
      goto LABEL_56;
    }

    if ([(FlowOracle *)self->_flowOracle numLowerThresholdTransferSizes]>= self->_numDisplayOnLowerTransferThresholdFlowsForUpperThreshold)
    {
      [(FlowOracle *)self->_flowOracle transferSizeRelatedRecentCellThroughput];
      if (v33 > self->_minDisplayOnTransferSizeThroughputForUpgrade)
      {
        self->_lastTransferSizeUsageTimestamp = self->_lastStateUpdate;
        [(FlowOracle *)self->_flowOracle markTransferSizeFlowsAsActive];
        v37 = 262145;
LABEL_35:
        adviceForSustainedHighInterfaceThroughput = 3;
        goto LABEL_16;
      }
    }

    if (self->_avUseCasesSupported)
    {
      activeHighThroughputAudioVideoTrafficForegroundFlowScore = [(FlowOracle *)self->_flowOracle activeHighThroughputAudioVideoTrafficForegroundFlowScore];
      if (activeHighThroughputAudioVideoTrafficForegroundFlowScore >= 71)
      {
        adviceForSustainedHighInterfaceThroughput = self->_adviceForBusyAVFlows;
        v7 = 0x1000000000002;
        goto LABEL_15;
      }

      if (activeHighThroughputAudioVideoTrafficForegroundFlowScore >= 41)
      {
        adviceForSustainedHighInterfaceThroughput = self->_adviceForBusyAVFlowsLowerCertainty;
        v7 = 0x2000000000002;
        goto LABEL_15;
      }

      activeLimitedThroughputAudioVideoTrafficForegroundFlowScore = [(FlowOracle *)self->_flowOracle activeLimitedThroughputAudioVideoTrafficForegroundFlowScore];
      if (activeLimitedThroughputAudioVideoTrafficForegroundFlowScore >= 71)
      {
        adviceForSustainedHighInterfaceThroughput = self->_adviceForModestAVFlows;
        v7 = 0x4000000000002;
        goto LABEL_15;
      }

      if (activeLimitedThroughputAudioVideoTrafficForegroundFlowScore >= 41)
      {
        adviceForSustainedHighInterfaceThroughput = self->_adviceForModestAVFlowsLowerCertainty;
        v7 = 0x8000000000002;
        goto LABEL_15;
      }
    }

    v37 = 16;
    adviceForSustainedHighInterfaceThroughput = 1;
  }

LABEL_16:
  v8 = v37 | v36;
  v37 = v8;
  if (v8)
  {
    v11 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = v37;
      v13 = v11;
      v14 = cellThroughputAdviceCauseFlagsToString(v12);
      *buf = 134218242;
      *v39 = v12;
      *&v39[8] = 2112;
      v40 = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "CellThroughputAdviser logTransferContributors 0x%llx %@", buf, 0x16u);
    }

    [(FlowOracle *)self->_flowOracle logTransferContributors:v37, v36];
    LOBYTE(v8) = v37;
    if ((v37 & 8) == 0)
    {
LABEL_18:
      if ((v8 & 4) == 0)
      {
        goto LABEL_19;
      }

LABEL_28:
      v19 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v20 = v37;
        v21 = v19;
        v22 = cellThroughputAdviceCauseFlagsToString(v20);
        *buf = 134218242;
        *v39 = v20;
        *&v39[8] = 2112;
        v40 = v22;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "CellThroughputAdviser logInterfaceUseContributors 0x%llx %@", buf, 0x16u);
      }

      [(FlowOracle *)self->_flowOracle logCellInterfaceUseContributors:v37, v36];
      if (advice)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_18;
  }

  v15 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = v37;
    v17 = v15;
    v18 = cellThroughputAdviceCauseFlagsToString(v16);
    *buf = 134218242;
    *v39 = v16;
    *&v39[8] = 2112;
    v40 = v18;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "CellThroughputAdviser logCoreMediaAssetDownloadContributors 0x%llx %@", buf, 0x16u);
  }

  [(FlowOracle *)self->_flowOracle logCoreMediaAssetDownloadContributors:v37, v36];
  if ((v37 & 4) != 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (advice)
  {
LABEL_20:
    *advice = v37;
  }

LABEL_21:
  v9 = *MEMORY[0x277D85DE8];
  return adviceForSustainedHighInterfaceThroughput;
}

- (unsigned)determineNonCoreMediaRxThroughput:(double *)throughput txThroughput:(double *)txThroughput
{
  result = [(FlowOracle *)self->_flowOracle cellNonCoreMediaAudioVideoOperation];
  switch(result)
  {
    case 3u:
      v10 = apparentTime();
      lastAudioVideoReport = self->_lastAudioVideoReport;
      if (lastAudioVideoReport > 0.0 && v10 - lastAudioVideoReport >= self->_minTimeIntervalBetweenAVThroughputReport)
      {
        [(FlowOracle *)self->_flowOracle averageCellAudioVideoTrafficClassRxThroughput];
        *throughput = v12;
        [(FlowOracle *)self->_flowOracle averageCellAudioVideoTrafficClassTxThroughput];
        *txThroughput = v13;
        return 3;
      }

      break;
    case 2u:
      return result;
    case 1u:
      [(FlowOracle *)self->_flowOracle averageCellAudioVideoTrafficClassRxThroughput];
      *throughput = v8;
      [(FlowOracle *)self->_flowOracle averageCellAudioVideoTrafficClassTxThroughput];
      *txThroughput = v9;
      return 1;
  }

  return 0;
}

- (void)setPollingRate:(double)rate
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_currentPollingRate != rate)
  {
    if (self->_pollingCancelToken >= 1)
    {
      [(FlowRefreshScheduler *)self->_refreshScheduler cancelRefresh:?];
      v5 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        currentPollingRate = self->_currentPollingRate;
        pollingCancelToken = self->_pollingCancelToken;
        v12 = 134218496;
        rateCopy2 = rate;
        v14 = 2048;
        v15 = currentPollingRate;
        v16 = 2048;
        v17 = pollingCancelToken;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser new poll interval %.3f, was %.3f, cancel using token %lld", &v12, 0x20u);
      }

      self->_pollingCancelToken = 0;
    }

    if (rate > 0.0)
    {
      self->_pollingCancelToken = [(FlowRefreshScheduler *)self->_refreshScheduler periodicRefreshDataUsageWithInterval:@"CellThroughputAdvisor" maxStale:rate maxDelay:0.1 logAs:0.1];
      v8 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_currentPollingRate;
        v10 = self->_pollingCancelToken;
        v12 = 134218496;
        rateCopy2 = rate;
        v14 = 2048;
        v15 = v9;
        v16 = 2048;
        v17 = v10;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser new poll interval %.3f, was %.3f new cancel token %lld", &v12, 0x20u);
      }
    }

    self->_currentPollingRate = rate;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)quiesce
{
  if (!self->_quiesced)
  {
    v3 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser, quiesce", v4, 2u);
    }

    [(CellThroughputAdviser *)self setPollingRate:0.0];
    [(CellThroughputAdviser *)self performActivityStatsTimekeeping];
    self->_lastPollTime = 0.0;
    self->_quiesced = 1;
    [(FlowScrutinizer *)self->_flowScrutinizer setCellThroughputAdviserShouldRun:0];
  }
}

- (void)unquiesce
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CellThroughputAdviser_unquiesce__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (unquiesce_pred != -1)
  {
    dispatch_once(&unquiesce_pred, block);
  }

  if (self->_quiesced)
  {
    v3 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser, unquiesce", v4, 2u);
    }

    [(CellThroughputAdviser *)self performActivityStatsTimekeeping];
    [(CellThroughputAdviser *)self setPollingRate:self->_configuredPollingRate];
    self->_quiesced = 0;
    [(FlowScrutinizer *)self->_flowScrutinizer setCellThroughputAdviserShouldRun:1];
  }
}

uint64_t __34__CellThroughputAdviser_unquiesce__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 696) addObserver:*(a1 + 32) forKeyPath:@"hasForegroundCellAVTrafficClassFlows" options:7 context:0];
  [*(*(a1 + 32) + 696) addObserver:*(a1 + 32) forKeyPath:@"numExpectedTransferSignificantChanges" options:7 context:0];
  v2 = *(*(a1 + 32) + 696);

  return [v2 addObserver:? forKeyPath:? options:? context:?];
}

- (void)_refreshAdvice:(int)advice
{
  v40 = *MEMORY[0x277D85DE8];
  if (advice != 5 && !self->_enabled)
  {
    v5 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "CellThroughputAdviser skip _refreshAdvice, not enabled", buf, 2u);
    }

    goto LABEL_52;
  }

  if (advice != 2)
  {
    [(FlowOracle *)self->_flowOracle refreshTransferSizeState];
  }

  v37 = 0;
  v6 = [(CellThroughputAdviser *)self determineAdvice:&v37];
  v7 = v37;
  if (v6 == self->_reportedAdvice && v37 == self->_reportedCause)
  {
    v8 = 4;
    v9 = 56;
  }

  else
  {
    [(CellThroughputAdviser *)self noteAdviceForMetrics:v6 cause:v37];
    v7 = v37;
    reportedAdvice = self->_reportedAdvice;
    self->_reportedCause = v37;
    v8 = 3;
    if (v6 == reportedAdvice)
    {
      goto LABEL_13;
    }

    v9 = 64;
  }

  *(&self->super.isa + v9) = v7;
LABEL_13:
  allContributors = [(FlowOracle *)self->_flowOracle allContributors];
  previousSampleContributors = self->_previousSampleContributors;
  self->_previousSampleContributors = allContributors;

  v35 = 0.0;
  v36 = 0.0;
  v13 = [(CellThroughputAdviser *)self determineNonCoreMediaRxThroughput:&v36 txThroughput:&v35];
  if (v13)
  {
    self->_lastAudioVideoReport = apparentTime();
    v14 = advice == 4;
LABEL_15:
    if (self->_enabled)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        if ((v6 == self->_reportedAdvice) & ~v14) == 0 && (objc_opt_respondsToSelector())
        {
          v16 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            if (v6 == self->_reportedAdvice)
            {
              v17 = "Resending";
            }

            else
            {
              v17 = "New";
            }

            if ((v6 & 7u) > 4)
            {
              v18 = "Invalid-tput-advice";
            }

            else
            {
              v18 = off_27898D6A0[v6 & 7];
            }

            *buf = 136315394;
            *v39 = v17;
            *&v39[8] = 2080;
            *&v39[10] = v18;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "%s SDM advice %s", buf, 0x16u);
          }

          v19 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            if ((v6 & 7u) > 4)
            {
              v24 = "Invalid-tput-advice";
            }

            else
            {
              v24 = off_27898D6F0[v6 & 7];
            }

            v25 = self->_reportedAdvice;
            if ((v25 & 7) > 4)
            {
              v26 = "Invalid-tput-advice";
            }

            else
            {
              v26 = off_27898D6F0[v25 & 7];
            }

            *buf = 67109890;
            *v39 = v6;
            *&v39[4] = 2080;
            *&v39[6] = v24;
            *&v39[14] = 1024;
            *&v39[16] = v25;
            *&v39[20] = 2080;
            *&v39[22] = v26;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser send advice 0x%x (%s) to delegate, was 0x%x (%s)", buf, 0x22u);
          }

          if ((activeTraceTargets & 4) != 0)
          {
            lastStateUpdate = self->_lastStateUpdate;
            traceCallout(2, "[CellThroughputAdviser _refreshAdvice:]", "relayCellThroughputAdvice:at:", "%d %t", v20, v21, v22, v23, v6);
          }

          [WeakRetained relayCellThroughputAdvice:v6 at:self->_lastStateUpdate];
        }

        if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v27 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v39 = v13;
            *&v39[4] = 2048;
            *&v39[6] = v36;
            *&v39[14] = 2048;
            *&v39[16] = v35;
            _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser send A/V operation %u, RX throughput %.4f, TX throughput %.4f", buf, 0x1Cu);
          }

          if ((activeTraceTargets & 4) != 0)
          {
            v34 = self->_lastStateUpdate;
            traceCallout(2, "[CellThroughputAdviser _refreshAdvice:]", "relayAudioVideoStatus:rxThroughput:txThroughput:at:reset:", "%d %f %f %d", v28, v29, v30, v31, v13);
          }

          [WeakRetained relayAudioVideoStatus:v13 rxThroughput:v13 == 2 txThroughput:v36 at:v35 reset:self->_lastStateUpdate];
        }
      }
    }

    self->_reportedAdvice = v6;
    v8 = 2;
    goto LABEL_50;
  }

  v14 = advice == 4;
  if (advice == 4 || v6 != self->_reportedAdvice)
  {
    goto LABEL_15;
  }

LABEL_50:
  if (v8 <= self->_stateLogLevel)
  {
    [(CellThroughputAdviser *)self dumpStateAt:v8 <= self->_stateLogLevelForVerbose verbose:self->_lastStateUpdate];
  }

LABEL_52:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)setPropertyChangeTimestamp:(double)timestamp
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    propertyChangeTimestamp = self->_propertyChangeTimestamp;
    *buf = 134218240;
    timestampCopy = timestamp;
    v15 = 2048;
    v16 = propertyChangeTimestamp;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser set propertyChangeTimestamp to %.4f, was %.4f", buf, 0x16u);
  }

  if ((activeTraceTargets & 4) != 0)
  {
    traceEntry(2, "[CellThroughputAdviser setPropertyChangeTimestamp:]", "%t", v6, v7, v8, v9, v10, *&timestamp);
  }

  self->_propertyChangeTimestamp = timestamp;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)didPollFlowsAt:(double)at periodic:(BOOL)periodic
{
  periodicCopy = periodic;
  v26 = *MEMORY[0x277D85DE8];
  if ((activeTraceTargets & 4) != 0)
  {
    traceEntry(2, "[CellThroughputAdviser didPollFlowsAt:periodic:]", "%t %d", v4, v5, v6, v7, v8, *&at);
  }

  v12 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = dateStringMillisecondsFromReferenceInterval(at);
    *buf = 138412546;
    v23 = v14;
    v24 = 1024;
    v25 = periodicCopy;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "CellThroughputAdviser didPollFlowsAt: %@ periodic %d", buf, 0x12u);
  }

  setApparentTime(at);
  ++self->_numPolls;
  if (self->_lastPollTime > 0.0)
  {
    [(CellThroughputAdviser *)self notePollIntervalForMetrics:apparentTime() - self->_lastPollTime];
  }

  self->_lastPollTime = at;
  self->_pollInProgress = 0;
  [(CellThroughputAdviser *)self _refreshAdvice:2];
  if (self->_enabled)
  {
    if (self->_quiesced)
    {
      if (![(FlowOracle *)self->_flowOracle hadZeroCellInterfaceTrafficForLast:self->_inactivityTimeoutForQuiesce])
      {
        v15 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser didPollFlowAt: unquiesce", buf, 2u);
        }

        [(CellThroughputAdviser *)self unquiesce];
      }
    }

    else
    {
      [(CellThroughputAdviser *)self _assessActivityStateForQuiesce];
    }
  }

  if (self->_traceVerbose && (activeTraceTargets & 4) != 0)
  {
    v16 = [(CellThroughputAdviser *)self _getCombinedStateAt:apparentTime()];
    traceItem(2, "[CellThroughputAdviser didPollFlowsAt:periodic:]", "state", "%@", v17, v18, v19, v20, v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)notePollIntervalForMetrics:(double)metrics
{
  metricsCopy = metrics;
  v16 = *MEMORY[0x277D85DE8];
  if (metrics >= 0.0 && metrics < 40.0)
  {
    if (metrics >= 5.0)
    {
      if (metrics >= 20.0)
      {
        v8 = 35;
LABEL_15:
        ++self->_pollIntervalHistogram[v8];
        goto LABEL_16;
      }

      metricsCopy = metrics + -5.0;
      v6 = ((metrics + -5.0) * 15.0 / 15.0) + 20;
    }

    else
    {
      v6 = (metrics * 20.0 / 5.0);
    }

    if (v6 < 0x24)
    {
      v8 = v6;
    }

    else
    {
      v7 = flowScrutinyLogHandle;
      v8 = 35;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = 134218496;
        v11 = metricsCopy;
        v12 = 1024;
        v13 = v6;
        v14 = 1024;
        v15 = 35;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Invalid histogram bin, interval = %.6f got bin %d, resetting to %d", &v10, 0x18u);
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)noteSizeableBackgroundTransferEventName:(id)name event:(unint64_t)event downloadSizeBytes:(unint64_t)bytes uploadSizeBytes:(unint64_t)sizeBytes at:(double)at
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v18 = nameCopy;
  if ((activeTraceTargets & 4) != 0)
  {
    traceEntry(2, "[CellThroughputAdviser noteSizeableBackgroundTransferEventName:event:downloadSizeBytes:uploadSizeBytes:at:]", "%@ %lld %lld %lld %t", v13, v14, v15, v16, v17, nameCopy);
  }

  setApparentTime(at);
  if (v18 && [v18 length])
  {
    v19 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v25 = v18;
      v26 = 2048;
      eventCopy = event;
      v28 = 2048;
      bytesCopy = bytes;
      v30 = 2048;
      sizeBytesCopy = sizeBytes;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser received sizeable background transfer event with name %@, event %lld, download %llu, upload %llu", buf, 0x2Au);
    }

    if (event == 1)
    {
      [(NSMutableSet *)self->_backgroundTransfers addObject:v18];
      self->_lastBackgroundTransferNotifiedTimestamp = at;
    }

    else if (event == 2)
    {
      [(NSMutableSet *)self->_backgroundTransfers removeObject:v18];
      if (![(NSMutableSet *)self->_backgroundTransfers count])
      {
        v20 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser no more sizeable background transfer activities", buf, 2u);
        }

        self->_lastBackgroundTransferNotifiedTimestamp = 0.0;
        self->_lastBackgroundTransferUsageTimestamp = 0.0;
      }
    }

    if (self->_enabled && self->_quiesced)
    {
      v22 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser, unquiesce due to noteSizeableBackgroundTransferEventName", buf, 2u);
      }

      [(CellThroughputAdviser *)self unquiesce];
    }

    if (self->_minBackgroundTransferThroughputForUpgrade == 0.0)
    {
      [(CellThroughputAdviser *)self _refreshAdvice:0];
    }
  }

  else
  {
    v21 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "CellThroughputAdviser received malformed sizeable background transfer event with name %@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v33 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v13 = *MEMORY[0x277CCA300];
    v14 = v12;
    v15 = [changeCopy objectForKeyedSubscript:v13];
    v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    *buf = 138412802;
    v28 = pathCopy;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "CellThroughputAdviser: observe keyPath %@   %@ -> %@", buf, 0x20u);
  }

  if ([pathCopy isEqualToString:@"hasForegroundCellAVTrafficClassFlows"])
  {
    v17 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser, hasForegroundCellAVTrafficClassFlows causes async scheduling of _refreshAdvice", buf, 2u);
    }

    queue = [(CellThroughputAdviser *)self queue];
    v19 = queue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __72__CellThroughputAdviser_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v26[3] = &unk_27898A0C8;
    v26[4] = self;
    v20 = v26;
LABEL_25:
    dispatch_async(queue, v20);
LABEL_26:

    goto LABEL_27;
  }

  if ([pathCopy isEqualToString:@"numExpectedTransferSignificantChanges"])
  {
    if (self->_isScreenDark)
    {
      v21 = 392;
    }

    else
    {
      v21 = 400;
      if (self->_isScreenLocked)
      {
        v21 = 392;
      }
    }

    if (*(&self->super.isa + v21) == 0.0)
    {
      v23 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser, numExpectedTransferSignificantChanges causes async scheduling of _refreshAdvice", buf, 2u);
      }

      queue = [(CellThroughputAdviser *)self queue];
      v19 = queue;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __72__CellThroughputAdviser_observeValueForKeyPath_ofObject_change_context___block_invoke_554;
      v25[3] = &unk_27898A0C8;
      v25[4] = self;
      v20 = v25;
      goto LABEL_25;
    }
  }

  else if ([pathCopy isEqualToString:@"cellThroughputAdviserShouldRun"])
  {
    v19 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (v19)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 BOOLValue] && self->_enabled && self->_quiesced)
      {
        v22 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "CellThroughputAdviser, unquiesce due to cellThroughputAdviserShouldRun", buf, 2u);
        }

        [(CellThroughputAdviser *)self unquiesce];
      }
    }

    goto LABEL_26;
  }

LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)restoreDefaults
{
  self->_configuredPollingRate = 1.2;
  *&self->_lastHighInterfaceUseDampeningInterval = xmmword_232816CF0;
  self->_lastPromotedTransferSizeDampeningInterval = 10.0;
  self->_minTransferSizeThroughputForUpgrade = 2.0;
  *&self->_minDisplayOnTransferSizeThroughputForUpgrade = xmmword_232816D00;
  *&self->_minTransferSizeThroughputForContinuedUpgradeMmWave = xmmword_232816D10;
  self->_exploreExploitLearningRatioForHighTransferSize = 0.4;
  self->_minTimeIntervalBetweenAVThroughputReport = 5.8;
  *&self->_minAssetDownloadThroughputForUpgrade = xmmword_232816D20;
  *&self->_minAssetDownloadThroughputForContinuedUpgradeSub6 = xmmword_232816D30;
  *&self->_maxAssetDownloadDurationBelowThreshold = xmmword_232816D40;
  *&self->_minBackgroundTransferThroughputForContinuedUpgradeRequest = xmmword_232816D50;
  *&self->_minBackgroundTransferThroughputForContinuedUpgradeMmWave = xmmword_232816D60;
  *&self->_numLowerTransferThresholdFlowsForUpperThreshold = xmmword_232816D70;
  *&self->_adviceForModestAVFlowsLowerCertainty = 0x100000001;
  self->_adviceForBusyAVFlowsLowerCertainty = 1;
  self->_inactivityTimeoutForQuiesce = 24.0;
  self->_avUseCasesSupported = 0;
  *&self->_stateLogLevel = 0x200000003;
}

- (int64_t)configItemToLongLong:(id)long
{
  longCopy = long;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    longLongValue = [longCopy longLongValue];
  }

  else
  {
    longLongValue = -1;
  }

  return longLongValue;
}

- (int)configureInstance:(id)instance
{
  instanceCopy = instance;
  if (instanceCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = objc_alloc_init(ConfigurationParams);
    v6 = v5;
    if (v5)
    {
      [(ConfigurationParams *)v5 setUnderlyingDictionary:instanceCopy];
      [(ConfigurationParams *)v6 setLogHandle:flowScrutinyLogHandle];
      [(ConfigurationParams *)v6 extractKey:@"CellThroughputPollingInterval" toDouble:&self->_configuredPollingRate defaultTo:1.2];
      [(ConfigurationParams *)v6 extractKey:@"DampeningHighTransferSize" toDouble:&self->_lastHighTransferSizeDampeningInterval defaultTo:2.0];
      [(ConfigurationParams *)v6 extractKey:@"DampeningHighInterfaceUse" toDouble:&self->_lastHighInterfaceUseDampeningInterval defaultTo:5.8];
      [(ConfigurationParams *)v6 extractKey:@"DampeningInsufficientThroughputTransfer" toDouble:&self->_lastPromotedTransferSizeDampeningInterval defaultTo:10.0];
      [(ConfigurationParams *)v6 extractKey:@"AdviceForHighInterfaceUse" toUint32:&self->_adviceForSustainedHighInterfaceThroughput defaultTo:3];
      [(ConfigurationParams *)v6 extractKey:@"AVUseCasesSupported" toBool:&self->_avUseCasesSupported defaultTo:0];
      [(ConfigurationParams *)v6 extractKey:@"AdviceForBusyAVUse" toUint32:&self->_adviceForBusyAVFlows defaultTo:1];
      [(ConfigurationParams *)v6 extractKey:@"AdviceForBusyAVUseLowerCertainty" toUint32:&self->_adviceForBusyAVFlowsLowerCertainty defaultTo:1];
      [(ConfigurationParams *)v6 extractKey:@"AdviceForModestAVUse" toUint32:&self->_adviceForModestAVFlows defaultTo:1];
      [(ConfigurationParams *)v6 extractKey:@"AdviceForModestAVUseLowerCertainty" toUint32:&self->_adviceForModestAVFlowsLowerCertainty defaultTo:1];
      [(ConfigurationParams *)v6 extractKey:@"NumLowerThresholdFlowsForUpperThreshold" toUint32:&self->_numLowerTransferThresholdFlowsForUpperThreshold defaultTo:2];
      [(ConfigurationParams *)v6 extractKey:@"MinTransferSizeTputForUpgrade" toDouble:&self->_minTransferSizeThroughputForUpgrade defaultTo:2.0];
      [(ConfigurationParams *)v6 extractKey:@"MinDisplayOnTransferSizeTputForUpgrade" toDouble:&self->_minDisplayOnTransferSizeThroughputForUpgrade defaultTo:2.0];
      [(ConfigurationParams *)v6 extractKey:@"MinTransferSizeTputForContinuedUpgradeSub6" toDouble:&self->_minTransferSizeThroughputForContinuedUpgradeSub6 defaultTo:17.0];
      [(ConfigurationParams *)v6 extractKey:@"MinTransferSizeTputForContinuedUpgradeMmWave" toDouble:&self->_minTransferSizeThroughputForContinuedUpgradeMmWave defaultTo:18.0];
      [(ConfigurationParams *)v6 extractKey:@"MinTransferSizeTputForContinuedRequest" toDouble:&self->_minTransferSizeThroughputForContinuedUpgradeRequest defaultTo:4.0];
      [(ConfigurationParams *)v6 extractKey:@"ExploreExploitLearningForTransferSize" toDouble:&self->_exploreExploitLearningRatioForHighTransferSize defaultTo:0.4];
      [(ConfigurationParams *)v6 extractKey:@"MinNonCoreMediaThroughputReportInterval" toDouble:&self->_minTimeIntervalBetweenAVThroughputReport defaultTo:5.8];
      [(ConfigurationParams *)v6 extractKey:@"NumDisplayOnLowerThresholdFlowsForUpper" toUint32:&self->_numDisplayOnLowerTransferThresholdFlowsForUpperThreshold defaultTo:1];
      [(ConfigurationParams *)v6 extractKey:@"MinAssetDownloadTputForUpgrade" toDouble:&self->_minAssetDownloadThroughputForUpgrade defaultTo:3.0];
      [(ConfigurationParams *)v6 extractKey:@"MinAssetDownloadTputForContinuedRequest" toDouble:&self->_minAssetDownloadThroughputForContinuedUpgradeRequest defaultTo:16.0];
      [(ConfigurationParams *)v6 extractKey:@"MinAssetDownloadTputForContinuedUpgradeSub6" toDouble:&self->_minAssetDownloadThroughputForContinuedUpgradeSub6 defaultTo:17.0];
      [(ConfigurationParams *)v6 extractKey:@"MinAssetDownloadTputForContinuedUpgradeMmWave" toDouble:&self->_minAssetDownloadThroughputForContinuedUpgradeMmWave defaultTo:18.0];
      [(ConfigurationParams *)v6 extractKey:@"MaxDurationAssetDownloadBelowThreshold" toDouble:&self->_maxAssetDownloadDurationBelowThreshold defaultTo:4.0];
      [(ConfigurationParams *)v6 extractKey:@"MinBackgroundTransferTputForUpgrade" toDouble:&self->_minBackgroundTransferThroughputForUpgrade defaultTo:3.0];
      [(ConfigurationParams *)v6 extractKey:@"MinBackgroundTransferTputForContinuedRequest" toDouble:&self->_minBackgroundTransferThroughputForContinuedUpgradeRequest defaultTo:12.0];
      [(ConfigurationParams *)v6 extractKey:@"MinBackgroundTransferTputForContinuedUpgradeSub6" toDouble:&self->_minBackgroundTransferThroughputForContinuedUpgradeSub6 defaultTo:13.0];
      [(ConfigurationParams *)v6 extractKey:@"MinBackgroundTransferTputForContinuedUpgradeMmWave" toDouble:&self->_minBackgroundTransferThroughputForContinuedUpgradeMmWave defaultTo:14.0];
      [(ConfigurationParams *)v6 extractKey:@"MaxDurationBackgroundTransferBelowThreshold" toDouble:&self->_maxBackgroundTransferDurationBelowThreshold defaultTo:8.0];
      [(ConfigurationParams *)v6 extractKey:@"InactivityTimeoutForQuiesce" toDouble:&self->_inactivityTimeoutForQuiesce defaultTo:24.0];
      [(ConfigurationParams *)v6 extractKey:@"StateLogLevel" toUint32:&self->_stateLogLevel defaultTo:3];
      [(ConfigurationParams *)v6 extractKey:@"StateLogLevelForVerbose" toUint32:&self->_stateLogLevelForVerbose defaultTo:2];
      v7 = [(FlowOracle *)self->_flowOracle setConfiguration:v6];
      if (v7 || (v7 = [(FlowScrutinizer *)self->_flowScrutinizer setConfiguration:v6]) != 0)
      {
        v8 = v7;
      }

      else
      {
        cellInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
        v8 = [cellInterfaceSampler setConfiguration:v6];
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [instanceCopy objectForKeyedSubscript:@"restoreDefaults"];
    if (v9)
    {
      [(CellThroughputAdviser *)self restoreDefaults];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_dumpArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v8 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(&v11 + 1) + 8 * i);
          *buf = 138543362;
          v16 = v9;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v5 = [arrayCopy countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_getState:(BOOL)state
{
  stateCopy = state;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  reportedAdvice = self->_reportedAdvice;
  if ((reportedAdvice & 7) > 4)
  {
    v8 = "Invalid-tput-advice";
  }

  else
  {
    v8 = off_27898D6F0[reportedAdvice & 7];
  }

  adminAdviceOverride = self->_adminAdviceOverride;
  if (adminAdviceOverride > 4)
  {
    v10 = "Invalid-admin-advice";
  }

  else
  {
    v10 = off_27898D6C8[adminAdviceOverride];
  }

  targetAdviceLevel = self->_targetAdviceLevel;
  if (targetAdviceLevel > 4)
  {
    v12 = "Invalid-admin-advice";
  }

  else
  {
    v12 = off_27898D6C8[targetAdviceLevel];
  }

  reportedCause = self->_reportedCause;
  v41 = array;
  v40 = stateCopy;
  v38 = self->_reportedAdvice;
  v39 = v6;
  v36 = v10;
  v37 = v8;
  v35 = v12;
  if (reportedCause > 0x400000003)
  {
    if (reportedCause > 0x800000000007)
    {
      if (reportedCause <= 0x200000000000FFLL)
      {
        if (reportedCause > 0x4000000000001)
        {
          switch(reportedCause)
          {
            case 0x4000000000002:
              v14 = "UnderThresholdAVFlowsHighConfidence";
              goto LABEL_134;
            case 0x8000000000002:
              v14 = "UnderThresholdAVFlowsLowConfidence";
              goto LABEL_134;
            case 0x10000000000100:
              v14 = "BackgroundTransferActive";
              goto LABEL_134;
          }
        }

        else
        {
          switch(reportedCause)
          {
            case 0x800000000008:
              v14 = "AssetDownloadHysteresisMmWave";
              goto LABEL_134;
            case 0x1000000000002:
              v14 = "OverThresholdAVFlowsHighConfidence";
              goto LABEL_134;
            case 0x2000000000002:
              v14 = "OverThresholdAVFlowsLowConfidence";
              goto LABEL_134;
          }
        }
      }

      else if (reportedCause <= 0x1000000000000FFLL)
      {
        switch(reportedCause)
        {
          case 0x20000000000100:
            v14 = "BackgroundTransferActiveLTE";
            goto LABEL_134;
          case 0x40000000000100:
            v14 = "BackgroundTransferActiveSub6";
            goto LABEL_134;
          case 0x80000000000100:
            v14 = "BackgroundTransferActiveMmWave";
            goto LABEL_134;
        }
      }

      else if (reportedCause > 0x4000000000000FFLL)
      {
        if (reportedCause == 0x400000000000100)
        {
          v14 = "BackgroundTransferHysteresisSub6";
          goto LABEL_134;
        }

        if (reportedCause == 0x800000000000100)
        {
          v14 = "BackgroundTransferHysteresisMmWave";
          goto LABEL_134;
        }
      }

      else
      {
        if (reportedCause == 0x100000000000100)
        {
          v14 = "BackgroundTransferHysteresis";
          goto LABEL_134;
        }

        if (reportedCause == 0x200000000000100)
        {
          v14 = "BackgroundTransferHysteresisLTE";
          goto LABEL_134;
        }
      }
    }

    else if (reportedCause <= 0x10000000007)
    {
      if (reportedCause > 0x1FFFFFFFFFLL)
      {
        switch(reportedCause)
        {
          case 0x2000000000:
            v14 = "AssetDownloadFailedThresholdTest";
            goto LABEL_134;
          case 0x4000000000:
            v14 = "AssetDownloadPaused";
            goto LABEL_134;
          case 0x8000000008:
            v14 = "AssetDownloadNoted";
            goto LABEL_134;
        }
      }

      else
      {
        switch(reportedCause)
        {
          case 0x400000004:
            v14 = "SustainedHighTxOnlyThroughputDetected";
            goto LABEL_134;
          case 0x800000004:
            v14 = "SustainedHighRxPlusTxThroughputDetected";
            goto LABEL_134;
          case 0x1000000004:
            v14 = "SustainedHighCombinedThroughputDetected";
            goto LABEL_134;
        }
      }
    }

    else if (reportedCause <= 0x80000000007)
    {
      switch(reportedCause)
      {
        case 0x10000000008:
          v14 = "AssetDownloadActive";
          goto LABEL_134;
        case 0x20000000008:
          v14 = "AssetDownloadActiveLTE";
          goto LABEL_134;
        case 0x40000000008:
          v14 = "AssetDownloadActiveSub6";
          goto LABEL_134;
      }
    }

    else if (reportedCause > 0x200000000007)
    {
      if (reportedCause == 0x200000000008)
      {
        v14 = "AssetDownloadHysteresisLTE";
        goto LABEL_134;
      }

      if (reportedCause == 0x400000000008)
      {
        v14 = "AssetDownloadHysteresisSub6";
        goto LABEL_134;
      }
    }

    else
    {
      if (reportedCause == 0x80000000008)
      {
        v14 = "AssetDownloadActiveMmWave";
        goto LABEL_134;
      }

      if (reportedCause == 0x100000000008)
      {
        v14 = "AssetDownloadHysteresis";
        goto LABEL_134;
      }
    }
  }

  else if (reportedCause > 0x100000)
  {
    if (reportedCause <= 0x8000000)
    {
      if (reportedCause > 0x1000000)
      {
        switch(reportedCause)
        {
          case 16777217:
            v14 = "LockedOnTransferSizeHysteresis";
            goto LABEL_134;
          case 33554433:
            v14 = "LockedOnTransferSizeHysteresisOnLTE";
            goto LABEL_134;
          case 67108865:
            v14 = "LockedOnTransferSizeHysteresisOnSub6";
            goto LABEL_134;
        }
      }

      else
      {
        switch(reportedCause)
        {
          case 1048577:
            v14 = "ContinuedTransferSizeThresholdOnLTE";
            goto LABEL_134;
          case 2097153:
            v14 = "ContinuedTransferSizeThresholdOnSub6";
            goto LABEL_134;
          case 4194305:
            v14 = "ContinuedTransferSizeThresholdOnMMWave";
            goto LABEL_134;
        }
      }
    }

    else if (reportedCause <= 0x40000000)
    {
      switch(reportedCause)
      {
        case 134217729:
          v14 = "LockedOnTransferSizeHysteresisOnMmWave";
          goto LABEL_134;
        case 268435457:
          v14 = "ThresholdTransferSizeFinalHysteresis";
          goto LABEL_134;
        case 536870913:
          v14 = "ThresholdTransferSizeFinalHysteresisLTE";
          goto LABEL_134;
      }
    }

    else if (reportedCause > 0x100000003)
    {
      if (reportedCause == 0x100000004)
      {
        v14 = "SustainedHighRxOnlyThroughputDetected";
        goto LABEL_134;
      }

      if (reportedCause == 0x200000004)
      {
        v14 = "SustainedHighThroughputHysteresis";
        goto LABEL_134;
      }
    }

    else
    {
      if (reportedCause == 1073741825)
      {
        v14 = "ThresholdTransferSizeFinalHysteresisSub6";
        goto LABEL_134;
      }

      if (reportedCause == 2147483649)
      {
        v14 = "ThresholdTransferSizeFinalHysteresisMmWave";
        goto LABEL_134;
      }
    }
  }

  else if (reportedCause <= 63)
  {
    if (reportedCause > 7)
    {
      switch(reportedCause)
      {
        case 8:
          v14 = "CoreMediaAssetDownload";
          goto LABEL_134;
        case 16:
          v14 = "ScreenOnDefault";
          goto LABEL_134;
        case 32:
          v14 = "ScreenDarkDefault";
          goto LABEL_134;
      }
    }

    else
    {
      switch(reportedCause)
      {
        case 1:
          v14 = "LargeTransfer";
          goto LABEL_134;
        case 2:
          v14 = "AVFlows";
          goto LABEL_134;
        case 4:
          v14 = "SustainedHighThroughput";
          goto LABEL_134;
      }
    }
  }

  else if (reportedCause <= 0x10000)
  {
    switch(reportedCause)
    {
      case 64:
        v14 = "ScreenLockedDefault";
        goto LABEL_134;
      case 128:
        v14 = "AdminOverride";
        goto LABEL_134;
      case 32769:
        v14 = "IgnoredThresholdTransferSize";
        goto LABEL_134;
    }
  }

  else if (reportedCause > 0x40000)
  {
    if (reportedCause == 262145)
    {
      v14 = "LowerThresholdTransferSize";
      goto LABEL_134;
    }

    if (reportedCause == 524289)
    {
      v14 = "ContinuedTransferSizeThreshold";
      goto LABEL_134;
    }
  }

  else
  {
    if (reportedCause == 65537)
    {
      v14 = "UpperThresholdTransferSize";
      goto LABEL_134;
    }

    if (reportedCause == 131073)
    {
      v14 = "MultipleLowerThresholdTransferSizes";
      goto LABEL_134;
    }
  }

  v14 = "undefined";
LABEL_134:
  enabled = self->_enabled;
  quiesced = self->_quiesced;
  nrFrequencyBand = self->_nrFrequencyBand;
  busiestCellOrigin = [(FlowOracle *)self->_flowOracle busiestCellOrigin];
  name = [busiestCellOrigin name];
  [(FlowOracle *)self->_flowOracle busiestCellOriginRecentThroughput];
  v21 = v20;
  isScreenDark = self->_isScreenDark;
  isScreenLocked = self->_isScreenLocked;
  lastStateUpdate = self->_lastStateUpdate;
  v25 = dateStringMillisecondsFromReferenceInterval(lastStateUpdate);
  v26 = [v39 initWithFormat:@"CellThroughputAdviser: currentAdvice 0x%x (%s admin %s target %s) because %s enabled %d quiesced %d nr-frequency-band %d busiest %@ busiest-tput %0.6f Mbps screen-dark %d screen-locked %d lastCompletion %f %@ poll-rate %.3f", v38, v37, v36, v35, v14, enabled, quiesced, nrFrequencyBand, name, v21, isScreenDark, isScreenLocked, *&lastStateUpdate, v25, *&self->_currentPollingRate];

  [v41 addObject:v26];
  if (v40)
  {
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    adviceForSustainedHighInterfaceThroughput = self->_adviceForSustainedHighInterfaceThroughput;
    if ((adviceForSustainedHighInterfaceThroughput & 7) > 4)
    {
      v29 = "Invalid-tput-advice";
    }

    else
    {
      v29 = off_27898D6F0[adviceForSustainedHighInterfaceThroughput & 7];
    }

    v30 = [v27 initWithFormat:@"CellThroughputAdviser configuration: xfer threshold num-lower-as-upper %d flows, min-reqd-tput %0.3f Mbps, dampening %0.2f sec, high i/f use dampening %0.2f sec, advice %d (%s)", self->_numLowerTransferThresholdFlowsForUpperThreshold, *&self->_minTransferSizeThroughputForUpgrade, *&self->_lastHighTransferSizeDampeningInterval, *&self->_lastHighInterfaceUseDampeningInterval, self->_adviceForSustainedHighInterfaceThroughput, v29];
    [v41 addObject:v30];
  }

  [(CellThroughputAdviser *)self performActivityStatsTimekeeping];
  v31 = self->_totalActiveTime + self->_totalDisabledTime + self->_totalQuiesceTime + self->_totalInferredSleepTime;
  if (v31 > 0.0)
  {
    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CellThroughputAdviser num polls %zd elapsed time active %.3f (%.1f%%) quiesced %.3f (%.1f%%) disabled %.3f (%.1f%%) sleeping %.3f (%.1f%%)", self->_numPolls, *&self->_totalActiveTime, self->_totalActiveTime * 100.0 / v31, *&self->_totalQuiesceTime, self->_totalQuiesceTime * 100.0 / v31, *&self->_totalDisabledTime, self->_totalDisabledTime * 100.0 / v31, *&self->_totalInferredSleepTime, self->_totalInferredSleepTime * 100.0 / v31];
    [v41 addObject:v32];
  }

  getState = [(WiFiViabilityMonitor *)self->_wifiViabilityMonitor getState];
  [v41 addObjectsFromArray:getState];

  return v41;
}

- (id)_getCombinedStateAt:(double)at
{
  setApparentTime(at);
  v4 = [(CellThroughputAdviser *)self _getState:1];
  v5 = [(FlowOracle *)self->_flowOracle getState:1];
  [v4 addObjectsFromArray:v5];

  v6 = [(FlowScrutinizer *)self->_flowScrutinizer getState:1];
  [v4 addObjectsFromArray:v6];

  return v4;
}

- (id)getStateAt:(double)at
{
  if ((activeTraceTargets & 4) != 0)
  {
    traceEntry(2, "[CellThroughputAdviser getStateAt:]", "%t", v3, v4, v5, v6, v7, *&at);
  }

  return [(CellThroughputAdviser *)self _getCombinedStateAt:at];
}

- (void)_checkPendingTimers:(double)timers
{
  v30 = *MEMORY[0x277D85DE8];
  pendingDelayDetails = self->_pendingDelayDetails;
  if (pendingDelayDetails && [(NSMutableSet *)pendingDelayDetails count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_pendingDelayDetails;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (!v7)
    {
      v9 = v6;
      goto LABEL_19;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        [v12 fireAt];
        if (v13 <= apparentTime())
        {
          v14 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            context = [v12 context];
            [v12 fireAt];
            *buf = 138412802;
            v24 = context;
            v25 = 2048;
            timersCopy = timers;
            v27 = 2048;
            v28 = v17;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "Replayer about to call timerCallback object %@ now %f  targetCallbackTime %f\n", buf, 0x20u);
          }

          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [(NSMutableSet *)v9 addObject:v12];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v8);

    if (v9)
    {
      [(NSMutableSet *)self->_pendingDelayDetails minusSet:v9];
LABEL_19:
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setTimerCallbackWithSimulatedDelay:(double)delay context:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!self->_pendingDelayDetails)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingDelayDetails = self->_pendingDelayDetails;
    self->_pendingDelayDetails = v7;
  }

  v9 = objc_alloc_init(DelayDetails);
  [(DelayDetails *)v9 setFireAt:apparentTime() + delay];
  [(DelayDetails *)v9 setContext:contextCopy];
  [(NSMutableSet *)self->_pendingDelayDetails addObject:v9];
  v10 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = apparentTime();
    v13 = dateStringMillisecondsFromTimeInterval(v12);
    v15 = 134218242;
    delayCopy = delay;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "setTimerCallbackWithSimulatedDelay received %f at %@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performAction:(id)action verbose:(BOOL)verbose
{
  v44 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  self->_traceVerbose = verbose;
  if (actionCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [actionCopy objectForKeyedSubscript:@"set"];
      v8 = [actionCopy objectForKeyedSubscript:@"call"];
      v9 = v8;
      if (v7)
      {
        v10 = [actionCopy objectForKeyedSubscript:@"value"];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v7 isEqualToString:@"enabled"])
            {
              -[CellThroughputAdviser setEnabled:](self, "setEnabled:", [v10 BOOLValue]);
            }

            else if ([v7 isEqualToString:@"adminAdviceOverride"])
            {
              -[CellThroughputAdviser setAdminAdviceOverride:](self, "setAdminAdviceOverride:", [v10 intValue]);
            }

            else if ([v7 isEqualToString:@"targetAdviceLevel"])
            {
              -[CellThroughputAdviser setTargetAdviceLevel:](self, "setTargetAdviceLevel:", [v10 intValue]);
            }

            else if ([v7 isEqualToString:@"isScreenDark"])
            {
              -[CellThroughputAdviser setIsScreenDark:](self, "setIsScreenDark:", [v10 BOOLValue]);
            }

            else if ([v7 isEqualToString:@"isScreenLocked"])
            {
              -[CellThroughputAdviser setIsScreenLocked:](self, "setIsScreenLocked:", [v10 BOOLValue]);
            }

            else if ([v7 isEqualToString:@"nrFrequencyBand"])
            {
              -[CellThroughputAdviser setNrFrequencyBand:](self, "setNrFrequencyBand:", [v10 shortValue]);
            }

            else
            {
              [v7 isEqualToString:@"traceFileVersionNumber"];
            }

            goto LABEL_17;
          }

          if ([v7 isEqualToString:@"propertyChangeTimestamp"] && -[CellThroughputAdviser encodingRepresentsNSTimeInterval:](self, "encodingRepresentsNSTimeInterval:", v10))
          {
            [(CellThroughputAdviser *)self encodingToNSTimeInterval:v10];
            [(CellThroughputAdviser *)self setPropertyChangeTimestamp:?];
LABEL_17:

            goto LABEL_18;
          }
        }

        v11 = flowScrutinyLogHandle;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        *buf = 138543362;
        v41 = actionCopy;
        v12 = "CellThroughputAdviser, invalid value for setter in %{public}@";
        v13 = v11;
        v14 = 12;
LABEL_16:
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        goto LABEL_17;
      }

      if (v8)
      {
        if (![v8 isEqualToString:@"willPollFlows"])
        {
          if ([v9 isEqualToString:@"_traceState"])
          {
            if ((activeTraceTargets & 4) != 0)
            {
              v16 = [(CellThroughputAdviser *)self _getCombinedStateAt:apparentTime()];
              traceItem(2, "[CellThroughputAdviser performAction:verbose:]", "state", "%@", v17, v18, v19, v20, v16);
            }

            goto LABEL_18;
          }

          if ([v9 isEqualToString:@"getStateAt:"])
          {
            v10 = [actionCopy objectForKeyedSubscript:@"param1"];
            if ([(CellThroughputAdviser *)self encodingRepresentsNSTimeInterval:v10])
            {
              [(CellThroughputAdviser *)self encodingToNSTimeInterval:v10];
              v22 = v21;
              [(CellThroughputAdviser *)self _checkPendingTimers:?];
              v23 = [(CellThroughputAdviser *)self getStateAt:v22];
              goto LABEL_17;
            }

            v26 = flowScrutinyLogHandle;
            if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }
          }

          else if ([v9 isEqualToString:@"didPollFlowsAt:"])
          {
            v10 = [actionCopy objectForKeyedSubscript:@"param1"];
            if ([(CellThroughputAdviser *)self encodingRepresentsNSTimeInterval:v10])
            {
              [(CellThroughputAdviser *)self encodingToNSTimeInterval:v10];
              v25 = v24;
              [(CellThroughputAdviser *)self _checkPendingTimers:?];
              [(CellThroughputAdviser *)self didPollFlowsAt:1 periodic:v25];
              goto LABEL_17;
            }

            v26 = flowScrutinyLogHandle;
            if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }
          }

          else
          {
            if ([v9 isEqualToString:@"noteFlowSnapshot:withClassification:"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"noteExpectedTransfer:dueTo:flowUUID:At:") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"noteCoreMediaAssetDownloadEvent:downloadUUID:onBehalfOf:"))
            {
              goto LABEL_18;
            }

            if ([v9 isEqualToString:@"noteSizeableBackgroundTransferEventName:event:downloadSizeBytes:uploadSizeBytes:at:"])
            {
              v10 = [actionCopy objectForKeyedSubscript:@"param1"];
              v27 = [actionCopy objectForKeyedSubscript:@"param2"];
              v28 = [actionCopy objectForKeyedSubscript:@"param3"];
              v29 = [actionCopy objectForKeyedSubscript:@"param4"];
              v30 = [actionCopy objectForKeyedSubscript:@"param5"];
              if ([(CellThroughputAdviser *)self encodingRepresentsNSString:v10]&& [(CellThroughputAdviser *)self encodingRepresentsUint64:v27]&& [(CellThroughputAdviser *)self encodingRepresentsUint64:v28]&& [(CellThroughputAdviser *)self encodingRepresentsUint64:v29]&& [(CellThroughputAdviser *)self encodingRepresentsNSTimeInterval:v30])
              {
                v39 = [(CellThroughputAdviser *)self encodingToNSString:v10];
                v38 = [(CellThroughputAdviser *)self encodingToUint64:v27];
                v37 = [(CellThroughputAdviser *)self encodingToUint64:v28];
                v31 = [(CellThroughputAdviser *)self encodingToUint64:v29];
                [(CellThroughputAdviser *)self encodingToNSTimeInterval:v30];
                v33 = v32;
                [(CellThroughputAdviser *)self _checkPendingTimers:?];
                [(CellThroughputAdviser *)self noteSizeableBackgroundTransferEventName:v39 event:v38 downloadSizeBytes:v37 uploadSizeBytes:v31 at:v33];
              }

              else
              {
                v34 = flowScrutinyLogHandle;
                if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v41 = v9;
                  v42 = 2114;
                  v43 = actionCopy;
                  _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "CellThroughputAdviser, incorrect parameters for %{public}@ in %{public}@", buf, 0x16u);
                }
              }

              goto LABEL_17;
            }

            if ([v9 isEqualToString:@"dumpState"])
            {
              [(CellThroughputAdviser *)self dumpStateAt:1 verbose:apparentTime()];
              goto LABEL_18;
            }

            if (![v9 isEqualToString:@"dumpStateAt:"])
            {
              goto LABEL_18;
            }

            v10 = [actionCopy objectForKeyedSubscript:@"param1"];
            if ([(CellThroughputAdviser *)self encodingRepresentsNSTimeInterval:v10])
            {
              [(CellThroughputAdviser *)self encodingToNSTimeInterval:v10];
              v36 = v35;
              [(CellThroughputAdviser *)self _checkPendingTimers:?];
              [(CellThroughputAdviser *)self dumpStateAt:1 verbose:v36];
              goto LABEL_17;
            }

            v26 = flowScrutinyLogHandle;
            if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }
          }

          *buf = 138543618;
          v41 = v9;
          v42 = 2114;
          v43 = actionCopy;
          v12 = "CellThroughputAdviser, incorrect parameters for %{public}@ in %{public}@";
          v13 = v26;
          v14 = 22;
          goto LABEL_16;
        }

        [(CellThroughputAdviser *)self willPollFlows];
      }

LABEL_18:
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (CellThroughputAdviserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end