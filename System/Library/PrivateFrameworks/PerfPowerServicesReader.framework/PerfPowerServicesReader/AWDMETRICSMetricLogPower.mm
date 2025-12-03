@interface AWDMETRICSMetricLogPower
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKCellularAcmSleepStats:(id)stats;
- (void)addKCellularGsmServingCellRssiHist:(id)hist;
- (void)addKCellularGsmTxPowerHist:(id)hist;
- (void)addKCellularLteCdrxConfig:(id)config;
- (void)addKCellularLteDataInactivityBeforeIdle:(id)idle;
- (void)addKCellularLtePagingCycle:(id)cycle;
- (void)addKCellularLteServingCellRsrpHist:(id)hist;
- (void)addKCellularLteServingCellSinrHist:(id)hist;
- (void)addKCellularNrDataInactivityBeforeIdle:(id)idle;
- (void)addKCellularNrSDMActivation:(id)activation;
- (void)addKCellularNrSdmEndcRelease:(id)release;
- (void)addKCellularPerClientProfileTriggerCount:(id)count;
- (void)addKCellularPlatformApBbSleepStats:(id)stats;
- (void)addKCellularPowerLog2g3gSleepStates:(id)states;
- (void)addKCellularPowerLogAcmPerfLevels:(id)levels;
- (void)addKCellularPowerLogBasebandSleepVeto:(id)veto;
- (void)addKCellularPowerLogCdpDSleepStates:(id)states;
- (void)addKCellularPowerLogCdpHSleepStates:(id)states;
- (void)addKCellularPowerLogCdpUSleepStates:(id)states;
- (void)addKCellularPowerLogCpsSleepStates:(id)states;
- (void)addKCellularPowerLogCpuPerfLevels:(id)levels;
- (void)addKCellularPowerLogDcsSleepStates:(id)states;
- (void)addKCellularPowerLogGPSStates:(id)states;
- (void)addKCellularPowerLogGSMRABMode:(id)mode;
- (void)addKCellularPowerLogGsmRrcStateChange:(id)change;
- (void)addKCellularPowerLogL1CSleepStates:(id)states;
- (void)addKCellularPowerLogL1SSleepStates:(id)states;
- (void)addKCellularPowerLogLTEAggregatedDLTBS:(id)s;
- (void)addKCellularPowerLogLteCaConfigActivateStats:(id)stats;
- (void)addKCellularPowerLogLteCarrierComponentInfo:(id)info;
- (void)addKCellularPowerLogLteNrRxDiversityHist:(id)hist;
- (void)addKCellularPowerLogLteNrRxTxActivityStats:(id)stats;
- (void)addKCellularPowerLogLteNrTxPowerHist:(id)hist;
- (void)addKCellularPowerLogLteRrcStateChange:(id)change;
- (void)addKCellularPowerLogNRCarrierComponentInfo:(id)info;
- (void)addKCellularPowerLogNRCdrxConfig:(id)config;
- (void)addKCellularPowerLogNRNSAENDCEvent:(id)event;
- (void)addKCellularPowerLogNRPagingDRXCycle:(id)cycle;
- (void)addKCellularPowerLogNRSCGRel:(id)rel;
- (void)addKCellularPowerLogNRSub6RSRP:(id)p;
- (void)addKCellularPowerLogNRSub6SINR:(id)r;
- (void)addKCellularPowerLogNRsub6BWP:(id)p;
- (void)addKCellularPowerLogNRsub6DLTBS:(id)s;
- (void)addKCellularPowerLogNrCaConfigActivateStats:(id)stats;
- (void)addKCellularPowerLogNrSaRrcStateChange:(id)change;
- (void)addKCellularPowerLogPLMNSearch:(id)search;
- (void)addKCellularPowerLogPlmnSearchEvent:(id)event;
- (void)addKCellularPowerLogPowerEstimator:(id)estimator;
- (void)addKCellularPowerLogProtocolState:(id)state;
- (void)addKCellularPowerLogRatRedirectionEvent:(id)event;
- (void)addKCellularPowerLogRatReselectionEvent:(id)event;
- (void)addKCellularPowerLogSFTRxTx:(id)tx;
- (void)addKCellularPowerLogSFTState:(id)state;
- (void)addKCellularPowerLogServiceStatusEvent:(id)event;
- (void)addKCellularPowerLogSleepStates:(id)states;
- (void)addKCellularPowerLogSocPerfLevels:(id)levels;
- (void)addKCellularPowerLogSystemEvent:(id)event;
- (void)addKCellularPowerLogWCDMACDRXConfig:(id)config;
- (void)addKCellularPowerLogWcdmaPagingDRXCycle:(id)cycle;
- (void)addKCellularPowerLogWcdmaRrcStateChange:(id)change;
- (void)addKCellularPowerLogXOShutdown:(id)shutdown;
- (void)addKCellularPowerlogRFSSVoltageLevels:(id)levels;
- (void)addKCellularRfTunerHist:(id)hist;
- (void)addKCellularWcdmaDataInactivityBeforeIdle:(id)idle;
- (void)addKCellularWcdmaPsRabTypeHist:(id)hist;
- (void)addKCellularWcdmaRabModeHist:(id)hist;
- (void)addKCellularWcdmaRxDiversityHist:(id)hist;
- (void)addKCellularWcdmaServingCellRx0RssiHist:(id)hist;
- (void)addKCellularWcdmaServingCellRx1RssiHist:(id)hist;
- (void)addKCellularWcdmaTxPowerHist:(id)hist;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSMetricLogPower

- (void)addKCellularPerClientProfileTriggerCount:(id)count
{
  countCopy = count;
  kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts;
  v8 = countCopy;
  if (!kCellularPerClientProfileTriggerCounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPerClientProfileTriggerCounts;
    self->_kCellularPerClientProfileTriggerCounts = v6;

    countCopy = v8;
    kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts;
  }

  [(NSMutableArray *)kCellularPerClientProfileTriggerCounts addObject:countCopy];
}

- (void)addKCellularPowerLogWcdmaPagingDRXCycle:(id)cycle
{
  cycleCopy = cycle;
  kCellularPowerLogWcdmaPagingDRXCycles = self->_kCellularPowerLogWcdmaPagingDRXCycles;
  v8 = cycleCopy;
  if (!kCellularPowerLogWcdmaPagingDRXCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogWcdmaPagingDRXCycles;
    self->_kCellularPowerLogWcdmaPagingDRXCycles = v6;

    cycleCopy = v8;
    kCellularPowerLogWcdmaPagingDRXCycles = self->_kCellularPowerLogWcdmaPagingDRXCycles;
  }

  [(NSMutableArray *)kCellularPowerLogWcdmaPagingDRXCycles addObject:cycleCopy];
}

- (void)addKCellularLtePagingCycle:(id)cycle
{
  cycleCopy = cycle;
  kCellularLtePagingCycles = self->_kCellularLtePagingCycles;
  v8 = cycleCopy;
  if (!kCellularLtePagingCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLtePagingCycles;
    self->_kCellularLtePagingCycles = v6;

    cycleCopy = v8;
    kCellularLtePagingCycles = self->_kCellularLtePagingCycles;
  }

  [(NSMutableArray *)kCellularLtePagingCycles addObject:cycleCopy];
}

- (void)addKCellularPowerLogNRPagingDRXCycle:(id)cycle
{
  cycleCopy = cycle;
  kCellularPowerLogNRPagingDRXCycles = self->_kCellularPowerLogNRPagingDRXCycles;
  v8 = cycleCopy;
  if (!kCellularPowerLogNRPagingDRXCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRPagingDRXCycles;
    self->_kCellularPowerLogNRPagingDRXCycles = v6;

    cycleCopy = v8;
    kCellularPowerLogNRPagingDRXCycles = self->_kCellularPowerLogNRPagingDRXCycles;
  }

  [(NSMutableArray *)kCellularPowerLogNRPagingDRXCycles addObject:cycleCopy];
}

- (void)addKCellularLteCdrxConfig:(id)config
{
  configCopy = config;
  kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs;
  v8 = configCopy;
  if (!kCellularLteCdrxConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteCdrxConfigs;
    self->_kCellularLteCdrxConfigs = v6;

    configCopy = v8;
    kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs;
  }

  [(NSMutableArray *)kCellularLteCdrxConfigs addObject:configCopy];
}

- (void)addKCellularNrSDMActivation:(id)activation
{
  activationCopy = activation;
  kCellularNrSDMActivations = self->_kCellularNrSDMActivations;
  v8 = activationCopy;
  if (!kCellularNrSDMActivations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularNrSDMActivations;
    self->_kCellularNrSDMActivations = v6;

    activationCopy = v8;
    kCellularNrSDMActivations = self->_kCellularNrSDMActivations;
  }

  [(NSMutableArray *)kCellularNrSDMActivations addObject:activationCopy];
}

- (void)addKCellularNrSdmEndcRelease:(id)release
{
  releaseCopy = release;
  kCellularNrSdmEndcReleases = self->_kCellularNrSdmEndcReleases;
  v8 = releaseCopy;
  if (!kCellularNrSdmEndcReleases)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularNrSdmEndcReleases;
    self->_kCellularNrSdmEndcReleases = v6;

    releaseCopy = v8;
    kCellularNrSdmEndcReleases = self->_kCellularNrSdmEndcReleases;
  }

  [(NSMutableArray *)kCellularNrSdmEndcReleases addObject:releaseCopy];
}

- (void)addKCellularRfTunerHist:(id)hist
{
  histCopy = hist;
  kCellularRfTunerHists = self->_kCellularRfTunerHists;
  v8 = histCopy;
  if (!kCellularRfTunerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularRfTunerHists;
    self->_kCellularRfTunerHists = v6;

    histCopy = v8;
    kCellularRfTunerHists = self->_kCellularRfTunerHists;
  }

  [(NSMutableArray *)kCellularRfTunerHists addObject:histCopy];
}

- (void)addKCellularPowerLogLteCaConfigActivateStats:(id)stats
{
  statsCopy = stats;
  kCellularPowerLogLteCaConfigActivateStats = self->_kCellularPowerLogLteCaConfigActivateStats;
  v8 = statsCopy;
  if (!kCellularPowerLogLteCaConfigActivateStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogLteCaConfigActivateStats;
    self->_kCellularPowerLogLteCaConfigActivateStats = v6;

    statsCopy = v8;
    kCellularPowerLogLteCaConfigActivateStats = self->_kCellularPowerLogLteCaConfigActivateStats;
  }

  [(NSMutableArray *)kCellularPowerLogLteCaConfigActivateStats addObject:statsCopy];
}

- (void)addKCellularPowerLogLteCarrierComponentInfo:(id)info
{
  infoCopy = info;
  kCellularPowerLogLteCarrierComponentInfos = self->_kCellularPowerLogLteCarrierComponentInfos;
  v8 = infoCopy;
  if (!kCellularPowerLogLteCarrierComponentInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogLteCarrierComponentInfos;
    self->_kCellularPowerLogLteCarrierComponentInfos = v6;

    infoCopy = v8;
    kCellularPowerLogLteCarrierComponentInfos = self->_kCellularPowerLogLteCarrierComponentInfos;
  }

  [(NSMutableArray *)kCellularPowerLogLteCarrierComponentInfos addObject:infoCopy];
}

- (void)addKCellularPowerLogLTEAggregatedDLTBS:(id)s
{
  sCopy = s;
  kCellularPowerLogLTEAggregatedDLTBSs = self->_kCellularPowerLogLTEAggregatedDLTBSs;
  v8 = sCopy;
  if (!kCellularPowerLogLTEAggregatedDLTBSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogLTEAggregatedDLTBSs;
    self->_kCellularPowerLogLTEAggregatedDLTBSs = v6;

    sCopy = v8;
    kCellularPowerLogLTEAggregatedDLTBSs = self->_kCellularPowerLogLTEAggregatedDLTBSs;
  }

  [(NSMutableArray *)kCellularPowerLogLTEAggregatedDLTBSs addObject:sCopy];
}

- (void)addKCellularPowerLogPowerEstimator:(id)estimator
{
  estimatorCopy = estimator;
  kCellularPowerLogPowerEstimators = self->_kCellularPowerLogPowerEstimators;
  v8 = estimatorCopy;
  if (!kCellularPowerLogPowerEstimators)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogPowerEstimators;
    self->_kCellularPowerLogPowerEstimators = v6;

    estimatorCopy = v8;
    kCellularPowerLogPowerEstimators = self->_kCellularPowerLogPowerEstimators;
  }

  [(NSMutableArray *)kCellularPowerLogPowerEstimators addObject:estimatorCopy];
}

- (void)addKCellularPowerLogProtocolState:(id)state
{
  stateCopy = state;
  kCellularPowerLogProtocolStates = self->_kCellularPowerLogProtocolStates;
  v8 = stateCopy;
  if (!kCellularPowerLogProtocolStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogProtocolStates;
    self->_kCellularPowerLogProtocolStates = v6;

    stateCopy = v8;
    kCellularPowerLogProtocolStates = self->_kCellularPowerLogProtocolStates;
  }

  [(NSMutableArray *)kCellularPowerLogProtocolStates addObject:stateCopy];
}

- (void)addKCellularPowerLogPLMNSearch:(id)search
{
  searchCopy = search;
  kCellularPowerLogPLMNSearchs = self->_kCellularPowerLogPLMNSearchs;
  v8 = searchCopy;
  if (!kCellularPowerLogPLMNSearchs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogPLMNSearchs;
    self->_kCellularPowerLogPLMNSearchs = v6;

    searchCopy = v8;
    kCellularPowerLogPLMNSearchs = self->_kCellularPowerLogPLMNSearchs;
  }

  [(NSMutableArray *)kCellularPowerLogPLMNSearchs addObject:searchCopy];
}

- (void)addKCellularPowerLogGSMRABMode:(id)mode
{
  modeCopy = mode;
  kCellularPowerLogGSMRABModes = self->_kCellularPowerLogGSMRABModes;
  v8 = modeCopy;
  if (!kCellularPowerLogGSMRABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogGSMRABModes;
    self->_kCellularPowerLogGSMRABModes = v6;

    modeCopy = v8;
    kCellularPowerLogGSMRABModes = self->_kCellularPowerLogGSMRABModes;
  }

  [(NSMutableArray *)kCellularPowerLogGSMRABModes addObject:modeCopy];
}

- (void)addKCellularPowerLogNRSCGRel:(id)rel
{
  relCopy = rel;
  kCellularPowerLogNRSCGRels = self->_kCellularPowerLogNRSCGRels;
  v8 = relCopy;
  if (!kCellularPowerLogNRSCGRels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRSCGRels;
    self->_kCellularPowerLogNRSCGRels = v6;

    relCopy = v8;
    kCellularPowerLogNRSCGRels = self->_kCellularPowerLogNRSCGRels;
  }

  [(NSMutableArray *)kCellularPowerLogNRSCGRels addObject:relCopy];
}

- (void)addKCellularPowerLogWCDMACDRXConfig:(id)config
{
  configCopy = config;
  kCellularPowerLogWCDMACDRXConfigs = self->_kCellularPowerLogWCDMACDRXConfigs;
  v8 = configCopy;
  if (!kCellularPowerLogWCDMACDRXConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogWCDMACDRXConfigs;
    self->_kCellularPowerLogWCDMACDRXConfigs = v6;

    configCopy = v8;
    kCellularPowerLogWCDMACDRXConfigs = self->_kCellularPowerLogWCDMACDRXConfigs;
  }

  [(NSMutableArray *)kCellularPowerLogWCDMACDRXConfigs addObject:configCopy];
}

- (void)addKCellularPowerLogWcdmaRrcStateChange:(id)change
{
  changeCopy = change;
  kCellularPowerLogWcdmaRrcStateChanges = self->_kCellularPowerLogWcdmaRrcStateChanges;
  v8 = changeCopy;
  if (!kCellularPowerLogWcdmaRrcStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogWcdmaRrcStateChanges;
    self->_kCellularPowerLogWcdmaRrcStateChanges = v6;

    changeCopy = v8;
    kCellularPowerLogWcdmaRrcStateChanges = self->_kCellularPowerLogWcdmaRrcStateChanges;
  }

  [(NSMutableArray *)kCellularPowerLogWcdmaRrcStateChanges addObject:changeCopy];
}

- (void)addKCellularPowerLogLteRrcStateChange:(id)change
{
  changeCopy = change;
  kCellularPowerLogLteRrcStateChanges = self->_kCellularPowerLogLteRrcStateChanges;
  v8 = changeCopy;
  if (!kCellularPowerLogLteRrcStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogLteRrcStateChanges;
    self->_kCellularPowerLogLteRrcStateChanges = v6;

    changeCopy = v8;
    kCellularPowerLogLteRrcStateChanges = self->_kCellularPowerLogLteRrcStateChanges;
  }

  [(NSMutableArray *)kCellularPowerLogLteRrcStateChanges addObject:changeCopy];
}

- (void)addKCellularPowerLogSystemEvent:(id)event
{
  eventCopy = event;
  kCellularPowerLogSystemEvents = self->_kCellularPowerLogSystemEvents;
  v8 = eventCopy;
  if (!kCellularPowerLogSystemEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogSystemEvents;
    self->_kCellularPowerLogSystemEvents = v6;

    eventCopy = v8;
    kCellularPowerLogSystemEvents = self->_kCellularPowerLogSystemEvents;
  }

  [(NSMutableArray *)kCellularPowerLogSystemEvents addObject:eventCopy];
}

- (void)addKCellularPowerLogRatReselectionEvent:(id)event
{
  eventCopy = event;
  kCellularPowerLogRatReselectionEvents = self->_kCellularPowerLogRatReselectionEvents;
  v8 = eventCopy;
  if (!kCellularPowerLogRatReselectionEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogRatReselectionEvents;
    self->_kCellularPowerLogRatReselectionEvents = v6;

    eventCopy = v8;
    kCellularPowerLogRatReselectionEvents = self->_kCellularPowerLogRatReselectionEvents;
  }

  [(NSMutableArray *)kCellularPowerLogRatReselectionEvents addObject:eventCopy];
}

- (void)addKCellularPowerLogRatRedirectionEvent:(id)event
{
  eventCopy = event;
  kCellularPowerLogRatRedirectionEvents = self->_kCellularPowerLogRatRedirectionEvents;
  v8 = eventCopy;
  if (!kCellularPowerLogRatRedirectionEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogRatRedirectionEvents;
    self->_kCellularPowerLogRatRedirectionEvents = v6;

    eventCopy = v8;
    kCellularPowerLogRatRedirectionEvents = self->_kCellularPowerLogRatRedirectionEvents;
  }

  [(NSMutableArray *)kCellularPowerLogRatRedirectionEvents addObject:eventCopy];
}

- (void)addKCellularPowerLogGsmRrcStateChange:(id)change
{
  changeCopy = change;
  kCellularPowerLogGsmRrcStateChanges = self->_kCellularPowerLogGsmRrcStateChanges;
  v8 = changeCopy;
  if (!kCellularPowerLogGsmRrcStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogGsmRrcStateChanges;
    self->_kCellularPowerLogGsmRrcStateChanges = v6;

    changeCopy = v8;
    kCellularPowerLogGsmRrcStateChanges = self->_kCellularPowerLogGsmRrcStateChanges;
  }

  [(NSMutableArray *)kCellularPowerLogGsmRrcStateChanges addObject:changeCopy];
}

- (void)addKCellularPowerLogServiceStatusEvent:(id)event
{
  eventCopy = event;
  kCellularPowerLogServiceStatusEvents = self->_kCellularPowerLogServiceStatusEvents;
  v8 = eventCopy;
  if (!kCellularPowerLogServiceStatusEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogServiceStatusEvents;
    self->_kCellularPowerLogServiceStatusEvents = v6;

    eventCopy = v8;
    kCellularPowerLogServiceStatusEvents = self->_kCellularPowerLogServiceStatusEvents;
  }

  [(NSMutableArray *)kCellularPowerLogServiceStatusEvents addObject:eventCopy];
}

- (void)addKCellularPowerLogPlmnSearchEvent:(id)event
{
  eventCopy = event;
  kCellularPowerLogPlmnSearchEvents = self->_kCellularPowerLogPlmnSearchEvents;
  v8 = eventCopy;
  if (!kCellularPowerLogPlmnSearchEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogPlmnSearchEvents;
    self->_kCellularPowerLogPlmnSearchEvents = v6;

    eventCopy = v8;
    kCellularPowerLogPlmnSearchEvents = self->_kCellularPowerLogPlmnSearchEvents;
  }

  [(NSMutableArray *)kCellularPowerLogPlmnSearchEvents addObject:eventCopy];
}

- (void)addKCellularPowerLogNrSaRrcStateChange:(id)change
{
  changeCopy = change;
  kCellularPowerLogNrSaRrcStateChanges = self->_kCellularPowerLogNrSaRrcStateChanges;
  v8 = changeCopy;
  if (!kCellularPowerLogNrSaRrcStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNrSaRrcStateChanges;
    self->_kCellularPowerLogNrSaRrcStateChanges = v6;

    changeCopy = v8;
    kCellularPowerLogNrSaRrcStateChanges = self->_kCellularPowerLogNrSaRrcStateChanges;
  }

  [(NSMutableArray *)kCellularPowerLogNrSaRrcStateChanges addObject:changeCopy];
}

- (void)addKCellularPowerLogNRNSAENDCEvent:(id)event
{
  eventCopy = event;
  kCellularPowerLogNRNSAENDCEvents = self->_kCellularPowerLogNRNSAENDCEvents;
  v8 = eventCopy;
  if (!kCellularPowerLogNRNSAENDCEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRNSAENDCEvents;
    self->_kCellularPowerLogNRNSAENDCEvents = v6;

    eventCopy = v8;
    kCellularPowerLogNRNSAENDCEvents = self->_kCellularPowerLogNRNSAENDCEvents;
  }

  [(NSMutableArray *)kCellularPowerLogNRNSAENDCEvents addObject:eventCopy];
}

- (void)addKCellularPowerLogNRCdrxConfig:(id)config
{
  configCopy = config;
  kCellularPowerLogNRCdrxConfigs = self->_kCellularPowerLogNRCdrxConfigs;
  v8 = configCopy;
  if (!kCellularPowerLogNRCdrxConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRCdrxConfigs;
    self->_kCellularPowerLogNRCdrxConfigs = v6;

    configCopy = v8;
    kCellularPowerLogNRCdrxConfigs = self->_kCellularPowerLogNRCdrxConfigs;
  }

  [(NSMutableArray *)kCellularPowerLogNRCdrxConfigs addObject:configCopy];
}

- (void)addKCellularPowerLogNRsub6BWP:(id)p
{
  pCopy = p;
  kCellularPowerLogNRsub6BWPs = self->_kCellularPowerLogNRsub6BWPs;
  v8 = pCopy;
  if (!kCellularPowerLogNRsub6BWPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRsub6BWPs;
    self->_kCellularPowerLogNRsub6BWPs = v6;

    pCopy = v8;
    kCellularPowerLogNRsub6BWPs = self->_kCellularPowerLogNRsub6BWPs;
  }

  [(NSMutableArray *)kCellularPowerLogNRsub6BWPs addObject:pCopy];
}

- (void)addKCellularPowerLogNrCaConfigActivateStats:(id)stats
{
  statsCopy = stats;
  kCellularPowerLogNrCaConfigActivateStats = self->_kCellularPowerLogNrCaConfigActivateStats;
  v8 = statsCopy;
  if (!kCellularPowerLogNrCaConfigActivateStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNrCaConfigActivateStats;
    self->_kCellularPowerLogNrCaConfigActivateStats = v6;

    statsCopy = v8;
    kCellularPowerLogNrCaConfigActivateStats = self->_kCellularPowerLogNrCaConfigActivateStats;
  }

  [(NSMutableArray *)kCellularPowerLogNrCaConfigActivateStats addObject:statsCopy];
}

- (void)addKCellularPowerLogNRCarrierComponentInfo:(id)info
{
  infoCopy = info;
  kCellularPowerLogNRCarrierComponentInfos = self->_kCellularPowerLogNRCarrierComponentInfos;
  v8 = infoCopy;
  if (!kCellularPowerLogNRCarrierComponentInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRCarrierComponentInfos;
    self->_kCellularPowerLogNRCarrierComponentInfos = v6;

    infoCopy = v8;
    kCellularPowerLogNRCarrierComponentInfos = self->_kCellularPowerLogNRCarrierComponentInfos;
  }

  [(NSMutableArray *)kCellularPowerLogNRCarrierComponentInfos addObject:infoCopy];
}

- (void)addKCellularPowerLogNRsub6DLTBS:(id)s
{
  sCopy = s;
  kCellularPowerLogNRsub6DLTBSs = self->_kCellularPowerLogNRsub6DLTBSs;
  v8 = sCopy;
  if (!kCellularPowerLogNRsub6DLTBSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRsub6DLTBSs;
    self->_kCellularPowerLogNRsub6DLTBSs = v6;

    sCopy = v8;
    kCellularPowerLogNRsub6DLTBSs = self->_kCellularPowerLogNRsub6DLTBSs;
  }

  [(NSMutableArray *)kCellularPowerLogNRsub6DLTBSs addObject:sCopy];
}

- (void)addKCellularPowerLogNRSub6RSRP:(id)p
{
  pCopy = p;
  kCellularPowerLogNRSub6RSRPs = self->_kCellularPowerLogNRSub6RSRPs;
  v8 = pCopy;
  if (!kCellularPowerLogNRSub6RSRPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRSub6RSRPs;
    self->_kCellularPowerLogNRSub6RSRPs = v6;

    pCopy = v8;
    kCellularPowerLogNRSub6RSRPs = self->_kCellularPowerLogNRSub6RSRPs;
  }

  [(NSMutableArray *)kCellularPowerLogNRSub6RSRPs addObject:pCopy];
}

- (void)addKCellularPowerLogNRSub6SINR:(id)r
{
  rCopy = r;
  kCellularPowerLogNRSub6SINRs = self->_kCellularPowerLogNRSub6SINRs;
  v8 = rCopy;
  if (!kCellularPowerLogNRSub6SINRs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogNRSub6SINRs;
    self->_kCellularPowerLogNRSub6SINRs = v6;

    rCopy = v8;
    kCellularPowerLogNRSub6SINRs = self->_kCellularPowerLogNRSub6SINRs;
  }

  [(NSMutableArray *)kCellularPowerLogNRSub6SINRs addObject:rCopy];
}

- (void)addKCellularPowerLogLteNrRxDiversityHist:(id)hist
{
  histCopy = hist;
  kCellularPowerLogLteNrRxDiversityHists = self->_kCellularPowerLogLteNrRxDiversityHists;
  v8 = histCopy;
  if (!kCellularPowerLogLteNrRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogLteNrRxDiversityHists;
    self->_kCellularPowerLogLteNrRxDiversityHists = v6;

    histCopy = v8;
    kCellularPowerLogLteNrRxDiversityHists = self->_kCellularPowerLogLteNrRxDiversityHists;
  }

  [(NSMutableArray *)kCellularPowerLogLteNrRxDiversityHists addObject:histCopy];
}

- (void)addKCellularPowerLogLteNrTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularPowerLogLteNrTxPowerHists = self->_kCellularPowerLogLteNrTxPowerHists;
  v8 = histCopy;
  if (!kCellularPowerLogLteNrTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogLteNrTxPowerHists;
    self->_kCellularPowerLogLteNrTxPowerHists = v6;

    histCopy = v8;
    kCellularPowerLogLteNrTxPowerHists = self->_kCellularPowerLogLteNrTxPowerHists;
  }

  [(NSMutableArray *)kCellularPowerLogLteNrTxPowerHists addObject:histCopy];
}

- (void)addKCellularPowerLogLteNrRxTxActivityStats:(id)stats
{
  statsCopy = stats;
  kCellularPowerLogLteNrRxTxActivityStats = self->_kCellularPowerLogLteNrRxTxActivityStats;
  v8 = statsCopy;
  if (!kCellularPowerLogLteNrRxTxActivityStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogLteNrRxTxActivityStats;
    self->_kCellularPowerLogLteNrRxTxActivityStats = v6;

    statsCopy = v8;
    kCellularPowerLogLteNrRxTxActivityStats = self->_kCellularPowerLogLteNrRxTxActivityStats;
  }

  [(NSMutableArray *)kCellularPowerLogLteNrRxTxActivityStats addObject:statsCopy];
}

- (void)addKCellularPowerLogSFTState:(id)state
{
  stateCopy = state;
  kCellularPowerLogSFTStates = self->_kCellularPowerLogSFTStates;
  v8 = stateCopy;
  if (!kCellularPowerLogSFTStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogSFTStates;
    self->_kCellularPowerLogSFTStates = v6;

    stateCopy = v8;
    kCellularPowerLogSFTStates = self->_kCellularPowerLogSFTStates;
  }

  [(NSMutableArray *)kCellularPowerLogSFTStates addObject:stateCopy];
}

- (void)addKCellularPowerLogSFTRxTx:(id)tx
{
  txCopy = tx;
  kCellularPowerLogSFTRxTxs = self->_kCellularPowerLogSFTRxTxs;
  v8 = txCopy;
  if (!kCellularPowerLogSFTRxTxs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogSFTRxTxs;
    self->_kCellularPowerLogSFTRxTxs = v6;

    txCopy = v8;
    kCellularPowerLogSFTRxTxs = self->_kCellularPowerLogSFTRxTxs;
  }

  [(NSMutableArray *)kCellularPowerLogSFTRxTxs addObject:txCopy];
}

- (void)addKCellularPowerLogXOShutdown:(id)shutdown
{
  shutdownCopy = shutdown;
  kCellularPowerLogXOShutdowns = self->_kCellularPowerLogXOShutdowns;
  v8 = shutdownCopy;
  if (!kCellularPowerLogXOShutdowns)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogXOShutdowns;
    self->_kCellularPowerLogXOShutdowns = v6;

    shutdownCopy = v8;
    kCellularPowerLogXOShutdowns = self->_kCellularPowerLogXOShutdowns;
  }

  [(NSMutableArray *)kCellularPowerLogXOShutdowns addObject:shutdownCopy];
}

- (void)addKCellularPowerLogCpuPerfLevels:(id)levels
{
  levelsCopy = levels;
  kCellularPowerLogCpuPerfLevels = self->_kCellularPowerLogCpuPerfLevels;
  v8 = levelsCopy;
  if (!kCellularPowerLogCpuPerfLevels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogCpuPerfLevels;
    self->_kCellularPowerLogCpuPerfLevels = v6;

    levelsCopy = v8;
    kCellularPowerLogCpuPerfLevels = self->_kCellularPowerLogCpuPerfLevels;
  }

  [(NSMutableArray *)kCellularPowerLogCpuPerfLevels addObject:levelsCopy];
}

- (void)addKCellularPowerLogSocPerfLevels:(id)levels
{
  levelsCopy = levels;
  kCellularPowerLogSocPerfLevels = self->_kCellularPowerLogSocPerfLevels;
  v8 = levelsCopy;
  if (!kCellularPowerLogSocPerfLevels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogSocPerfLevels;
    self->_kCellularPowerLogSocPerfLevels = v6;

    levelsCopy = v8;
    kCellularPowerLogSocPerfLevels = self->_kCellularPowerLogSocPerfLevels;
  }

  [(NSMutableArray *)kCellularPowerLogSocPerfLevels addObject:levelsCopy];
}

- (void)addKCellularPowerLogAcmPerfLevels:(id)levels
{
  levelsCopy = levels;
  kCellularPowerLogAcmPerfLevels = self->_kCellularPowerLogAcmPerfLevels;
  v8 = levelsCopy;
  if (!kCellularPowerLogAcmPerfLevels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogAcmPerfLevels;
    self->_kCellularPowerLogAcmPerfLevels = v6;

    levelsCopy = v8;
    kCellularPowerLogAcmPerfLevels = self->_kCellularPowerLogAcmPerfLevels;
  }

  [(NSMutableArray *)kCellularPowerLogAcmPerfLevels addObject:levelsCopy];
}

- (void)addKCellularPowerLogCpsSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogCpsSleepStates = self->_kCellularPowerLogCpsSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLogCpsSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogCpsSleepStates;
    self->_kCellularPowerLogCpsSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLogCpsSleepStates = self->_kCellularPowerLogCpsSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLogCpsSleepStates addObject:statesCopy];
}

- (void)addKCellularPowerLogCdpDSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogCdpDSleepStates = self->_kCellularPowerLogCdpDSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLogCdpDSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogCdpDSleepStates;
    self->_kCellularPowerLogCdpDSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLogCdpDSleepStates = self->_kCellularPowerLogCdpDSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLogCdpDSleepStates addObject:statesCopy];
}

- (void)addKCellularPowerLogCdpUSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogCdpUSleepStates = self->_kCellularPowerLogCdpUSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLogCdpUSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogCdpUSleepStates;
    self->_kCellularPowerLogCdpUSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLogCdpUSleepStates = self->_kCellularPowerLogCdpUSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLogCdpUSleepStates addObject:statesCopy];
}

- (void)addKCellularPowerLogCdpHSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogCdpHSleepStates = self->_kCellularPowerLogCdpHSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLogCdpHSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogCdpHSleepStates;
    self->_kCellularPowerLogCdpHSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLogCdpHSleepStates = self->_kCellularPowerLogCdpHSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLogCdpHSleepStates addObject:statesCopy];
}

- (void)addKCellularPowerLogL1CSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogL1CSleepStates = self->_kCellularPowerLogL1CSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLogL1CSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogL1CSleepStates;
    self->_kCellularPowerLogL1CSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLogL1CSleepStates = self->_kCellularPowerLogL1CSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLogL1CSleepStates addObject:statesCopy];
}

- (void)addKCellularPowerLogL1SSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogL1SSleepStates = self->_kCellularPowerLogL1SSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLogL1SSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogL1SSleepStates;
    self->_kCellularPowerLogL1SSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLogL1SSleepStates = self->_kCellularPowerLogL1SSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLogL1SSleepStates addObject:statesCopy];
}

- (void)addKCellularPowerLogDcsSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogDcsSleepStates = self->_kCellularPowerLogDcsSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLogDcsSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogDcsSleepStates;
    self->_kCellularPowerLogDcsSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLogDcsSleepStates = self->_kCellularPowerLogDcsSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLogDcsSleepStates addObject:statesCopy];
}

- (void)addKCellularPowerLog2g3gSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLog2g3gSleepStates = self->_kCellularPowerLog2g3gSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLog2g3gSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLog2g3gSleepStates;
    self->_kCellularPowerLog2g3gSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLog2g3gSleepStates = self->_kCellularPowerLog2g3gSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLog2g3gSleepStates addObject:statesCopy];
}

- (void)addKCellularPowerLogSleepStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogSleepStates = self->_kCellularPowerLogSleepStates;
  v8 = statesCopy;
  if (!kCellularPowerLogSleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogSleepStates;
    self->_kCellularPowerLogSleepStates = v6;

    statesCopy = v8;
    kCellularPowerLogSleepStates = self->_kCellularPowerLogSleepStates;
  }

  [(NSMutableArray *)kCellularPowerLogSleepStates addObject:statesCopy];
}

- (void)addKCellularPlatformApBbSleepStats:(id)stats
{
  statsCopy = stats;
  kCellularPlatformApBbSleepStats = self->_kCellularPlatformApBbSleepStats;
  v8 = statsCopy;
  if (!kCellularPlatformApBbSleepStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPlatformApBbSleepStats;
    self->_kCellularPlatformApBbSleepStats = v6;

    statsCopy = v8;
    kCellularPlatformApBbSleepStats = self->_kCellularPlatformApBbSleepStats;
  }

  [(NSMutableArray *)kCellularPlatformApBbSleepStats addObject:statsCopy];
}

- (void)addKCellularPowerLogGPSStates:(id)states
{
  statesCopy = states;
  kCellularPowerLogGPSStates = self->_kCellularPowerLogGPSStates;
  v8 = statesCopy;
  if (!kCellularPowerLogGPSStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogGPSStates;
    self->_kCellularPowerLogGPSStates = v6;

    statesCopy = v8;
    kCellularPowerLogGPSStates = self->_kCellularPowerLogGPSStates;
  }

  [(NSMutableArray *)kCellularPowerLogGPSStates addObject:statesCopy];
}

- (void)addKCellularPowerlogRFSSVoltageLevels:(id)levels
{
  levelsCopy = levels;
  kCellularPowerlogRFSSVoltageLevels = self->_kCellularPowerlogRFSSVoltageLevels;
  v8 = levelsCopy;
  if (!kCellularPowerlogRFSSVoltageLevels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerlogRFSSVoltageLevels;
    self->_kCellularPowerlogRFSSVoltageLevels = v6;

    levelsCopy = v8;
    kCellularPowerlogRFSSVoltageLevels = self->_kCellularPowerlogRFSSVoltageLevels;
  }

  [(NSMutableArray *)kCellularPowerlogRFSSVoltageLevels addObject:levelsCopy];
}

- (void)addKCellularPowerLogBasebandSleepVeto:(id)veto
{
  vetoCopy = veto;
  kCellularPowerLogBasebandSleepVetos = self->_kCellularPowerLogBasebandSleepVetos;
  v8 = vetoCopy;
  if (!kCellularPowerLogBasebandSleepVetos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPowerLogBasebandSleepVetos;
    self->_kCellularPowerLogBasebandSleepVetos = v6;

    vetoCopy = v8;
    kCellularPowerLogBasebandSleepVetos = self->_kCellularPowerLogBasebandSleepVetos;
  }

  [(NSMutableArray *)kCellularPowerLogBasebandSleepVetos addObject:vetoCopy];
}

- (void)addKCellularAcmSleepStats:(id)stats
{
  statsCopy = stats;
  kCellularAcmSleepStats = self->_kCellularAcmSleepStats;
  v8 = statsCopy;
  if (!kCellularAcmSleepStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularAcmSleepStats;
    self->_kCellularAcmSleepStats = v6;

    statsCopy = v8;
    kCellularAcmSleepStats = self->_kCellularAcmSleepStats;
  }

  [(NSMutableArray *)kCellularAcmSleepStats addObject:statsCopy];
}

- (void)addKCellularGsmServingCellRssiHist:(id)hist
{
  histCopy = hist;
  kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists;
  v8 = histCopy;
  if (!kCellularGsmServingCellRssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmServingCellRssiHists;
    self->_kCellularGsmServingCellRssiHists = v6;

    histCopy = v8;
    kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists;
  }

  [(NSMutableArray *)kCellularGsmServingCellRssiHists addObject:histCopy];
}

- (void)addKCellularGsmTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists;
  v8 = histCopy;
  if (!kCellularGsmTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmTxPowerHists;
    self->_kCellularGsmTxPowerHists = v6;

    histCopy = v8;
    kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists;
  }

  [(NSMutableArray *)kCellularGsmTxPowerHists addObject:histCopy];
}

- (void)addKCellularWcdmaRxDiversityHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists;
  v8 = histCopy;
  if (!kCellularWcdmaRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRxDiversityHists;
    self->_kCellularWcdmaRxDiversityHists = v6;

    histCopy = v8;
    kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists;
  }

  [(NSMutableArray *)kCellularWcdmaRxDiversityHists addObject:histCopy];
}

- (void)addKCellularWcdmaServingCellRx0RssiHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists;
  v8 = histCopy;
  if (!kCellularWcdmaServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx0RssiHists;
    self->_kCellularWcdmaServingCellRx0RssiHists = v6;

    histCopy = v8;
    kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx0RssiHists addObject:histCopy];
}

- (void)addKCellularWcdmaServingCellRx1RssiHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists;
  v8 = histCopy;
  if (!kCellularWcdmaServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx1RssiHists;
    self->_kCellularWcdmaServingCellRx1RssiHists = v6;

    histCopy = v8;
    kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx1RssiHists addObject:histCopy];
}

- (void)addKCellularWcdmaTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists;
  v8 = histCopy;
  if (!kCellularWcdmaTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaTxPowerHists;
    self->_kCellularWcdmaTxPowerHists = v6;

    histCopy = v8;
    kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists;
  }

  [(NSMutableArray *)kCellularWcdmaTxPowerHists addObject:histCopy];
}

- (void)addKCellularWcdmaRabModeHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists;
  v8 = histCopy;
  if (!kCellularWcdmaRabModeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRabModeHists;
    self->_kCellularWcdmaRabModeHists = v6;

    histCopy = v8;
    kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists;
  }

  [(NSMutableArray *)kCellularWcdmaRabModeHists addObject:histCopy];
}

- (void)addKCellularWcdmaPsRabTypeHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaPsRabTypeHists = self->_kCellularWcdmaPsRabTypeHists;
  v8 = histCopy;
  if (!kCellularWcdmaPsRabTypeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaPsRabTypeHists;
    self->_kCellularWcdmaPsRabTypeHists = v6;

    histCopy = v8;
    kCellularWcdmaPsRabTypeHists = self->_kCellularWcdmaPsRabTypeHists;
  }

  [(NSMutableArray *)kCellularWcdmaPsRabTypeHists addObject:histCopy];
}

- (void)addKCellularWcdmaDataInactivityBeforeIdle:(id)idle
{
  idleCopy = idle;
  kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v8 = idleCopy;
  if (!kCellularWcdmaDataInactivityBeforeIdles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaDataInactivityBeforeIdles;
    self->_kCellularWcdmaDataInactivityBeforeIdles = v6;

    idleCopy = v8;
    kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles;
  }

  [(NSMutableArray *)kCellularWcdmaDataInactivityBeforeIdles addObject:idleCopy];
}

- (void)addKCellularLteServingCellRsrpHist:(id)hist
{
  histCopy = hist;
  kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists;
  v8 = histCopy;
  if (!kCellularLteServingCellRsrpHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteServingCellRsrpHists;
    self->_kCellularLteServingCellRsrpHists = v6;

    histCopy = v8;
    kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists;
  }

  [(NSMutableArray *)kCellularLteServingCellRsrpHists addObject:histCopy];
}

- (void)addKCellularLteServingCellSinrHist:(id)hist
{
  histCopy = hist;
  kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists;
  v8 = histCopy;
  if (!kCellularLteServingCellSinrHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteServingCellSinrHists;
    self->_kCellularLteServingCellSinrHists = v6;

    histCopy = v8;
    kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists;
  }

  [(NSMutableArray *)kCellularLteServingCellSinrHists addObject:histCopy];
}

- (void)addKCellularLteDataInactivityBeforeIdle:(id)idle
{
  idleCopy = idle;
  kCellularLteDataInactivityBeforeIdles = self->_kCellularLteDataInactivityBeforeIdles;
  v8 = idleCopy;
  if (!kCellularLteDataInactivityBeforeIdles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteDataInactivityBeforeIdles;
    self->_kCellularLteDataInactivityBeforeIdles = v6;

    idleCopy = v8;
    kCellularLteDataInactivityBeforeIdles = self->_kCellularLteDataInactivityBeforeIdles;
  }

  [(NSMutableArray *)kCellularLteDataInactivityBeforeIdles addObject:idleCopy];
}

- (void)addKCellularNrDataInactivityBeforeIdle:(id)idle
{
  idleCopy = idle;
  kCellularNrDataInactivityBeforeIdles = self->_kCellularNrDataInactivityBeforeIdles;
  v8 = idleCopy;
  if (!kCellularNrDataInactivityBeforeIdles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularNrDataInactivityBeforeIdles;
    self->_kCellularNrDataInactivityBeforeIdles = v6;

    idleCopy = v8;
    kCellularNrDataInactivityBeforeIdles = self->_kCellularNrDataInactivityBeforeIdles;
  }

  [(NSMutableArray *)kCellularNrDataInactivityBeforeIdles addObject:idleCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSMetricLogPower;
  v4 = [(AWDMETRICSMetricLogPower *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSMetricLogPower *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v847 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_kCellularPerClientProfileTriggerCounts count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPerClientProfileTriggerCounts, "count")}];
    v773 = 0u;
    v774 = 0u;
    v775 = 0u;
    v776 = 0u;
    v5 = self->_kCellularPerClientProfileTriggerCounts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v773 objects:v846 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v774;
      do
      {
        v9 = 0;
        do
        {
          if (*v774 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v773 + 1) + 8 * v9) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v773 objects:v846 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"kCellularPerClientProfileTriggerCount"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogWcdmaPagingDRXCycles count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogWcdmaPagingDRXCycles, "count")}];
    v769 = 0u;
    v770 = 0u;
    v771 = 0u;
    v772 = 0u;
    v12 = self->_kCellularPowerLogWcdmaPagingDRXCycles;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v769 objects:v845 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v770;
      do
      {
        v16 = 0;
        do
        {
          if (*v770 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v769 + 1) + 8 * v16) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v769 objects:v845 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"kCellularPowerLogWcdmaPagingDRXCycle"];
  }

  if ([(NSMutableArray *)self->_kCellularLtePagingCycles count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLtePagingCycles, "count")}];
    v765 = 0u;
    v766 = 0u;
    v767 = 0u;
    v768 = 0u;
    v19 = self->_kCellularLtePagingCycles;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v765 objects:v844 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v766;
      do
      {
        v23 = 0;
        do
        {
          if (*v766 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v765 + 1) + 8 * v23) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];

          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v765 objects:v844 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"kCellularLtePagingCycle"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRPagingDRXCycles count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRPagingDRXCycles, "count")}];
    v761 = 0u;
    v762 = 0u;
    v763 = 0u;
    v764 = 0u;
    v26 = self->_kCellularPowerLogNRPagingDRXCycles;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v761 objects:v843 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v762;
      do
      {
        v30 = 0;
        do
        {
          if (*v762 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation4 = [*(*(&v761 + 1) + 8 * v30) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation4];

          ++v30;
        }

        while (v28 != v30);
        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v761 objects:v843 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"kCellularPowerLogNRPagingDRXCycle"];
  }

  if ([(NSMutableArray *)self->_kCellularLteCdrxConfigs count])
  {
    v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteCdrxConfigs, "count")}];
    v757 = 0u;
    v758 = 0u;
    v759 = 0u;
    v760 = 0u;
    v33 = self->_kCellularLteCdrxConfigs;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v757 objects:v842 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v758;
      do
      {
        v37 = 0;
        do
        {
          if (*v758 != v36)
          {
            objc_enumerationMutation(v33);
          }

          dictionaryRepresentation5 = [*(*(&v757 + 1) + 8 * v37) dictionaryRepresentation];
          [v32 addObject:dictionaryRepresentation5];

          ++v37;
        }

        while (v35 != v37);
        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v757 objects:v842 count:16];
      }

      while (v35);
    }

    [dictionary setObject:v32 forKey:@"kCellularLteCdrxConfig"];
  }

  if ([(NSMutableArray *)self->_kCellularNrSDMActivations count])
  {
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularNrSDMActivations, "count")}];
    v753 = 0u;
    v754 = 0u;
    v755 = 0u;
    v756 = 0u;
    v40 = self->_kCellularNrSDMActivations;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v753 objects:v841 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v754;
      do
      {
        v44 = 0;
        do
        {
          if (*v754 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation6 = [*(*(&v753 + 1) + 8 * v44) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation6];

          ++v44;
        }

        while (v42 != v44);
        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v753 objects:v841 count:16];
      }

      while (v42);
    }

    [dictionary setObject:v39 forKey:@"kCellularNrSDMActivation"];
  }

  if ([(NSMutableArray *)self->_kCellularNrSdmEndcReleases count])
  {
    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularNrSdmEndcReleases, "count")}];
    v749 = 0u;
    v750 = 0u;
    v751 = 0u;
    v752 = 0u;
    v47 = self->_kCellularNrSdmEndcReleases;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v749 objects:v840 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v750;
      do
      {
        v51 = 0;
        do
        {
          if (*v750 != v50)
          {
            objc_enumerationMutation(v47);
          }

          dictionaryRepresentation7 = [*(*(&v749 + 1) + 8 * v51) dictionaryRepresentation];
          [v46 addObject:dictionaryRepresentation7];

          ++v51;
        }

        while (v49 != v51);
        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v749 objects:v840 count:16];
      }

      while (v49);
    }

    [dictionary setObject:v46 forKey:@"kCellularNrSdmEndcRelease"];
  }

  if ([(NSMutableArray *)self->_kCellularRfTunerHists count])
  {
    v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularRfTunerHists, "count")}];
    v745 = 0u;
    v746 = 0u;
    v747 = 0u;
    v748 = 0u;
    v54 = self->_kCellularRfTunerHists;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v745 objects:v839 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v746;
      do
      {
        v58 = 0;
        do
        {
          if (*v746 != v57)
          {
            objc_enumerationMutation(v54);
          }

          dictionaryRepresentation8 = [*(*(&v745 + 1) + 8 * v58) dictionaryRepresentation];
          [v53 addObject:dictionaryRepresentation8];

          ++v58;
        }

        while (v56 != v58);
        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v745 objects:v839 count:16];
      }

      while (v56);
    }

    [dictionary setObject:v53 forKey:@"kCellularRfTunerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogLteCaConfigActivateStats count])
  {
    v60 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogLteCaConfigActivateStats, "count")}];
    v741 = 0u;
    v742 = 0u;
    v743 = 0u;
    v744 = 0u;
    v61 = self->_kCellularPowerLogLteCaConfigActivateStats;
    v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v741 objects:v838 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v742;
      do
      {
        v65 = 0;
        do
        {
          if (*v742 != v64)
          {
            objc_enumerationMutation(v61);
          }

          dictionaryRepresentation9 = [*(*(&v741 + 1) + 8 * v65) dictionaryRepresentation];
          [v60 addObject:dictionaryRepresentation9];

          ++v65;
        }

        while (v63 != v65);
        v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v741 objects:v838 count:16];
      }

      while (v63);
    }

    [dictionary setObject:v60 forKey:@"kCellularPowerLogLteCaConfigActivateStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogLteCarrierComponentInfos count])
  {
    v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogLteCarrierComponentInfos, "count")}];
    v737 = 0u;
    v738 = 0u;
    v739 = 0u;
    v740 = 0u;
    v68 = self->_kCellularPowerLogLteCarrierComponentInfos;
    v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v737 objects:v837 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v738;
      do
      {
        v72 = 0;
        do
        {
          if (*v738 != v71)
          {
            objc_enumerationMutation(v68);
          }

          dictionaryRepresentation10 = [*(*(&v737 + 1) + 8 * v72) dictionaryRepresentation];
          [v67 addObject:dictionaryRepresentation10];

          ++v72;
        }

        while (v70 != v72);
        v70 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v737 objects:v837 count:16];
      }

      while (v70);
    }

    [dictionary setObject:v67 forKey:@"kCellularPowerLogLteCarrierComponentInfo"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogLTEAggregatedDLTBSs count])
  {
    v74 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogLTEAggregatedDLTBSs, "count")}];
    v733 = 0u;
    v734 = 0u;
    v735 = 0u;
    v736 = 0u;
    v75 = self->_kCellularPowerLogLTEAggregatedDLTBSs;
    v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v733 objects:v836 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v734;
      do
      {
        v79 = 0;
        do
        {
          if (*v734 != v78)
          {
            objc_enumerationMutation(v75);
          }

          dictionaryRepresentation11 = [*(*(&v733 + 1) + 8 * v79) dictionaryRepresentation];
          [v74 addObject:dictionaryRepresentation11];

          ++v79;
        }

        while (v77 != v79);
        v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v733 objects:v836 count:16];
      }

      while (v77);
    }

    [dictionary setObject:v74 forKey:@"kCellularPowerLogLTEAggregatedDL_TBS"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogPowerEstimators count])
  {
    v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogPowerEstimators, "count")}];
    v729 = 0u;
    v730 = 0u;
    v731 = 0u;
    v732 = 0u;
    v82 = self->_kCellularPowerLogPowerEstimators;
    v83 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v729 objects:v835 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v730;
      do
      {
        v86 = 0;
        do
        {
          if (*v730 != v85)
          {
            objc_enumerationMutation(v82);
          }

          dictionaryRepresentation12 = [*(*(&v729 + 1) + 8 * v86) dictionaryRepresentation];
          [v81 addObject:dictionaryRepresentation12];

          ++v86;
        }

        while (v84 != v86);
        v84 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v729 objects:v835 count:16];
      }

      while (v84);
    }

    [dictionary setObject:v81 forKey:@"kCellularPowerLogPowerEstimator"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogProtocolStates count])
  {
    v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogProtocolStates, "count")}];
    v725 = 0u;
    v726 = 0u;
    v727 = 0u;
    v728 = 0u;
    v89 = self->_kCellularPowerLogProtocolStates;
    v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v725 objects:v834 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v726;
      do
      {
        v93 = 0;
        do
        {
          if (*v726 != v92)
          {
            objc_enumerationMutation(v89);
          }

          dictionaryRepresentation13 = [*(*(&v725 + 1) + 8 * v93) dictionaryRepresentation];
          [v88 addObject:dictionaryRepresentation13];

          ++v93;
        }

        while (v91 != v93);
        v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v725 objects:v834 count:16];
      }

      while (v91);
    }

    [dictionary setObject:v88 forKey:@"kCellularPowerLogProtocolState"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogPLMNSearchs count])
  {
    v95 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogPLMNSearchs, "count")}];
    v721 = 0u;
    v722 = 0u;
    v723 = 0u;
    v724 = 0u;
    v96 = self->_kCellularPowerLogPLMNSearchs;
    v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v721 objects:v833 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v722;
      do
      {
        v100 = 0;
        do
        {
          if (*v722 != v99)
          {
            objc_enumerationMutation(v96);
          }

          dictionaryRepresentation14 = [*(*(&v721 + 1) + 8 * v100) dictionaryRepresentation];
          [v95 addObject:dictionaryRepresentation14];

          ++v100;
        }

        while (v98 != v100);
        v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v721 objects:v833 count:16];
      }

      while (v98);
    }

    [dictionary setObject:v95 forKey:@"kCellularPowerLogPLMNSearch"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogGSMRABModes count])
  {
    v102 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogGSMRABModes, "count")}];
    v717 = 0u;
    v718 = 0u;
    v719 = 0u;
    v720 = 0u;
    v103 = self->_kCellularPowerLogGSMRABModes;
    v104 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v717 objects:v832 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v718;
      do
      {
        v107 = 0;
        do
        {
          if (*v718 != v106)
          {
            objc_enumerationMutation(v103);
          }

          dictionaryRepresentation15 = [*(*(&v717 + 1) + 8 * v107) dictionaryRepresentation];
          [v102 addObject:dictionaryRepresentation15];

          ++v107;
        }

        while (v105 != v107);
        v105 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v717 objects:v832 count:16];
      }

      while (v105);
    }

    [dictionary setObject:v102 forKey:@"kCellularPowerLogGSM_RABMode"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRSCGRels count])
  {
    v109 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRSCGRels, "count")}];
    v713 = 0u;
    v714 = 0u;
    v715 = 0u;
    v716 = 0u;
    v110 = self->_kCellularPowerLogNRSCGRels;
    v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v713 objects:v831 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v714;
      do
      {
        v114 = 0;
        do
        {
          if (*v714 != v113)
          {
            objc_enumerationMutation(v110);
          }

          dictionaryRepresentation16 = [*(*(&v713 + 1) + 8 * v114) dictionaryRepresentation];
          [v109 addObject:dictionaryRepresentation16];

          ++v114;
        }

        while (v112 != v114);
        v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v713 objects:v831 count:16];
      }

      while (v112);
    }

    [dictionary setObject:v109 forKey:@"kCellularPowerLogNR_SCGRel"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogWCDMACDRXConfigs count])
  {
    v116 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogWCDMACDRXConfigs, "count")}];
    v709 = 0u;
    v710 = 0u;
    v711 = 0u;
    v712 = 0u;
    v117 = self->_kCellularPowerLogWCDMACDRXConfigs;
    v118 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v709 objects:v830 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v710;
      do
      {
        v121 = 0;
        do
        {
          if (*v710 != v120)
          {
            objc_enumerationMutation(v117);
          }

          dictionaryRepresentation17 = [*(*(&v709 + 1) + 8 * v121) dictionaryRepresentation];
          [v116 addObject:dictionaryRepresentation17];

          ++v121;
        }

        while (v119 != v121);
        v119 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v709 objects:v830 count:16];
      }

      while (v119);
    }

    [dictionary setObject:v116 forKey:@"kCellularPowerLogWCDMA_CDRXConfig"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogWcdmaRrcStateChanges count])
  {
    v123 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogWcdmaRrcStateChanges, "count")}];
    v705 = 0u;
    v706 = 0u;
    v707 = 0u;
    v708 = 0u;
    v124 = self->_kCellularPowerLogWcdmaRrcStateChanges;
    v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v705 objects:v829 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v706;
      do
      {
        v128 = 0;
        do
        {
          if (*v706 != v127)
          {
            objc_enumerationMutation(v124);
          }

          dictionaryRepresentation18 = [*(*(&v705 + 1) + 8 * v128) dictionaryRepresentation];
          [v123 addObject:dictionaryRepresentation18];

          ++v128;
        }

        while (v126 != v128);
        v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v705 objects:v829 count:16];
      }

      while (v126);
    }

    [dictionary setObject:v123 forKey:@"kCellularPowerLogWcdmaRrcStateChange"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogLteRrcStateChanges count])
  {
    v130 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogLteRrcStateChanges, "count")}];
    v701 = 0u;
    v702 = 0u;
    v703 = 0u;
    v704 = 0u;
    v131 = self->_kCellularPowerLogLteRrcStateChanges;
    v132 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v701 objects:v828 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v702;
      do
      {
        v135 = 0;
        do
        {
          if (*v702 != v134)
          {
            objc_enumerationMutation(v131);
          }

          dictionaryRepresentation19 = [*(*(&v701 + 1) + 8 * v135) dictionaryRepresentation];
          [v130 addObject:dictionaryRepresentation19];

          ++v135;
        }

        while (v133 != v135);
        v133 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v701 objects:v828 count:16];
      }

      while (v133);
    }

    [dictionary setObject:v130 forKey:@"kCellularPowerLogLteRrcStateChange"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogSystemEvents count])
  {
    v137 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogSystemEvents, "count")}];
    v697 = 0u;
    v698 = 0u;
    v699 = 0u;
    v700 = 0u;
    v138 = self->_kCellularPowerLogSystemEvents;
    v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v697 objects:v827 count:16];
    if (v139)
    {
      v140 = v139;
      v141 = *v698;
      do
      {
        v142 = 0;
        do
        {
          if (*v698 != v141)
          {
            objc_enumerationMutation(v138);
          }

          dictionaryRepresentation20 = [*(*(&v697 + 1) + 8 * v142) dictionaryRepresentation];
          [v137 addObject:dictionaryRepresentation20];

          ++v142;
        }

        while (v140 != v142);
        v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v697 objects:v827 count:16];
      }

      while (v140);
    }

    [dictionary setObject:v137 forKey:@"kCellularPowerLogSystemEvent"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogRatReselectionEvents count])
  {
    v144 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogRatReselectionEvents, "count")}];
    v693 = 0u;
    v694 = 0u;
    v695 = 0u;
    v696 = 0u;
    v145 = self->_kCellularPowerLogRatReselectionEvents;
    v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v693 objects:v826 count:16];
    if (v146)
    {
      v147 = v146;
      v148 = *v694;
      do
      {
        v149 = 0;
        do
        {
          if (*v694 != v148)
          {
            objc_enumerationMutation(v145);
          }

          dictionaryRepresentation21 = [*(*(&v693 + 1) + 8 * v149) dictionaryRepresentation];
          [v144 addObject:dictionaryRepresentation21];

          ++v149;
        }

        while (v147 != v149);
        v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v693 objects:v826 count:16];
      }

      while (v147);
    }

    [dictionary setObject:v144 forKey:@"kCellularPowerLogRatReselectionEvent"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogRatRedirectionEvents count])
  {
    v151 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogRatRedirectionEvents, "count")}];
    v689 = 0u;
    v690 = 0u;
    v691 = 0u;
    v692 = 0u;
    v152 = self->_kCellularPowerLogRatRedirectionEvents;
    v153 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v689 objects:v825 count:16];
    if (v153)
    {
      v154 = v153;
      v155 = *v690;
      do
      {
        v156 = 0;
        do
        {
          if (*v690 != v155)
          {
            objc_enumerationMutation(v152);
          }

          dictionaryRepresentation22 = [*(*(&v689 + 1) + 8 * v156) dictionaryRepresentation];
          [v151 addObject:dictionaryRepresentation22];

          ++v156;
        }

        while (v154 != v156);
        v154 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v689 objects:v825 count:16];
      }

      while (v154);
    }

    [dictionary setObject:v151 forKey:@"kCellularPowerLogRatRedirectionEvent"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogGsmRrcStateChanges count])
  {
    v158 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogGsmRrcStateChanges, "count")}];
    v685 = 0u;
    v686 = 0u;
    v687 = 0u;
    v688 = 0u;
    v159 = self->_kCellularPowerLogGsmRrcStateChanges;
    v160 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v685 objects:v824 count:16];
    if (v160)
    {
      v161 = v160;
      v162 = *v686;
      do
      {
        v163 = 0;
        do
        {
          if (*v686 != v162)
          {
            objc_enumerationMutation(v159);
          }

          dictionaryRepresentation23 = [*(*(&v685 + 1) + 8 * v163) dictionaryRepresentation];
          [v158 addObject:dictionaryRepresentation23];

          ++v163;
        }

        while (v161 != v163);
        v161 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v685 objects:v824 count:16];
      }

      while (v161);
    }

    [dictionary setObject:v158 forKey:@"kCellularPowerLogGsmRrcStateChange"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogServiceStatusEvents count])
  {
    v165 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogServiceStatusEvents, "count")}];
    v681 = 0u;
    v682 = 0u;
    v683 = 0u;
    v684 = 0u;
    v166 = self->_kCellularPowerLogServiceStatusEvents;
    v167 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v681 objects:v823 count:16];
    if (v167)
    {
      v168 = v167;
      v169 = *v682;
      do
      {
        v170 = 0;
        do
        {
          if (*v682 != v169)
          {
            objc_enumerationMutation(v166);
          }

          dictionaryRepresentation24 = [*(*(&v681 + 1) + 8 * v170) dictionaryRepresentation];
          [v165 addObject:dictionaryRepresentation24];

          ++v170;
        }

        while (v168 != v170);
        v168 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v681 objects:v823 count:16];
      }

      while (v168);
    }

    [dictionary setObject:v165 forKey:@"kCellularPowerLogServiceStatusEvent"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogPlmnSearchEvents count])
  {
    v172 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogPlmnSearchEvents, "count")}];
    v677 = 0u;
    v678 = 0u;
    v679 = 0u;
    v680 = 0u;
    v173 = self->_kCellularPowerLogPlmnSearchEvents;
    v174 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v677 objects:v822 count:16];
    if (v174)
    {
      v175 = v174;
      v176 = *v678;
      do
      {
        v177 = 0;
        do
        {
          if (*v678 != v176)
          {
            objc_enumerationMutation(v173);
          }

          dictionaryRepresentation25 = [*(*(&v677 + 1) + 8 * v177) dictionaryRepresentation];
          [v172 addObject:dictionaryRepresentation25];

          ++v177;
        }

        while (v175 != v177);
        v175 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v677 objects:v822 count:16];
      }

      while (v175);
    }

    [dictionary setObject:v172 forKey:@"kCellularPowerLogPlmnSearchEvent"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNrSaRrcStateChanges count])
  {
    v179 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNrSaRrcStateChanges, "count")}];
    v673 = 0u;
    v674 = 0u;
    v675 = 0u;
    v676 = 0u;
    v180 = self->_kCellularPowerLogNrSaRrcStateChanges;
    v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v673 objects:v821 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = *v674;
      do
      {
        v184 = 0;
        do
        {
          if (*v674 != v183)
          {
            objc_enumerationMutation(v180);
          }

          dictionaryRepresentation26 = [*(*(&v673 + 1) + 8 * v184) dictionaryRepresentation];
          [v179 addObject:dictionaryRepresentation26];

          ++v184;
        }

        while (v182 != v184);
        v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v673 objects:v821 count:16];
      }

      while (v182);
    }

    [dictionary setObject:v179 forKey:@"kCellularPowerLogNrSaRrcStateChange"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRNSAENDCEvents count])
  {
    v186 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRNSAENDCEvents, "count")}];
    v669 = 0u;
    v670 = 0u;
    v671 = 0u;
    v672 = 0u;
    v187 = self->_kCellularPowerLogNRNSAENDCEvents;
    v188 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v669 objects:v820 count:16];
    if (v188)
    {
      v189 = v188;
      v190 = *v670;
      do
      {
        v191 = 0;
        do
        {
          if (*v670 != v190)
          {
            objc_enumerationMutation(v187);
          }

          dictionaryRepresentation27 = [*(*(&v669 + 1) + 8 * v191) dictionaryRepresentation];
          [v186 addObject:dictionaryRepresentation27];

          ++v191;
        }

        while (v189 != v191);
        v189 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v669 objects:v820 count:16];
      }

      while (v189);
    }

    [dictionary setObject:v186 forKey:@"kCellularPowerLogNR_NSA_ENDCEvent"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRCdrxConfigs count])
  {
    v193 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRCdrxConfigs, "count")}];
    v665 = 0u;
    v666 = 0u;
    v667 = 0u;
    v668 = 0u;
    v194 = self->_kCellularPowerLogNRCdrxConfigs;
    v195 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v665 objects:v819 count:16];
    if (v195)
    {
      v196 = v195;
      v197 = *v666;
      do
      {
        v198 = 0;
        do
        {
          if (*v666 != v197)
          {
            objc_enumerationMutation(v194);
          }

          dictionaryRepresentation28 = [*(*(&v665 + 1) + 8 * v198) dictionaryRepresentation];
          [v193 addObject:dictionaryRepresentation28];

          ++v198;
        }

        while (v196 != v198);
        v196 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v665 objects:v819 count:16];
      }

      while (v196);
    }

    [dictionary setObject:v193 forKey:@"kCellularPowerLogNRCdrxConfig"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRsub6BWPs count])
  {
    v200 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRsub6BWPs, "count")}];
    v661 = 0u;
    v662 = 0u;
    v663 = 0u;
    v664 = 0u;
    v201 = self->_kCellularPowerLogNRsub6BWPs;
    v202 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v661 objects:v818 count:16];
    if (v202)
    {
      v203 = v202;
      v204 = *v662;
      do
      {
        v205 = 0;
        do
        {
          if (*v662 != v204)
          {
            objc_enumerationMutation(v201);
          }

          dictionaryRepresentation29 = [*(*(&v661 + 1) + 8 * v205) dictionaryRepresentation];
          [v200 addObject:dictionaryRepresentation29];

          ++v205;
        }

        while (v203 != v205);
        v203 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v661 objects:v818 count:16];
      }

      while (v203);
    }

    [dictionary setObject:v200 forKey:@"kCellularPowerLogNRsub6BWP"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNrCaConfigActivateStats count])
  {
    v207 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNrCaConfigActivateStats, "count")}];
    v657 = 0u;
    v658 = 0u;
    v659 = 0u;
    v660 = 0u;
    v208 = self->_kCellularPowerLogNrCaConfigActivateStats;
    v209 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v657 objects:v817 count:16];
    if (v209)
    {
      v210 = v209;
      v211 = *v658;
      do
      {
        v212 = 0;
        do
        {
          if (*v658 != v211)
          {
            objc_enumerationMutation(v208);
          }

          dictionaryRepresentation30 = [*(*(&v657 + 1) + 8 * v212) dictionaryRepresentation];
          [v207 addObject:dictionaryRepresentation30];

          ++v212;
        }

        while (v210 != v212);
        v210 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v657 objects:v817 count:16];
      }

      while (v210);
    }

    [dictionary setObject:v207 forKey:@"kCellularPowerLogNrCaConfigActivateStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRCarrierComponentInfos count])
  {
    v214 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRCarrierComponentInfos, "count")}];
    v653 = 0u;
    v654 = 0u;
    v655 = 0u;
    v656 = 0u;
    v215 = self->_kCellularPowerLogNRCarrierComponentInfos;
    v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v653 objects:v816 count:16];
    if (v216)
    {
      v217 = v216;
      v218 = *v654;
      do
      {
        v219 = 0;
        do
        {
          if (*v654 != v218)
          {
            objc_enumerationMutation(v215);
          }

          dictionaryRepresentation31 = [*(*(&v653 + 1) + 8 * v219) dictionaryRepresentation];
          [v214 addObject:dictionaryRepresentation31];

          ++v219;
        }

        while (v217 != v219);
        v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v653 objects:v816 count:16];
      }

      while (v217);
    }

    [dictionary setObject:v214 forKey:@"kCellularPowerLogNRCarrierComponentInfo"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRsub6DLTBSs count])
  {
    v221 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRsub6DLTBSs, "count")}];
    v649 = 0u;
    v650 = 0u;
    v651 = 0u;
    v652 = 0u;
    v222 = self->_kCellularPowerLogNRsub6DLTBSs;
    v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v649 objects:v815 count:16];
    if (v223)
    {
      v224 = v223;
      v225 = *v650;
      do
      {
        v226 = 0;
        do
        {
          if (*v650 != v225)
          {
            objc_enumerationMutation(v222);
          }

          dictionaryRepresentation32 = [*(*(&v649 + 1) + 8 * v226) dictionaryRepresentation];
          [v221 addObject:dictionaryRepresentation32];

          ++v226;
        }

        while (v224 != v226);
        v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v649 objects:v815 count:16];
      }

      while (v224);
    }

    [dictionary setObject:v221 forKey:@"kCellularPowerLogNRsub6DL_TBS"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRSub6RSRPs count])
  {
    v228 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRSub6RSRPs, "count")}];
    v645 = 0u;
    v646 = 0u;
    v647 = 0u;
    v648 = 0u;
    v229 = self->_kCellularPowerLogNRSub6RSRPs;
    v230 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v645 objects:v814 count:16];
    if (v230)
    {
      v231 = v230;
      v232 = *v646;
      do
      {
        v233 = 0;
        do
        {
          if (*v646 != v232)
          {
            objc_enumerationMutation(v229);
          }

          dictionaryRepresentation33 = [*(*(&v645 + 1) + 8 * v233) dictionaryRepresentation];
          [v228 addObject:dictionaryRepresentation33];

          ++v233;
        }

        while (v231 != v233);
        v231 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v645 objects:v814 count:16];
      }

      while (v231);
    }

    [dictionary setObject:v228 forKey:@"kCellularPowerLogNR_sub6_RSRP"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogNRSub6SINRs count])
  {
    v235 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogNRSub6SINRs, "count")}];
    v641 = 0u;
    v642 = 0u;
    v643 = 0u;
    v644 = 0u;
    v236 = self->_kCellularPowerLogNRSub6SINRs;
    v237 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v641 objects:v813 count:16];
    if (v237)
    {
      v238 = v237;
      v239 = *v642;
      do
      {
        v240 = 0;
        do
        {
          if (*v642 != v239)
          {
            objc_enumerationMutation(v236);
          }

          dictionaryRepresentation34 = [*(*(&v641 + 1) + 8 * v240) dictionaryRepresentation];
          [v235 addObject:dictionaryRepresentation34];

          ++v240;
        }

        while (v238 != v240);
        v238 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v641 objects:v813 count:16];
      }

      while (v238);
    }

    [dictionary setObject:v235 forKey:@"kCellularPowerLogNR_sub6_SINR"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogLteNrRxDiversityHists count])
  {
    v242 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogLteNrRxDiversityHists, "count")}];
    v637 = 0u;
    v638 = 0u;
    v639 = 0u;
    v640 = 0u;
    v243 = self->_kCellularPowerLogLteNrRxDiversityHists;
    v244 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v637 objects:v812 count:16];
    if (v244)
    {
      v245 = v244;
      v246 = *v638;
      do
      {
        v247 = 0;
        do
        {
          if (*v638 != v246)
          {
            objc_enumerationMutation(v243);
          }

          dictionaryRepresentation35 = [*(*(&v637 + 1) + 8 * v247) dictionaryRepresentation];
          [v242 addObject:dictionaryRepresentation35];

          ++v247;
        }

        while (v245 != v247);
        v245 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v637 objects:v812 count:16];
      }

      while (v245);
    }

    [dictionary setObject:v242 forKey:@"kCellularPowerLogLteNrRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogLteNrTxPowerHists count])
  {
    v249 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogLteNrTxPowerHists, "count")}];
    v633 = 0u;
    v634 = 0u;
    v635 = 0u;
    v636 = 0u;
    v250 = self->_kCellularPowerLogLteNrTxPowerHists;
    v251 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v633 objects:v811 count:16];
    if (v251)
    {
      v252 = v251;
      v253 = *v634;
      do
      {
        v254 = 0;
        do
        {
          if (*v634 != v253)
          {
            objc_enumerationMutation(v250);
          }

          dictionaryRepresentation36 = [*(*(&v633 + 1) + 8 * v254) dictionaryRepresentation];
          [v249 addObject:dictionaryRepresentation36];

          ++v254;
        }

        while (v252 != v254);
        v252 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v633 objects:v811 count:16];
      }

      while (v252);
    }

    [dictionary setObject:v249 forKey:@"kCellularPowerLogLteNrTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogLteNrRxTxActivityStats count])
  {
    v256 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogLteNrRxTxActivityStats, "count")}];
    v629 = 0u;
    v630 = 0u;
    v631 = 0u;
    v632 = 0u;
    v257 = self->_kCellularPowerLogLteNrRxTxActivityStats;
    v258 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v629 objects:v810 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = *v630;
      do
      {
        v261 = 0;
        do
        {
          if (*v630 != v260)
          {
            objc_enumerationMutation(v257);
          }

          dictionaryRepresentation37 = [*(*(&v629 + 1) + 8 * v261) dictionaryRepresentation];
          [v256 addObject:dictionaryRepresentation37];

          ++v261;
        }

        while (v259 != v261);
        v259 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v629 objects:v810 count:16];
      }

      while (v259);
    }

    [dictionary setObject:v256 forKey:@"kCellularPowerLogLteNrRxTxActivityStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogSFTStates count])
  {
    v263 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogSFTStates, "count")}];
    v625 = 0u;
    v626 = 0u;
    v627 = 0u;
    v628 = 0u;
    v264 = self->_kCellularPowerLogSFTStates;
    v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v625 objects:v809 count:16];
    if (v265)
    {
      v266 = v265;
      v267 = *v626;
      do
      {
        v268 = 0;
        do
        {
          if (*v626 != v267)
          {
            objc_enumerationMutation(v264);
          }

          dictionaryRepresentation38 = [*(*(&v625 + 1) + 8 * v268) dictionaryRepresentation];
          [v263 addObject:dictionaryRepresentation38];

          ++v268;
        }

        while (v266 != v268);
        v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v625 objects:v809 count:16];
      }

      while (v266);
    }

    [dictionary setObject:v263 forKey:@"kCellularPowerLogSFTState"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogSFTRxTxs count])
  {
    v270 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogSFTRxTxs, "count")}];
    v621 = 0u;
    v622 = 0u;
    v623 = 0u;
    v624 = 0u;
    v271 = self->_kCellularPowerLogSFTRxTxs;
    v272 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v621 objects:v808 count:16];
    if (v272)
    {
      v273 = v272;
      v274 = *v622;
      do
      {
        v275 = 0;
        do
        {
          if (*v622 != v274)
          {
            objc_enumerationMutation(v271);
          }

          dictionaryRepresentation39 = [*(*(&v621 + 1) + 8 * v275) dictionaryRepresentation];
          [v270 addObject:dictionaryRepresentation39];

          ++v275;
        }

        while (v273 != v275);
        v273 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v621 objects:v808 count:16];
      }

      while (v273);
    }

    [dictionary setObject:v270 forKey:@"kCellularPowerLogSFTRxTx"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogXOShutdowns count])
  {
    v277 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogXOShutdowns, "count")}];
    v617 = 0u;
    v618 = 0u;
    v619 = 0u;
    v620 = 0u;
    v278 = self->_kCellularPowerLogXOShutdowns;
    v279 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v617 objects:v807 count:16];
    if (v279)
    {
      v280 = v279;
      v281 = *v618;
      do
      {
        v282 = 0;
        do
        {
          if (*v618 != v281)
          {
            objc_enumerationMutation(v278);
          }

          dictionaryRepresentation40 = [*(*(&v617 + 1) + 8 * v282) dictionaryRepresentation];
          [v277 addObject:dictionaryRepresentation40];

          ++v282;
        }

        while (v280 != v282);
        v280 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v617 objects:v807 count:16];
      }

      while (v280);
    }

    [dictionary setObject:v277 forKey:@"kCellularPowerLogXOShutdown"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogCpuPerfLevels count])
  {
    v284 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogCpuPerfLevels, "count")}];
    v613 = 0u;
    v614 = 0u;
    v615 = 0u;
    v616 = 0u;
    v285 = self->_kCellularPowerLogCpuPerfLevels;
    v286 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v613 objects:v806 count:16];
    if (v286)
    {
      v287 = v286;
      v288 = *v614;
      do
      {
        v289 = 0;
        do
        {
          if (*v614 != v288)
          {
            objc_enumerationMutation(v285);
          }

          dictionaryRepresentation41 = [*(*(&v613 + 1) + 8 * v289) dictionaryRepresentation];
          [v284 addObject:dictionaryRepresentation41];

          ++v289;
        }

        while (v287 != v289);
        v287 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v613 objects:v806 count:16];
      }

      while (v287);
    }

    [dictionary setObject:v284 forKey:@"kCellularPowerLogCpuPerfLevels"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogSocPerfLevels count])
  {
    v291 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogSocPerfLevels, "count")}];
    v609 = 0u;
    v610 = 0u;
    v611 = 0u;
    v612 = 0u;
    v292 = self->_kCellularPowerLogSocPerfLevels;
    v293 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v609 objects:v805 count:16];
    if (v293)
    {
      v294 = v293;
      v295 = *v610;
      do
      {
        v296 = 0;
        do
        {
          if (*v610 != v295)
          {
            objc_enumerationMutation(v292);
          }

          dictionaryRepresentation42 = [*(*(&v609 + 1) + 8 * v296) dictionaryRepresentation];
          [v291 addObject:dictionaryRepresentation42];

          ++v296;
        }

        while (v294 != v296);
        v294 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v609 objects:v805 count:16];
      }

      while (v294);
    }

    [dictionary setObject:v291 forKey:@"kCellularPowerLogSocPerfLevels"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogAcmPerfLevels count])
  {
    v298 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogAcmPerfLevels, "count")}];
    v605 = 0u;
    v606 = 0u;
    v607 = 0u;
    v608 = 0u;
    v299 = self->_kCellularPowerLogAcmPerfLevels;
    v300 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v605 objects:v804 count:16];
    if (v300)
    {
      v301 = v300;
      v302 = *v606;
      do
      {
        v303 = 0;
        do
        {
          if (*v606 != v302)
          {
            objc_enumerationMutation(v299);
          }

          dictionaryRepresentation43 = [*(*(&v605 + 1) + 8 * v303) dictionaryRepresentation];
          [v298 addObject:dictionaryRepresentation43];

          ++v303;
        }

        while (v301 != v303);
        v301 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v605 objects:v804 count:16];
      }

      while (v301);
    }

    [dictionary setObject:v298 forKey:@"kCellularPowerLogAcmPerfLevels"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogCpsSleepStates count])
  {
    v305 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogCpsSleepStates, "count")}];
    v601 = 0u;
    v602 = 0u;
    v603 = 0u;
    v604 = 0u;
    v306 = self->_kCellularPowerLogCpsSleepStates;
    v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v601 objects:v803 count:16];
    if (v307)
    {
      v308 = v307;
      v309 = *v602;
      do
      {
        v310 = 0;
        do
        {
          if (*v602 != v309)
          {
            objc_enumerationMutation(v306);
          }

          dictionaryRepresentation44 = [*(*(&v601 + 1) + 8 * v310) dictionaryRepresentation];
          [v305 addObject:dictionaryRepresentation44];

          ++v310;
        }

        while (v308 != v310);
        v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v601 objects:v803 count:16];
      }

      while (v308);
    }

    [dictionary setObject:v305 forKey:@"kCellularPowerLogCpsSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogCdpDSleepStates count])
  {
    v312 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogCdpDSleepStates, "count")}];
    v597 = 0u;
    v598 = 0u;
    v599 = 0u;
    v600 = 0u;
    v313 = self->_kCellularPowerLogCdpDSleepStates;
    v314 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v597 objects:v802 count:16];
    if (v314)
    {
      v315 = v314;
      v316 = *v598;
      do
      {
        v317 = 0;
        do
        {
          if (*v598 != v316)
          {
            objc_enumerationMutation(v313);
          }

          dictionaryRepresentation45 = [*(*(&v597 + 1) + 8 * v317) dictionaryRepresentation];
          [v312 addObject:dictionaryRepresentation45];

          ++v317;
        }

        while (v315 != v317);
        v315 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v597 objects:v802 count:16];
      }

      while (v315);
    }

    [dictionary setObject:v312 forKey:@"kCellularPowerLogCdpDSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogCdpUSleepStates count])
  {
    v319 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogCdpUSleepStates, "count")}];
    v593 = 0u;
    v594 = 0u;
    v595 = 0u;
    v596 = 0u;
    v320 = self->_kCellularPowerLogCdpUSleepStates;
    v321 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v593 objects:v801 count:16];
    if (v321)
    {
      v322 = v321;
      v323 = *v594;
      do
      {
        v324 = 0;
        do
        {
          if (*v594 != v323)
          {
            objc_enumerationMutation(v320);
          }

          dictionaryRepresentation46 = [*(*(&v593 + 1) + 8 * v324) dictionaryRepresentation];
          [v319 addObject:dictionaryRepresentation46];

          ++v324;
        }

        while (v322 != v324);
        v322 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v593 objects:v801 count:16];
      }

      while (v322);
    }

    [dictionary setObject:v319 forKey:@"kCellularPowerLogCdpUSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogCdpHSleepStates count])
  {
    v326 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogCdpHSleepStates, "count")}];
    v589 = 0u;
    v590 = 0u;
    v591 = 0u;
    v592 = 0u;
    v327 = self->_kCellularPowerLogCdpHSleepStates;
    v328 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v589 objects:v800 count:16];
    if (v328)
    {
      v329 = v328;
      v330 = *v590;
      do
      {
        v331 = 0;
        do
        {
          if (*v590 != v330)
          {
            objc_enumerationMutation(v327);
          }

          dictionaryRepresentation47 = [*(*(&v589 + 1) + 8 * v331) dictionaryRepresentation];
          [v326 addObject:dictionaryRepresentation47];

          ++v331;
        }

        while (v329 != v331);
        v329 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v589 objects:v800 count:16];
      }

      while (v329);
    }

    [dictionary setObject:v326 forKey:@"kCellularPowerLogCdpHSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogL1CSleepStates count])
  {
    v333 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogL1CSleepStates, "count")}];
    v585 = 0u;
    v586 = 0u;
    v587 = 0u;
    v588 = 0u;
    v334 = self->_kCellularPowerLogL1CSleepStates;
    v335 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v585 objects:v799 count:16];
    if (v335)
    {
      v336 = v335;
      v337 = *v586;
      do
      {
        v338 = 0;
        do
        {
          if (*v586 != v337)
          {
            objc_enumerationMutation(v334);
          }

          dictionaryRepresentation48 = [*(*(&v585 + 1) + 8 * v338) dictionaryRepresentation];
          [v333 addObject:dictionaryRepresentation48];

          ++v338;
        }

        while (v336 != v338);
        v336 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v585 objects:v799 count:16];
      }

      while (v336);
    }

    [dictionary setObject:v333 forKey:@"kCellularPowerLogL1CSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogL1SSleepStates count])
  {
    v340 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogL1SSleepStates, "count")}];
    v581 = 0u;
    v582 = 0u;
    v583 = 0u;
    v584 = 0u;
    v341 = self->_kCellularPowerLogL1SSleepStates;
    v342 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v581 objects:v798 count:16];
    if (v342)
    {
      v343 = v342;
      v344 = *v582;
      do
      {
        v345 = 0;
        do
        {
          if (*v582 != v344)
          {
            objc_enumerationMutation(v341);
          }

          dictionaryRepresentation49 = [*(*(&v581 + 1) + 8 * v345) dictionaryRepresentation];
          [v340 addObject:dictionaryRepresentation49];

          ++v345;
        }

        while (v343 != v345);
        v343 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v581 objects:v798 count:16];
      }

      while (v343);
    }

    [dictionary setObject:v340 forKey:@"kCellularPowerLogL1SSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogDcsSleepStates count])
  {
    v347 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogDcsSleepStates, "count")}];
    v577 = 0u;
    v578 = 0u;
    v579 = 0u;
    v580 = 0u;
    v348 = self->_kCellularPowerLogDcsSleepStates;
    v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v577 objects:v797 count:16];
    if (v349)
    {
      v350 = v349;
      v351 = *v578;
      do
      {
        v352 = 0;
        do
        {
          if (*v578 != v351)
          {
            objc_enumerationMutation(v348);
          }

          dictionaryRepresentation50 = [*(*(&v577 + 1) + 8 * v352) dictionaryRepresentation];
          [v347 addObject:dictionaryRepresentation50];

          ++v352;
        }

        while (v350 != v352);
        v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v577 objects:v797 count:16];
      }

      while (v350);
    }

    [dictionary setObject:v347 forKey:@"kCellularPowerLogDcsSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLog2g3gSleepStates count])
  {
    v354 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLog2g3gSleepStates, "count")}];
    v573 = 0u;
    v574 = 0u;
    v575 = 0u;
    v576 = 0u;
    v355 = self->_kCellularPowerLog2g3gSleepStates;
    v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v573 objects:v796 count:16];
    if (v356)
    {
      v357 = v356;
      v358 = *v574;
      do
      {
        v359 = 0;
        do
        {
          if (*v574 != v358)
          {
            objc_enumerationMutation(v355);
          }

          dictionaryRepresentation51 = [*(*(&v573 + 1) + 8 * v359) dictionaryRepresentation];
          [v354 addObject:dictionaryRepresentation51];

          ++v359;
        }

        while (v357 != v359);
        v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v573 objects:v796 count:16];
      }

      while (v357);
    }

    [dictionary setObject:v354 forKey:@"kCellularPowerLog2g3gSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogSleepStates count])
  {
    v361 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogSleepStates, "count")}];
    v569 = 0u;
    v570 = 0u;
    v571 = 0u;
    v572 = 0u;
    v362 = self->_kCellularPowerLogSleepStates;
    v363 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v569 objects:v795 count:16];
    if (v363)
    {
      v364 = v363;
      v365 = *v570;
      do
      {
        v366 = 0;
        do
        {
          if (*v570 != v365)
          {
            objc_enumerationMutation(v362);
          }

          dictionaryRepresentation52 = [*(*(&v569 + 1) + 8 * v366) dictionaryRepresentation];
          [v361 addObject:dictionaryRepresentation52];

          ++v366;
        }

        while (v364 != v366);
        v364 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v569 objects:v795 count:16];
      }

      while (v364);
    }

    [dictionary setObject:v361 forKey:@"kCellularPowerLogSleepStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPlatformApBbSleepStats count])
  {
    v368 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPlatformApBbSleepStats, "count")}];
    v565 = 0u;
    v566 = 0u;
    v567 = 0u;
    v568 = 0u;
    v369 = self->_kCellularPlatformApBbSleepStats;
    v370 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v565 objects:v794 count:16];
    if (v370)
    {
      v371 = v370;
      v372 = *v566;
      do
      {
        v373 = 0;
        do
        {
          if (*v566 != v372)
          {
            objc_enumerationMutation(v369);
          }

          dictionaryRepresentation53 = [*(*(&v565 + 1) + 8 * v373) dictionaryRepresentation];
          [v368 addObject:dictionaryRepresentation53];

          ++v373;
        }

        while (v371 != v373);
        v371 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v565 objects:v794 count:16];
      }

      while (v371);
    }

    [dictionary setObject:v368 forKey:@"kCellularPlatformApBbSleepStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogGPSStates count])
  {
    v375 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogGPSStates, "count")}];
    v561 = 0u;
    v562 = 0u;
    v563 = 0u;
    v564 = 0u;
    v376 = self->_kCellularPowerLogGPSStates;
    v377 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v561 objects:v793 count:16];
    if (v377)
    {
      v378 = v377;
      v379 = *v562;
      do
      {
        v380 = 0;
        do
        {
          if (*v562 != v379)
          {
            objc_enumerationMutation(v376);
          }

          dictionaryRepresentation54 = [*(*(&v561 + 1) + 8 * v380) dictionaryRepresentation];
          [v375 addObject:dictionaryRepresentation54];

          ++v380;
        }

        while (v378 != v380);
        v378 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v561 objects:v793 count:16];
      }

      while (v378);
    }

    [dictionary setObject:v375 forKey:@"kCellularPowerLogGPSStates"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerlogRFSSVoltageLevels count])
  {
    v382 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerlogRFSSVoltageLevels, "count")}];
    v557 = 0u;
    v558 = 0u;
    v559 = 0u;
    v560 = 0u;
    v383 = self->_kCellularPowerlogRFSSVoltageLevels;
    v384 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v557 objects:v792 count:16];
    if (v384)
    {
      v385 = v384;
      v386 = *v558;
      do
      {
        v387 = 0;
        do
        {
          if (*v558 != v386)
          {
            objc_enumerationMutation(v383);
          }

          dictionaryRepresentation55 = [*(*(&v557 + 1) + 8 * v387) dictionaryRepresentation];
          [v382 addObject:dictionaryRepresentation55];

          ++v387;
        }

        while (v385 != v387);
        v385 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v557 objects:v792 count:16];
      }

      while (v385);
    }

    [dictionary setObject:v382 forKey:@"kCellularPowerlogRFSSVoltageLevels"];
  }

  if ([(NSMutableArray *)self->_kCellularPowerLogBasebandSleepVetos count])
  {
    v389 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPowerLogBasebandSleepVetos, "count")}];
    v553 = 0u;
    v554 = 0u;
    v555 = 0u;
    v556 = 0u;
    v390 = self->_kCellularPowerLogBasebandSleepVetos;
    v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v553 objects:v791 count:16];
    if (v391)
    {
      v392 = v391;
      v393 = *v554;
      do
      {
        v394 = 0;
        do
        {
          if (*v554 != v393)
          {
            objc_enumerationMutation(v390);
          }

          dictionaryRepresentation56 = [*(*(&v553 + 1) + 8 * v394) dictionaryRepresentation];
          [v389 addObject:dictionaryRepresentation56];

          ++v394;
        }

        while (v392 != v394);
        v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v553 objects:v791 count:16];
      }

      while (v392);
    }

    [dictionary setObject:v389 forKey:@"kCellularPowerLogBasebandSleepVeto"];
  }

  if ([(NSMutableArray *)self->_kCellularAcmSleepStats count])
  {
    v396 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularAcmSleepStats, "count")}];
    v549 = 0u;
    v550 = 0u;
    v551 = 0u;
    v552 = 0u;
    v397 = self->_kCellularAcmSleepStats;
    v398 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v549 objects:v790 count:16];
    if (v398)
    {
      v399 = v398;
      v400 = *v550;
      do
      {
        v401 = 0;
        do
        {
          if (*v550 != v400)
          {
            objc_enumerationMutation(v397);
          }

          dictionaryRepresentation57 = [*(*(&v549 + 1) + 8 * v401) dictionaryRepresentation];
          [v396 addObject:dictionaryRepresentation57];

          ++v401;
        }

        while (v399 != v401);
        v399 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v549 objects:v790 count:16];
      }

      while (v399);
    }

    [dictionary setObject:v396 forKey:@"kCellularAcmSleepStats"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmServingCellRssiHists count])
  {
    v403 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmServingCellRssiHists, "count")}];
    v545 = 0u;
    v546 = 0u;
    v547 = 0u;
    v548 = 0u;
    v404 = self->_kCellularGsmServingCellRssiHists;
    v405 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v545 objects:v789 count:16];
    if (v405)
    {
      v406 = v405;
      v407 = *v546;
      do
      {
        v408 = 0;
        do
        {
          if (*v546 != v407)
          {
            objc_enumerationMutation(v404);
          }

          dictionaryRepresentation58 = [*(*(&v545 + 1) + 8 * v408) dictionaryRepresentation];
          [v403 addObject:dictionaryRepresentation58];

          ++v408;
        }

        while (v406 != v408);
        v406 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v545 objects:v789 count:16];
      }

      while (v406);
    }

    [dictionary setObject:v403 forKey:@"kCellularGsmServingCellRssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmTxPowerHists count])
  {
    v410 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmTxPowerHists, "count")}];
    v541 = 0u;
    v542 = 0u;
    v543 = 0u;
    v544 = 0u;
    v411 = self->_kCellularGsmTxPowerHists;
    v412 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v541 objects:v788 count:16];
    if (v412)
    {
      v413 = v412;
      v414 = *v542;
      do
      {
        v415 = 0;
        do
        {
          if (*v542 != v414)
          {
            objc_enumerationMutation(v411);
          }

          dictionaryRepresentation59 = [*(*(&v541 + 1) + 8 * v415) dictionaryRepresentation];
          [v410 addObject:dictionaryRepresentation59];

          ++v415;
        }

        while (v413 != v415);
        v413 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v541 objects:v788 count:16];
      }

      while (v413);
    }

    [dictionary setObject:v410 forKey:@"kCellularGsmTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRxDiversityHists count])
  {
    v417 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRxDiversityHists, "count")}];
    v537 = 0u;
    v538 = 0u;
    v539 = 0u;
    v540 = 0u;
    v418 = self->_kCellularWcdmaRxDiversityHists;
    v419 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v537 objects:v787 count:16];
    if (v419)
    {
      v420 = v419;
      v421 = *v538;
      do
      {
        v422 = 0;
        do
        {
          if (*v538 != v421)
          {
            objc_enumerationMutation(v418);
          }

          dictionaryRepresentation60 = [*(*(&v537 + 1) + 8 * v422) dictionaryRepresentation];
          [v417 addObject:dictionaryRepresentation60];

          ++v422;
        }

        while (v420 != v422);
        v420 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v537 objects:v787 count:16];
      }

      while (v420);
    }

    [dictionary setObject:v417 forKey:@"kCellularWcdmaRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx0RssiHists count])
  {
    v424 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx0RssiHists, "count")}];
    v533 = 0u;
    v534 = 0u;
    v535 = 0u;
    v536 = 0u;
    v425 = self->_kCellularWcdmaServingCellRx0RssiHists;
    v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v533 objects:v786 count:16];
    if (v426)
    {
      v427 = v426;
      v428 = *v534;
      do
      {
        v429 = 0;
        do
        {
          if (*v534 != v428)
          {
            objc_enumerationMutation(v425);
          }

          dictionaryRepresentation61 = [*(*(&v533 + 1) + 8 * v429) dictionaryRepresentation];
          [v424 addObject:dictionaryRepresentation61];

          ++v429;
        }

        while (v427 != v429);
        v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v533 objects:v786 count:16];
      }

      while (v427);
    }

    [dictionary setObject:v424 forKey:@"kCellularWcdmaServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx1RssiHists count])
  {
    v431 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx1RssiHists, "count")}];
    v529 = 0u;
    v530 = 0u;
    v531 = 0u;
    v532 = 0u;
    v432 = self->_kCellularWcdmaServingCellRx1RssiHists;
    v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v529 objects:v785 count:16];
    if (v433)
    {
      v434 = v433;
      v435 = *v530;
      do
      {
        v436 = 0;
        do
        {
          if (*v530 != v435)
          {
            objc_enumerationMutation(v432);
          }

          dictionaryRepresentation62 = [*(*(&v529 + 1) + 8 * v436) dictionaryRepresentation];
          [v431 addObject:dictionaryRepresentation62];

          ++v436;
        }

        while (v434 != v436);
        v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v529 objects:v785 count:16];
      }

      while (v434);
    }

    [dictionary setObject:v431 forKey:@"kCellularWcdmaServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaTxPowerHists count])
  {
    v438 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaTxPowerHists, "count")}];
    v525 = 0u;
    v526 = 0u;
    v527 = 0u;
    v528 = 0u;
    v439 = self->_kCellularWcdmaTxPowerHists;
    v440 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v525 objects:v784 count:16];
    if (v440)
    {
      v441 = v440;
      v442 = *v526;
      do
      {
        v443 = 0;
        do
        {
          if (*v526 != v442)
          {
            objc_enumerationMutation(v439);
          }

          dictionaryRepresentation63 = [*(*(&v525 + 1) + 8 * v443) dictionaryRepresentation];
          [v438 addObject:dictionaryRepresentation63];

          ++v443;
        }

        while (v441 != v443);
        v441 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v525 objects:v784 count:16];
      }

      while (v441);
    }

    [dictionary setObject:v438 forKey:@"kCellularWcdmaTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRabModeHists count])
  {
    v445 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRabModeHists, "count")}];
    v521 = 0u;
    v522 = 0u;
    v523 = 0u;
    v524 = 0u;
    v446 = self->_kCellularWcdmaRabModeHists;
    v447 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v521 objects:v783 count:16];
    if (v447)
    {
      v448 = v447;
      v449 = *v522;
      do
      {
        v450 = 0;
        do
        {
          if (*v522 != v449)
          {
            objc_enumerationMutation(v446);
          }

          dictionaryRepresentation64 = [*(*(&v521 + 1) + 8 * v450) dictionaryRepresentation];
          [v445 addObject:dictionaryRepresentation64];

          ++v450;
        }

        while (v448 != v450);
        v448 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v521 objects:v783 count:16];
      }

      while (v448);
    }

    [dictionary setObject:v445 forKey:@"kCellularWcdmaRabModeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaPsRabTypeHists count])
  {
    v452 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaPsRabTypeHists, "count")}];
    v517 = 0u;
    v518 = 0u;
    v519 = 0u;
    v520 = 0u;
    v453 = self->_kCellularWcdmaPsRabTypeHists;
    v454 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v517 objects:v782 count:16];
    if (v454)
    {
      v455 = v454;
      v456 = *v518;
      do
      {
        v457 = 0;
        do
        {
          if (*v518 != v456)
          {
            objc_enumerationMutation(v453);
          }

          dictionaryRepresentation65 = [*(*(&v517 + 1) + 8 * v457) dictionaryRepresentation];
          [v452 addObject:dictionaryRepresentation65];

          ++v457;
        }

        while (v455 != v457);
        v455 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v517 objects:v782 count:16];
      }

      while (v455);
    }

    [dictionary setObject:v452 forKey:@"kCellularWcdmaPsRabTypeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaDataInactivityBeforeIdles count])
  {
    v459 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaDataInactivityBeforeIdles, "count")}];
    v513 = 0u;
    v514 = 0u;
    v515 = 0u;
    v516 = 0u;
    v460 = self->_kCellularWcdmaDataInactivityBeforeIdles;
    v461 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v513 objects:v781 count:16];
    if (v461)
    {
      v462 = v461;
      v463 = *v514;
      do
      {
        v464 = 0;
        do
        {
          if (*v514 != v463)
          {
            objc_enumerationMutation(v460);
          }

          dictionaryRepresentation66 = [*(*(&v513 + 1) + 8 * v464) dictionaryRepresentation];
          [v459 addObject:dictionaryRepresentation66];

          ++v464;
        }

        while (v462 != v464);
        v462 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v513 objects:v781 count:16];
      }

      while (v462);
    }

    [dictionary setObject:v459 forKey:@"kCellularWcdmaDataInactivityBeforeIdle"];
  }

  if ([(NSMutableArray *)self->_kCellularLteServingCellRsrpHists count])
  {
    v466 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteServingCellRsrpHists, "count")}];
    v509 = 0u;
    v510 = 0u;
    v511 = 0u;
    v512 = 0u;
    v467 = self->_kCellularLteServingCellRsrpHists;
    v468 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v509 objects:v780 count:16];
    if (v468)
    {
      v469 = v468;
      v470 = *v510;
      do
      {
        v471 = 0;
        do
        {
          if (*v510 != v470)
          {
            objc_enumerationMutation(v467);
          }

          dictionaryRepresentation67 = [*(*(&v509 + 1) + 8 * v471) dictionaryRepresentation];
          [v466 addObject:dictionaryRepresentation67];

          ++v471;
        }

        while (v469 != v471);
        v469 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v509 objects:v780 count:16];
      }

      while (v469);
    }

    [dictionary setObject:v466 forKey:@"kCellularLteServingCellRsrpHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteServingCellSinrHists count])
  {
    v473 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteServingCellSinrHists, "count")}];
    v505 = 0u;
    v506 = 0u;
    v507 = 0u;
    v508 = 0u;
    v474 = self->_kCellularLteServingCellSinrHists;
    v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v505 objects:v779 count:16];
    if (v475)
    {
      v476 = v475;
      v477 = *v506;
      do
      {
        v478 = 0;
        do
        {
          if (*v506 != v477)
          {
            objc_enumerationMutation(v474);
          }

          dictionaryRepresentation68 = [*(*(&v505 + 1) + 8 * v478) dictionaryRepresentation];
          [v473 addObject:dictionaryRepresentation68];

          ++v478;
        }

        while (v476 != v478);
        v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v505 objects:v779 count:16];
      }

      while (v476);
    }

    [dictionary setObject:v473 forKey:@"kCellularLteServingCellSinrHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteDataInactivityBeforeIdles count])
  {
    v480 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteDataInactivityBeforeIdles, "count")}];
    v501 = 0u;
    v502 = 0u;
    v503 = 0u;
    v504 = 0u;
    v481 = self->_kCellularLteDataInactivityBeforeIdles;
    v482 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v501 objects:v778 count:16];
    if (v482)
    {
      v483 = v482;
      v484 = *v502;
      do
      {
        v485 = 0;
        do
        {
          if (*v502 != v484)
          {
            objc_enumerationMutation(v481);
          }

          dictionaryRepresentation69 = [*(*(&v501 + 1) + 8 * v485) dictionaryRepresentation];
          [v480 addObject:dictionaryRepresentation69];

          ++v485;
        }

        while (v483 != v485);
        v483 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v501 objects:v778 count:16];
      }

      while (v483);
    }

    [dictionary setObject:v480 forKey:@"kCellularLteDataInactivityBeforeIdle"];
  }

  if ([(NSMutableArray *)self->_kCellularNrDataInactivityBeforeIdles count])
  {
    v487 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularNrDataInactivityBeforeIdles, "count")}];
    v497 = 0u;
    v498 = 0u;
    v499 = 0u;
    v500 = 0u;
    v488 = self->_kCellularNrDataInactivityBeforeIdles;
    v489 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v497 objects:v777 count:16];
    if (v489)
    {
      v490 = v489;
      v491 = *v498;
      do
      {
        v492 = 0;
        do
        {
          if (*v498 != v491)
          {
            objc_enumerationMutation(v488);
          }

          dictionaryRepresentation70 = [*(*(&v497 + 1) + 8 * v492) dictionaryRepresentation];
          [v487 addObject:dictionaryRepresentation70];

          ++v492;
        }

        while (v490 != v492);
        v490 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v497 objects:v777 count:16];
      }

      while (v490);
    }

    [dictionary setObject:v487 forKey:@"kCellularNrDataInactivityBeforeIdle"];
  }

  v494 = dictionary;

  v495 = *MEMORY[0x277D85DE8];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v776 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v702 = 0u;
  v703 = 0u;
  v704 = 0u;
  v705 = 0u;
  v5 = self->_kCellularPerClientProfileTriggerCounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v702 objects:v775 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v703;
    do
    {
      v9 = 0;
      do
      {
        if (*v703 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v702 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v702 objects:v775 count:16];
    }

    while (v7);
  }

  v701 = 0u;
  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v11 = self->_kCellularPowerLogWcdmaPagingDRXCycles;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v698 objects:v774 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v699;
    do
    {
      v15 = 0;
      do
      {
        if (*v699 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v698 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v698 objects:v774 count:16];
    }

    while (v13);
  }

  v697 = 0u;
  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v17 = self->_kCellularLtePagingCycles;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v694 objects:v773 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v695;
    do
    {
      v21 = 0;
      do
      {
        if (*v695 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v694 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v694 objects:v773 count:16];
    }

    while (v19);
  }

  v693 = 0u;
  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v23 = self->_kCellularPowerLogNRPagingDRXCycles;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v690 objects:v772 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v691;
    do
    {
      v27 = 0;
      do
      {
        if (*v691 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v690 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v690 objects:v772 count:16];
    }

    while (v25);
  }

  v689 = 0u;
  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v29 = self->_kCellularLteCdrxConfigs;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v686 objects:v771 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v687;
    do
    {
      v33 = 0;
      do
      {
        if (*v687 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v686 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v686 objects:v771 count:16];
    }

    while (v31);
  }

  v685 = 0u;
  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v35 = self->_kCellularNrSDMActivations;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v682 objects:v770 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v683;
    do
    {
      v39 = 0;
      do
      {
        if (*v683 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v682 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v682 objects:v770 count:16];
    }

    while (v37);
  }

  v681 = 0u;
  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v41 = self->_kCellularNrSdmEndcReleases;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v678 objects:v769 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v679;
    do
    {
      v45 = 0;
      do
      {
        if (*v679 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v678 + 1) + 8 * v45);
        PBDataWriterWriteSubmessage();
        ++v45;
      }

      while (v43 != v45);
      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v678 objects:v769 count:16];
    }

    while (v43);
  }

  v677 = 0u;
  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v47 = self->_kCellularNrDataInactivityBeforeIdles;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v674 objects:v768 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v675;
    do
    {
      v51 = 0;
      do
      {
        if (*v675 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v674 + 1) + 8 * v51);
        PBDataWriterWriteSubmessage();
        ++v51;
      }

      while (v49 != v51);
      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v674 objects:v768 count:16];
    }

    while (v49);
  }

  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v53 = self->_kCellularRfTunerHists;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v670 objects:v767 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v671;
    do
    {
      v57 = 0;
      do
      {
        if (*v671 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v670 + 1) + 8 * v57);
        PBDataWriterWriteSubmessage();
        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v670 objects:v767 count:16];
    }

    while (v55);
  }

  v669 = 0u;
  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v59 = self->_kCellularPowerLogLteCaConfigActivateStats;
  v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v666 objects:v766 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v667;
    do
    {
      v63 = 0;
      do
      {
        if (*v667 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v666 + 1) + 8 * v63);
        PBDataWriterWriteSubmessage();
        ++v63;
      }

      while (v61 != v63);
      v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v666 objects:v766 count:16];
    }

    while (v61);
  }

  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v65 = self->_kCellularPowerLogLteCarrierComponentInfos;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v662 objects:v765 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v663;
    do
    {
      v69 = 0;
      do
      {
        if (*v663 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v662 + 1) + 8 * v69);
        PBDataWriterWriteSubmessage();
        ++v69;
      }

      while (v67 != v69);
      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v662 objects:v765 count:16];
    }

    while (v67);
  }

  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v71 = self->_kCellularPowerLogLTEAggregatedDLTBSs;
  v72 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v658 objects:v764 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v659;
    do
    {
      v75 = 0;
      do
      {
        if (*v659 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = *(*(&v658 + 1) + 8 * v75);
        PBDataWriterWriteSubmessage();
        ++v75;
      }

      while (v73 != v75);
      v73 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v658 objects:v764 count:16];
    }

    while (v73);
  }

  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v77 = self->_kCellularPowerLogPowerEstimators;
  v78 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v654 objects:v763 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v655;
    do
    {
      v81 = 0;
      do
      {
        if (*v655 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v654 + 1) + 8 * v81);
        PBDataWriterWriteSubmessage();
        ++v81;
      }

      while (v79 != v81);
      v79 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v654 objects:v763 count:16];
    }

    while (v79);
  }

  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v83 = self->_kCellularPowerLogProtocolStates;
  v84 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v650 objects:v762 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v651;
    do
    {
      v87 = 0;
      do
      {
        if (*v651 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = *(*(&v650 + 1) + 8 * v87);
        PBDataWriterWriteSubmessage();
        ++v87;
      }

      while (v85 != v87);
      v85 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v650 objects:v762 count:16];
    }

    while (v85);
  }

  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v89 = self->_kCellularPowerLogPLMNSearchs;
  v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v646 objects:v761 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v647;
    do
    {
      v93 = 0;
      do
      {
        if (*v647 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v646 + 1) + 8 * v93);
        PBDataWriterWriteSubmessage();
        ++v93;
      }

      while (v91 != v93);
      v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v646 objects:v761 count:16];
    }

    while (v91);
  }

  v645 = 0u;
  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v95 = self->_kCellularPowerLogGSMRABModes;
  v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v642 objects:v760 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v643;
    do
    {
      v99 = 0;
      do
      {
        if (*v643 != v98)
        {
          objc_enumerationMutation(v95);
        }

        v100 = *(*(&v642 + 1) + 8 * v99);
        PBDataWriterWriteSubmessage();
        ++v99;
      }

      while (v97 != v99);
      v97 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v642 objects:v760 count:16];
    }

    while (v97);
  }

  v641 = 0u;
  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v101 = self->_kCellularPowerLogNRSCGRels;
  v102 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v638 objects:v759 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v639;
    do
    {
      v105 = 0;
      do
      {
        if (*v639 != v104)
        {
          objc_enumerationMutation(v101);
        }

        v106 = *(*(&v638 + 1) + 8 * v105);
        PBDataWriterWriteSubmessage();
        ++v105;
      }

      while (v103 != v105);
      v103 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v638 objects:v759 count:16];
    }

    while (v103);
  }

  v637 = 0u;
  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v107 = self->_kCellularPowerLogWCDMACDRXConfigs;
  v108 = [(NSMutableArray *)v107 countByEnumeratingWithState:&v634 objects:v758 count:16];
  if (v108)
  {
    v109 = v108;
    v110 = *v635;
    do
    {
      v111 = 0;
      do
      {
        if (*v635 != v110)
        {
          objc_enumerationMutation(v107);
        }

        v112 = *(*(&v634 + 1) + 8 * v111);
        PBDataWriterWriteSubmessage();
        ++v111;
      }

      while (v109 != v111);
      v109 = [(NSMutableArray *)v107 countByEnumeratingWithState:&v634 objects:v758 count:16];
    }

    while (v109);
  }

  v633 = 0u;
  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v113 = self->_kCellularPowerLogWcdmaRrcStateChanges;
  v114 = [(NSMutableArray *)v113 countByEnumeratingWithState:&v630 objects:v757 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v631;
    do
    {
      v117 = 0;
      do
      {
        if (*v631 != v116)
        {
          objc_enumerationMutation(v113);
        }

        v118 = *(*(&v630 + 1) + 8 * v117);
        PBDataWriterWriteSubmessage();
        ++v117;
      }

      while (v115 != v117);
      v115 = [(NSMutableArray *)v113 countByEnumeratingWithState:&v630 objects:v757 count:16];
    }

    while (v115);
  }

  v629 = 0u;
  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v119 = self->_kCellularPowerLogLteRrcStateChanges;
  v120 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v626 objects:v756 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v627;
    do
    {
      v123 = 0;
      do
      {
        if (*v627 != v122)
        {
          objc_enumerationMutation(v119);
        }

        v124 = *(*(&v626 + 1) + 8 * v123);
        PBDataWriterWriteSubmessage();
        ++v123;
      }

      while (v121 != v123);
      v121 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v626 objects:v756 count:16];
    }

    while (v121);
  }

  v625 = 0u;
  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v125 = self->_kCellularPowerLogSystemEvents;
  v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v622 objects:v755 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v623;
    do
    {
      v129 = 0;
      do
      {
        if (*v623 != v128)
        {
          objc_enumerationMutation(v125);
        }

        v130 = *(*(&v622 + 1) + 8 * v129);
        PBDataWriterWriteSubmessage();
        ++v129;
      }

      while (v127 != v129);
      v127 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v622 objects:v755 count:16];
    }

    while (v127);
  }

  v621 = 0u;
  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v131 = self->_kCellularPowerLogRatReselectionEvents;
  v132 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v618 objects:v754 count:16];
  if (v132)
  {
    v133 = v132;
    v134 = *v619;
    do
    {
      v135 = 0;
      do
      {
        if (*v619 != v134)
        {
          objc_enumerationMutation(v131);
        }

        v136 = *(*(&v618 + 1) + 8 * v135);
        PBDataWriterWriteSubmessage();
        ++v135;
      }

      while (v133 != v135);
      v133 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v618 objects:v754 count:16];
    }

    while (v133);
  }

  v617 = 0u;
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v137 = self->_kCellularPowerLogRatRedirectionEvents;
  v138 = [(NSMutableArray *)v137 countByEnumeratingWithState:&v614 objects:v753 count:16];
  if (v138)
  {
    v139 = v138;
    v140 = *v615;
    do
    {
      v141 = 0;
      do
      {
        if (*v615 != v140)
        {
          objc_enumerationMutation(v137);
        }

        v142 = *(*(&v614 + 1) + 8 * v141);
        PBDataWriterWriteSubmessage();
        ++v141;
      }

      while (v139 != v141);
      v139 = [(NSMutableArray *)v137 countByEnumeratingWithState:&v614 objects:v753 count:16];
    }

    while (v139);
  }

  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v143 = self->_kCellularPowerLogGsmRrcStateChanges;
  v144 = [(NSMutableArray *)v143 countByEnumeratingWithState:&v610 objects:v752 count:16];
  if (v144)
  {
    v145 = v144;
    v146 = *v611;
    do
    {
      v147 = 0;
      do
      {
        if (*v611 != v146)
        {
          objc_enumerationMutation(v143);
        }

        v148 = *(*(&v610 + 1) + 8 * v147);
        PBDataWriterWriteSubmessage();
        ++v147;
      }

      while (v145 != v147);
      v145 = [(NSMutableArray *)v143 countByEnumeratingWithState:&v610 objects:v752 count:16];
    }

    while (v145);
  }

  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v149 = self->_kCellularPowerLogServiceStatusEvents;
  v150 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v606 objects:v751 count:16];
  if (v150)
  {
    v151 = v150;
    v152 = *v607;
    do
    {
      v153 = 0;
      do
      {
        if (*v607 != v152)
        {
          objc_enumerationMutation(v149);
        }

        v154 = *(*(&v606 + 1) + 8 * v153);
        PBDataWriterWriteSubmessage();
        ++v153;
      }

      while (v151 != v153);
      v151 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v606 objects:v751 count:16];
    }

    while (v151);
  }

  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v155 = self->_kCellularPowerLogPlmnSearchEvents;
  v156 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v602 objects:v750 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v603;
    do
    {
      v159 = 0;
      do
      {
        if (*v603 != v158)
        {
          objc_enumerationMutation(v155);
        }

        v160 = *(*(&v602 + 1) + 8 * v159);
        PBDataWriterWriteSubmessage();
        ++v159;
      }

      while (v157 != v159);
      v157 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v602 objects:v750 count:16];
    }

    while (v157);
  }

  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v161 = self->_kCellularPowerLogNrSaRrcStateChanges;
  v162 = [(NSMutableArray *)v161 countByEnumeratingWithState:&v598 objects:v749 count:16];
  if (v162)
  {
    v163 = v162;
    v164 = *v599;
    do
    {
      v165 = 0;
      do
      {
        if (*v599 != v164)
        {
          objc_enumerationMutation(v161);
        }

        v166 = *(*(&v598 + 1) + 8 * v165);
        PBDataWriterWriteSubmessage();
        ++v165;
      }

      while (v163 != v165);
      v163 = [(NSMutableArray *)v161 countByEnumeratingWithState:&v598 objects:v749 count:16];
    }

    while (v163);
  }

  v597 = 0u;
  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v167 = self->_kCellularPowerLogNRNSAENDCEvents;
  v168 = [(NSMutableArray *)v167 countByEnumeratingWithState:&v594 objects:v748 count:16];
  if (v168)
  {
    v169 = v168;
    v170 = *v595;
    do
    {
      v171 = 0;
      do
      {
        if (*v595 != v170)
        {
          objc_enumerationMutation(v167);
        }

        v172 = *(*(&v594 + 1) + 8 * v171);
        PBDataWriterWriteSubmessage();
        ++v171;
      }

      while (v169 != v171);
      v169 = [(NSMutableArray *)v167 countByEnumeratingWithState:&v594 objects:v748 count:16];
    }

    while (v169);
  }

  v593 = 0u;
  v592 = 0u;
  v591 = 0u;
  v590 = 0u;
  v173 = self->_kCellularPowerLogNRCdrxConfigs;
  v174 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v590 objects:v747 count:16];
  if (v174)
  {
    v175 = v174;
    v176 = *v591;
    do
    {
      v177 = 0;
      do
      {
        if (*v591 != v176)
        {
          objc_enumerationMutation(v173);
        }

        v178 = *(*(&v590 + 1) + 8 * v177);
        PBDataWriterWriteSubmessage();
        ++v177;
      }

      while (v175 != v177);
      v175 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v590 objects:v747 count:16];
    }

    while (v175);
  }

  v589 = 0u;
  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  v179 = self->_kCellularPowerLogNRsub6BWPs;
  v180 = [(NSMutableArray *)v179 countByEnumeratingWithState:&v586 objects:v746 count:16];
  if (v180)
  {
    v181 = v180;
    v182 = *v587;
    do
    {
      v183 = 0;
      do
      {
        if (*v587 != v182)
        {
          objc_enumerationMutation(v179);
        }

        v184 = *(*(&v586 + 1) + 8 * v183);
        PBDataWriterWriteSubmessage();
        ++v183;
      }

      while (v181 != v183);
      v181 = [(NSMutableArray *)v179 countByEnumeratingWithState:&v586 objects:v746 count:16];
    }

    while (v181);
  }

  v585 = 0u;
  v584 = 0u;
  v583 = 0u;
  v582 = 0u;
  v185 = self->_kCellularPowerLogNrCaConfigActivateStats;
  v186 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v582 objects:v745 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v583;
    do
    {
      v189 = 0;
      do
      {
        if (*v583 != v188)
        {
          objc_enumerationMutation(v185);
        }

        v190 = *(*(&v582 + 1) + 8 * v189);
        PBDataWriterWriteSubmessage();
        ++v189;
      }

      while (v187 != v189);
      v187 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v582 objects:v745 count:16];
    }

    while (v187);
  }

  v581 = 0u;
  v580 = 0u;
  v579 = 0u;
  v578 = 0u;
  v191 = self->_kCellularPowerLogNRCarrierComponentInfos;
  v192 = [(NSMutableArray *)v191 countByEnumeratingWithState:&v578 objects:v744 count:16];
  if (v192)
  {
    v193 = v192;
    v194 = *v579;
    do
    {
      v195 = 0;
      do
      {
        if (*v579 != v194)
        {
          objc_enumerationMutation(v191);
        }

        v196 = *(*(&v578 + 1) + 8 * v195);
        PBDataWriterWriteSubmessage();
        ++v195;
      }

      while (v193 != v195);
      v193 = [(NSMutableArray *)v191 countByEnumeratingWithState:&v578 objects:v744 count:16];
    }

    while (v193);
  }

  v577 = 0u;
  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v197 = self->_kCellularPowerLogNRsub6DLTBSs;
  v198 = [(NSMutableArray *)v197 countByEnumeratingWithState:&v574 objects:v743 count:16];
  if (v198)
  {
    v199 = v198;
    v200 = *v575;
    do
    {
      v201 = 0;
      do
      {
        if (*v575 != v200)
        {
          objc_enumerationMutation(v197);
        }

        v202 = *(*(&v574 + 1) + 8 * v201);
        PBDataWriterWriteSubmessage();
        ++v201;
      }

      while (v199 != v201);
      v199 = [(NSMutableArray *)v197 countByEnumeratingWithState:&v574 objects:v743 count:16];
    }

    while (v199);
  }

  v573 = 0u;
  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  v203 = self->_kCellularPowerLogNRSub6RSRPs;
  v204 = [(NSMutableArray *)v203 countByEnumeratingWithState:&v570 objects:v742 count:16];
  if (v204)
  {
    v205 = v204;
    v206 = *v571;
    do
    {
      v207 = 0;
      do
      {
        if (*v571 != v206)
        {
          objc_enumerationMutation(v203);
        }

        v208 = *(*(&v570 + 1) + 8 * v207);
        PBDataWriterWriteSubmessage();
        ++v207;
      }

      while (v205 != v207);
      v205 = [(NSMutableArray *)v203 countByEnumeratingWithState:&v570 objects:v742 count:16];
    }

    while (v205);
  }

  v569 = 0u;
  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  v209 = self->_kCellularPowerLogNRSub6SINRs;
  v210 = [(NSMutableArray *)v209 countByEnumeratingWithState:&v566 objects:v741 count:16];
  if (v210)
  {
    v211 = v210;
    v212 = *v567;
    do
    {
      v213 = 0;
      do
      {
        if (*v567 != v212)
        {
          objc_enumerationMutation(v209);
        }

        v214 = *(*(&v566 + 1) + 8 * v213);
        PBDataWriterWriteSubmessage();
        ++v213;
      }

      while (v211 != v213);
      v211 = [(NSMutableArray *)v209 countByEnumeratingWithState:&v566 objects:v741 count:16];
    }

    while (v211);
  }

  v565 = 0u;
  v564 = 0u;
  v563 = 0u;
  v562 = 0u;
  v215 = self->_kCellularPowerLogLteNrRxDiversityHists;
  v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v562 objects:v740 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v563;
    do
    {
      v219 = 0;
      do
      {
        if (*v563 != v218)
        {
          objc_enumerationMutation(v215);
        }

        v220 = *(*(&v562 + 1) + 8 * v219);
        PBDataWriterWriteSubmessage();
        ++v219;
      }

      while (v217 != v219);
      v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v562 objects:v740 count:16];
    }

    while (v217);
  }

  v561 = 0u;
  v560 = 0u;
  v559 = 0u;
  v558 = 0u;
  v221 = self->_kCellularPowerLogLteNrTxPowerHists;
  v222 = [(NSMutableArray *)v221 countByEnumeratingWithState:&v558 objects:v739 count:16];
  if (v222)
  {
    v223 = v222;
    v224 = *v559;
    do
    {
      v225 = 0;
      do
      {
        if (*v559 != v224)
        {
          objc_enumerationMutation(v221);
        }

        v226 = *(*(&v558 + 1) + 8 * v225);
        PBDataWriterWriteSubmessage();
        ++v225;
      }

      while (v223 != v225);
      v223 = [(NSMutableArray *)v221 countByEnumeratingWithState:&v558 objects:v739 count:16];
    }

    while (v223);
  }

  v557 = 0u;
  v556 = 0u;
  v555 = 0u;
  v554 = 0u;
  v227 = self->_kCellularPowerLogLteNrRxTxActivityStats;
  v228 = [(NSMutableArray *)v227 countByEnumeratingWithState:&v554 objects:v738 count:16];
  if (v228)
  {
    v229 = v228;
    v230 = *v555;
    do
    {
      v231 = 0;
      do
      {
        if (*v555 != v230)
        {
          objc_enumerationMutation(v227);
        }

        v232 = *(*(&v554 + 1) + 8 * v231);
        PBDataWriterWriteSubmessage();
        ++v231;
      }

      while (v229 != v231);
      v229 = [(NSMutableArray *)v227 countByEnumeratingWithState:&v554 objects:v738 count:16];
    }

    while (v229);
  }

  v553 = 0u;
  v552 = 0u;
  v551 = 0u;
  v550 = 0u;
  v233 = self->_kCellularPowerLogSFTStates;
  v234 = [(NSMutableArray *)v233 countByEnumeratingWithState:&v550 objects:v737 count:16];
  if (v234)
  {
    v235 = v234;
    v236 = *v551;
    do
    {
      v237 = 0;
      do
      {
        if (*v551 != v236)
        {
          objc_enumerationMutation(v233);
        }

        v238 = *(*(&v550 + 1) + 8 * v237);
        PBDataWriterWriteSubmessage();
        ++v237;
      }

      while (v235 != v237);
      v235 = [(NSMutableArray *)v233 countByEnumeratingWithState:&v550 objects:v737 count:16];
    }

    while (v235);
  }

  v549 = 0u;
  v548 = 0u;
  v547 = 0u;
  v546 = 0u;
  v239 = self->_kCellularPowerLogSFTRxTxs;
  v240 = [(NSMutableArray *)v239 countByEnumeratingWithState:&v546 objects:v736 count:16];
  if (v240)
  {
    v241 = v240;
    v242 = *v547;
    do
    {
      v243 = 0;
      do
      {
        if (*v547 != v242)
        {
          objc_enumerationMutation(v239);
        }

        v244 = *(*(&v546 + 1) + 8 * v243);
        PBDataWriterWriteSubmessage();
        ++v243;
      }

      while (v241 != v243);
      v241 = [(NSMutableArray *)v239 countByEnumeratingWithState:&v546 objects:v736 count:16];
    }

    while (v241);
  }

  v545 = 0u;
  v544 = 0u;
  v543 = 0u;
  v542 = 0u;
  v245 = self->_kCellularPowerLogXOShutdowns;
  v246 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v542 objects:v735 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v543;
    do
    {
      v249 = 0;
      do
      {
        if (*v543 != v248)
        {
          objc_enumerationMutation(v245);
        }

        v250 = *(*(&v542 + 1) + 8 * v249);
        PBDataWriterWriteSubmessage();
        ++v249;
      }

      while (v247 != v249);
      v247 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v542 objects:v735 count:16];
    }

    while (v247);
  }

  v541 = 0u;
  v540 = 0u;
  v539 = 0u;
  v538 = 0u;
  v251 = self->_kCellularPowerLogCpuPerfLevels;
  v252 = [(NSMutableArray *)v251 countByEnumeratingWithState:&v538 objects:v734 count:16];
  if (v252)
  {
    v253 = v252;
    v254 = *v539;
    do
    {
      v255 = 0;
      do
      {
        if (*v539 != v254)
        {
          objc_enumerationMutation(v251);
        }

        v256 = *(*(&v538 + 1) + 8 * v255);
        PBDataWriterWriteSubmessage();
        ++v255;
      }

      while (v253 != v255);
      v253 = [(NSMutableArray *)v251 countByEnumeratingWithState:&v538 objects:v734 count:16];
    }

    while (v253);
  }

  v537 = 0u;
  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v257 = self->_kCellularPowerLogSocPerfLevels;
  v258 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v534 objects:v733 count:16];
  if (v258)
  {
    v259 = v258;
    v260 = *v535;
    do
    {
      v261 = 0;
      do
      {
        if (*v535 != v260)
        {
          objc_enumerationMutation(v257);
        }

        v262 = *(*(&v534 + 1) + 8 * v261);
        PBDataWriterWriteSubmessage();
        ++v261;
      }

      while (v259 != v261);
      v259 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v534 objects:v733 count:16];
    }

    while (v259);
  }

  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v263 = self->_kCellularPowerLogAcmPerfLevels;
  v264 = [(NSMutableArray *)v263 countByEnumeratingWithState:&v530 objects:v732 count:16];
  if (v264)
  {
    v265 = v264;
    v266 = *v531;
    do
    {
      v267 = 0;
      do
      {
        if (*v531 != v266)
        {
          objc_enumerationMutation(v263);
        }

        v268 = *(*(&v530 + 1) + 8 * v267);
        PBDataWriterWriteSubmessage();
        ++v267;
      }

      while (v265 != v267);
      v265 = [(NSMutableArray *)v263 countByEnumeratingWithState:&v530 objects:v732 count:16];
    }

    while (v265);
  }

  v529 = 0u;
  v528 = 0u;
  v527 = 0u;
  v526 = 0u;
  v269 = self->_kCellularPowerLogCpsSleepStates;
  v270 = [(NSMutableArray *)v269 countByEnumeratingWithState:&v526 objects:v731 count:16];
  if (v270)
  {
    v271 = v270;
    v272 = *v527;
    do
    {
      v273 = 0;
      do
      {
        if (*v527 != v272)
        {
          objc_enumerationMutation(v269);
        }

        v274 = *(*(&v526 + 1) + 8 * v273);
        PBDataWriterWriteSubmessage();
        ++v273;
      }

      while (v271 != v273);
      v271 = [(NSMutableArray *)v269 countByEnumeratingWithState:&v526 objects:v731 count:16];
    }

    while (v271);
  }

  v525 = 0u;
  v524 = 0u;
  v523 = 0u;
  v522 = 0u;
  v275 = self->_kCellularPowerLogCdpDSleepStates;
  v276 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v522 objects:v730 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v523;
    do
    {
      v279 = 0;
      do
      {
        if (*v523 != v278)
        {
          objc_enumerationMutation(v275);
        }

        v280 = *(*(&v522 + 1) + 8 * v279);
        PBDataWriterWriteSubmessage();
        ++v279;
      }

      while (v277 != v279);
      v277 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v522 objects:v730 count:16];
    }

    while (v277);
  }

  v521 = 0u;
  v520 = 0u;
  v519 = 0u;
  v518 = 0u;
  v281 = self->_kCellularPowerLogCdpUSleepStates;
  v282 = [(NSMutableArray *)v281 countByEnumeratingWithState:&v518 objects:v729 count:16];
  if (v282)
  {
    v283 = v282;
    v284 = *v519;
    do
    {
      v285 = 0;
      do
      {
        if (*v519 != v284)
        {
          objc_enumerationMutation(v281);
        }

        v286 = *(*(&v518 + 1) + 8 * v285);
        PBDataWriterWriteSubmessage();
        ++v285;
      }

      while (v283 != v285);
      v283 = [(NSMutableArray *)v281 countByEnumeratingWithState:&v518 objects:v729 count:16];
    }

    while (v283);
  }

  v517 = 0u;
  v516 = 0u;
  v515 = 0u;
  v514 = 0u;
  v287 = self->_kCellularPowerLogCdpHSleepStates;
  v288 = [(NSMutableArray *)v287 countByEnumeratingWithState:&v514 objects:v728 count:16];
  if (v288)
  {
    v289 = v288;
    v290 = *v515;
    do
    {
      v291 = 0;
      do
      {
        if (*v515 != v290)
        {
          objc_enumerationMutation(v287);
        }

        v292 = *(*(&v514 + 1) + 8 * v291);
        PBDataWriterWriteSubmessage();
        ++v291;
      }

      while (v289 != v291);
      v289 = [(NSMutableArray *)v287 countByEnumeratingWithState:&v514 objects:v728 count:16];
    }

    while (v289);
  }

  v513 = 0u;
  v512 = 0u;
  v511 = 0u;
  v510 = 0u;
  v293 = self->_kCellularPowerLogL1CSleepStates;
  v294 = [(NSMutableArray *)v293 countByEnumeratingWithState:&v510 objects:v727 count:16];
  if (v294)
  {
    v295 = v294;
    v296 = *v511;
    do
    {
      v297 = 0;
      do
      {
        if (*v511 != v296)
        {
          objc_enumerationMutation(v293);
        }

        v298 = *(*(&v510 + 1) + 8 * v297);
        PBDataWriterWriteSubmessage();
        ++v297;
      }

      while (v295 != v297);
      v295 = [(NSMutableArray *)v293 countByEnumeratingWithState:&v510 objects:v727 count:16];
    }

    while (v295);
  }

  v509 = 0u;
  v508 = 0u;
  v507 = 0u;
  v506 = 0u;
  v299 = self->_kCellularPowerLogL1SSleepStates;
  v300 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v506 objects:v726 count:16];
  if (v300)
  {
    v301 = v300;
    v302 = *v507;
    do
    {
      v303 = 0;
      do
      {
        if (*v507 != v302)
        {
          objc_enumerationMutation(v299);
        }

        v304 = *(*(&v506 + 1) + 8 * v303);
        PBDataWriterWriteSubmessage();
        ++v303;
      }

      while (v301 != v303);
      v301 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v506 objects:v726 count:16];
    }

    while (v301);
  }

  v505 = 0u;
  v504 = 0u;
  v503 = 0u;
  v502 = 0u;
  v305 = self->_kCellularPowerLogDcsSleepStates;
  v306 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v502 objects:v725 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v503;
    do
    {
      v309 = 0;
      do
      {
        if (*v503 != v308)
        {
          objc_enumerationMutation(v305);
        }

        v310 = *(*(&v502 + 1) + 8 * v309);
        PBDataWriterWriteSubmessage();
        ++v309;
      }

      while (v307 != v309);
      v307 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v502 objects:v725 count:16];
    }

    while (v307);
  }

  v501 = 0u;
  v500 = 0u;
  v499 = 0u;
  v498 = 0u;
  v311 = self->_kCellularPowerLog2g3gSleepStates;
  v312 = [(NSMutableArray *)v311 countByEnumeratingWithState:&v498 objects:v724 count:16];
  if (v312)
  {
    v313 = v312;
    v314 = *v499;
    do
    {
      v315 = 0;
      do
      {
        if (*v499 != v314)
        {
          objc_enumerationMutation(v311);
        }

        v316 = *(*(&v498 + 1) + 8 * v315);
        PBDataWriterWriteSubmessage();
        ++v315;
      }

      while (v313 != v315);
      v313 = [(NSMutableArray *)v311 countByEnumeratingWithState:&v498 objects:v724 count:16];
    }

    while (v313);
  }

  v497 = 0u;
  v496 = 0u;
  v495 = 0u;
  v494 = 0u;
  v317 = self->_kCellularPowerLogSleepStates;
  v318 = [(NSMutableArray *)v317 countByEnumeratingWithState:&v494 objects:v723 count:16];
  if (v318)
  {
    v319 = v318;
    v320 = *v495;
    do
    {
      v321 = 0;
      do
      {
        if (*v495 != v320)
        {
          objc_enumerationMutation(v317);
        }

        v322 = *(*(&v494 + 1) + 8 * v321);
        PBDataWriterWriteSubmessage();
        ++v321;
      }

      while (v319 != v321);
      v319 = [(NSMutableArray *)v317 countByEnumeratingWithState:&v494 objects:v723 count:16];
    }

    while (v319);
  }

  v493 = 0u;
  v492 = 0u;
  v491 = 0u;
  v490 = 0u;
  v323 = self->_kCellularPlatformApBbSleepStats;
  v324 = [(NSMutableArray *)v323 countByEnumeratingWithState:&v490 objects:v722 count:16];
  if (v324)
  {
    v325 = v324;
    v326 = *v491;
    do
    {
      v327 = 0;
      do
      {
        if (*v491 != v326)
        {
          objc_enumerationMutation(v323);
        }

        v328 = *(*(&v490 + 1) + 8 * v327);
        PBDataWriterWriteSubmessage();
        ++v327;
      }

      while (v325 != v327);
      v325 = [(NSMutableArray *)v323 countByEnumeratingWithState:&v490 objects:v722 count:16];
    }

    while (v325);
  }

  v488 = 0u;
  v489 = 0u;
  v486 = 0u;
  v487 = 0u;
  v329 = self->_kCellularPowerLogGPSStates;
  v330 = [(NSMutableArray *)v329 countByEnumeratingWithState:&v486 objects:v721 count:16];
  if (v330)
  {
    v331 = v330;
    v332 = *v487;
    do
    {
      v333 = 0;
      do
      {
        if (*v487 != v332)
        {
          objc_enumerationMutation(v329);
        }

        v334 = *(*(&v486 + 1) + 8 * v333);
        PBDataWriterWriteSubmessage();
        ++v333;
      }

      while (v331 != v333);
      v331 = [(NSMutableArray *)v329 countByEnumeratingWithState:&v486 objects:v721 count:16];
    }

    while (v331);
  }

  v484 = 0u;
  v485 = 0u;
  v482 = 0u;
  v483 = 0u;
  v335 = self->_kCellularPowerlogRFSSVoltageLevels;
  v336 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v482 objects:v720 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v483;
    do
    {
      v339 = 0;
      do
      {
        if (*v483 != v338)
        {
          objc_enumerationMutation(v335);
        }

        v340 = *(*(&v482 + 1) + 8 * v339);
        PBDataWriterWriteSubmessage();
        ++v339;
      }

      while (v337 != v339);
      v337 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v482 objects:v720 count:16];
    }

    while (v337);
  }

  v480 = 0u;
  v481 = 0u;
  v478 = 0u;
  v479 = 0u;
  v341 = self->_kCellularPowerLogBasebandSleepVetos;
  v342 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v478 objects:v719 count:16];
  if (v342)
  {
    v343 = v342;
    v344 = *v479;
    do
    {
      v345 = 0;
      do
      {
        if (*v479 != v344)
        {
          objc_enumerationMutation(v341);
        }

        v346 = *(*(&v478 + 1) + 8 * v345);
        PBDataWriterWriteSubmessage();
        ++v345;
      }

      while (v343 != v345);
      v343 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v478 objects:v719 count:16];
    }

    while (v343);
  }

  v476 = 0u;
  v477 = 0u;
  v474 = 0u;
  v475 = 0u;
  v347 = self->_kCellularAcmSleepStats;
  v348 = [(NSMutableArray *)v347 countByEnumeratingWithState:&v474 objects:v718 count:16];
  if (v348)
  {
    v349 = v348;
    v350 = *v475;
    do
    {
      v351 = 0;
      do
      {
        if (*v475 != v350)
        {
          objc_enumerationMutation(v347);
        }

        v352 = *(*(&v474 + 1) + 8 * v351);
        PBDataWriterWriteSubmessage();
        ++v351;
      }

      while (v349 != v351);
      v349 = [(NSMutableArray *)v347 countByEnumeratingWithState:&v474 objects:v718 count:16];
    }

    while (v349);
  }

  v472 = 0u;
  v473 = 0u;
  v470 = 0u;
  v471 = 0u;
  v353 = self->_kCellularGsmServingCellRssiHists;
  v354 = [(NSMutableArray *)v353 countByEnumeratingWithState:&v470 objects:v717 count:16];
  if (v354)
  {
    v355 = v354;
    v356 = *v471;
    do
    {
      v357 = 0;
      do
      {
        if (*v471 != v356)
        {
          objc_enumerationMutation(v353);
        }

        v358 = *(*(&v470 + 1) + 8 * v357);
        PBDataWriterWriteSubmessage();
        ++v357;
      }

      while (v355 != v357);
      v355 = [(NSMutableArray *)v353 countByEnumeratingWithState:&v470 objects:v717 count:16];
    }

    while (v355);
  }

  v468 = 0u;
  v469 = 0u;
  v466 = 0u;
  v467 = 0u;
  v359 = self->_kCellularGsmTxPowerHists;
  v360 = [(NSMutableArray *)v359 countByEnumeratingWithState:&v466 objects:v716 count:16];
  if (v360)
  {
    v361 = v360;
    v362 = *v467;
    do
    {
      v363 = 0;
      do
      {
        if (*v467 != v362)
        {
          objc_enumerationMutation(v359);
        }

        v364 = *(*(&v466 + 1) + 8 * v363);
        PBDataWriterWriteSubmessage();
        ++v363;
      }

      while (v361 != v363);
      v361 = [(NSMutableArray *)v359 countByEnumeratingWithState:&v466 objects:v716 count:16];
    }

    while (v361);
  }

  v464 = 0u;
  v465 = 0u;
  v462 = 0u;
  v463 = 0u;
  v365 = self->_kCellularWcdmaRxDiversityHists;
  v366 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v462 objects:v715 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v463;
    do
    {
      v369 = 0;
      do
      {
        if (*v463 != v368)
        {
          objc_enumerationMutation(v365);
        }

        v370 = *(*(&v462 + 1) + 8 * v369);
        PBDataWriterWriteSubmessage();
        ++v369;
      }

      while (v367 != v369);
      v367 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v462 objects:v715 count:16];
    }

    while (v367);
  }

  v460 = 0u;
  v461 = 0u;
  v458 = 0u;
  v459 = 0u;
  v371 = self->_kCellularWcdmaServingCellRx0RssiHists;
  v372 = [(NSMutableArray *)v371 countByEnumeratingWithState:&v458 objects:v714 count:16];
  if (v372)
  {
    v373 = v372;
    v374 = *v459;
    do
    {
      v375 = 0;
      do
      {
        if (*v459 != v374)
        {
          objc_enumerationMutation(v371);
        }

        v376 = *(*(&v458 + 1) + 8 * v375);
        PBDataWriterWriteSubmessage();
        ++v375;
      }

      while (v373 != v375);
      v373 = [(NSMutableArray *)v371 countByEnumeratingWithState:&v458 objects:v714 count:16];
    }

    while (v373);
  }

  v456 = 0u;
  v457 = 0u;
  v454 = 0u;
  v455 = 0u;
  v377 = self->_kCellularWcdmaServingCellRx1RssiHists;
  v378 = [(NSMutableArray *)v377 countByEnumeratingWithState:&v454 objects:v713 count:16];
  if (v378)
  {
    v379 = v378;
    v380 = *v455;
    do
    {
      v381 = 0;
      do
      {
        if (*v455 != v380)
        {
          objc_enumerationMutation(v377);
        }

        v382 = *(*(&v454 + 1) + 8 * v381);
        PBDataWriterWriteSubmessage();
        ++v381;
      }

      while (v379 != v381);
      v379 = [(NSMutableArray *)v377 countByEnumeratingWithState:&v454 objects:v713 count:16];
    }

    while (v379);
  }

  v452 = 0u;
  v453 = 0u;
  v450 = 0u;
  v451 = 0u;
  v383 = self->_kCellularWcdmaTxPowerHists;
  v384 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v450 objects:v712 count:16];
  if (v384)
  {
    v385 = v384;
    v386 = *v451;
    do
    {
      v387 = 0;
      do
      {
        if (*v451 != v386)
        {
          objc_enumerationMutation(v383);
        }

        v388 = *(*(&v450 + 1) + 8 * v387);
        PBDataWriterWriteSubmessage();
        ++v387;
      }

      while (v385 != v387);
      v385 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v450 objects:v712 count:16];
    }

    while (v385);
  }

  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  v389 = self->_kCellularWcdmaRabModeHists;
  v390 = [(NSMutableArray *)v389 countByEnumeratingWithState:&v446 objects:v711 count:16];
  if (v390)
  {
    v391 = v390;
    v392 = *v447;
    do
    {
      v393 = 0;
      do
      {
        if (*v447 != v392)
        {
          objc_enumerationMutation(v389);
        }

        v394 = *(*(&v446 + 1) + 8 * v393);
        PBDataWriterWriteSubmessage();
        ++v393;
      }

      while (v391 != v393);
      v391 = [(NSMutableArray *)v389 countByEnumeratingWithState:&v446 objects:v711 count:16];
    }

    while (v391);
  }

  v444 = 0u;
  v445 = 0u;
  v442 = 0u;
  v443 = 0u;
  v395 = self->_kCellularWcdmaPsRabTypeHists;
  v396 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v442 objects:v710 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v443;
    do
    {
      v399 = 0;
      do
      {
        if (*v443 != v398)
        {
          objc_enumerationMutation(v395);
        }

        v400 = *(*(&v442 + 1) + 8 * v399);
        PBDataWriterWriteSubmessage();
        ++v399;
      }

      while (v397 != v399);
      v397 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v442 objects:v710 count:16];
    }

    while (v397);
  }

  v440 = 0u;
  v441 = 0u;
  v438 = 0u;
  v439 = 0u;
  v401 = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v402 = [(NSMutableArray *)v401 countByEnumeratingWithState:&v438 objects:v709 count:16];
  if (v402)
  {
    v403 = v402;
    v404 = *v439;
    do
    {
      v405 = 0;
      do
      {
        if (*v439 != v404)
        {
          objc_enumerationMutation(v401);
        }

        v406 = *(*(&v438 + 1) + 8 * v405);
        PBDataWriterWriteSubmessage();
        ++v405;
      }

      while (v403 != v405);
      v403 = [(NSMutableArray *)v401 countByEnumeratingWithState:&v438 objects:v709 count:16];
    }

    while (v403);
  }

  v436 = 0u;
  v437 = 0u;
  v434 = 0u;
  v435 = 0u;
  v407 = self->_kCellularLteServingCellRsrpHists;
  v408 = [(NSMutableArray *)v407 countByEnumeratingWithState:&v434 objects:v708 count:16];
  if (v408)
  {
    v409 = v408;
    v410 = *v435;
    do
    {
      v411 = 0;
      do
      {
        if (*v435 != v410)
        {
          objc_enumerationMutation(v407);
        }

        v412 = *(*(&v434 + 1) + 8 * v411);
        PBDataWriterWriteSubmessage();
        ++v411;
      }

      while (v409 != v411);
      v409 = [(NSMutableArray *)v407 countByEnumeratingWithState:&v434 objects:v708 count:16];
    }

    while (v409);
  }

  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  v413 = self->_kCellularLteServingCellSinrHists;
  v414 = [(NSMutableArray *)v413 countByEnumeratingWithState:&v430 objects:v707 count:16];
  if (v414)
  {
    v415 = v414;
    v416 = *v431;
    do
    {
      v417 = 0;
      do
      {
        if (*v431 != v416)
        {
          objc_enumerationMutation(v413);
        }

        v418 = *(*(&v430 + 1) + 8 * v417);
        PBDataWriterWriteSubmessage();
        ++v417;
      }

      while (v415 != v417);
      v415 = [(NSMutableArray *)v413 countByEnumeratingWithState:&v430 objects:v707 count:16];
    }

    while (v415);
  }

  v428 = 0u;
  v429 = 0u;
  v426 = 0u;
  v427 = 0u;
  v419 = self->_kCellularLteDataInactivityBeforeIdles;
  v420 = [(NSMutableArray *)v419 countByEnumeratingWithState:&v426 objects:v706 count:16];
  if (v420)
  {
    v421 = v420;
    v422 = *v427;
    do
    {
      v423 = 0;
      do
      {
        if (*v427 != v422)
        {
          objc_enumerationMutation(v419);
        }

        v424 = *(*(&v426 + 1) + 8 * v423);
        PBDataWriterWriteSubmessage();
        ++v423;
      }

      while (v421 != v423);
      v421 = [(NSMutableArray *)v419 countByEnumeratingWithState:&v426 objects:v706 count:16];
    }

    while (v421);
  }

  v425 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AWDMETRICSMetricLogPower *)self kCellularPerClientProfileTriggerCountsCount])
  {
    [toCopy clearKCellularPerClientProfileTriggerCounts];
    kCellularPerClientProfileTriggerCountsCount = [(AWDMETRICSMetricLogPower *)self kCellularPerClientProfileTriggerCountsCount];
    if (kCellularPerClientProfileTriggerCountsCount)
    {
      v5 = kCellularPerClientProfileTriggerCountsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(AWDMETRICSMetricLogPower *)self kCellularPerClientProfileTriggerCountAtIndex:i];
        [toCopy addKCellularPerClientProfileTriggerCount:v7];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogWcdmaPagingDRXCyclesCount])
  {
    [toCopy clearKCellularPowerLogWcdmaPagingDRXCycles];
    kCellularPowerLogWcdmaPagingDRXCyclesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogWcdmaPagingDRXCyclesCount];
    if (kCellularPowerLogWcdmaPagingDRXCyclesCount)
    {
      v9 = kCellularPowerLogWcdmaPagingDRXCyclesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogWcdmaPagingDRXCycleAtIndex:j];
        [toCopy addKCellularPowerLogWcdmaPagingDRXCycle:v11];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularLtePagingCyclesCount])
  {
    [toCopy clearKCellularLtePagingCycles];
    kCellularLtePagingCyclesCount = [(AWDMETRICSMetricLogPower *)self kCellularLtePagingCyclesCount];
    if (kCellularLtePagingCyclesCount)
    {
      v13 = kCellularLtePagingCyclesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(AWDMETRICSMetricLogPower *)self kCellularLtePagingCycleAtIndex:k];
        [toCopy addKCellularLtePagingCycle:v15];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRPagingDRXCyclesCount])
  {
    [toCopy clearKCellularPowerLogNRPagingDRXCycles];
    kCellularPowerLogNRPagingDRXCyclesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRPagingDRXCyclesCount];
    if (kCellularPowerLogNRPagingDRXCyclesCount)
    {
      v17 = kCellularPowerLogNRPagingDRXCyclesCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRPagingDRXCycleAtIndex:m];
        [toCopy addKCellularPowerLogNRPagingDRXCycle:v19];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularLteCdrxConfigsCount])
  {
    [toCopy clearKCellularLteCdrxConfigs];
    kCellularLteCdrxConfigsCount = [(AWDMETRICSMetricLogPower *)self kCellularLteCdrxConfigsCount];
    if (kCellularLteCdrxConfigsCount)
    {
      v21 = kCellularLteCdrxConfigsCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(AWDMETRICSMetricLogPower *)self kCellularLteCdrxConfigAtIndex:n];
        [toCopy addKCellularLteCdrxConfig:v23];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularNrSDMActivationsCount])
  {
    [toCopy clearKCellularNrSDMActivations];
    kCellularNrSDMActivationsCount = [(AWDMETRICSMetricLogPower *)self kCellularNrSDMActivationsCount];
    if (kCellularNrSDMActivationsCount)
    {
      v25 = kCellularNrSDMActivationsCount;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(AWDMETRICSMetricLogPower *)self kCellularNrSDMActivationAtIndex:ii];
        [toCopy addKCellularNrSDMActivation:v27];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularNrSdmEndcReleasesCount])
  {
    [toCopy clearKCellularNrSdmEndcReleases];
    kCellularNrSdmEndcReleasesCount = [(AWDMETRICSMetricLogPower *)self kCellularNrSdmEndcReleasesCount];
    if (kCellularNrSdmEndcReleasesCount)
    {
      v29 = kCellularNrSdmEndcReleasesCount;
      for (jj = 0; jj != v29; ++jj)
      {
        v31 = [(AWDMETRICSMetricLogPower *)self kCellularNrSdmEndcReleaseAtIndex:jj];
        [toCopy addKCellularNrSdmEndcRelease:v31];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularNrDataInactivityBeforeIdlesCount])
  {
    [toCopy clearKCellularNrDataInactivityBeforeIdles];
    kCellularNrDataInactivityBeforeIdlesCount = [(AWDMETRICSMetricLogPower *)self kCellularNrDataInactivityBeforeIdlesCount];
    if (kCellularNrDataInactivityBeforeIdlesCount)
    {
      v33 = kCellularNrDataInactivityBeforeIdlesCount;
      for (kk = 0; kk != v33; ++kk)
      {
        v35 = [(AWDMETRICSMetricLogPower *)self kCellularNrDataInactivityBeforeIdleAtIndex:kk];
        [toCopy addKCellularNrDataInactivityBeforeIdle:v35];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularRfTunerHistsCount])
  {
    [toCopy clearKCellularRfTunerHists];
    kCellularRfTunerHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularRfTunerHistsCount];
    if (kCellularRfTunerHistsCount)
    {
      v37 = kCellularRfTunerHistsCount;
      for (mm = 0; mm != v37; ++mm)
      {
        v39 = [(AWDMETRICSMetricLogPower *)self kCellularRfTunerHistAtIndex:mm];
        [toCopy addKCellularRfTunerHist:v39];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteCaConfigActivateStatsCount])
  {
    [toCopy clearKCellularPowerLogLteCaConfigActivateStats];
    kCellularPowerLogLteCaConfigActivateStatsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteCaConfigActivateStatsCount];
    if (kCellularPowerLogLteCaConfigActivateStatsCount)
    {
      v41 = kCellularPowerLogLteCaConfigActivateStatsCount;
      for (nn = 0; nn != v41; ++nn)
      {
        v43 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteCaConfigActivateStatsAtIndex:nn];
        [toCopy addKCellularPowerLogLteCaConfigActivateStats:v43];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteCarrierComponentInfosCount])
  {
    [toCopy clearKCellularPowerLogLteCarrierComponentInfos];
    kCellularPowerLogLteCarrierComponentInfosCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteCarrierComponentInfosCount];
    if (kCellularPowerLogLteCarrierComponentInfosCount)
    {
      v45 = kCellularPowerLogLteCarrierComponentInfosCount;
      for (i1 = 0; i1 != v45; ++i1)
      {
        v47 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteCarrierComponentInfoAtIndex:i1];
        [toCopy addKCellularPowerLogLteCarrierComponentInfo:v47];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogLTEAggregatedDLTBSsCount])
  {
    [toCopy clearKCellularPowerLogLTEAggregatedDLTBSs];
    kCellularPowerLogLTEAggregatedDLTBSsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLTEAggregatedDLTBSsCount];
    if (kCellularPowerLogLTEAggregatedDLTBSsCount)
    {
      v49 = kCellularPowerLogLTEAggregatedDLTBSsCount;
      for (i2 = 0; i2 != v49; ++i2)
      {
        v51 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLTEAggregatedDLTBSAtIndex:i2];
        [toCopy addKCellularPowerLogLTEAggregatedDLTBS:v51];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogPowerEstimatorsCount])
  {
    [toCopy clearKCellularPowerLogPowerEstimators];
    kCellularPowerLogPowerEstimatorsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogPowerEstimatorsCount];
    if (kCellularPowerLogPowerEstimatorsCount)
    {
      v53 = kCellularPowerLogPowerEstimatorsCount;
      for (i3 = 0; i3 != v53; ++i3)
      {
        v55 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogPowerEstimatorAtIndex:i3];
        [toCopy addKCellularPowerLogPowerEstimator:v55];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogProtocolStatesCount])
  {
    [toCopy clearKCellularPowerLogProtocolStates];
    kCellularPowerLogProtocolStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogProtocolStatesCount];
    if (kCellularPowerLogProtocolStatesCount)
    {
      v57 = kCellularPowerLogProtocolStatesCount;
      for (i4 = 0; i4 != v57; ++i4)
      {
        v59 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogProtocolStateAtIndex:i4];
        [toCopy addKCellularPowerLogProtocolState:v59];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogPLMNSearchsCount])
  {
    [toCopy clearKCellularPowerLogPLMNSearchs];
    kCellularPowerLogPLMNSearchsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogPLMNSearchsCount];
    if (kCellularPowerLogPLMNSearchsCount)
    {
      v61 = kCellularPowerLogPLMNSearchsCount;
      for (i5 = 0; i5 != v61; ++i5)
      {
        v63 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogPLMNSearchAtIndex:i5];
        [toCopy addKCellularPowerLogPLMNSearch:v63];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogGSMRABModesCount])
  {
    [toCopy clearKCellularPowerLogGSMRABModes];
    kCellularPowerLogGSMRABModesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogGSMRABModesCount];
    if (kCellularPowerLogGSMRABModesCount)
    {
      v65 = kCellularPowerLogGSMRABModesCount;
      for (i6 = 0; i6 != v65; ++i6)
      {
        v67 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogGSMRABModeAtIndex:i6];
        [toCopy addKCellularPowerLogGSMRABMode:v67];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSCGRelsCount])
  {
    [toCopy clearKCellularPowerLogNRSCGRels];
    kCellularPowerLogNRSCGRelsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSCGRelsCount];
    if (kCellularPowerLogNRSCGRelsCount)
    {
      v69 = kCellularPowerLogNRSCGRelsCount;
      for (i7 = 0; i7 != v69; ++i7)
      {
        v71 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSCGRelAtIndex:i7];
        [toCopy addKCellularPowerLogNRSCGRel:v71];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogWCDMACDRXConfigsCount])
  {
    [toCopy clearKCellularPowerLogWCDMACDRXConfigs];
    kCellularPowerLogWCDMACDRXConfigsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogWCDMACDRXConfigsCount];
    if (kCellularPowerLogWCDMACDRXConfigsCount)
    {
      v73 = kCellularPowerLogWCDMACDRXConfigsCount;
      for (i8 = 0; i8 != v73; ++i8)
      {
        v75 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogWCDMACDRXConfigAtIndex:i8];
        [toCopy addKCellularPowerLogWCDMACDRXConfig:v75];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogWcdmaRrcStateChangesCount])
  {
    [toCopy clearKCellularPowerLogWcdmaRrcStateChanges];
    kCellularPowerLogWcdmaRrcStateChangesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogWcdmaRrcStateChangesCount];
    if (kCellularPowerLogWcdmaRrcStateChangesCount)
    {
      v77 = kCellularPowerLogWcdmaRrcStateChangesCount;
      for (i9 = 0; i9 != v77; ++i9)
      {
        v79 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogWcdmaRrcStateChangeAtIndex:i9];
        [toCopy addKCellularPowerLogWcdmaRrcStateChange:v79];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteRrcStateChangesCount])
  {
    [toCopy clearKCellularPowerLogLteRrcStateChanges];
    kCellularPowerLogLteRrcStateChangesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteRrcStateChangesCount];
    if (kCellularPowerLogLteRrcStateChangesCount)
    {
      v81 = kCellularPowerLogLteRrcStateChangesCount;
      for (i10 = 0; i10 != v81; ++i10)
      {
        v83 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteRrcStateChangeAtIndex:i10];
        [toCopy addKCellularPowerLogLteRrcStateChange:v83];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogSystemEventsCount])
  {
    [toCopy clearKCellularPowerLogSystemEvents];
    kCellularPowerLogSystemEventsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSystemEventsCount];
    if (kCellularPowerLogSystemEventsCount)
    {
      v85 = kCellularPowerLogSystemEventsCount;
      for (i11 = 0; i11 != v85; ++i11)
      {
        v87 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSystemEventAtIndex:i11];
        [toCopy addKCellularPowerLogSystemEvent:v87];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogRatReselectionEventsCount])
  {
    [toCopy clearKCellularPowerLogRatReselectionEvents];
    kCellularPowerLogRatReselectionEventsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogRatReselectionEventsCount];
    if (kCellularPowerLogRatReselectionEventsCount)
    {
      v89 = kCellularPowerLogRatReselectionEventsCount;
      for (i12 = 0; i12 != v89; ++i12)
      {
        v91 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogRatReselectionEventAtIndex:i12];
        [toCopy addKCellularPowerLogRatReselectionEvent:v91];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogRatRedirectionEventsCount])
  {
    [toCopy clearKCellularPowerLogRatRedirectionEvents];
    kCellularPowerLogRatRedirectionEventsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogRatRedirectionEventsCount];
    if (kCellularPowerLogRatRedirectionEventsCount)
    {
      v93 = kCellularPowerLogRatRedirectionEventsCount;
      for (i13 = 0; i13 != v93; ++i13)
      {
        v95 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogRatRedirectionEventAtIndex:i13];
        [toCopy addKCellularPowerLogRatRedirectionEvent:v95];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogGsmRrcStateChangesCount])
  {
    [toCopy clearKCellularPowerLogGsmRrcStateChanges];
    kCellularPowerLogGsmRrcStateChangesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogGsmRrcStateChangesCount];
    if (kCellularPowerLogGsmRrcStateChangesCount)
    {
      v97 = kCellularPowerLogGsmRrcStateChangesCount;
      for (i14 = 0; i14 != v97; ++i14)
      {
        v99 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogGsmRrcStateChangeAtIndex:i14];
        [toCopy addKCellularPowerLogGsmRrcStateChange:v99];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogServiceStatusEventsCount])
  {
    [toCopy clearKCellularPowerLogServiceStatusEvents];
    kCellularPowerLogServiceStatusEventsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogServiceStatusEventsCount];
    if (kCellularPowerLogServiceStatusEventsCount)
    {
      v101 = kCellularPowerLogServiceStatusEventsCount;
      for (i15 = 0; i15 != v101; ++i15)
      {
        v103 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogServiceStatusEventAtIndex:i15];
        [toCopy addKCellularPowerLogServiceStatusEvent:v103];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogPlmnSearchEventsCount])
  {
    [toCopy clearKCellularPowerLogPlmnSearchEvents];
    kCellularPowerLogPlmnSearchEventsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogPlmnSearchEventsCount];
    if (kCellularPowerLogPlmnSearchEventsCount)
    {
      v105 = kCellularPowerLogPlmnSearchEventsCount;
      for (i16 = 0; i16 != v105; ++i16)
      {
        v107 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogPlmnSearchEventAtIndex:i16];
        [toCopy addKCellularPowerLogPlmnSearchEvent:v107];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNrSaRrcStateChangesCount])
  {
    [toCopy clearKCellularPowerLogNrSaRrcStateChanges];
    kCellularPowerLogNrSaRrcStateChangesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNrSaRrcStateChangesCount];
    if (kCellularPowerLogNrSaRrcStateChangesCount)
    {
      v109 = kCellularPowerLogNrSaRrcStateChangesCount;
      for (i17 = 0; i17 != v109; ++i17)
      {
        v111 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNrSaRrcStateChangeAtIndex:i17];
        [toCopy addKCellularPowerLogNrSaRrcStateChange:v111];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRNSAENDCEventsCount])
  {
    [toCopy clearKCellularPowerLogNRNSAENDCEvents];
    kCellularPowerLogNRNSAENDCEventsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRNSAENDCEventsCount];
    if (kCellularPowerLogNRNSAENDCEventsCount)
    {
      v113 = kCellularPowerLogNRNSAENDCEventsCount;
      for (i18 = 0; i18 != v113; ++i18)
      {
        v115 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRNSAENDCEventAtIndex:i18];
        [toCopy addKCellularPowerLogNRNSAENDCEvent:v115];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRCdrxConfigsCount])
  {
    [toCopy clearKCellularPowerLogNRCdrxConfigs];
    kCellularPowerLogNRCdrxConfigsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRCdrxConfigsCount];
    if (kCellularPowerLogNRCdrxConfigsCount)
    {
      v117 = kCellularPowerLogNRCdrxConfigsCount;
      for (i19 = 0; i19 != v117; ++i19)
      {
        v119 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRCdrxConfigAtIndex:i19];
        [toCopy addKCellularPowerLogNRCdrxConfig:v119];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRsub6BWPsCount])
  {
    [toCopy clearKCellularPowerLogNRsub6BWPs];
    kCellularPowerLogNRsub6BWPsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRsub6BWPsCount];
    if (kCellularPowerLogNRsub6BWPsCount)
    {
      v121 = kCellularPowerLogNRsub6BWPsCount;
      for (i20 = 0; i20 != v121; ++i20)
      {
        v123 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRsub6BWPAtIndex:i20];
        [toCopy addKCellularPowerLogNRsub6BWP:v123];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNrCaConfigActivateStatsCount])
  {
    [toCopy clearKCellularPowerLogNrCaConfigActivateStats];
    kCellularPowerLogNrCaConfigActivateStatsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNrCaConfigActivateStatsCount];
    if (kCellularPowerLogNrCaConfigActivateStatsCount)
    {
      v125 = kCellularPowerLogNrCaConfigActivateStatsCount;
      for (i21 = 0; i21 != v125; ++i21)
      {
        v127 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNrCaConfigActivateStatsAtIndex:i21];
        [toCopy addKCellularPowerLogNrCaConfigActivateStats:v127];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRCarrierComponentInfosCount])
  {
    [toCopy clearKCellularPowerLogNRCarrierComponentInfos];
    kCellularPowerLogNRCarrierComponentInfosCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRCarrierComponentInfosCount];
    if (kCellularPowerLogNRCarrierComponentInfosCount)
    {
      v129 = kCellularPowerLogNRCarrierComponentInfosCount;
      for (i22 = 0; i22 != v129; ++i22)
      {
        v131 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRCarrierComponentInfoAtIndex:i22];
        [toCopy addKCellularPowerLogNRCarrierComponentInfo:v131];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRsub6DLTBSsCount])
  {
    [toCopy clearKCellularPowerLogNRsub6DLTBSs];
    kCellularPowerLogNRsub6DLTBSsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRsub6DLTBSsCount];
    if (kCellularPowerLogNRsub6DLTBSsCount)
    {
      v133 = kCellularPowerLogNRsub6DLTBSsCount;
      for (i23 = 0; i23 != v133; ++i23)
      {
        v135 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRsub6DLTBSAtIndex:i23];
        [toCopy addKCellularPowerLogNRsub6DLTBS:v135];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSub6RSRPsCount])
  {
    [toCopy clearKCellularPowerLogNRSub6RSRPs];
    kCellularPowerLogNRSub6RSRPsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSub6RSRPsCount];
    if (kCellularPowerLogNRSub6RSRPsCount)
    {
      v137 = kCellularPowerLogNRSub6RSRPsCount;
      for (i24 = 0; i24 != v137; ++i24)
      {
        v139 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSub6RSRPAtIndex:i24];
        [toCopy addKCellularPowerLogNRSub6RSRP:v139];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSub6SINRsCount])
  {
    [toCopy clearKCellularPowerLogNRSub6SINRs];
    kCellularPowerLogNRSub6SINRsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSub6SINRsCount];
    if (kCellularPowerLogNRSub6SINRsCount)
    {
      v141 = kCellularPowerLogNRSub6SINRsCount;
      for (i25 = 0; i25 != v141; ++i25)
      {
        v143 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogNRSub6SINRAtIndex:i25];
        [toCopy addKCellularPowerLogNRSub6SINR:v143];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrRxDiversityHistsCount])
  {
    [toCopy clearKCellularPowerLogLteNrRxDiversityHists];
    kCellularPowerLogLteNrRxDiversityHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrRxDiversityHistsCount];
    if (kCellularPowerLogLteNrRxDiversityHistsCount)
    {
      v145 = kCellularPowerLogLteNrRxDiversityHistsCount;
      for (i26 = 0; i26 != v145; ++i26)
      {
        v147 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrRxDiversityHistAtIndex:i26];
        [toCopy addKCellularPowerLogLteNrRxDiversityHist:v147];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrTxPowerHistsCount])
  {
    [toCopy clearKCellularPowerLogLteNrTxPowerHists];
    kCellularPowerLogLteNrTxPowerHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrTxPowerHistsCount];
    if (kCellularPowerLogLteNrTxPowerHistsCount)
    {
      v149 = kCellularPowerLogLteNrTxPowerHistsCount;
      for (i27 = 0; i27 != v149; ++i27)
      {
        v151 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrTxPowerHistAtIndex:i27];
        [toCopy addKCellularPowerLogLteNrTxPowerHist:v151];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrRxTxActivityStatsCount])
  {
    [toCopy clearKCellularPowerLogLteNrRxTxActivityStats];
    kCellularPowerLogLteNrRxTxActivityStatsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrRxTxActivityStatsCount];
    if (kCellularPowerLogLteNrRxTxActivityStatsCount)
    {
      v153 = kCellularPowerLogLteNrRxTxActivityStatsCount;
      for (i28 = 0; i28 != v153; ++i28)
      {
        v155 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogLteNrRxTxActivityStatsAtIndex:i28];
        [toCopy addKCellularPowerLogLteNrRxTxActivityStats:v155];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogSFTStatesCount])
  {
    [toCopy clearKCellularPowerLogSFTStates];
    kCellularPowerLogSFTStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSFTStatesCount];
    if (kCellularPowerLogSFTStatesCount)
    {
      v157 = kCellularPowerLogSFTStatesCount;
      for (i29 = 0; i29 != v157; ++i29)
      {
        v159 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSFTStateAtIndex:i29];
        [toCopy addKCellularPowerLogSFTState:v159];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogSFTRxTxsCount])
  {
    [toCopy clearKCellularPowerLogSFTRxTxs];
    kCellularPowerLogSFTRxTxsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSFTRxTxsCount];
    if (kCellularPowerLogSFTRxTxsCount)
    {
      v161 = kCellularPowerLogSFTRxTxsCount;
      for (i30 = 0; i30 != v161; ++i30)
      {
        v163 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSFTRxTxAtIndex:i30];
        [toCopy addKCellularPowerLogSFTRxTx:v163];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogXOShutdownsCount])
  {
    [toCopy clearKCellularPowerLogXOShutdowns];
    kCellularPowerLogXOShutdownsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogXOShutdownsCount];
    if (kCellularPowerLogXOShutdownsCount)
    {
      v165 = kCellularPowerLogXOShutdownsCount;
      for (i31 = 0; i31 != v165; ++i31)
      {
        v167 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogXOShutdownAtIndex:i31];
        [toCopy addKCellularPowerLogXOShutdown:v167];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogCpuPerfLevelsCount])
  {
    [toCopy clearKCellularPowerLogCpuPerfLevels];
    kCellularPowerLogCpuPerfLevelsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCpuPerfLevelsCount];
    if (kCellularPowerLogCpuPerfLevelsCount)
    {
      v169 = kCellularPowerLogCpuPerfLevelsCount;
      for (i32 = 0; i32 != v169; ++i32)
      {
        v171 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCpuPerfLevelsAtIndex:i32];
        [toCopy addKCellularPowerLogCpuPerfLevels:v171];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogSocPerfLevelsCount])
  {
    [toCopy clearKCellularPowerLogSocPerfLevels];
    kCellularPowerLogSocPerfLevelsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSocPerfLevelsCount];
    if (kCellularPowerLogSocPerfLevelsCount)
    {
      v173 = kCellularPowerLogSocPerfLevelsCount;
      for (i33 = 0; i33 != v173; ++i33)
      {
        v175 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSocPerfLevelsAtIndex:i33];
        [toCopy addKCellularPowerLogSocPerfLevels:v175];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogAcmPerfLevelsCount])
  {
    [toCopy clearKCellularPowerLogAcmPerfLevels];
    kCellularPowerLogAcmPerfLevelsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogAcmPerfLevelsCount];
    if (kCellularPowerLogAcmPerfLevelsCount)
    {
      v177 = kCellularPowerLogAcmPerfLevelsCount;
      for (i34 = 0; i34 != v177; ++i34)
      {
        v179 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogAcmPerfLevelsAtIndex:i34];
        [toCopy addKCellularPowerLogAcmPerfLevels:v179];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogCpsSleepStatesCount])
  {
    [toCopy clearKCellularPowerLogCpsSleepStates];
    kCellularPowerLogCpsSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCpsSleepStatesCount];
    if (kCellularPowerLogCpsSleepStatesCount)
    {
      v181 = kCellularPowerLogCpsSleepStatesCount;
      for (i35 = 0; i35 != v181; ++i35)
      {
        v183 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCpsSleepStatesAtIndex:i35];
        [toCopy addKCellularPowerLogCpsSleepStates:v183];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpDSleepStatesCount])
  {
    [toCopy clearKCellularPowerLogCdpDSleepStates];
    kCellularPowerLogCdpDSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpDSleepStatesCount];
    if (kCellularPowerLogCdpDSleepStatesCount)
    {
      v185 = kCellularPowerLogCdpDSleepStatesCount;
      for (i36 = 0; i36 != v185; ++i36)
      {
        v187 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpDSleepStatesAtIndex:i36];
        [toCopy addKCellularPowerLogCdpDSleepStates:v187];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpUSleepStatesCount])
  {
    [toCopy clearKCellularPowerLogCdpUSleepStates];
    kCellularPowerLogCdpUSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpUSleepStatesCount];
    if (kCellularPowerLogCdpUSleepStatesCount)
    {
      v189 = kCellularPowerLogCdpUSleepStatesCount;
      for (i37 = 0; i37 != v189; ++i37)
      {
        v191 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpUSleepStatesAtIndex:i37];
        [toCopy addKCellularPowerLogCdpUSleepStates:v191];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpHSleepStatesCount])
  {
    [toCopy clearKCellularPowerLogCdpHSleepStates];
    kCellularPowerLogCdpHSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpHSleepStatesCount];
    if (kCellularPowerLogCdpHSleepStatesCount)
    {
      v193 = kCellularPowerLogCdpHSleepStatesCount;
      for (i38 = 0; i38 != v193; ++i38)
      {
        v195 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogCdpHSleepStatesAtIndex:i38];
        [toCopy addKCellularPowerLogCdpHSleepStates:v195];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogL1CSleepStatesCount])
  {
    [toCopy clearKCellularPowerLogL1CSleepStates];
    kCellularPowerLogL1CSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogL1CSleepStatesCount];
    if (kCellularPowerLogL1CSleepStatesCount)
    {
      v197 = kCellularPowerLogL1CSleepStatesCount;
      for (i39 = 0; i39 != v197; ++i39)
      {
        v199 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogL1CSleepStatesAtIndex:i39];
        [toCopy addKCellularPowerLogL1CSleepStates:v199];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogL1SSleepStatesCount])
  {
    [toCopy clearKCellularPowerLogL1SSleepStates];
    kCellularPowerLogL1SSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogL1SSleepStatesCount];
    if (kCellularPowerLogL1SSleepStatesCount)
    {
      v201 = kCellularPowerLogL1SSleepStatesCount;
      for (i40 = 0; i40 != v201; ++i40)
      {
        v203 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogL1SSleepStatesAtIndex:i40];
        [toCopy addKCellularPowerLogL1SSleepStates:v203];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogDcsSleepStatesCount])
  {
    [toCopy clearKCellularPowerLogDcsSleepStates];
    kCellularPowerLogDcsSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogDcsSleepStatesCount];
    if (kCellularPowerLogDcsSleepStatesCount)
    {
      v205 = kCellularPowerLogDcsSleepStatesCount;
      for (i41 = 0; i41 != v205; ++i41)
      {
        v207 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogDcsSleepStatesAtIndex:i41];
        [toCopy addKCellularPowerLogDcsSleepStates:v207];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLog2g3gSleepStatesCount])
  {
    [toCopy clearKCellularPowerLog2g3gSleepStates];
    kCellularPowerLog2g3gSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLog2g3gSleepStatesCount];
    if (kCellularPowerLog2g3gSleepStatesCount)
    {
      v209 = kCellularPowerLog2g3gSleepStatesCount;
      for (i42 = 0; i42 != v209; ++i42)
      {
        v211 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLog2g3gSleepStatesAtIndex:i42];
        [toCopy addKCellularPowerLog2g3gSleepStates:v211];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogSleepStatesCount])
  {
    [toCopy clearKCellularPowerLogSleepStates];
    kCellularPowerLogSleepStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSleepStatesCount];
    if (kCellularPowerLogSleepStatesCount)
    {
      v213 = kCellularPowerLogSleepStatesCount;
      for (i43 = 0; i43 != v213; ++i43)
      {
        v215 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogSleepStatesAtIndex:i43];
        [toCopy addKCellularPowerLogSleepStates:v215];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPlatformApBbSleepStatsCount])
  {
    [toCopy clearKCellularPlatformApBbSleepStats];
    kCellularPlatformApBbSleepStatsCount = [(AWDMETRICSMetricLogPower *)self kCellularPlatformApBbSleepStatsCount];
    if (kCellularPlatformApBbSleepStatsCount)
    {
      v217 = kCellularPlatformApBbSleepStatsCount;
      for (i44 = 0; i44 != v217; ++i44)
      {
        v219 = [(AWDMETRICSMetricLogPower *)self kCellularPlatformApBbSleepStatsAtIndex:i44];
        [toCopy addKCellularPlatformApBbSleepStats:v219];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogGPSStatesCount])
  {
    [toCopy clearKCellularPowerLogGPSStates];
    kCellularPowerLogGPSStatesCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogGPSStatesCount];
    if (kCellularPowerLogGPSStatesCount)
    {
      v221 = kCellularPowerLogGPSStatesCount;
      for (i45 = 0; i45 != v221; ++i45)
      {
        v223 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogGPSStatesAtIndex:i45];
        [toCopy addKCellularPowerLogGPSStates:v223];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerlogRFSSVoltageLevelsCount])
  {
    [toCopy clearKCellularPowerlogRFSSVoltageLevels];
    kCellularPowerlogRFSSVoltageLevelsCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerlogRFSSVoltageLevelsCount];
    if (kCellularPowerlogRFSSVoltageLevelsCount)
    {
      v225 = kCellularPowerlogRFSSVoltageLevelsCount;
      for (i46 = 0; i46 != v225; ++i46)
      {
        v227 = [(AWDMETRICSMetricLogPower *)self kCellularPowerlogRFSSVoltageLevelsAtIndex:i46];
        [toCopy addKCellularPowerlogRFSSVoltageLevels:v227];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularPowerLogBasebandSleepVetosCount])
  {
    [toCopy clearKCellularPowerLogBasebandSleepVetos];
    kCellularPowerLogBasebandSleepVetosCount = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogBasebandSleepVetosCount];
    if (kCellularPowerLogBasebandSleepVetosCount)
    {
      v229 = kCellularPowerLogBasebandSleepVetosCount;
      for (i47 = 0; i47 != v229; ++i47)
      {
        v231 = [(AWDMETRICSMetricLogPower *)self kCellularPowerLogBasebandSleepVetoAtIndex:i47];
        [toCopy addKCellularPowerLogBasebandSleepVeto:v231];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularAcmSleepStatsCount])
  {
    [toCopy clearKCellularAcmSleepStats];
    kCellularAcmSleepStatsCount = [(AWDMETRICSMetricLogPower *)self kCellularAcmSleepStatsCount];
    if (kCellularAcmSleepStatsCount)
    {
      v233 = kCellularAcmSleepStatsCount;
      for (i48 = 0; i48 != v233; ++i48)
      {
        v235 = [(AWDMETRICSMetricLogPower *)self kCellularAcmSleepStatsAtIndex:i48];
        [toCopy addKCellularAcmSleepStats:v235];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularGsmServingCellRssiHistsCount])
  {
    [toCopy clearKCellularGsmServingCellRssiHists];
    kCellularGsmServingCellRssiHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularGsmServingCellRssiHistsCount];
    if (kCellularGsmServingCellRssiHistsCount)
    {
      v237 = kCellularGsmServingCellRssiHistsCount;
      for (i49 = 0; i49 != v237; ++i49)
      {
        v239 = [(AWDMETRICSMetricLogPower *)self kCellularGsmServingCellRssiHistAtIndex:i49];
        [toCopy addKCellularGsmServingCellRssiHist:v239];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularGsmTxPowerHistsCount])
  {
    [toCopy clearKCellularGsmTxPowerHists];
    kCellularGsmTxPowerHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularGsmTxPowerHistsCount];
    if (kCellularGsmTxPowerHistsCount)
    {
      v241 = kCellularGsmTxPowerHistsCount;
      for (i50 = 0; i50 != v241; ++i50)
      {
        v243 = [(AWDMETRICSMetricLogPower *)self kCellularGsmTxPowerHistAtIndex:i50];
        [toCopy addKCellularGsmTxPowerHist:v243];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularWcdmaRxDiversityHistsCount])
  {
    [toCopy clearKCellularWcdmaRxDiversityHists];
    kCellularWcdmaRxDiversityHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaRxDiversityHistsCount];
    if (kCellularWcdmaRxDiversityHistsCount)
    {
      v245 = kCellularWcdmaRxDiversityHistsCount;
      for (i51 = 0; i51 != v245; ++i51)
      {
        v247 = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaRxDiversityHistAtIndex:i51];
        [toCopy addKCellularWcdmaRxDiversityHist:v247];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularWcdmaServingCellRx0RssiHistsCount])
  {
    [toCopy clearKCellularWcdmaServingCellRx0RssiHists];
    kCellularWcdmaServingCellRx0RssiHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaServingCellRx0RssiHistsCount];
    if (kCellularWcdmaServingCellRx0RssiHistsCount)
    {
      v249 = kCellularWcdmaServingCellRx0RssiHistsCount;
      for (i52 = 0; i52 != v249; ++i52)
      {
        v251 = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaServingCellRx0RssiHistAtIndex:i52];
        [toCopy addKCellularWcdmaServingCellRx0RssiHist:v251];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularWcdmaServingCellRx1RssiHistsCount])
  {
    [toCopy clearKCellularWcdmaServingCellRx1RssiHists];
    kCellularWcdmaServingCellRx1RssiHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaServingCellRx1RssiHistsCount];
    if (kCellularWcdmaServingCellRx1RssiHistsCount)
    {
      v253 = kCellularWcdmaServingCellRx1RssiHistsCount;
      for (i53 = 0; i53 != v253; ++i53)
      {
        v255 = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaServingCellRx1RssiHistAtIndex:i53];
        [toCopy addKCellularWcdmaServingCellRx1RssiHist:v255];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularWcdmaTxPowerHistsCount])
  {
    [toCopy clearKCellularWcdmaTxPowerHists];
    kCellularWcdmaTxPowerHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaTxPowerHistsCount];
    if (kCellularWcdmaTxPowerHistsCount)
    {
      v257 = kCellularWcdmaTxPowerHistsCount;
      for (i54 = 0; i54 != v257; ++i54)
      {
        v259 = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaTxPowerHistAtIndex:i54];
        [toCopy addKCellularWcdmaTxPowerHist:v259];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularWcdmaRabModeHistsCount])
  {
    [toCopy clearKCellularWcdmaRabModeHists];
    kCellularWcdmaRabModeHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaRabModeHistsCount];
    if (kCellularWcdmaRabModeHistsCount)
    {
      v261 = kCellularWcdmaRabModeHistsCount;
      for (i55 = 0; i55 != v261; ++i55)
      {
        v263 = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaRabModeHistAtIndex:i55];
        [toCopy addKCellularWcdmaRabModeHist:v263];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularWcdmaPsRabTypeHistsCount])
  {
    [toCopy clearKCellularWcdmaPsRabTypeHists];
    kCellularWcdmaPsRabTypeHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaPsRabTypeHistsCount];
    if (kCellularWcdmaPsRabTypeHistsCount)
    {
      v265 = kCellularWcdmaPsRabTypeHistsCount;
      for (i56 = 0; i56 != v265; ++i56)
      {
        v267 = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaPsRabTypeHistAtIndex:i56];
        [toCopy addKCellularWcdmaPsRabTypeHist:v267];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularWcdmaDataInactivityBeforeIdlesCount])
  {
    [toCopy clearKCellularWcdmaDataInactivityBeforeIdles];
    kCellularWcdmaDataInactivityBeforeIdlesCount = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaDataInactivityBeforeIdlesCount];
    if (kCellularWcdmaDataInactivityBeforeIdlesCount)
    {
      v269 = kCellularWcdmaDataInactivityBeforeIdlesCount;
      for (i57 = 0; i57 != v269; ++i57)
      {
        v271 = [(AWDMETRICSMetricLogPower *)self kCellularWcdmaDataInactivityBeforeIdleAtIndex:i57];
        [toCopy addKCellularWcdmaDataInactivityBeforeIdle:v271];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularLteServingCellRsrpHistsCount])
  {
    [toCopy clearKCellularLteServingCellRsrpHists];
    kCellularLteServingCellRsrpHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularLteServingCellRsrpHistsCount];
    if (kCellularLteServingCellRsrpHistsCount)
    {
      v273 = kCellularLteServingCellRsrpHistsCount;
      for (i58 = 0; i58 != v273; ++i58)
      {
        v275 = [(AWDMETRICSMetricLogPower *)self kCellularLteServingCellRsrpHistAtIndex:i58];
        [toCopy addKCellularLteServingCellRsrpHist:v275];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularLteServingCellSinrHistsCount])
  {
    [toCopy clearKCellularLteServingCellSinrHists];
    kCellularLteServingCellSinrHistsCount = [(AWDMETRICSMetricLogPower *)self kCellularLteServingCellSinrHistsCount];
    if (kCellularLteServingCellSinrHistsCount)
    {
      v277 = kCellularLteServingCellSinrHistsCount;
      for (i59 = 0; i59 != v277; ++i59)
      {
        v279 = [(AWDMETRICSMetricLogPower *)self kCellularLteServingCellSinrHistAtIndex:i59];
        [toCopy addKCellularLteServingCellSinrHist:v279];
      }
    }
  }

  if ([(AWDMETRICSMetricLogPower *)self kCellularLteDataInactivityBeforeIdlesCount])
  {
    [toCopy clearKCellularLteDataInactivityBeforeIdles];
    kCellularLteDataInactivityBeforeIdlesCount = [(AWDMETRICSMetricLogPower *)self kCellularLteDataInactivityBeforeIdlesCount];
    if (kCellularLteDataInactivityBeforeIdlesCount)
    {
      v281 = kCellularLteDataInactivityBeforeIdlesCount;
      for (i60 = 0; i60 != v281; ++i60)
      {
        v283 = [(AWDMETRICSMetricLogPower *)self kCellularLteDataInactivityBeforeIdleAtIndex:i60];
        [toCopy addKCellularLteDataInactivityBeforeIdle:v283];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v779 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v705 = 0u;
  v706 = 0u;
  v707 = 0u;
  v708 = 0u;
  v6 = self->_kCellularPerClientProfileTriggerCounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v705 objects:v778 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v706;
    do
    {
      v10 = 0;
      do
      {
        if (*v706 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v705 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addKCellularPerClientProfileTriggerCount:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v705 objects:v778 count:16];
    }

    while (v8);
  }

  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v12 = self->_kCellularPowerLogWcdmaPagingDRXCycles;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v701 objects:v777 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v702;
    do
    {
      v16 = 0;
      do
      {
        if (*v702 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v701 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addKCellularPowerLogWcdmaPagingDRXCycle:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v701 objects:v777 count:16];
    }

    while (v14);
  }

  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v18 = self->_kCellularLtePagingCycles;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v697 objects:v776 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v698;
    do
    {
      v22 = 0;
      do
      {
        if (*v698 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v697 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addKCellularLtePagingCycle:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v697 objects:v776 count:16];
    }

    while (v20);
  }

  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v24 = self->_kCellularPowerLogNRPagingDRXCycles;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v693 objects:v775 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v694;
    do
    {
      v28 = 0;
      do
      {
        if (*v694 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v693 + 1) + 8 * v28) copyWithZone:zone];
        [v5 addKCellularPowerLogNRPagingDRXCycle:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v693 objects:v775 count:16];
    }

    while (v26);
  }

  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v30 = self->_kCellularLteCdrxConfigs;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v689 objects:v774 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v690;
    do
    {
      v34 = 0;
      do
      {
        if (*v690 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v689 + 1) + 8 * v34) copyWithZone:zone];
        [v5 addKCellularLteCdrxConfig:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v689 objects:v774 count:16];
    }

    while (v32);
  }

  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v36 = self->_kCellularNrSDMActivations;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v685 objects:v773 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v686;
    do
    {
      v40 = 0;
      do
      {
        if (*v686 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v685 + 1) + 8 * v40) copyWithZone:zone];
        [v5 addKCellularNrSDMActivation:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v685 objects:v773 count:16];
    }

    while (v38);
  }

  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v42 = self->_kCellularNrSdmEndcReleases;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v681 objects:v772 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v682;
    do
    {
      v46 = 0;
      do
      {
        if (*v682 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v681 + 1) + 8 * v46) copyWithZone:zone];
        [v5 addKCellularNrSdmEndcRelease:v47];

        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v681 objects:v772 count:16];
    }

    while (v44);
  }

  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v48 = self->_kCellularNrDataInactivityBeforeIdles;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v677 objects:v771 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v678;
    do
    {
      v52 = 0;
      do
      {
        if (*v678 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v677 + 1) + 8 * v52) copyWithZone:zone];
        [v5 addKCellularNrDataInactivityBeforeIdle:v53];

        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v677 objects:v771 count:16];
    }

    while (v50);
  }

  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v54 = self->_kCellularRfTunerHists;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v673 objects:v770 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v674;
    do
    {
      v58 = 0;
      do
      {
        if (*v674 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v673 + 1) + 8 * v58) copyWithZone:zone];
        [v5 addKCellularRfTunerHist:v59];

        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v673 objects:v770 count:16];
    }

    while (v56);
  }

  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v60 = self->_kCellularPowerLogLteCaConfigActivateStats;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v669 objects:v769 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v670;
    do
    {
      v64 = 0;
      do
      {
        if (*v670 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v669 + 1) + 8 * v64) copyWithZone:zone];
        [v5 addKCellularPowerLogLteCaConfigActivateStats:v65];

        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v669 objects:v769 count:16];
    }

    while (v62);
  }

  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v66 = self->_kCellularPowerLogLteCarrierComponentInfos;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v665 objects:v768 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v666;
    do
    {
      v70 = 0;
      do
      {
        if (*v666 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = [*(*(&v665 + 1) + 8 * v70) copyWithZone:zone];
        [v5 addKCellularPowerLogLteCarrierComponentInfo:v71];

        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v665 objects:v768 count:16];
    }

    while (v68);
  }

  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v72 = self->_kCellularPowerLogLTEAggregatedDLTBSs;
  v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v661 objects:v767 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v662;
    do
    {
      v76 = 0;
      do
      {
        if (*v662 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = [*(*(&v661 + 1) + 8 * v76) copyWithZone:zone];
        [v5 addKCellularPowerLogLTEAggregatedDLTBS:v77];

        ++v76;
      }

      while (v74 != v76);
      v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v661 objects:v767 count:16];
    }

    while (v74);
  }

  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v78 = self->_kCellularPowerLogPowerEstimators;
  v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v657 objects:v766 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v658;
    do
    {
      v82 = 0;
      do
      {
        if (*v658 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = [*(*(&v657 + 1) + 8 * v82) copyWithZone:zone];
        [v5 addKCellularPowerLogPowerEstimator:v83];

        ++v82;
      }

      while (v80 != v82);
      v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v657 objects:v766 count:16];
    }

    while (v80);
  }

  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v84 = self->_kCellularPowerLogProtocolStates;
  v85 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v653 objects:v765 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v654;
    do
    {
      v88 = 0;
      do
      {
        if (*v654 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = [*(*(&v653 + 1) + 8 * v88) copyWithZone:zone];
        [v5 addKCellularPowerLogProtocolState:v89];

        ++v88;
      }

      while (v86 != v88);
      v86 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v653 objects:v765 count:16];
    }

    while (v86);
  }

  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v90 = self->_kCellularPowerLogPLMNSearchs;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v649 objects:v764 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v650;
    do
    {
      v94 = 0;
      do
      {
        if (*v650 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = [*(*(&v649 + 1) + 8 * v94) copyWithZone:zone];
        [v5 addKCellularPowerLogPLMNSearch:v95];

        ++v94;
      }

      while (v92 != v94);
      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v649 objects:v764 count:16];
    }

    while (v92);
  }

  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v96 = self->_kCellularPowerLogGSMRABModes;
  v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v645 objects:v763 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v646;
    do
    {
      v100 = 0;
      do
      {
        if (*v646 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = [*(*(&v645 + 1) + 8 * v100) copyWithZone:zone];
        [v5 addKCellularPowerLogGSMRABMode:v101];

        ++v100;
      }

      while (v98 != v100);
      v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v645 objects:v763 count:16];
    }

    while (v98);
  }

  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v102 = self->_kCellularPowerLogNRSCGRels;
  v103 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v641 objects:v762 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v642;
    do
    {
      v106 = 0;
      do
      {
        if (*v642 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v107 = [*(*(&v641 + 1) + 8 * v106) copyWithZone:zone];
        [v5 addKCellularPowerLogNRSCGRel:v107];

        ++v106;
      }

      while (v104 != v106);
      v104 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v641 objects:v762 count:16];
    }

    while (v104);
  }

  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v108 = self->_kCellularPowerLogWCDMACDRXConfigs;
  v109 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v637 objects:v761 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v638;
    do
    {
      v112 = 0;
      do
      {
        if (*v638 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = [*(*(&v637 + 1) + 8 * v112) copyWithZone:zone];
        [v5 addKCellularPowerLogWCDMACDRXConfig:v113];

        ++v112;
      }

      while (v110 != v112);
      v110 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v637 objects:v761 count:16];
    }

    while (v110);
  }

  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v114 = self->_kCellularPowerLogWcdmaRrcStateChanges;
  v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v633 objects:v760 count:16];
  if (v115)
  {
    v116 = v115;
    v117 = *v634;
    do
    {
      v118 = 0;
      do
      {
        if (*v634 != v117)
        {
          objc_enumerationMutation(v114);
        }

        v119 = [*(*(&v633 + 1) + 8 * v118) copyWithZone:zone];
        [v5 addKCellularPowerLogWcdmaRrcStateChange:v119];

        ++v118;
      }

      while (v116 != v118);
      v116 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v633 objects:v760 count:16];
    }

    while (v116);
  }

  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v120 = self->_kCellularPowerLogLteRrcStateChanges;
  v121 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v629 objects:v759 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v630;
    do
    {
      v124 = 0;
      do
      {
        if (*v630 != v123)
        {
          objc_enumerationMutation(v120);
        }

        v125 = [*(*(&v629 + 1) + 8 * v124) copyWithZone:zone];
        [v5 addKCellularPowerLogLteRrcStateChange:v125];

        ++v124;
      }

      while (v122 != v124);
      v122 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v629 objects:v759 count:16];
    }

    while (v122);
  }

  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v126 = self->_kCellularPowerLogSystemEvents;
  v127 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v625 objects:v758 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v626;
    do
    {
      v130 = 0;
      do
      {
        if (*v626 != v129)
        {
          objc_enumerationMutation(v126);
        }

        v131 = [*(*(&v625 + 1) + 8 * v130) copyWithZone:zone];
        [v5 addKCellularPowerLogSystemEvent:v131];

        ++v130;
      }

      while (v128 != v130);
      v128 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v625 objects:v758 count:16];
    }

    while (v128);
  }

  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v132 = self->_kCellularPowerLogRatReselectionEvents;
  v133 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v621 objects:v757 count:16];
  if (v133)
  {
    v134 = v133;
    v135 = *v622;
    do
    {
      v136 = 0;
      do
      {
        if (*v622 != v135)
        {
          objc_enumerationMutation(v132);
        }

        v137 = [*(*(&v621 + 1) + 8 * v136) copyWithZone:zone];
        [v5 addKCellularPowerLogRatReselectionEvent:v137];

        ++v136;
      }

      while (v134 != v136);
      v134 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v621 objects:v757 count:16];
    }

    while (v134);
  }

  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v138 = self->_kCellularPowerLogRatRedirectionEvents;
  v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v617 objects:v756 count:16];
  if (v139)
  {
    v140 = v139;
    v141 = *v618;
    do
    {
      v142 = 0;
      do
      {
        if (*v618 != v141)
        {
          objc_enumerationMutation(v138);
        }

        v143 = [*(*(&v617 + 1) + 8 * v142) copyWithZone:zone];
        [v5 addKCellularPowerLogRatRedirectionEvent:v143];

        ++v142;
      }

      while (v140 != v142);
      v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v617 objects:v756 count:16];
    }

    while (v140);
  }

  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v144 = self->_kCellularPowerLogGsmRrcStateChanges;
  v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v613 objects:v755 count:16];
  if (v145)
  {
    v146 = v145;
    v147 = *v614;
    do
    {
      v148 = 0;
      do
      {
        if (*v614 != v147)
        {
          objc_enumerationMutation(v144);
        }

        v149 = [*(*(&v613 + 1) + 8 * v148) copyWithZone:zone];
        [v5 addKCellularPowerLogGsmRrcStateChange:v149];

        ++v148;
      }

      while (v146 != v148);
      v146 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v613 objects:v755 count:16];
    }

    while (v146);
  }

  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v150 = self->_kCellularPowerLogServiceStatusEvents;
  v151 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v609 objects:v754 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v610;
    do
    {
      v154 = 0;
      do
      {
        if (*v610 != v153)
        {
          objc_enumerationMutation(v150);
        }

        v155 = [*(*(&v609 + 1) + 8 * v154) copyWithZone:zone];
        [v5 addKCellularPowerLogServiceStatusEvent:v155];

        ++v154;
      }

      while (v152 != v154);
      v152 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v609 objects:v754 count:16];
    }

    while (v152);
  }

  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v156 = self->_kCellularPowerLogPlmnSearchEvents;
  v157 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v605 objects:v753 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v606;
    do
    {
      v160 = 0;
      do
      {
        if (*v606 != v159)
        {
          objc_enumerationMutation(v156);
        }

        v161 = [*(*(&v605 + 1) + 8 * v160) copyWithZone:zone];
        [v5 addKCellularPowerLogPlmnSearchEvent:v161];

        ++v160;
      }

      while (v158 != v160);
      v158 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v605 objects:v753 count:16];
    }

    while (v158);
  }

  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v162 = self->_kCellularPowerLogNrSaRrcStateChanges;
  v163 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v601 objects:v752 count:16];
  if (v163)
  {
    v164 = v163;
    v165 = *v602;
    do
    {
      v166 = 0;
      do
      {
        if (*v602 != v165)
        {
          objc_enumerationMutation(v162);
        }

        v167 = [*(*(&v601 + 1) + 8 * v166) copyWithZone:zone];
        [v5 addKCellularPowerLogNrSaRrcStateChange:v167];

        ++v166;
      }

      while (v164 != v166);
      v164 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v601 objects:v752 count:16];
    }

    while (v164);
  }

  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v168 = self->_kCellularPowerLogNRNSAENDCEvents;
  v169 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v597 objects:v751 count:16];
  if (v169)
  {
    v170 = v169;
    v171 = *v598;
    do
    {
      v172 = 0;
      do
      {
        if (*v598 != v171)
        {
          objc_enumerationMutation(v168);
        }

        v173 = [*(*(&v597 + 1) + 8 * v172) copyWithZone:zone];
        [v5 addKCellularPowerLogNRNSAENDCEvent:v173];

        ++v172;
      }

      while (v170 != v172);
      v170 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v597 objects:v751 count:16];
    }

    while (v170);
  }

  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  v174 = self->_kCellularPowerLogNRCdrxConfigs;
  v175 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v593 objects:v750 count:16];
  if (v175)
  {
    v176 = v175;
    v177 = *v594;
    do
    {
      v178 = 0;
      do
      {
        if (*v594 != v177)
        {
          objc_enumerationMutation(v174);
        }

        v179 = [*(*(&v593 + 1) + 8 * v178) copyWithZone:zone];
        [v5 addKCellularPowerLogNRCdrxConfig:v179];

        ++v178;
      }

      while (v176 != v178);
      v176 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v593 objects:v750 count:16];
    }

    while (v176);
  }

  v592 = 0u;
  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  v180 = self->_kCellularPowerLogNRsub6BWPs;
  v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v589 objects:v749 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v590;
    do
    {
      v184 = 0;
      do
      {
        if (*v590 != v183)
        {
          objc_enumerationMutation(v180);
        }

        v185 = [*(*(&v589 + 1) + 8 * v184) copyWithZone:zone];
        [v5 addKCellularPowerLogNRsub6BWP:v185];

        ++v184;
      }

      while (v182 != v184);
      v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v589 objects:v749 count:16];
    }

    while (v182);
  }

  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  v585 = 0u;
  v186 = self->_kCellularPowerLogNrCaConfigActivateStats;
  v187 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v585 objects:v748 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v586;
    do
    {
      v190 = 0;
      do
      {
        if (*v586 != v189)
        {
          objc_enumerationMutation(v186);
        }

        v191 = [*(*(&v585 + 1) + 8 * v190) copyWithZone:zone];
        [v5 addKCellularPowerLogNrCaConfigActivateStats:v191];

        ++v190;
      }

      while (v188 != v190);
      v188 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v585 objects:v748 count:16];
    }

    while (v188);
  }

  v584 = 0u;
  v583 = 0u;
  v582 = 0u;
  v581 = 0u;
  v192 = self->_kCellularPowerLogNRCarrierComponentInfos;
  v193 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v581 objects:v747 count:16];
  if (v193)
  {
    v194 = v193;
    v195 = *v582;
    do
    {
      v196 = 0;
      do
      {
        if (*v582 != v195)
        {
          objc_enumerationMutation(v192);
        }

        v197 = [*(*(&v581 + 1) + 8 * v196) copyWithZone:zone];
        [v5 addKCellularPowerLogNRCarrierComponentInfo:v197];

        ++v196;
      }

      while (v194 != v196);
      v194 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v581 objects:v747 count:16];
    }

    while (v194);
  }

  v580 = 0u;
  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v198 = self->_kCellularPowerLogNRsub6DLTBSs;
  v199 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v577 objects:v746 count:16];
  if (v199)
  {
    v200 = v199;
    v201 = *v578;
    do
    {
      v202 = 0;
      do
      {
        if (*v578 != v201)
        {
          objc_enumerationMutation(v198);
        }

        v203 = [*(*(&v577 + 1) + 8 * v202) copyWithZone:zone];
        [v5 addKCellularPowerLogNRsub6DLTBS:v203];

        ++v202;
      }

      while (v200 != v202);
      v200 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v577 objects:v746 count:16];
    }

    while (v200);
  }

  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v204 = self->_kCellularPowerLogNRSub6RSRPs;
  v205 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v573 objects:v745 count:16];
  if (v205)
  {
    v206 = v205;
    v207 = *v574;
    do
    {
      v208 = 0;
      do
      {
        if (*v574 != v207)
        {
          objc_enumerationMutation(v204);
        }

        v209 = [*(*(&v573 + 1) + 8 * v208) copyWithZone:zone];
        [v5 addKCellularPowerLogNRSub6RSRP:v209];

        ++v208;
      }

      while (v206 != v208);
      v206 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v573 objects:v745 count:16];
    }

    while (v206);
  }

  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  v569 = 0u;
  v210 = self->_kCellularPowerLogNRSub6SINRs;
  v211 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v569 objects:v744 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v570;
    do
    {
      v214 = 0;
      do
      {
        if (*v570 != v213)
        {
          objc_enumerationMutation(v210);
        }

        v215 = [*(*(&v569 + 1) + 8 * v214) copyWithZone:zone];
        [v5 addKCellularPowerLogNRSub6SINR:v215];

        ++v214;
      }

      while (v212 != v214);
      v212 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v569 objects:v744 count:16];
    }

    while (v212);
  }

  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  v565 = 0u;
  v216 = self->_kCellularPowerLogLteNrRxDiversityHists;
  v217 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v565 objects:v743 count:16];
  if (v217)
  {
    v218 = v217;
    v219 = *v566;
    do
    {
      v220 = 0;
      do
      {
        if (*v566 != v219)
        {
          objc_enumerationMutation(v216);
        }

        v221 = [*(*(&v565 + 1) + 8 * v220) copyWithZone:zone];
        [v5 addKCellularPowerLogLteNrRxDiversityHist:v221];

        ++v220;
      }

      while (v218 != v220);
      v218 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v565 objects:v743 count:16];
    }

    while (v218);
  }

  v564 = 0u;
  v563 = 0u;
  v562 = 0u;
  v561 = 0u;
  v222 = self->_kCellularPowerLogLteNrTxPowerHists;
  v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v561 objects:v742 count:16];
  if (v223)
  {
    v224 = v223;
    v225 = *v562;
    do
    {
      v226 = 0;
      do
      {
        if (*v562 != v225)
        {
          objc_enumerationMutation(v222);
        }

        v227 = [*(*(&v561 + 1) + 8 * v226) copyWithZone:zone];
        [v5 addKCellularPowerLogLteNrTxPowerHist:v227];

        ++v226;
      }

      while (v224 != v226);
      v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v561 objects:v742 count:16];
    }

    while (v224);
  }

  v560 = 0u;
  v559 = 0u;
  v558 = 0u;
  v557 = 0u;
  v228 = self->_kCellularPowerLogLteNrRxTxActivityStats;
  v229 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v557 objects:v741 count:16];
  if (v229)
  {
    v230 = v229;
    v231 = *v558;
    do
    {
      v232 = 0;
      do
      {
        if (*v558 != v231)
        {
          objc_enumerationMutation(v228);
        }

        v233 = [*(*(&v557 + 1) + 8 * v232) copyWithZone:zone];
        [v5 addKCellularPowerLogLteNrRxTxActivityStats:v233];

        ++v232;
      }

      while (v230 != v232);
      v230 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v557 objects:v741 count:16];
    }

    while (v230);
  }

  v556 = 0u;
  v555 = 0u;
  v554 = 0u;
  v553 = 0u;
  v234 = self->_kCellularPowerLogSFTStates;
  v235 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v553 objects:v740 count:16];
  if (v235)
  {
    v236 = v235;
    v237 = *v554;
    do
    {
      v238 = 0;
      do
      {
        if (*v554 != v237)
        {
          objc_enumerationMutation(v234);
        }

        v239 = [*(*(&v553 + 1) + 8 * v238) copyWithZone:zone];
        [v5 addKCellularPowerLogSFTState:v239];

        ++v238;
      }

      while (v236 != v238);
      v236 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v553 objects:v740 count:16];
    }

    while (v236);
  }

  v552 = 0u;
  v551 = 0u;
  v550 = 0u;
  v549 = 0u;
  v240 = self->_kCellularPowerLogSFTRxTxs;
  v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v549 objects:v739 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v550;
    do
    {
      v244 = 0;
      do
      {
        if (*v550 != v243)
        {
          objc_enumerationMutation(v240);
        }

        v245 = [*(*(&v549 + 1) + 8 * v244) copyWithZone:zone];
        [v5 addKCellularPowerLogSFTRxTx:v245];

        ++v244;
      }

      while (v242 != v244);
      v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v549 objects:v739 count:16];
    }

    while (v242);
  }

  v548 = 0u;
  v547 = 0u;
  v546 = 0u;
  v545 = 0u;
  v246 = self->_kCellularPowerLogXOShutdowns;
  v247 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v545 objects:v738 count:16];
  if (v247)
  {
    v248 = v247;
    v249 = *v546;
    do
    {
      v250 = 0;
      do
      {
        if (*v546 != v249)
        {
          objc_enumerationMutation(v246);
        }

        v251 = [*(*(&v545 + 1) + 8 * v250) copyWithZone:zone];
        [v5 addKCellularPowerLogXOShutdown:v251];

        ++v250;
      }

      while (v248 != v250);
      v248 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v545 objects:v738 count:16];
    }

    while (v248);
  }

  v544 = 0u;
  v543 = 0u;
  v542 = 0u;
  v541 = 0u;
  v252 = self->_kCellularPowerLogCpuPerfLevels;
  v253 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v541 objects:v737 count:16];
  if (v253)
  {
    v254 = v253;
    v255 = *v542;
    do
    {
      v256 = 0;
      do
      {
        if (*v542 != v255)
        {
          objc_enumerationMutation(v252);
        }

        v257 = [*(*(&v541 + 1) + 8 * v256) copyWithZone:zone];
        [v5 addKCellularPowerLogCpuPerfLevels:v257];

        ++v256;
      }

      while (v254 != v256);
      v254 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v541 objects:v737 count:16];
    }

    while (v254);
  }

  v540 = 0u;
  v539 = 0u;
  v538 = 0u;
  v537 = 0u;
  v258 = self->_kCellularPowerLogSocPerfLevels;
  v259 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v537 objects:v736 count:16];
  if (v259)
  {
    v260 = v259;
    v261 = *v538;
    do
    {
      v262 = 0;
      do
      {
        if (*v538 != v261)
        {
          objc_enumerationMutation(v258);
        }

        v263 = [*(*(&v537 + 1) + 8 * v262) copyWithZone:zone];
        [v5 addKCellularPowerLogSocPerfLevels:v263];

        ++v262;
      }

      while (v260 != v262);
      v260 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v537 objects:v736 count:16];
    }

    while (v260);
  }

  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v264 = self->_kCellularPowerLogAcmPerfLevels;
  v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v533 objects:v735 count:16];
  if (v265)
  {
    v266 = v265;
    v267 = *v534;
    do
    {
      v268 = 0;
      do
      {
        if (*v534 != v267)
        {
          objc_enumerationMutation(v264);
        }

        v269 = [*(*(&v533 + 1) + 8 * v268) copyWithZone:zone];
        [v5 addKCellularPowerLogAcmPerfLevels:v269];

        ++v268;
      }

      while (v266 != v268);
      v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v533 objects:v735 count:16];
    }

    while (v266);
  }

  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v270 = self->_kCellularPowerLogCpsSleepStates;
  v271 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v529 objects:v734 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v530;
    do
    {
      v274 = 0;
      do
      {
        if (*v530 != v273)
        {
          objc_enumerationMutation(v270);
        }

        v275 = [*(*(&v529 + 1) + 8 * v274) copyWithZone:zone];
        [v5 addKCellularPowerLogCpsSleepStates:v275];

        ++v274;
      }

      while (v272 != v274);
      v272 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v529 objects:v734 count:16];
    }

    while (v272);
  }

  v528 = 0u;
  v527 = 0u;
  v526 = 0u;
  v525 = 0u;
  v276 = self->_kCellularPowerLogCdpDSleepStates;
  v277 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v525 objects:v733 count:16];
  if (v277)
  {
    v278 = v277;
    v279 = *v526;
    do
    {
      v280 = 0;
      do
      {
        if (*v526 != v279)
        {
          objc_enumerationMutation(v276);
        }

        v281 = [*(*(&v525 + 1) + 8 * v280) copyWithZone:zone];
        [v5 addKCellularPowerLogCdpDSleepStates:v281];

        ++v280;
      }

      while (v278 != v280);
      v278 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v525 objects:v733 count:16];
    }

    while (v278);
  }

  v524 = 0u;
  v523 = 0u;
  v522 = 0u;
  v521 = 0u;
  v282 = self->_kCellularPowerLogCdpUSleepStates;
  v283 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v521 objects:v732 count:16];
  if (v283)
  {
    v284 = v283;
    v285 = *v522;
    do
    {
      v286 = 0;
      do
      {
        if (*v522 != v285)
        {
          objc_enumerationMutation(v282);
        }

        v287 = [*(*(&v521 + 1) + 8 * v286) copyWithZone:zone];
        [v5 addKCellularPowerLogCdpUSleepStates:v287];

        ++v286;
      }

      while (v284 != v286);
      v284 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v521 objects:v732 count:16];
    }

    while (v284);
  }

  v520 = 0u;
  v519 = 0u;
  v518 = 0u;
  v517 = 0u;
  v288 = self->_kCellularPowerLogCdpHSleepStates;
  v289 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v517 objects:v731 count:16];
  if (v289)
  {
    v290 = v289;
    v291 = *v518;
    do
    {
      v292 = 0;
      do
      {
        if (*v518 != v291)
        {
          objc_enumerationMutation(v288);
        }

        v293 = [*(*(&v517 + 1) + 8 * v292) copyWithZone:zone];
        [v5 addKCellularPowerLogCdpHSleepStates:v293];

        ++v292;
      }

      while (v290 != v292);
      v290 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v517 objects:v731 count:16];
    }

    while (v290);
  }

  v516 = 0u;
  v515 = 0u;
  v514 = 0u;
  v513 = 0u;
  v294 = self->_kCellularPowerLogL1CSleepStates;
  v295 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v513 objects:v730 count:16];
  if (v295)
  {
    v296 = v295;
    v297 = *v514;
    do
    {
      v298 = 0;
      do
      {
        if (*v514 != v297)
        {
          objc_enumerationMutation(v294);
        }

        v299 = [*(*(&v513 + 1) + 8 * v298) copyWithZone:zone];
        [v5 addKCellularPowerLogL1CSleepStates:v299];

        ++v298;
      }

      while (v296 != v298);
      v296 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v513 objects:v730 count:16];
    }

    while (v296);
  }

  v512 = 0u;
  v511 = 0u;
  v510 = 0u;
  v509 = 0u;
  v300 = self->_kCellularPowerLogL1SSleepStates;
  v301 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v509 objects:v729 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v510;
    do
    {
      v304 = 0;
      do
      {
        if (*v510 != v303)
        {
          objc_enumerationMutation(v300);
        }

        v305 = [*(*(&v509 + 1) + 8 * v304) copyWithZone:zone];
        [v5 addKCellularPowerLogL1SSleepStates:v305];

        ++v304;
      }

      while (v302 != v304);
      v302 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v509 objects:v729 count:16];
    }

    while (v302);
  }

  v508 = 0u;
  v507 = 0u;
  v506 = 0u;
  v505 = 0u;
  v306 = self->_kCellularPowerLogDcsSleepStates;
  v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v505 objects:v728 count:16];
  if (v307)
  {
    v308 = v307;
    v309 = *v506;
    do
    {
      v310 = 0;
      do
      {
        if (*v506 != v309)
        {
          objc_enumerationMutation(v306);
        }

        v311 = [*(*(&v505 + 1) + 8 * v310) copyWithZone:zone];
        [v5 addKCellularPowerLogDcsSleepStates:v311];

        ++v310;
      }

      while (v308 != v310);
      v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v505 objects:v728 count:16];
    }

    while (v308);
  }

  v504 = 0u;
  v503 = 0u;
  v502 = 0u;
  v501 = 0u;
  v312 = self->_kCellularPowerLog2g3gSleepStates;
  v313 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v501 objects:v727 count:16];
  if (v313)
  {
    v314 = v313;
    v315 = *v502;
    do
    {
      v316 = 0;
      do
      {
        if (*v502 != v315)
        {
          objc_enumerationMutation(v312);
        }

        v317 = [*(*(&v501 + 1) + 8 * v316) copyWithZone:zone];
        [v5 addKCellularPowerLog2g3gSleepStates:v317];

        ++v316;
      }

      while (v314 != v316);
      v314 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v501 objects:v727 count:16];
    }

    while (v314);
  }

  v500 = 0u;
  v499 = 0u;
  v498 = 0u;
  v497 = 0u;
  v318 = self->_kCellularPowerLogSleepStates;
  v319 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v497 objects:v726 count:16];
  if (v319)
  {
    v320 = v319;
    v321 = *v498;
    do
    {
      v322 = 0;
      do
      {
        if (*v498 != v321)
        {
          objc_enumerationMutation(v318);
        }

        v323 = [*(*(&v497 + 1) + 8 * v322) copyWithZone:zone];
        [v5 addKCellularPowerLogSleepStates:v323];

        ++v322;
      }

      while (v320 != v322);
      v320 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v497 objects:v726 count:16];
    }

    while (v320);
  }

  v496 = 0u;
  v495 = 0u;
  v494 = 0u;
  v493 = 0u;
  v324 = self->_kCellularPlatformApBbSleepStats;
  v325 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v493 objects:v725 count:16];
  if (v325)
  {
    v326 = v325;
    v327 = *v494;
    do
    {
      v328 = 0;
      do
      {
        if (*v494 != v327)
        {
          objc_enumerationMutation(v324);
        }

        v329 = [*(*(&v493 + 1) + 8 * v328) copyWithZone:zone];
        [v5 addKCellularPlatformApBbSleepStats:v329];

        ++v328;
      }

      while (v326 != v328);
      v326 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v493 objects:v725 count:16];
    }

    while (v326);
  }

  v491 = 0u;
  v492 = 0u;
  v489 = 0u;
  v490 = 0u;
  v330 = self->_kCellularPowerLogGPSStates;
  v331 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v489 objects:v724 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v490;
    do
    {
      v334 = 0;
      do
      {
        if (*v490 != v333)
        {
          objc_enumerationMutation(v330);
        }

        v335 = [*(*(&v489 + 1) + 8 * v334) copyWithZone:zone];
        [v5 addKCellularPowerLogGPSStates:v335];

        ++v334;
      }

      while (v332 != v334);
      v332 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v489 objects:v724 count:16];
    }

    while (v332);
  }

  v487 = 0u;
  v488 = 0u;
  v485 = 0u;
  v486 = 0u;
  v336 = self->_kCellularPowerlogRFSSVoltageLevels;
  v337 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v485 objects:v723 count:16];
  if (v337)
  {
    v338 = v337;
    v339 = *v486;
    do
    {
      v340 = 0;
      do
      {
        if (*v486 != v339)
        {
          objc_enumerationMutation(v336);
        }

        v341 = [*(*(&v485 + 1) + 8 * v340) copyWithZone:zone];
        [v5 addKCellularPowerlogRFSSVoltageLevels:v341];

        ++v340;
      }

      while (v338 != v340);
      v338 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v485 objects:v723 count:16];
    }

    while (v338);
  }

  v483 = 0u;
  v484 = 0u;
  v481 = 0u;
  v482 = 0u;
  v342 = self->_kCellularPowerLogBasebandSleepVetos;
  v343 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v481 objects:v722 count:16];
  if (v343)
  {
    v344 = v343;
    v345 = *v482;
    do
    {
      v346 = 0;
      do
      {
        if (*v482 != v345)
        {
          objc_enumerationMutation(v342);
        }

        v347 = [*(*(&v481 + 1) + 8 * v346) copyWithZone:zone];
        [v5 addKCellularPowerLogBasebandSleepVeto:v347];

        ++v346;
      }

      while (v344 != v346);
      v344 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v481 objects:v722 count:16];
    }

    while (v344);
  }

  v479 = 0u;
  v480 = 0u;
  v477 = 0u;
  v478 = 0u;
  v348 = self->_kCellularAcmSleepStats;
  v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v477 objects:v721 count:16];
  if (v349)
  {
    v350 = v349;
    v351 = *v478;
    do
    {
      v352 = 0;
      do
      {
        if (*v478 != v351)
        {
          objc_enumerationMutation(v348);
        }

        v353 = [*(*(&v477 + 1) + 8 * v352) copyWithZone:zone];
        [v5 addKCellularAcmSleepStats:v353];

        ++v352;
      }

      while (v350 != v352);
      v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v477 objects:v721 count:16];
    }

    while (v350);
  }

  v475 = 0u;
  v476 = 0u;
  v473 = 0u;
  v474 = 0u;
  v354 = self->_kCellularGsmServingCellRssiHists;
  v355 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v473 objects:v720 count:16];
  if (v355)
  {
    v356 = v355;
    v357 = *v474;
    do
    {
      v358 = 0;
      do
      {
        if (*v474 != v357)
        {
          objc_enumerationMutation(v354);
        }

        v359 = [*(*(&v473 + 1) + 8 * v358) copyWithZone:zone];
        [v5 addKCellularGsmServingCellRssiHist:v359];

        ++v358;
      }

      while (v356 != v358);
      v356 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v473 objects:v720 count:16];
    }

    while (v356);
  }

  v471 = 0u;
  v472 = 0u;
  v469 = 0u;
  v470 = 0u;
  v360 = self->_kCellularGsmTxPowerHists;
  v361 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v469 objects:v719 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v470;
    do
    {
      v364 = 0;
      do
      {
        if (*v470 != v363)
        {
          objc_enumerationMutation(v360);
        }

        v365 = [*(*(&v469 + 1) + 8 * v364) copyWithZone:zone];
        [v5 addKCellularGsmTxPowerHist:v365];

        ++v364;
      }

      while (v362 != v364);
      v362 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v469 objects:v719 count:16];
    }

    while (v362);
  }

  v467 = 0u;
  v468 = 0u;
  v465 = 0u;
  v466 = 0u;
  v366 = self->_kCellularWcdmaRxDiversityHists;
  v367 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v465 objects:v718 count:16];
  if (v367)
  {
    v368 = v367;
    v369 = *v466;
    do
    {
      v370 = 0;
      do
      {
        if (*v466 != v369)
        {
          objc_enumerationMutation(v366);
        }

        v371 = [*(*(&v465 + 1) + 8 * v370) copyWithZone:zone];
        [v5 addKCellularWcdmaRxDiversityHist:v371];

        ++v370;
      }

      while (v368 != v370);
      v368 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v465 objects:v718 count:16];
    }

    while (v368);
  }

  v463 = 0u;
  v464 = 0u;
  v461 = 0u;
  v462 = 0u;
  v372 = self->_kCellularWcdmaServingCellRx0RssiHists;
  v373 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v461 objects:v717 count:16];
  if (v373)
  {
    v374 = v373;
    v375 = *v462;
    do
    {
      v376 = 0;
      do
      {
        if (*v462 != v375)
        {
          objc_enumerationMutation(v372);
        }

        v377 = [*(*(&v461 + 1) + 8 * v376) copyWithZone:zone];
        [v5 addKCellularWcdmaServingCellRx0RssiHist:v377];

        ++v376;
      }

      while (v374 != v376);
      v374 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v461 objects:v717 count:16];
    }

    while (v374);
  }

  v459 = 0u;
  v460 = 0u;
  v457 = 0u;
  v458 = 0u;
  v378 = self->_kCellularWcdmaServingCellRx1RssiHists;
  v379 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v457 objects:v716 count:16];
  if (v379)
  {
    v380 = v379;
    v381 = *v458;
    do
    {
      v382 = 0;
      do
      {
        if (*v458 != v381)
        {
          objc_enumerationMutation(v378);
        }

        v383 = [*(*(&v457 + 1) + 8 * v382) copyWithZone:zone];
        [v5 addKCellularWcdmaServingCellRx1RssiHist:v383];

        ++v382;
      }

      while (v380 != v382);
      v380 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v457 objects:v716 count:16];
    }

    while (v380);
  }

  v455 = 0u;
  v456 = 0u;
  v453 = 0u;
  v454 = 0u;
  v384 = self->_kCellularWcdmaTxPowerHists;
  v385 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v453 objects:v715 count:16];
  if (v385)
  {
    v386 = v385;
    v387 = *v454;
    do
    {
      v388 = 0;
      do
      {
        if (*v454 != v387)
        {
          objc_enumerationMutation(v384);
        }

        v389 = [*(*(&v453 + 1) + 8 * v388) copyWithZone:zone];
        [v5 addKCellularWcdmaTxPowerHist:v389];

        ++v388;
      }

      while (v386 != v388);
      v386 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v453 objects:v715 count:16];
    }

    while (v386);
  }

  v451 = 0u;
  v452 = 0u;
  v449 = 0u;
  v450 = 0u;
  v390 = self->_kCellularWcdmaRabModeHists;
  v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v449 objects:v714 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v450;
    do
    {
      v394 = 0;
      do
      {
        if (*v450 != v393)
        {
          objc_enumerationMutation(v390);
        }

        v395 = [*(*(&v449 + 1) + 8 * v394) copyWithZone:zone];
        [v5 addKCellularWcdmaRabModeHist:v395];

        ++v394;
      }

      while (v392 != v394);
      v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v449 objects:v714 count:16];
    }

    while (v392);
  }

  v447 = 0u;
  v448 = 0u;
  v445 = 0u;
  v446 = 0u;
  v396 = self->_kCellularWcdmaPsRabTypeHists;
  v397 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v445 objects:v713 count:16];
  if (v397)
  {
    v398 = v397;
    v399 = *v446;
    do
    {
      v400 = 0;
      do
      {
        if (*v446 != v399)
        {
          objc_enumerationMutation(v396);
        }

        v401 = [*(*(&v445 + 1) + 8 * v400) copyWithZone:zone];
        [v5 addKCellularWcdmaPsRabTypeHist:v401];

        ++v400;
      }

      while (v398 != v400);
      v398 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v445 objects:v713 count:16];
    }

    while (v398);
  }

  v443 = 0u;
  v444 = 0u;
  v441 = 0u;
  v442 = 0u;
  v402 = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v403 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v441 objects:v712 count:16];
  if (v403)
  {
    v404 = v403;
    v405 = *v442;
    do
    {
      v406 = 0;
      do
      {
        if (*v442 != v405)
        {
          objc_enumerationMutation(v402);
        }

        v407 = [*(*(&v441 + 1) + 8 * v406) copyWithZone:zone];
        [v5 addKCellularWcdmaDataInactivityBeforeIdle:v407];

        ++v406;
      }

      while (v404 != v406);
      v404 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v441 objects:v712 count:16];
    }

    while (v404);
  }

  v439 = 0u;
  v440 = 0u;
  v437 = 0u;
  v438 = 0u;
  v408 = self->_kCellularLteServingCellRsrpHists;
  v409 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v437 objects:v711 count:16];
  if (v409)
  {
    v410 = v409;
    v411 = *v438;
    do
    {
      v412 = 0;
      do
      {
        if (*v438 != v411)
        {
          objc_enumerationMutation(v408);
        }

        v413 = [*(*(&v437 + 1) + 8 * v412) copyWithZone:zone];
        [v5 addKCellularLteServingCellRsrpHist:v413];

        ++v412;
      }

      while (v410 != v412);
      v410 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v437 objects:v711 count:16];
    }

    while (v410);
  }

  v435 = 0u;
  v436 = 0u;
  v433 = 0u;
  v434 = 0u;
  v414 = self->_kCellularLteServingCellSinrHists;
  v415 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v433 objects:v710 count:16];
  if (v415)
  {
    v416 = v415;
    v417 = *v434;
    do
    {
      v418 = 0;
      do
      {
        if (*v434 != v417)
        {
          objc_enumerationMutation(v414);
        }

        v419 = [*(*(&v433 + 1) + 8 * v418) copyWithZone:zone];
        [v5 addKCellularLteServingCellSinrHist:v419];

        ++v418;
      }

      while (v416 != v418);
      v416 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v433 objects:v710 count:16];
    }

    while (v416);
  }

  v431 = 0u;
  v432 = 0u;
  v429 = 0u;
  v430 = 0u;
  v420 = self->_kCellularLteDataInactivityBeforeIdles;
  v421 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v429 objects:v709 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v430;
    do
    {
      v424 = 0;
      do
      {
        if (*v430 != v423)
        {
          objc_enumerationMutation(v420);
        }

        v425 = [*(*(&v429 + 1) + 8 * v424) copyWithZone:{zone, v429}];
        [v5 addKCellularLteDataInactivityBeforeIdle:v425];

        ++v424;
      }

      while (v422 != v424);
      v422 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v429 objects:v709 count:16];
    }

    while (v422);
  }

  v426 = v5;
  v427 = *MEMORY[0x277D85DE8];
  return v426;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_142;
  }

  kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts;
  if (kCellularPerClientProfileTriggerCounts | equalCopy[12])
  {
    if (![(NSMutableArray *)kCellularPerClientProfileTriggerCounts isEqual:?])
    {
      goto LABEL_142;
    }
  }

  kCellularPowerLogWcdmaPagingDRXCycles = self->_kCellularPowerLogWcdmaPagingDRXCycles;
  if (kCellularPowerLogWcdmaPagingDRXCycles | equalCopy[59] && ![(NSMutableArray *)kCellularPowerLogWcdmaPagingDRXCycles isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularLtePagingCycles = self->_kCellularLtePagingCycles;
  if (kCellularLtePagingCycles | equalCopy[6] && ![(NSMutableArray *)kCellularLtePagingCycles isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRPagingDRXCycles = self->_kCellularPowerLogNRPagingDRXCycles;
  if (kCellularPowerLogNRPagingDRXCycles | equalCopy[38] && ![(NSMutableArray *)kCellularPowerLogNRPagingDRXCycles isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs;
  if (kCellularLteCdrxConfigs | equalCopy[4] && ![(NSMutableArray *)kCellularLteCdrxConfigs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularNrSDMActivations = self->_kCellularNrSDMActivations;
  if (kCellularNrSDMActivations | equalCopy[10] && ![(NSMutableArray *)kCellularNrSDMActivations isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularNrSdmEndcReleases = self->_kCellularNrSdmEndcReleases;
  if (kCellularNrSdmEndcReleases | equalCopy[11] && ![(NSMutableArray *)kCellularNrSdmEndcReleases isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularNrDataInactivityBeforeIdles = self->_kCellularNrDataInactivityBeforeIdles;
  if (kCellularNrDataInactivityBeforeIdles | equalCopy[9] && ![(NSMutableArray *)kCellularNrDataInactivityBeforeIdles isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularRfTunerHists = self->_kCellularRfTunerHists;
  if (kCellularRfTunerHists | equalCopy[63] && ![(NSMutableArray *)kCellularRfTunerHists isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogLteCaConfigActivateStats = self->_kCellularPowerLogLteCaConfigActivateStats;
  if (kCellularPowerLogLteCaConfigActivateStats | equalCopy[29] && ![(NSMutableArray *)kCellularPowerLogLteCaConfigActivateStats isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogLteCarrierComponentInfos = self->_kCellularPowerLogLteCarrierComponentInfos;
  if (kCellularPowerLogLteCarrierComponentInfos | equalCopy[30] && ![(NSMutableArray *)kCellularPowerLogLteCarrierComponentInfos isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogLTEAggregatedDLTBSs = self->_kCellularPowerLogLTEAggregatedDLTBSs;
  if (kCellularPowerLogLTEAggregatedDLTBSs | equalCopy[28] && ![(NSMutableArray *)kCellularPowerLogLTEAggregatedDLTBSs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogPowerEstimators = self->_kCellularPowerLogPowerEstimators;
  if (kCellularPowerLogPowerEstimators | equalCopy[48] && ![(NSMutableArray *)kCellularPowerLogPowerEstimators isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogProtocolStates = self->_kCellularPowerLogProtocolStates;
  if (kCellularPowerLogProtocolStates | equalCopy[49] && ![(NSMutableArray *)kCellularPowerLogProtocolStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogPLMNSearchs = self->_kCellularPowerLogPLMNSearchs;
  if (kCellularPowerLogPLMNSearchs | equalCopy[46] && ![(NSMutableArray *)kCellularPowerLogPLMNSearchs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogGSMRABModes = self->_kCellularPowerLogGSMRABModes;
  if (kCellularPowerLogGSMRABModes | equalCopy[24] && ![(NSMutableArray *)kCellularPowerLogGSMRABModes isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRSCGRels = self->_kCellularPowerLogNRSCGRels;
  if (kCellularPowerLogNRSCGRels | equalCopy[39] && ![(NSMutableArray *)kCellularPowerLogNRSCGRels isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogWCDMACDRXConfigs = self->_kCellularPowerLogWCDMACDRXConfigs;
  if (kCellularPowerLogWCDMACDRXConfigs | equalCopy[58] && ![(NSMutableArray *)kCellularPowerLogWCDMACDRXConfigs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogWcdmaRrcStateChanges = self->_kCellularPowerLogWcdmaRrcStateChanges;
  if (kCellularPowerLogWcdmaRrcStateChanges | equalCopy[60] && ![(NSMutableArray *)kCellularPowerLogWcdmaRrcStateChanges isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogLteRrcStateChanges = self->_kCellularPowerLogLteRrcStateChanges;
  if (kCellularPowerLogLteRrcStateChanges | equalCopy[34] && ![(NSMutableArray *)kCellularPowerLogLteRrcStateChanges isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogSystemEvents = self->_kCellularPowerLogSystemEvents;
  if (kCellularPowerLogSystemEvents | equalCopy[57] && ![(NSMutableArray *)kCellularPowerLogSystemEvents isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogRatReselectionEvents = self->_kCellularPowerLogRatReselectionEvents;
  if (kCellularPowerLogRatReselectionEvents | equalCopy[51] && ![(NSMutableArray *)kCellularPowerLogRatReselectionEvents isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogRatRedirectionEvents = self->_kCellularPowerLogRatRedirectionEvents;
  if (kCellularPowerLogRatRedirectionEvents | equalCopy[50] && ![(NSMutableArray *)kCellularPowerLogRatRedirectionEvents isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogGsmRrcStateChanges = self->_kCellularPowerLogGsmRrcStateChanges;
  if (kCellularPowerLogGsmRrcStateChanges | equalCopy[25] && ![(NSMutableArray *)kCellularPowerLogGsmRrcStateChanges isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogServiceStatusEvents = self->_kCellularPowerLogServiceStatusEvents;
  if (kCellularPowerLogServiceStatusEvents | equalCopy[54] && ![(NSMutableArray *)kCellularPowerLogServiceStatusEvents isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogPlmnSearchEvents = self->_kCellularPowerLogPlmnSearchEvents;
  if (kCellularPowerLogPlmnSearchEvents | equalCopy[47] && ![(NSMutableArray *)kCellularPowerLogPlmnSearchEvents isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNrSaRrcStateChanges = self->_kCellularPowerLogNrSaRrcStateChanges;
  if (kCellularPowerLogNrSaRrcStateChanges | equalCopy[45] && ![(NSMutableArray *)kCellularPowerLogNrSaRrcStateChanges isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRNSAENDCEvents = self->_kCellularPowerLogNRNSAENDCEvents;
  if (kCellularPowerLogNRNSAENDCEvents | equalCopy[37] && ![(NSMutableArray *)kCellularPowerLogNRNSAENDCEvents isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRCdrxConfigs = self->_kCellularPowerLogNRCdrxConfigs;
  if (kCellularPowerLogNRCdrxConfigs | equalCopy[36] && ![(NSMutableArray *)kCellularPowerLogNRCdrxConfigs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRsub6BWPs = self->_kCellularPowerLogNRsub6BWPs;
  if (kCellularPowerLogNRsub6BWPs | equalCopy[42] && ![(NSMutableArray *)kCellularPowerLogNRsub6BWPs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNrCaConfigActivateStats = self->_kCellularPowerLogNrCaConfigActivateStats;
  if (kCellularPowerLogNrCaConfigActivateStats | equalCopy[44] && ![(NSMutableArray *)kCellularPowerLogNrCaConfigActivateStats isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRCarrierComponentInfos = self->_kCellularPowerLogNRCarrierComponentInfos;
  if (kCellularPowerLogNRCarrierComponentInfos | equalCopy[35] && ![(NSMutableArray *)kCellularPowerLogNRCarrierComponentInfos isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRsub6DLTBSs = self->_kCellularPowerLogNRsub6DLTBSs;
  if (kCellularPowerLogNRsub6DLTBSs | equalCopy[43] && ![(NSMutableArray *)kCellularPowerLogNRsub6DLTBSs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRSub6RSRPs = self->_kCellularPowerLogNRSub6RSRPs;
  if (kCellularPowerLogNRSub6RSRPs | equalCopy[40] && ![(NSMutableArray *)kCellularPowerLogNRSub6RSRPs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogNRSub6SINRs = self->_kCellularPowerLogNRSub6SINRs;
  if (kCellularPowerLogNRSub6SINRs | equalCopy[41] && ![(NSMutableArray *)kCellularPowerLogNRSub6SINRs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogLteNrRxDiversityHists = self->_kCellularPowerLogLteNrRxDiversityHists;
  if (kCellularPowerLogLteNrRxDiversityHists | equalCopy[31] && ![(NSMutableArray *)kCellularPowerLogLteNrRxDiversityHists isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogLteNrTxPowerHists = self->_kCellularPowerLogLteNrTxPowerHists;
  if (kCellularPowerLogLteNrTxPowerHists | equalCopy[33] && ![(NSMutableArray *)kCellularPowerLogLteNrTxPowerHists isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogLteNrRxTxActivityStats = self->_kCellularPowerLogLteNrRxTxActivityStats;
  if (kCellularPowerLogLteNrRxTxActivityStats | equalCopy[32] && ![(NSMutableArray *)kCellularPowerLogLteNrRxTxActivityStats isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogSFTStates = self->_kCellularPowerLogSFTStates;
  if (kCellularPowerLogSFTStates | equalCopy[53] && ![(NSMutableArray *)kCellularPowerLogSFTStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogSFTRxTxs = self->_kCellularPowerLogSFTRxTxs;
  if (kCellularPowerLogSFTRxTxs | equalCopy[52] && ![(NSMutableArray *)kCellularPowerLogSFTRxTxs isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogXOShutdowns = self->_kCellularPowerLogXOShutdowns;
  if (kCellularPowerLogXOShutdowns | equalCopy[61] && ![(NSMutableArray *)kCellularPowerLogXOShutdowns isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogCpuPerfLevels = self->_kCellularPowerLogCpuPerfLevels;
  if (kCellularPowerLogCpuPerfLevels | equalCopy[21] && ![(NSMutableArray *)kCellularPowerLogCpuPerfLevels isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogSocPerfLevels = self->_kCellularPowerLogSocPerfLevels;
  if (kCellularPowerLogSocPerfLevels | equalCopy[56] && ![(NSMutableArray *)kCellularPowerLogSocPerfLevels isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogAcmPerfLevels = self->_kCellularPowerLogAcmPerfLevels;
  if (kCellularPowerLogAcmPerfLevels | equalCopy[15] && ![(NSMutableArray *)kCellularPowerLogAcmPerfLevels isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogCpsSleepStates = self->_kCellularPowerLogCpsSleepStates;
  if (kCellularPowerLogCpsSleepStates | equalCopy[20] && ![(NSMutableArray *)kCellularPowerLogCpsSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogCdpDSleepStates = self->_kCellularPowerLogCdpDSleepStates;
  if (kCellularPowerLogCdpDSleepStates | equalCopy[17] && ![(NSMutableArray *)kCellularPowerLogCdpDSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogCdpUSleepStates = self->_kCellularPowerLogCdpUSleepStates;
  if (kCellularPowerLogCdpUSleepStates | equalCopy[19] && ![(NSMutableArray *)kCellularPowerLogCdpUSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogCdpHSleepStates = self->_kCellularPowerLogCdpHSleepStates;
  if (kCellularPowerLogCdpHSleepStates | equalCopy[18] && ![(NSMutableArray *)kCellularPowerLogCdpHSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogL1CSleepStates = self->_kCellularPowerLogL1CSleepStates;
  if (kCellularPowerLogL1CSleepStates | equalCopy[26] && ![(NSMutableArray *)kCellularPowerLogL1CSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogL1SSleepStates = self->_kCellularPowerLogL1SSleepStates;
  if (kCellularPowerLogL1SSleepStates | equalCopy[27] && ![(NSMutableArray *)kCellularPowerLogL1SSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogDcsSleepStates = self->_kCellularPowerLogDcsSleepStates;
  if (kCellularPowerLogDcsSleepStates | equalCopy[22] && ![(NSMutableArray *)kCellularPowerLogDcsSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLog2g3gSleepStates = self->_kCellularPowerLog2g3gSleepStates;
  if (kCellularPowerLog2g3gSleepStates | equalCopy[14] && ![(NSMutableArray *)kCellularPowerLog2g3gSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogSleepStates = self->_kCellularPowerLogSleepStates;
  if (kCellularPowerLogSleepStates | equalCopy[55] && ![(NSMutableArray *)kCellularPowerLogSleepStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPlatformApBbSleepStats = self->_kCellularPlatformApBbSleepStats;
  if (kCellularPlatformApBbSleepStats | equalCopy[13] && ![(NSMutableArray *)kCellularPlatformApBbSleepStats isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogGPSStates = self->_kCellularPowerLogGPSStates;
  if (kCellularPowerLogGPSStates | equalCopy[23] && ![(NSMutableArray *)kCellularPowerLogGPSStates isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerlogRFSSVoltageLevels = self->_kCellularPowerlogRFSSVoltageLevels;
  if (kCellularPowerlogRFSSVoltageLevels | equalCopy[62] && ![(NSMutableArray *)kCellularPowerlogRFSSVoltageLevels isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularPowerLogBasebandSleepVetos = self->_kCellularPowerLogBasebandSleepVetos;
  if (kCellularPowerLogBasebandSleepVetos | equalCopy[16] && ![(NSMutableArray *)kCellularPowerLogBasebandSleepVetos isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularAcmSleepStats = self->_kCellularAcmSleepStats;
  if (kCellularAcmSleepStats | equalCopy[1] && ![(NSMutableArray *)kCellularAcmSleepStats isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists;
  if (kCellularGsmServingCellRssiHists | equalCopy[2] && ![(NSMutableArray *)kCellularGsmServingCellRssiHists isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists;
  if (kCellularGsmTxPowerHists | equalCopy[3] && ![(NSMutableArray *)kCellularGsmTxPowerHists isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists;
  if (kCellularWcdmaRxDiversityHists | equalCopy[67] && ![(NSMutableArray *)kCellularWcdmaRxDiversityHists isEqual:?])
  {
    goto LABEL_142;
  }

  kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists;
  if (kCellularWcdmaServingCellRx0RssiHists | equalCopy[68] && ![(NSMutableArray *)kCellularWcdmaServingCellRx0RssiHists isEqual:?])
  {
    goto LABEL_142;
  }

  if (((kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists, !(kCellularWcdmaServingCellRx1RssiHists | equalCopy[69])) || [(NSMutableArray *)kCellularWcdmaServingCellRx1RssiHists isEqual:?]) && ((kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists, !(kCellularWcdmaTxPowerHists | equalCopy[70])) || [(NSMutableArray *)kCellularWcdmaTxPowerHists isEqual:?]) && ((kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists, !(kCellularWcdmaRabModeHists | equalCopy[66])) || [(NSMutableArray *)kCellularWcdmaRabModeHists isEqual:?]) && ((kCellularWcdmaPsRabTypeHists = self->_kCellularWcdmaPsRabTypeHists, !(kCellularWcdmaPsRabTypeHists | equalCopy[65])) || [(NSMutableArray *)kCellularWcdmaPsRabTypeHists isEqual:?]) && ((kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles, !(kCellularWcdmaDataInactivityBeforeIdles | equalCopy[64])) || [(NSMutableArray *)kCellularWcdmaDataInactivityBeforeIdles isEqual:?]) && ((kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists, !(kCellularLteServingCellRsrpHists | equalCopy[7])) || [(NSMutableArray *)kCellularLteServingCellRsrpHists isEqual:?]) && ((kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists, !(kCellularLteServingCellSinrHists | equalCopy[8])) || [(NSMutableArray *)kCellularLteServingCellSinrHists isEqual:?]))
  {
    kCellularLteDataInactivityBeforeIdles = self->_kCellularLteDataInactivityBeforeIdles;
    if (kCellularLteDataInactivityBeforeIdles | equalCopy[5])
    {
      v75 = [(NSMutableArray *)kCellularLteDataInactivityBeforeIdles isEqual:?];
    }

    else
    {
      v75 = 1;
    }
  }

  else
  {
LABEL_142:
    v75 = 0;
  }

  return v75;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_kCellularPerClientProfileTriggerCounts hash];
  v4 = [(NSMutableArray *)self->_kCellularPowerLogWcdmaPagingDRXCycles hash]^ v3;
  v5 = [(NSMutableArray *)self->_kCellularLtePagingCycles hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_kCellularPowerLogNRPagingDRXCycles hash];
  v7 = [(NSMutableArray *)self->_kCellularLteCdrxConfigs hash];
  v8 = v7 ^ [(NSMutableArray *)self->_kCellularNrSDMActivations hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_kCellularNrSdmEndcReleases hash];
  v10 = [(NSMutableArray *)self->_kCellularNrDataInactivityBeforeIdles hash];
  v11 = v10 ^ [(NSMutableArray *)self->_kCellularRfTunerHists hash];
  v12 = v11 ^ [(NSMutableArray *)self->_kCellularPowerLogLteCaConfigActivateStats hash];
  v13 = v9 ^ v12 ^ [(NSMutableArray *)self->_kCellularPowerLogLteCarrierComponentInfos hash];
  v14 = [(NSMutableArray *)self->_kCellularPowerLogLTEAggregatedDLTBSs hash];
  v15 = v14 ^ [(NSMutableArray *)self->_kCellularPowerLogPowerEstimators hash];
  v16 = v15 ^ [(NSMutableArray *)self->_kCellularPowerLogProtocolStates hash];
  v17 = v16 ^ [(NSMutableArray *)self->_kCellularPowerLogPLMNSearchs hash];
  v18 = v13 ^ v17 ^ [(NSMutableArray *)self->_kCellularPowerLogGSMRABModes hash];
  v19 = [(NSMutableArray *)self->_kCellularPowerLogNRSCGRels hash];
  v20 = v19 ^ [(NSMutableArray *)self->_kCellularPowerLogWCDMACDRXConfigs hash];
  v21 = v20 ^ [(NSMutableArray *)self->_kCellularPowerLogWcdmaRrcStateChanges hash];
  v22 = v21 ^ [(NSMutableArray *)self->_kCellularPowerLogLteRrcStateChanges hash];
  v23 = v22 ^ [(NSMutableArray *)self->_kCellularPowerLogSystemEvents hash];
  v24 = v18 ^ v23 ^ [(NSMutableArray *)self->_kCellularPowerLogRatReselectionEvents hash];
  v25 = [(NSMutableArray *)self->_kCellularPowerLogRatRedirectionEvents hash];
  v26 = v25 ^ [(NSMutableArray *)self->_kCellularPowerLogGsmRrcStateChanges hash];
  v27 = v26 ^ [(NSMutableArray *)self->_kCellularPowerLogServiceStatusEvents hash];
  v28 = v27 ^ [(NSMutableArray *)self->_kCellularPowerLogPlmnSearchEvents hash];
  v29 = v28 ^ [(NSMutableArray *)self->_kCellularPowerLogNrSaRrcStateChanges hash];
  v30 = v29 ^ [(NSMutableArray *)self->_kCellularPowerLogNRNSAENDCEvents hash];
  v31 = v24 ^ v30 ^ [(NSMutableArray *)self->_kCellularPowerLogNRCdrxConfigs hash];
  v32 = [(NSMutableArray *)self->_kCellularPowerLogNRsub6BWPs hash];
  v33 = v32 ^ [(NSMutableArray *)self->_kCellularPowerLogNrCaConfigActivateStats hash];
  v34 = v33 ^ [(NSMutableArray *)self->_kCellularPowerLogNRCarrierComponentInfos hash];
  v35 = v34 ^ [(NSMutableArray *)self->_kCellularPowerLogNRsub6DLTBSs hash];
  v36 = v35 ^ [(NSMutableArray *)self->_kCellularPowerLogNRSub6RSRPs hash];
  v37 = v36 ^ [(NSMutableArray *)self->_kCellularPowerLogNRSub6SINRs hash];
  v38 = v37 ^ [(NSMutableArray *)self->_kCellularPowerLogLteNrRxDiversityHists hash];
  v39 = v31 ^ v38 ^ [(NSMutableArray *)self->_kCellularPowerLogLteNrTxPowerHists hash];
  v40 = [(NSMutableArray *)self->_kCellularPowerLogLteNrRxTxActivityStats hash];
  v41 = v40 ^ [(NSMutableArray *)self->_kCellularPowerLogSFTStates hash];
  v42 = v41 ^ [(NSMutableArray *)self->_kCellularPowerLogSFTRxTxs hash];
  v43 = v42 ^ [(NSMutableArray *)self->_kCellularPowerLogXOShutdowns hash];
  v44 = v43 ^ [(NSMutableArray *)self->_kCellularPowerLogCpuPerfLevels hash];
  v45 = v44 ^ [(NSMutableArray *)self->_kCellularPowerLogSocPerfLevels hash];
  v46 = v45 ^ [(NSMutableArray *)self->_kCellularPowerLogAcmPerfLevels hash];
  v47 = v46 ^ [(NSMutableArray *)self->_kCellularPowerLogCpsSleepStates hash];
  v48 = v39 ^ v47 ^ [(NSMutableArray *)self->_kCellularPowerLogCdpDSleepStates hash];
  v49 = [(NSMutableArray *)self->_kCellularPowerLogCdpUSleepStates hash];
  v50 = v49 ^ [(NSMutableArray *)self->_kCellularPowerLogCdpHSleepStates hash];
  v51 = v50 ^ [(NSMutableArray *)self->_kCellularPowerLogL1CSleepStates hash];
  v52 = v51 ^ [(NSMutableArray *)self->_kCellularPowerLogL1SSleepStates hash];
  v53 = v52 ^ [(NSMutableArray *)self->_kCellularPowerLogDcsSleepStates hash];
  v54 = v53 ^ [(NSMutableArray *)self->_kCellularPowerLog2g3gSleepStates hash];
  v55 = v54 ^ [(NSMutableArray *)self->_kCellularPowerLogSleepStates hash];
  v56 = v55 ^ [(NSMutableArray *)self->_kCellularPlatformApBbSleepStats hash];
  v57 = v56 ^ [(NSMutableArray *)self->_kCellularPowerLogGPSStates hash];
  v58 = v48 ^ v57 ^ [(NSMutableArray *)self->_kCellularPowerlogRFSSVoltageLevels hash];
  v59 = [(NSMutableArray *)self->_kCellularPowerLogBasebandSleepVetos hash];
  v60 = v59 ^ [(NSMutableArray *)self->_kCellularAcmSleepStats hash];
  v61 = v60 ^ [(NSMutableArray *)self->_kCellularGsmServingCellRssiHists hash];
  v62 = v61 ^ [(NSMutableArray *)self->_kCellularGsmTxPowerHists hash];
  v63 = v62 ^ [(NSMutableArray *)self->_kCellularWcdmaRxDiversityHists hash];
  v64 = v63 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx0RssiHists hash];
  v65 = v64 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx1RssiHists hash];
  v66 = v65 ^ [(NSMutableArray *)self->_kCellularWcdmaTxPowerHists hash];
  v67 = v66 ^ [(NSMutableArray *)self->_kCellularWcdmaRabModeHists hash];
  v68 = v67 ^ [(NSMutableArray *)self->_kCellularWcdmaPsRabTypeHists hash];
  v69 = v58 ^ v68 ^ [(NSMutableArray *)self->_kCellularWcdmaDataInactivityBeforeIdles hash];
  v70 = [(NSMutableArray *)self->_kCellularLteServingCellRsrpHists hash];
  v71 = v70 ^ [(NSMutableArray *)self->_kCellularLteServingCellSinrHists hash];
  return v69 ^ v71 ^ [(NSMutableArray *)self->_kCellularLteDataInactivityBeforeIdles hash];
}

- (void)mergeFrom:(id)from
{
  v706 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v632 = 0u;
  v633 = 0u;
  v634 = 0u;
  v635 = 0u;
  v5 = fromCopy[12];
  v6 = [v5 countByEnumeratingWithState:&v632 objects:v705 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v633;
    do
    {
      v9 = 0;
      do
      {
        if (*v633 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPerClientProfileTriggerCount:*(*(&v632 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v632 objects:v705 count:16];
    }

    while (v7);
  }

  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v628 = 0u;
  v10 = fromCopy[59];
  v11 = [v10 countByEnumeratingWithState:&v628 objects:v704 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v629;
    do
    {
      v14 = 0;
      do
      {
        if (*v629 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogWcdmaPagingDRXCycle:*(*(&v628 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v628 objects:v704 count:16];
    }

    while (v12);
  }

  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v624 = 0u;
  v15 = fromCopy[6];
  v16 = [v15 countByEnumeratingWithState:&v624 objects:v703 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v625;
    do
    {
      v19 = 0;
      do
      {
        if (*v625 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularLtePagingCycle:*(*(&v624 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v624 objects:v703 count:16];
    }

    while (v17);
  }

  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v620 = 0u;
  v20 = fromCopy[38];
  v21 = [v20 countByEnumeratingWithState:&v620 objects:v702 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v621;
    do
    {
      v24 = 0;
      do
      {
        if (*v621 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRPagingDRXCycle:*(*(&v620 + 1) + 8 * v24++)];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v620 objects:v702 count:16];
    }

    while (v22);
  }

  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v616 = 0u;
  v25 = fromCopy[4];
  v26 = [v25 countByEnumeratingWithState:&v616 objects:v701 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v617;
    do
    {
      v29 = 0;
      do
      {
        if (*v617 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularLteCdrxConfig:*(*(&v616 + 1) + 8 * v29++)];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v616 objects:v701 count:16];
    }

    while (v27);
  }

  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v612 = 0u;
  v30 = fromCopy[10];
  v31 = [v30 countByEnumeratingWithState:&v612 objects:v700 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v613;
    do
    {
      v34 = 0;
      do
      {
        if (*v613 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularNrSDMActivation:*(*(&v612 + 1) + 8 * v34++)];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v612 objects:v700 count:16];
    }

    while (v32);
  }

  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v608 = 0u;
  v35 = fromCopy[11];
  v36 = [v35 countByEnumeratingWithState:&v608 objects:v699 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v609;
    do
    {
      v39 = 0;
      do
      {
        if (*v609 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularNrSdmEndcRelease:*(*(&v608 + 1) + 8 * v39++)];
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v608 objects:v699 count:16];
    }

    while (v37);
  }

  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v40 = fromCopy[9];
  v41 = [v40 countByEnumeratingWithState:&v604 objects:v698 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v605;
    do
    {
      v44 = 0;
      do
      {
        if (*v605 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularNrDataInactivityBeforeIdle:*(*(&v604 + 1) + 8 * v44++)];
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v604 objects:v698 count:16];
    }

    while (v42);
  }

  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v45 = fromCopy[63];
  v46 = [v45 countByEnumeratingWithState:&v600 objects:v697 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v601;
    do
    {
      v49 = 0;
      do
      {
        if (*v601 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularRfTunerHist:*(*(&v600 + 1) + 8 * v49++)];
      }

      while (v47 != v49);
      v47 = [v45 countByEnumeratingWithState:&v600 objects:v697 count:16];
    }

    while (v47);
  }

  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v596 = 0u;
  v50 = fromCopy[29];
  v51 = [v50 countByEnumeratingWithState:&v596 objects:v696 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v597;
    do
    {
      v54 = 0;
      do
      {
        if (*v597 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogLteCaConfigActivateStats:*(*(&v596 + 1) + 8 * v54++)];
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v596 objects:v696 count:16];
    }

    while (v52);
  }

  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  v592 = 0u;
  v55 = fromCopy[30];
  v56 = [v55 countByEnumeratingWithState:&v592 objects:v695 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v593;
    do
    {
      v59 = 0;
      do
      {
        if (*v593 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogLteCarrierComponentInfo:*(*(&v592 + 1) + 8 * v59++)];
      }

      while (v57 != v59);
      v57 = [v55 countByEnumeratingWithState:&v592 objects:v695 count:16];
    }

    while (v57);
  }

  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  v588 = 0u;
  v60 = fromCopy[28];
  v61 = [v60 countByEnumeratingWithState:&v588 objects:v694 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v589;
    do
    {
      v64 = 0;
      do
      {
        if (*v589 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogLTEAggregatedDLTBS:*(*(&v588 + 1) + 8 * v64++)];
      }

      while (v62 != v64);
      v62 = [v60 countByEnumeratingWithState:&v588 objects:v694 count:16];
    }

    while (v62);
  }

  v587 = 0u;
  v586 = 0u;
  v585 = 0u;
  v584 = 0u;
  v65 = fromCopy[48];
  v66 = [v65 countByEnumeratingWithState:&v584 objects:v693 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v585;
    do
    {
      v69 = 0;
      do
      {
        if (*v585 != v68)
        {
          objc_enumerationMutation(v65);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogPowerEstimator:*(*(&v584 + 1) + 8 * v69++)];
      }

      while (v67 != v69);
      v67 = [v65 countByEnumeratingWithState:&v584 objects:v693 count:16];
    }

    while (v67);
  }

  v583 = 0u;
  v582 = 0u;
  v581 = 0u;
  v580 = 0u;
  v70 = fromCopy[49];
  v71 = [v70 countByEnumeratingWithState:&v580 objects:v692 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v581;
    do
    {
      v74 = 0;
      do
      {
        if (*v581 != v73)
        {
          objc_enumerationMutation(v70);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogProtocolState:*(*(&v580 + 1) + 8 * v74++)];
      }

      while (v72 != v74);
      v72 = [v70 countByEnumeratingWithState:&v580 objects:v692 count:16];
    }

    while (v72);
  }

  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v576 = 0u;
  v75 = fromCopy[46];
  v76 = [v75 countByEnumeratingWithState:&v576 objects:v691 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v577;
    do
    {
      v79 = 0;
      do
      {
        if (*v577 != v78)
        {
          objc_enumerationMutation(v75);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogPLMNSearch:*(*(&v576 + 1) + 8 * v79++)];
      }

      while (v77 != v79);
      v77 = [v75 countByEnumeratingWithState:&v576 objects:v691 count:16];
    }

    while (v77);
  }

  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v572 = 0u;
  v80 = fromCopy[24];
  v81 = [v80 countByEnumeratingWithState:&v572 objects:v690 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v573;
    do
    {
      v84 = 0;
      do
      {
        if (*v573 != v83)
        {
          objc_enumerationMutation(v80);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogGSMRABMode:*(*(&v572 + 1) + 8 * v84++)];
      }

      while (v82 != v84);
      v82 = [v80 countByEnumeratingWithState:&v572 objects:v690 count:16];
    }

    while (v82);
  }

  v571 = 0u;
  v570 = 0u;
  v569 = 0u;
  v568 = 0u;
  v85 = fromCopy[39];
  v86 = [v85 countByEnumeratingWithState:&v568 objects:v689 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v569;
    do
    {
      v89 = 0;
      do
      {
        if (*v569 != v88)
        {
          objc_enumerationMutation(v85);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRSCGRel:*(*(&v568 + 1) + 8 * v89++)];
      }

      while (v87 != v89);
      v87 = [v85 countByEnumeratingWithState:&v568 objects:v689 count:16];
    }

    while (v87);
  }

  v567 = 0u;
  v566 = 0u;
  v565 = 0u;
  v564 = 0u;
  v90 = fromCopy[58];
  v91 = [v90 countByEnumeratingWithState:&v564 objects:v688 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v565;
    do
    {
      v94 = 0;
      do
      {
        if (*v565 != v93)
        {
          objc_enumerationMutation(v90);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogWCDMACDRXConfig:*(*(&v564 + 1) + 8 * v94++)];
      }

      while (v92 != v94);
      v92 = [v90 countByEnumeratingWithState:&v564 objects:v688 count:16];
    }

    while (v92);
  }

  v563 = 0u;
  v562 = 0u;
  v561 = 0u;
  v560 = 0u;
  v95 = fromCopy[60];
  v96 = [v95 countByEnumeratingWithState:&v560 objects:v687 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v561;
    do
    {
      v99 = 0;
      do
      {
        if (*v561 != v98)
        {
          objc_enumerationMutation(v95);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogWcdmaRrcStateChange:*(*(&v560 + 1) + 8 * v99++)];
      }

      while (v97 != v99);
      v97 = [v95 countByEnumeratingWithState:&v560 objects:v687 count:16];
    }

    while (v97);
  }

  v559 = 0u;
  v558 = 0u;
  v557 = 0u;
  v556 = 0u;
  v100 = fromCopy[34];
  v101 = [v100 countByEnumeratingWithState:&v556 objects:v686 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v557;
    do
    {
      v104 = 0;
      do
      {
        if (*v557 != v103)
        {
          objc_enumerationMutation(v100);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogLteRrcStateChange:*(*(&v556 + 1) + 8 * v104++)];
      }

      while (v102 != v104);
      v102 = [v100 countByEnumeratingWithState:&v556 objects:v686 count:16];
    }

    while (v102);
  }

  v555 = 0u;
  v554 = 0u;
  v553 = 0u;
  v552 = 0u;
  v105 = fromCopy[57];
  v106 = [v105 countByEnumeratingWithState:&v552 objects:v685 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v553;
    do
    {
      v109 = 0;
      do
      {
        if (*v553 != v108)
        {
          objc_enumerationMutation(v105);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogSystemEvent:*(*(&v552 + 1) + 8 * v109++)];
      }

      while (v107 != v109);
      v107 = [v105 countByEnumeratingWithState:&v552 objects:v685 count:16];
    }

    while (v107);
  }

  v551 = 0u;
  v550 = 0u;
  v549 = 0u;
  v548 = 0u;
  v110 = fromCopy[51];
  v111 = [v110 countByEnumeratingWithState:&v548 objects:v684 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v549;
    do
    {
      v114 = 0;
      do
      {
        if (*v549 != v113)
        {
          objc_enumerationMutation(v110);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogRatReselectionEvent:*(*(&v548 + 1) + 8 * v114++)];
      }

      while (v112 != v114);
      v112 = [v110 countByEnumeratingWithState:&v548 objects:v684 count:16];
    }

    while (v112);
  }

  v547 = 0u;
  v546 = 0u;
  v545 = 0u;
  v544 = 0u;
  v115 = fromCopy[50];
  v116 = [v115 countByEnumeratingWithState:&v544 objects:v683 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v545;
    do
    {
      v119 = 0;
      do
      {
        if (*v545 != v118)
        {
          objc_enumerationMutation(v115);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogRatRedirectionEvent:*(*(&v544 + 1) + 8 * v119++)];
      }

      while (v117 != v119);
      v117 = [v115 countByEnumeratingWithState:&v544 objects:v683 count:16];
    }

    while (v117);
  }

  v543 = 0u;
  v542 = 0u;
  v541 = 0u;
  v540 = 0u;
  v120 = fromCopy[25];
  v121 = [v120 countByEnumeratingWithState:&v540 objects:v682 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v541;
    do
    {
      v124 = 0;
      do
      {
        if (*v541 != v123)
        {
          objc_enumerationMutation(v120);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogGsmRrcStateChange:*(*(&v540 + 1) + 8 * v124++)];
      }

      while (v122 != v124);
      v122 = [v120 countByEnumeratingWithState:&v540 objects:v682 count:16];
    }

    while (v122);
  }

  v539 = 0u;
  v538 = 0u;
  v537 = 0u;
  v536 = 0u;
  v125 = fromCopy[54];
  v126 = [v125 countByEnumeratingWithState:&v536 objects:v681 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v537;
    do
    {
      v129 = 0;
      do
      {
        if (*v537 != v128)
        {
          objc_enumerationMutation(v125);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogServiceStatusEvent:*(*(&v536 + 1) + 8 * v129++)];
      }

      while (v127 != v129);
      v127 = [v125 countByEnumeratingWithState:&v536 objects:v681 count:16];
    }

    while (v127);
  }

  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v130 = fromCopy[47];
  v131 = [v130 countByEnumeratingWithState:&v532 objects:v680 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v533;
    do
    {
      v134 = 0;
      do
      {
        if (*v533 != v133)
        {
          objc_enumerationMutation(v130);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogPlmnSearchEvent:*(*(&v532 + 1) + 8 * v134++)];
      }

      while (v132 != v134);
      v132 = [v130 countByEnumeratingWithState:&v532 objects:v680 count:16];
    }

    while (v132);
  }

  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v135 = fromCopy[45];
  v136 = [v135 countByEnumeratingWithState:&v528 objects:v679 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v529;
    do
    {
      v139 = 0;
      do
      {
        if (*v529 != v138)
        {
          objc_enumerationMutation(v135);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNrSaRrcStateChange:*(*(&v528 + 1) + 8 * v139++)];
      }

      while (v137 != v139);
      v137 = [v135 countByEnumeratingWithState:&v528 objects:v679 count:16];
    }

    while (v137);
  }

  v527 = 0u;
  v526 = 0u;
  v525 = 0u;
  v524 = 0u;
  v140 = fromCopy[37];
  v141 = [v140 countByEnumeratingWithState:&v524 objects:v678 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v525;
    do
    {
      v144 = 0;
      do
      {
        if (*v525 != v143)
        {
          objc_enumerationMutation(v140);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRNSAENDCEvent:*(*(&v524 + 1) + 8 * v144++)];
      }

      while (v142 != v144);
      v142 = [v140 countByEnumeratingWithState:&v524 objects:v678 count:16];
    }

    while (v142);
  }

  v523 = 0u;
  v522 = 0u;
  v521 = 0u;
  v520 = 0u;
  v145 = fromCopy[36];
  v146 = [v145 countByEnumeratingWithState:&v520 objects:v677 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v521;
    do
    {
      v149 = 0;
      do
      {
        if (*v521 != v148)
        {
          objc_enumerationMutation(v145);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRCdrxConfig:*(*(&v520 + 1) + 8 * v149++)];
      }

      while (v147 != v149);
      v147 = [v145 countByEnumeratingWithState:&v520 objects:v677 count:16];
    }

    while (v147);
  }

  v519 = 0u;
  v518 = 0u;
  v517 = 0u;
  v516 = 0u;
  v150 = fromCopy[42];
  v151 = [v150 countByEnumeratingWithState:&v516 objects:v676 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v517;
    do
    {
      v154 = 0;
      do
      {
        if (*v517 != v153)
        {
          objc_enumerationMutation(v150);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRsub6BWP:*(*(&v516 + 1) + 8 * v154++)];
      }

      while (v152 != v154);
      v152 = [v150 countByEnumeratingWithState:&v516 objects:v676 count:16];
    }

    while (v152);
  }

  v515 = 0u;
  v514 = 0u;
  v513 = 0u;
  v512 = 0u;
  v155 = fromCopy[44];
  v156 = [v155 countByEnumeratingWithState:&v512 objects:v675 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v513;
    do
    {
      v159 = 0;
      do
      {
        if (*v513 != v158)
        {
          objc_enumerationMutation(v155);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNrCaConfigActivateStats:*(*(&v512 + 1) + 8 * v159++)];
      }

      while (v157 != v159);
      v157 = [v155 countByEnumeratingWithState:&v512 objects:v675 count:16];
    }

    while (v157);
  }

  v511 = 0u;
  v510 = 0u;
  v509 = 0u;
  v508 = 0u;
  v160 = fromCopy[35];
  v161 = [v160 countByEnumeratingWithState:&v508 objects:v674 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v509;
    do
    {
      v164 = 0;
      do
      {
        if (*v509 != v163)
        {
          objc_enumerationMutation(v160);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRCarrierComponentInfo:*(*(&v508 + 1) + 8 * v164++)];
      }

      while (v162 != v164);
      v162 = [v160 countByEnumeratingWithState:&v508 objects:v674 count:16];
    }

    while (v162);
  }

  v507 = 0u;
  v506 = 0u;
  v505 = 0u;
  v504 = 0u;
  v165 = fromCopy[43];
  v166 = [v165 countByEnumeratingWithState:&v504 objects:v673 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v505;
    do
    {
      v169 = 0;
      do
      {
        if (*v505 != v168)
        {
          objc_enumerationMutation(v165);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRsub6DLTBS:*(*(&v504 + 1) + 8 * v169++)];
      }

      while (v167 != v169);
      v167 = [v165 countByEnumeratingWithState:&v504 objects:v673 count:16];
    }

    while (v167);
  }

  v503 = 0u;
  v502 = 0u;
  v501 = 0u;
  v500 = 0u;
  v170 = fromCopy[40];
  v171 = [v170 countByEnumeratingWithState:&v500 objects:v672 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v501;
    do
    {
      v174 = 0;
      do
      {
        if (*v501 != v173)
        {
          objc_enumerationMutation(v170);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRSub6RSRP:*(*(&v500 + 1) + 8 * v174++)];
      }

      while (v172 != v174);
      v172 = [v170 countByEnumeratingWithState:&v500 objects:v672 count:16];
    }

    while (v172);
  }

  v499 = 0u;
  v498 = 0u;
  v497 = 0u;
  v496 = 0u;
  v175 = fromCopy[41];
  v176 = [v175 countByEnumeratingWithState:&v496 objects:v671 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v497;
    do
    {
      v179 = 0;
      do
      {
        if (*v497 != v178)
        {
          objc_enumerationMutation(v175);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogNRSub6SINR:*(*(&v496 + 1) + 8 * v179++)];
      }

      while (v177 != v179);
      v177 = [v175 countByEnumeratingWithState:&v496 objects:v671 count:16];
    }

    while (v177);
  }

  v495 = 0u;
  v494 = 0u;
  v493 = 0u;
  v492 = 0u;
  v180 = fromCopy[31];
  v181 = [v180 countByEnumeratingWithState:&v492 objects:v670 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v493;
    do
    {
      v184 = 0;
      do
      {
        if (*v493 != v183)
        {
          objc_enumerationMutation(v180);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogLteNrRxDiversityHist:*(*(&v492 + 1) + 8 * v184++)];
      }

      while (v182 != v184);
      v182 = [v180 countByEnumeratingWithState:&v492 objects:v670 count:16];
    }

    while (v182);
  }

  v491 = 0u;
  v490 = 0u;
  v489 = 0u;
  v488 = 0u;
  v185 = fromCopy[33];
  v186 = [v185 countByEnumeratingWithState:&v488 objects:v669 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v489;
    do
    {
      v189 = 0;
      do
      {
        if (*v489 != v188)
        {
          objc_enumerationMutation(v185);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogLteNrTxPowerHist:*(*(&v488 + 1) + 8 * v189++)];
      }

      while (v187 != v189);
      v187 = [v185 countByEnumeratingWithState:&v488 objects:v669 count:16];
    }

    while (v187);
  }

  v487 = 0u;
  v486 = 0u;
  v485 = 0u;
  v484 = 0u;
  v190 = fromCopy[32];
  v191 = [v190 countByEnumeratingWithState:&v484 objects:v668 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v485;
    do
    {
      v194 = 0;
      do
      {
        if (*v485 != v193)
        {
          objc_enumerationMutation(v190);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogLteNrRxTxActivityStats:*(*(&v484 + 1) + 8 * v194++)];
      }

      while (v192 != v194);
      v192 = [v190 countByEnumeratingWithState:&v484 objects:v668 count:16];
    }

    while (v192);
  }

  v483 = 0u;
  v482 = 0u;
  v481 = 0u;
  v480 = 0u;
  v195 = fromCopy[53];
  v196 = [v195 countByEnumeratingWithState:&v480 objects:v667 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v481;
    do
    {
      v199 = 0;
      do
      {
        if (*v481 != v198)
        {
          objc_enumerationMutation(v195);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogSFTState:*(*(&v480 + 1) + 8 * v199++)];
      }

      while (v197 != v199);
      v197 = [v195 countByEnumeratingWithState:&v480 objects:v667 count:16];
    }

    while (v197);
  }

  v479 = 0u;
  v478 = 0u;
  v477 = 0u;
  v476 = 0u;
  v200 = fromCopy[52];
  v201 = [v200 countByEnumeratingWithState:&v476 objects:v666 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v477;
    do
    {
      v204 = 0;
      do
      {
        if (*v477 != v203)
        {
          objc_enumerationMutation(v200);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogSFTRxTx:*(*(&v476 + 1) + 8 * v204++)];
      }

      while (v202 != v204);
      v202 = [v200 countByEnumeratingWithState:&v476 objects:v666 count:16];
    }

    while (v202);
  }

  v475 = 0u;
  v474 = 0u;
  v473 = 0u;
  v472 = 0u;
  v205 = fromCopy[61];
  v206 = [v205 countByEnumeratingWithState:&v472 objects:v665 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v473;
    do
    {
      v209 = 0;
      do
      {
        if (*v473 != v208)
        {
          objc_enumerationMutation(v205);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogXOShutdown:*(*(&v472 + 1) + 8 * v209++)];
      }

      while (v207 != v209);
      v207 = [v205 countByEnumeratingWithState:&v472 objects:v665 count:16];
    }

    while (v207);
  }

  v471 = 0u;
  v470 = 0u;
  v469 = 0u;
  v468 = 0u;
  v210 = fromCopy[21];
  v211 = [v210 countByEnumeratingWithState:&v468 objects:v664 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v469;
    do
    {
      v214 = 0;
      do
      {
        if (*v469 != v213)
        {
          objc_enumerationMutation(v210);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogCpuPerfLevels:*(*(&v468 + 1) + 8 * v214++)];
      }

      while (v212 != v214);
      v212 = [v210 countByEnumeratingWithState:&v468 objects:v664 count:16];
    }

    while (v212);
  }

  v467 = 0u;
  v466 = 0u;
  v465 = 0u;
  v464 = 0u;
  v215 = fromCopy[56];
  v216 = [v215 countByEnumeratingWithState:&v464 objects:v663 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v465;
    do
    {
      v219 = 0;
      do
      {
        if (*v465 != v218)
        {
          objc_enumerationMutation(v215);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogSocPerfLevels:*(*(&v464 + 1) + 8 * v219++)];
      }

      while (v217 != v219);
      v217 = [v215 countByEnumeratingWithState:&v464 objects:v663 count:16];
    }

    while (v217);
  }

  v463 = 0u;
  v462 = 0u;
  v461 = 0u;
  v460 = 0u;
  v220 = fromCopy[15];
  v221 = [v220 countByEnumeratingWithState:&v460 objects:v662 count:16];
  if (v221)
  {
    v222 = v221;
    v223 = *v461;
    do
    {
      v224 = 0;
      do
      {
        if (*v461 != v223)
        {
          objc_enumerationMutation(v220);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogAcmPerfLevels:*(*(&v460 + 1) + 8 * v224++)];
      }

      while (v222 != v224);
      v222 = [v220 countByEnumeratingWithState:&v460 objects:v662 count:16];
    }

    while (v222);
  }

  v459 = 0u;
  v458 = 0u;
  v457 = 0u;
  v456 = 0u;
  v225 = fromCopy[20];
  v226 = [v225 countByEnumeratingWithState:&v456 objects:v661 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = *v457;
    do
    {
      v229 = 0;
      do
      {
        if (*v457 != v228)
        {
          objc_enumerationMutation(v225);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogCpsSleepStates:*(*(&v456 + 1) + 8 * v229++)];
      }

      while (v227 != v229);
      v227 = [v225 countByEnumeratingWithState:&v456 objects:v661 count:16];
    }

    while (v227);
  }

  v455 = 0u;
  v454 = 0u;
  v453 = 0u;
  v452 = 0u;
  v230 = fromCopy[17];
  v231 = [v230 countByEnumeratingWithState:&v452 objects:v660 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v453;
    do
    {
      v234 = 0;
      do
      {
        if (*v453 != v233)
        {
          objc_enumerationMutation(v230);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogCdpDSleepStates:*(*(&v452 + 1) + 8 * v234++)];
      }

      while (v232 != v234);
      v232 = [v230 countByEnumeratingWithState:&v452 objects:v660 count:16];
    }

    while (v232);
  }

  v451 = 0u;
  v450 = 0u;
  v449 = 0u;
  v448 = 0u;
  v235 = fromCopy[19];
  v236 = [v235 countByEnumeratingWithState:&v448 objects:v659 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v449;
    do
    {
      v239 = 0;
      do
      {
        if (*v449 != v238)
        {
          objc_enumerationMutation(v235);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogCdpUSleepStates:*(*(&v448 + 1) + 8 * v239++)];
      }

      while (v237 != v239);
      v237 = [v235 countByEnumeratingWithState:&v448 objects:v659 count:16];
    }

    while (v237);
  }

  v447 = 0u;
  v446 = 0u;
  v445 = 0u;
  v444 = 0u;
  v240 = fromCopy[18];
  v241 = [v240 countByEnumeratingWithState:&v444 objects:v658 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v445;
    do
    {
      v244 = 0;
      do
      {
        if (*v445 != v243)
        {
          objc_enumerationMutation(v240);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogCdpHSleepStates:*(*(&v444 + 1) + 8 * v244++)];
      }

      while (v242 != v244);
      v242 = [v240 countByEnumeratingWithState:&v444 objects:v658 count:16];
    }

    while (v242);
  }

  v443 = 0u;
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v245 = fromCopy[26];
  v246 = [v245 countByEnumeratingWithState:&v440 objects:v657 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v441;
    do
    {
      v249 = 0;
      do
      {
        if (*v441 != v248)
        {
          objc_enumerationMutation(v245);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogL1CSleepStates:*(*(&v440 + 1) + 8 * v249++)];
      }

      while (v247 != v249);
      v247 = [v245 countByEnumeratingWithState:&v440 objects:v657 count:16];
    }

    while (v247);
  }

  v439 = 0u;
  v438 = 0u;
  v437 = 0u;
  v436 = 0u;
  v250 = fromCopy[27];
  v251 = [v250 countByEnumeratingWithState:&v436 objects:v656 count:16];
  if (v251)
  {
    v252 = v251;
    v253 = *v437;
    do
    {
      v254 = 0;
      do
      {
        if (*v437 != v253)
        {
          objc_enumerationMutation(v250);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogL1SSleepStates:*(*(&v436 + 1) + 8 * v254++)];
      }

      while (v252 != v254);
      v252 = [v250 countByEnumeratingWithState:&v436 objects:v656 count:16];
    }

    while (v252);
  }

  v435 = 0u;
  v434 = 0u;
  v433 = 0u;
  v432 = 0u;
  v255 = fromCopy[22];
  v256 = [v255 countByEnumeratingWithState:&v432 objects:v655 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = *v433;
    do
    {
      v259 = 0;
      do
      {
        if (*v433 != v258)
        {
          objc_enumerationMutation(v255);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogDcsSleepStates:*(*(&v432 + 1) + 8 * v259++)];
      }

      while (v257 != v259);
      v257 = [v255 countByEnumeratingWithState:&v432 objects:v655 count:16];
    }

    while (v257);
  }

  v431 = 0u;
  v430 = 0u;
  v429 = 0u;
  v428 = 0u;
  v260 = fromCopy[14];
  v261 = [v260 countByEnumeratingWithState:&v428 objects:v654 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v429;
    do
    {
      v264 = 0;
      do
      {
        if (*v429 != v263)
        {
          objc_enumerationMutation(v260);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLog2g3gSleepStates:*(*(&v428 + 1) + 8 * v264++)];
      }

      while (v262 != v264);
      v262 = [v260 countByEnumeratingWithState:&v428 objects:v654 count:16];
    }

    while (v262);
  }

  v427 = 0u;
  v426 = 0u;
  v425 = 0u;
  v424 = 0u;
  v265 = fromCopy[55];
  v266 = [v265 countByEnumeratingWithState:&v424 objects:v653 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v425;
    do
    {
      v269 = 0;
      do
      {
        if (*v425 != v268)
        {
          objc_enumerationMutation(v265);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogSleepStates:*(*(&v424 + 1) + 8 * v269++)];
      }

      while (v267 != v269);
      v267 = [v265 countByEnumeratingWithState:&v424 objects:v653 count:16];
    }

    while (v267);
  }

  v423 = 0u;
  v422 = 0u;
  v421 = 0u;
  v420 = 0u;
  v270 = fromCopy[13];
  v271 = [v270 countByEnumeratingWithState:&v420 objects:v652 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v421;
    do
    {
      v274 = 0;
      do
      {
        if (*v421 != v273)
        {
          objc_enumerationMutation(v270);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPlatformApBbSleepStats:*(*(&v420 + 1) + 8 * v274++)];
      }

      while (v272 != v274);
      v272 = [v270 countByEnumeratingWithState:&v420 objects:v652 count:16];
    }

    while (v272);
  }

  v418 = 0u;
  v419 = 0u;
  v416 = 0u;
  v417 = 0u;
  v275 = fromCopy[23];
  v276 = [v275 countByEnumeratingWithState:&v416 objects:v651 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v417;
    do
    {
      v279 = 0;
      do
      {
        if (*v417 != v278)
        {
          objc_enumerationMutation(v275);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogGPSStates:*(*(&v416 + 1) + 8 * v279++)];
      }

      while (v277 != v279);
      v277 = [v275 countByEnumeratingWithState:&v416 objects:v651 count:16];
    }

    while (v277);
  }

  v414 = 0u;
  v415 = 0u;
  v412 = 0u;
  v413 = 0u;
  v280 = fromCopy[62];
  v281 = [v280 countByEnumeratingWithState:&v412 objects:v650 count:16];
  if (v281)
  {
    v282 = v281;
    v283 = *v413;
    do
    {
      v284 = 0;
      do
      {
        if (*v413 != v283)
        {
          objc_enumerationMutation(v280);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerlogRFSSVoltageLevels:*(*(&v412 + 1) + 8 * v284++)];
      }

      while (v282 != v284);
      v282 = [v280 countByEnumeratingWithState:&v412 objects:v650 count:16];
    }

    while (v282);
  }

  v410 = 0u;
  v411 = 0u;
  v408 = 0u;
  v409 = 0u;
  v285 = fromCopy[16];
  v286 = [v285 countByEnumeratingWithState:&v408 objects:v649 count:16];
  if (v286)
  {
    v287 = v286;
    v288 = *v409;
    do
    {
      v289 = 0;
      do
      {
        if (*v409 != v288)
        {
          objc_enumerationMutation(v285);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularPowerLogBasebandSleepVeto:*(*(&v408 + 1) + 8 * v289++)];
      }

      while (v287 != v289);
      v287 = [v285 countByEnumeratingWithState:&v408 objects:v649 count:16];
    }

    while (v287);
  }

  v406 = 0u;
  v407 = 0u;
  v404 = 0u;
  v405 = 0u;
  v290 = fromCopy[1];
  v291 = [v290 countByEnumeratingWithState:&v404 objects:v648 count:16];
  if (v291)
  {
    v292 = v291;
    v293 = *v405;
    do
    {
      v294 = 0;
      do
      {
        if (*v405 != v293)
        {
          objc_enumerationMutation(v290);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularAcmSleepStats:*(*(&v404 + 1) + 8 * v294++)];
      }

      while (v292 != v294);
      v292 = [v290 countByEnumeratingWithState:&v404 objects:v648 count:16];
    }

    while (v292);
  }

  v402 = 0u;
  v403 = 0u;
  v400 = 0u;
  v401 = 0u;
  v295 = fromCopy[2];
  v296 = [v295 countByEnumeratingWithState:&v400 objects:v647 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v401;
    do
    {
      v299 = 0;
      do
      {
        if (*v401 != v298)
        {
          objc_enumerationMutation(v295);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularGsmServingCellRssiHist:*(*(&v400 + 1) + 8 * v299++)];
      }

      while (v297 != v299);
      v297 = [v295 countByEnumeratingWithState:&v400 objects:v647 count:16];
    }

    while (v297);
  }

  v398 = 0u;
  v399 = 0u;
  v396 = 0u;
  v397 = 0u;
  v300 = fromCopy[3];
  v301 = [v300 countByEnumeratingWithState:&v396 objects:v646 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v397;
    do
    {
      v304 = 0;
      do
      {
        if (*v397 != v303)
        {
          objc_enumerationMutation(v300);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularGsmTxPowerHist:*(*(&v396 + 1) + 8 * v304++)];
      }

      while (v302 != v304);
      v302 = [v300 countByEnumeratingWithState:&v396 objects:v646 count:16];
    }

    while (v302);
  }

  v394 = 0u;
  v395 = 0u;
  v392 = 0u;
  v393 = 0u;
  v305 = fromCopy[67];
  v306 = [v305 countByEnumeratingWithState:&v392 objects:v645 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v393;
    do
    {
      v309 = 0;
      do
      {
        if (*v393 != v308)
        {
          objc_enumerationMutation(v305);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularWcdmaRxDiversityHist:*(*(&v392 + 1) + 8 * v309++)];
      }

      while (v307 != v309);
      v307 = [v305 countByEnumeratingWithState:&v392 objects:v645 count:16];
    }

    while (v307);
  }

  v390 = 0u;
  v391 = 0u;
  v388 = 0u;
  v389 = 0u;
  v310 = fromCopy[68];
  v311 = [v310 countByEnumeratingWithState:&v388 objects:v644 count:16];
  if (v311)
  {
    v312 = v311;
    v313 = *v389;
    do
    {
      v314 = 0;
      do
      {
        if (*v389 != v313)
        {
          objc_enumerationMutation(v310);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularWcdmaServingCellRx0RssiHist:*(*(&v388 + 1) + 8 * v314++)];
      }

      while (v312 != v314);
      v312 = [v310 countByEnumeratingWithState:&v388 objects:v644 count:16];
    }

    while (v312);
  }

  v386 = 0u;
  v387 = 0u;
  v384 = 0u;
  v385 = 0u;
  v315 = fromCopy[69];
  v316 = [v315 countByEnumeratingWithState:&v384 objects:v643 count:16];
  if (v316)
  {
    v317 = v316;
    v318 = *v385;
    do
    {
      v319 = 0;
      do
      {
        if (*v385 != v318)
        {
          objc_enumerationMutation(v315);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularWcdmaServingCellRx1RssiHist:*(*(&v384 + 1) + 8 * v319++)];
      }

      while (v317 != v319);
      v317 = [v315 countByEnumeratingWithState:&v384 objects:v643 count:16];
    }

    while (v317);
  }

  v382 = 0u;
  v383 = 0u;
  v380 = 0u;
  v381 = 0u;
  v320 = fromCopy[70];
  v321 = [v320 countByEnumeratingWithState:&v380 objects:v642 count:16];
  if (v321)
  {
    v322 = v321;
    v323 = *v381;
    do
    {
      v324 = 0;
      do
      {
        if (*v381 != v323)
        {
          objc_enumerationMutation(v320);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularWcdmaTxPowerHist:*(*(&v380 + 1) + 8 * v324++)];
      }

      while (v322 != v324);
      v322 = [v320 countByEnumeratingWithState:&v380 objects:v642 count:16];
    }

    while (v322);
  }

  v378 = 0u;
  v379 = 0u;
  v376 = 0u;
  v377 = 0u;
  v325 = fromCopy[66];
  v326 = [v325 countByEnumeratingWithState:&v376 objects:v641 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v377;
    do
    {
      v329 = 0;
      do
      {
        if (*v377 != v328)
        {
          objc_enumerationMutation(v325);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularWcdmaRabModeHist:*(*(&v376 + 1) + 8 * v329++)];
      }

      while (v327 != v329);
      v327 = [v325 countByEnumeratingWithState:&v376 objects:v641 count:16];
    }

    while (v327);
  }

  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  v330 = fromCopy[65];
  v331 = [v330 countByEnumeratingWithState:&v372 objects:v640 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v373;
    do
    {
      v334 = 0;
      do
      {
        if (*v373 != v333)
        {
          objc_enumerationMutation(v330);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularWcdmaPsRabTypeHist:*(*(&v372 + 1) + 8 * v334++)];
      }

      while (v332 != v334);
      v332 = [v330 countByEnumeratingWithState:&v372 objects:v640 count:16];
    }

    while (v332);
  }

  v370 = 0u;
  v371 = 0u;
  v368 = 0u;
  v369 = 0u;
  v335 = fromCopy[64];
  v336 = [v335 countByEnumeratingWithState:&v368 objects:v639 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v369;
    do
    {
      v339 = 0;
      do
      {
        if (*v369 != v338)
        {
          objc_enumerationMutation(v335);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularWcdmaDataInactivityBeforeIdle:*(*(&v368 + 1) + 8 * v339++)];
      }

      while (v337 != v339);
      v337 = [v335 countByEnumeratingWithState:&v368 objects:v639 count:16];
    }

    while (v337);
  }

  v366 = 0u;
  v367 = 0u;
  v364 = 0u;
  v365 = 0u;
  v340 = fromCopy[7];
  v341 = [v340 countByEnumeratingWithState:&v364 objects:v638 count:16];
  if (v341)
  {
    v342 = v341;
    v343 = *v365;
    do
    {
      v344 = 0;
      do
      {
        if (*v365 != v343)
        {
          objc_enumerationMutation(v340);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularLteServingCellRsrpHist:*(*(&v364 + 1) + 8 * v344++)];
      }

      while (v342 != v344);
      v342 = [v340 countByEnumeratingWithState:&v364 objects:v638 count:16];
    }

    while (v342);
  }

  v362 = 0u;
  v363 = 0u;
  v360 = 0u;
  v361 = 0u;
  v345 = fromCopy[8];
  v346 = [v345 countByEnumeratingWithState:&v360 objects:v637 count:16];
  if (v346)
  {
    v347 = v346;
    v348 = *v361;
    do
    {
      v349 = 0;
      do
      {
        if (*v361 != v348)
        {
          objc_enumerationMutation(v345);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularLteServingCellSinrHist:*(*(&v360 + 1) + 8 * v349++)];
      }

      while (v347 != v349);
      v347 = [v345 countByEnumeratingWithState:&v360 objects:v637 count:16];
    }

    while (v347);
  }

  v358 = 0u;
  v359 = 0u;
  v356 = 0u;
  v357 = 0u;
  v350 = fromCopy[5];
  v351 = [v350 countByEnumeratingWithState:&v356 objects:v636 count:16];
  if (v351)
  {
    v352 = v351;
    v353 = *v357;
    do
    {
      v354 = 0;
      do
      {
        if (*v357 != v353)
        {
          objc_enumerationMutation(v350);
        }

        [(AWDMETRICSMetricLogPower *)self addKCellularLteDataInactivityBeforeIdle:*(*(&v356 + 1) + 8 * v354++), v356];
      }

      while (v352 != v354);
      v352 = [v350 countByEnumeratingWithState:&v356 objects:v636 count:16];
    }

    while (v352);
  }

  v355 = *MEMORY[0x277D85DE8];
}

@end