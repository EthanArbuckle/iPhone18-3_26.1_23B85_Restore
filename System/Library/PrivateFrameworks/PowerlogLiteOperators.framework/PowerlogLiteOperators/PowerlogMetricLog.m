@interface PowerlogMetricLog
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKCellularCdma1XConnectionHist:(id)a3;
- (void)addKCellularCdma1XProtocolStackStateHist:(id)a3;
- (void)addKCellularCdma1XRrState:(id)a3;
- (void)addKCellularCdma1XRxDiversityHist:(id)a3;
- (void)addKCellularCdma1XServingCellRx0EcIoHist:(id)a3;
- (void)addKCellularCdma1XServingCellRx0RssiHist:(id)a3;
- (void)addKCellularCdma1XServingCellRx1EcIoHist:(id)a3;
- (void)addKCellularCdma1XServingCellRx1RssiHist:(id)a3;
- (void)addKCellularCdma1XTxPowerHist:(id)a3;
- (void)addKCellularCdmaEvdoProtocolStackStateHist:(id)a3;
- (void)addKCellularCdmaEvdoRrState:(id)a3;
- (void)addKCellularCdmaEvdoRxDiversityHist:(id)a3;
- (void)addKCellularCdmaEvdoServingCellRx0EcIoHist:(id)a3;
- (void)addKCellularCdmaEvdoServingCellRx0RssiHist:(id)a3;
- (void)addKCellularCdmaEvdoServingCellRx1EcIoHist:(id)a3;
- (void)addKCellularCdmaEvdoServingCellRx1RssiHist:(id)a3;
- (void)addKCellularCdmaEvdoTxPowerHist:(id)a3;
- (void)addKCellularCellPlmnSearchCount:(id)a3;
- (void)addKCellularCellPlmnSearchHist:(id)a3;
- (void)addKCellularDownlinkIpPacketFilterStatus:(id)a3;
- (void)addKCellularDvfsStats:(id)a3;
- (void)addKCellularFwCoreStats:(id)a3;
- (void)addKCellularGsmConnectedModeHist:(id)a3;
- (void)addKCellularGsmL1State:(id)a3;
- (void)addKCellularGsmServingCellRssiHist:(id)a3;
- (void)addKCellularGsmServingCellSnrHist:(id)a3;
- (void)addKCellularGsmTxPowerHist:(id)a3;
- (void)addKCellularLqmStateChange:(id)a3;
- (void)addKCellularLteAdvancedRxStateHist:(id)a3;
- (void)addKCellularLteCdrxConfig:(id)a3;
- (void)addKCellularLteComponentCarrierInfo:(id)a3;
- (void)addKCellularLteDlSccStateHist:(id)a3;
- (void)addKCellularLteDlSccStateHistV3:(id)a3;
- (void)addKCellularLteFwDuplexMode:(id)a3;
- (void)addKCellularLtePagingCycle:(id)a3;
- (void)addKCellularLtePdcchStateHist:(id)a3;
- (void)addKCellularLtePdcchStateStats:(id)a3;
- (void)addKCellularLteRadioLinkFailure:(id)a3;
- (void)addKCellularLteRrcState:(id)a3;
- (void)addKCellularLteRxDiversityHist:(id)a3;
- (void)addKCellularLteRxTxStateHist:(id)a3;
- (void)addKCellularLteServingCellRsrpHist:(id)a3;
- (void)addKCellularLteServingCellSinrHist:(id)a3;
- (void)addKCellularLteSleepStateHist:(id)a3;
- (void)addKCellularLteTdsGsmHwStats:(id)a3;
- (void)addKCellularLteTotalDlTbsHist:(id)a3;
- (void)addKCellularLteTxPowerHist:(id)a3;
- (void)addKCellularLteUlSccStateHist:(id)a3;
- (void)addKCellularLteWcdmaGsmHwStats:(id)a3;
- (void)addKCellularLteWcdmaTdsHwStats:(id)a3;
- (void)addKCellularPerClientProfileTriggerCount:(id)a3;
- (void)addKCellularPeripheralStats:(id)a3;
- (void)addKCellularPmicHwStats:(id)a3;
- (void)addKCellularPmuAverageCurrent:(id)a3;
- (void)addKCellularProtocolStackCpuStats:(id)a3;
- (void)addKCellularProtocolStackPowerState:(id)a3;
- (void)addKCellularProtocolStackState:(id)a3;
- (void)addKCellularProtocolStackStateHist2:(id)a3;
- (void)addKCellularProtocolStackStateHist:(id)a3;
- (void)addKCellularServiceLost:(id)a3;
- (void)addKCellularServingCellRfBandHist:(id)a3;
- (void)addKCellularTdsL1State:(id)a3;
- (void)addKCellularTdsRabModeHist:(id)a3;
- (void)addKCellularTdsRabTypeHist:(id)a3;
- (void)addKCellularTdsRrcState:(id)a3;
- (void)addKCellularTdsRxDiversityHist:(id)a3;
- (void)addKCellularTdsServingCellRx0RscpHist:(id)a3;
- (void)addKCellularTdsServingCellRx0RssiHist:(id)a3;
- (void)addKCellularTdsServingCellRx1RscpHist:(id)a3;
- (void)addKCellularTdsServingCellRx1RssiHist:(id)a3;
- (void)addKCellularTdsTxPowerHist:(id)a3;
- (void)addKCellularWcdmaCarrierStatusHist:(id)a3;
- (void)addKCellularWcdmaCpcStat:(id)a3;
- (void)addKCellularWcdmaDataInactivityBeforeIdle:(id)a3;
- (void)addKCellularWcdmaIdleToConnectedUserData:(id)a3;
- (void)addKCellularWcdmaL1State:(id)a3;
- (void)addKCellularWcdmaRabModeHist:(id)a3;
- (void)addKCellularWcdmaRabStatus:(id)a3;
- (void)addKCellularWcdmaRabTypeHist:(id)a3;
- (void)addKCellularWcdmaReceiverStatusOnC0Hist:(id)a3;
- (void)addKCellularWcdmaReceiverStatusOnC1Hist:(id)a3;
- (void)addKCellularWcdmaRrcConfiguration:(id)a3;
- (void)addKCellularWcdmaRrcConnectionState:(id)a3;
- (void)addKCellularWcdmaRxDiversityHist:(id)a3;
- (void)addKCellularWcdmaServingCellRx0EcNoHist:(id)a3;
- (void)addKCellularWcdmaServingCellRx0RssiHist:(id)a3;
- (void)addKCellularWcdmaServingCellRx1EcNoHist:(id)a3;
- (void)addKCellularWcdmaServingCellRx1RssiHist:(id)a3;
- (void)addKCellularWcdmaTxPowerHist:(id)a3;
- (void)addKCellularWcdmaVadHist:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PowerlogMetricLog

- (void)addKCellularPerClientProfileTriggerCount:(id)a3
{
  v4 = a3;
  kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts;
  v8 = v4;
  if (!kCellularPerClientProfileTriggerCounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPerClientProfileTriggerCounts;
    self->_kCellularPerClientProfileTriggerCounts = v6;

    v4 = v8;
    kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts;
  }

  [(NSMutableArray *)kCellularPerClientProfileTriggerCounts addObject:v4];
}

- (void)addKCellularProtocolStackCpuStats:(id)a3
{
  v4 = a3;
  kCellularProtocolStackCpuStats = self->_kCellularProtocolStackCpuStats;
  v8 = v4;
  if (!kCellularProtocolStackCpuStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackCpuStats;
    self->_kCellularProtocolStackCpuStats = v6;

    v4 = v8;
    kCellularProtocolStackCpuStats = self->_kCellularProtocolStackCpuStats;
  }

  [(NSMutableArray *)kCellularProtocolStackCpuStats addObject:v4];
}

- (void)addKCellularPeripheralStats:(id)a3
{
  v4 = a3;
  kCellularPeripheralStats = self->_kCellularPeripheralStats;
  v8 = v4;
  if (!kCellularPeripheralStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPeripheralStats;
    self->_kCellularPeripheralStats = v6;

    v4 = v8;
    kCellularPeripheralStats = self->_kCellularPeripheralStats;
  }

  [(NSMutableArray *)kCellularPeripheralStats addObject:v4];
}

- (void)addKCellularDvfsStats:(id)a3
{
  v4 = a3;
  kCellularDvfsStats = self->_kCellularDvfsStats;
  v8 = v4;
  if (!kCellularDvfsStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularDvfsStats;
    self->_kCellularDvfsStats = v6;

    v4 = v8;
    kCellularDvfsStats = self->_kCellularDvfsStats;
  }

  [(NSMutableArray *)kCellularDvfsStats addObject:v4];
}

- (void)addKCellularLteWcdmaGsmHwStats:(id)a3
{
  v4 = a3;
  kCellularLteWcdmaGsmHwStats = self->_kCellularLteWcdmaGsmHwStats;
  v8 = v4;
  if (!kCellularLteWcdmaGsmHwStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteWcdmaGsmHwStats;
    self->_kCellularLteWcdmaGsmHwStats = v6;

    v4 = v8;
    kCellularLteWcdmaGsmHwStats = self->_kCellularLteWcdmaGsmHwStats;
  }

  [(NSMutableArray *)kCellularLteWcdmaGsmHwStats addObject:v4];
}

- (void)addKCellularLteTdsGsmHwStats:(id)a3
{
  v4 = a3;
  kCellularLteTdsGsmHwStats = self->_kCellularLteTdsGsmHwStats;
  v8 = v4;
  if (!kCellularLteTdsGsmHwStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteTdsGsmHwStats;
    self->_kCellularLteTdsGsmHwStats = v6;

    v4 = v8;
    kCellularLteTdsGsmHwStats = self->_kCellularLteTdsGsmHwStats;
  }

  [(NSMutableArray *)kCellularLteTdsGsmHwStats addObject:v4];
}

- (void)addKCellularPmuAverageCurrent:(id)a3
{
  v4 = a3;
  kCellularPmuAverageCurrents = self->_kCellularPmuAverageCurrents;
  v8 = v4;
  if (!kCellularPmuAverageCurrents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPmuAverageCurrents;
    self->_kCellularPmuAverageCurrents = v6;

    v4 = v8;
    kCellularPmuAverageCurrents = self->_kCellularPmuAverageCurrents;
  }

  [(NSMutableArray *)kCellularPmuAverageCurrents addObject:v4];
}

- (void)addKCellularFwCoreStats:(id)a3
{
  v4 = a3;
  kCellularFwCoreStats = self->_kCellularFwCoreStats;
  v8 = v4;
  if (!kCellularFwCoreStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularFwCoreStats;
    self->_kCellularFwCoreStats = v6;

    v4 = v8;
    kCellularFwCoreStats = self->_kCellularFwCoreStats;
  }

  [(NSMutableArray *)kCellularFwCoreStats addObject:v4];
}

- (void)addKCellularLteWcdmaTdsHwStats:(id)a3
{
  v4 = a3;
  kCellularLteWcdmaTdsHwStats = self->_kCellularLteWcdmaTdsHwStats;
  v8 = v4;
  if (!kCellularLteWcdmaTdsHwStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteWcdmaTdsHwStats;
    self->_kCellularLteWcdmaTdsHwStats = v6;

    v4 = v8;
    kCellularLteWcdmaTdsHwStats = self->_kCellularLteWcdmaTdsHwStats;
  }

  [(NSMutableArray *)kCellularLteWcdmaTdsHwStats addObject:v4];
}

- (void)addKCellularPmicHwStats:(id)a3
{
  v4 = a3;
  kCellularPmicHwStats = self->_kCellularPmicHwStats;
  v8 = v4;
  if (!kCellularPmicHwStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPmicHwStats;
    self->_kCellularPmicHwStats = v6;

    v4 = v8;
    kCellularPmicHwStats = self->_kCellularPmicHwStats;
  }

  [(NSMutableArray *)kCellularPmicHwStats addObject:v4];
}

- (void)addKCellularGsmServingCellRssiHist:(id)a3
{
  v4 = a3;
  kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists;
  v8 = v4;
  if (!kCellularGsmServingCellRssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmServingCellRssiHists;
    self->_kCellularGsmServingCellRssiHists = v6;

    v4 = v8;
    kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists;
  }

  [(NSMutableArray *)kCellularGsmServingCellRssiHists addObject:v4];
}

- (void)addKCellularGsmServingCellSnrHist:(id)a3
{
  v4 = a3;
  kCellularGsmServingCellSnrHists = self->_kCellularGsmServingCellSnrHists;
  v8 = v4;
  if (!kCellularGsmServingCellSnrHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmServingCellSnrHists;
    self->_kCellularGsmServingCellSnrHists = v6;

    v4 = v8;
    kCellularGsmServingCellSnrHists = self->_kCellularGsmServingCellSnrHists;
  }

  [(NSMutableArray *)kCellularGsmServingCellSnrHists addObject:v4];
}

- (void)addKCellularGsmTxPowerHist:(id)a3
{
  v4 = a3;
  kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists;
  v8 = v4;
  if (!kCellularGsmTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmTxPowerHists;
    self->_kCellularGsmTxPowerHists = v6;

    v4 = v8;
    kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists;
  }

  [(NSMutableArray *)kCellularGsmTxPowerHists addObject:v4];
}

- (void)addKCellularGsmConnectedModeHist:(id)a3
{
  v4 = a3;
  kCellularGsmConnectedModeHists = self->_kCellularGsmConnectedModeHists;
  v8 = v4;
  if (!kCellularGsmConnectedModeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmConnectedModeHists;
    self->_kCellularGsmConnectedModeHists = v6;

    v4 = v8;
    kCellularGsmConnectedModeHists = self->_kCellularGsmConnectedModeHists;
  }

  [(NSMutableArray *)kCellularGsmConnectedModeHists addObject:v4];
}

- (void)addKCellularGsmL1State:(id)a3
{
  v4 = a3;
  kCellularGsmL1States = self->_kCellularGsmL1States;
  v8 = v4;
  if (!kCellularGsmL1States)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmL1States;
    self->_kCellularGsmL1States = v6;

    v4 = v8;
    kCellularGsmL1States = self->_kCellularGsmL1States;
  }

  [(NSMutableArray *)kCellularGsmL1States addObject:v4];
}

- (void)addKCellularWcdmaCpcStat:(id)a3
{
  v4 = a3;
  kCellularWcdmaCpcStats = self->_kCellularWcdmaCpcStats;
  v8 = v4;
  if (!kCellularWcdmaCpcStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaCpcStats;
    self->_kCellularWcdmaCpcStats = v6;

    v4 = v8;
    kCellularWcdmaCpcStats = self->_kCellularWcdmaCpcStats;
  }

  [(NSMutableArray *)kCellularWcdmaCpcStats addObject:v4];
}

- (void)addKCellularWcdmaRxDiversityHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists;
  v8 = v4;
  if (!kCellularWcdmaRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRxDiversityHists;
    self->_kCellularWcdmaRxDiversityHists = v6;

    v4 = v8;
    kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists;
  }

  [(NSMutableArray *)kCellularWcdmaRxDiversityHists addObject:v4];
}

- (void)addKCellularWcdmaServingCellRx0RssiHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists;
  v8 = v4;
  if (!kCellularWcdmaServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx0RssiHists;
    self->_kCellularWcdmaServingCellRx0RssiHists = v6;

    v4 = v8;
    kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx0RssiHists addObject:v4];
}

- (void)addKCellularWcdmaServingCellRx1RssiHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists;
  v8 = v4;
  if (!kCellularWcdmaServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx1RssiHists;
    self->_kCellularWcdmaServingCellRx1RssiHists = v6;

    v4 = v8;
    kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx1RssiHists addObject:v4];
}

- (void)addKCellularWcdmaServingCellRx0EcNoHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaServingCellRx0EcNoHists = self->_kCellularWcdmaServingCellRx0EcNoHists;
  v8 = v4;
  if (!kCellularWcdmaServingCellRx0EcNoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx0EcNoHists;
    self->_kCellularWcdmaServingCellRx0EcNoHists = v6;

    v4 = v8;
    kCellularWcdmaServingCellRx0EcNoHists = self->_kCellularWcdmaServingCellRx0EcNoHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx0EcNoHists addObject:v4];
}

- (void)addKCellularWcdmaServingCellRx1EcNoHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaServingCellRx1EcNoHists = self->_kCellularWcdmaServingCellRx1EcNoHists;
  v8 = v4;
  if (!kCellularWcdmaServingCellRx1EcNoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx1EcNoHists;
    self->_kCellularWcdmaServingCellRx1EcNoHists = v6;

    v4 = v8;
    kCellularWcdmaServingCellRx1EcNoHists = self->_kCellularWcdmaServingCellRx1EcNoHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx1EcNoHists addObject:v4];
}

- (void)addKCellularWcdmaTxPowerHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists;
  v8 = v4;
  if (!kCellularWcdmaTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaTxPowerHists;
    self->_kCellularWcdmaTxPowerHists = v6;

    v4 = v8;
    kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists;
  }

  [(NSMutableArray *)kCellularWcdmaTxPowerHists addObject:v4];
}

- (void)addKCellularWcdmaReceiverStatusOnC0Hist:(id)a3
{
  v4 = a3;
  kCellularWcdmaReceiverStatusOnC0Hists = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  v8 = v4;
  if (!kCellularWcdmaReceiverStatusOnC0Hists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaReceiverStatusOnC0Hists;
    self->_kCellularWcdmaReceiverStatusOnC0Hists = v6;

    v4 = v8;
    kCellularWcdmaReceiverStatusOnC0Hists = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  }

  [(NSMutableArray *)kCellularWcdmaReceiverStatusOnC0Hists addObject:v4];
}

- (void)addKCellularWcdmaReceiverStatusOnC1Hist:(id)a3
{
  v4 = a3;
  kCellularWcdmaReceiverStatusOnC1Hists = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  v8 = v4;
  if (!kCellularWcdmaReceiverStatusOnC1Hists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaReceiverStatusOnC1Hists;
    self->_kCellularWcdmaReceiverStatusOnC1Hists = v6;

    v4 = v8;
    kCellularWcdmaReceiverStatusOnC1Hists = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  }

  [(NSMutableArray *)kCellularWcdmaReceiverStatusOnC1Hists addObject:v4];
}

- (void)addKCellularWcdmaCarrierStatusHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaCarrierStatusHists = self->_kCellularWcdmaCarrierStatusHists;
  v8 = v4;
  if (!kCellularWcdmaCarrierStatusHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaCarrierStatusHists;
    self->_kCellularWcdmaCarrierStatusHists = v6;

    v4 = v8;
    kCellularWcdmaCarrierStatusHists = self->_kCellularWcdmaCarrierStatusHists;
  }

  [(NSMutableArray *)kCellularWcdmaCarrierStatusHists addObject:v4];
}

- (void)addKCellularWcdmaRabModeHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists;
  v8 = v4;
  if (!kCellularWcdmaRabModeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRabModeHists;
    self->_kCellularWcdmaRabModeHists = v6;

    v4 = v8;
    kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists;
  }

  [(NSMutableArray *)kCellularWcdmaRabModeHists addObject:v4];
}

- (void)addKCellularWcdmaRabTypeHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaRabTypeHists = self->_kCellularWcdmaRabTypeHists;
  v8 = v4;
  if (!kCellularWcdmaRabTypeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRabTypeHists;
    self->_kCellularWcdmaRabTypeHists = v6;

    v4 = v8;
    kCellularWcdmaRabTypeHists = self->_kCellularWcdmaRabTypeHists;
  }

  [(NSMutableArray *)kCellularWcdmaRabTypeHists addObject:v4];
}

- (void)addKCellularWcdmaRrcConnectionState:(id)a3
{
  v4 = a3;
  kCellularWcdmaRrcConnectionStates = self->_kCellularWcdmaRrcConnectionStates;
  v8 = v4;
  if (!kCellularWcdmaRrcConnectionStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRrcConnectionStates;
    self->_kCellularWcdmaRrcConnectionStates = v6;

    v4 = v8;
    kCellularWcdmaRrcConnectionStates = self->_kCellularWcdmaRrcConnectionStates;
  }

  [(NSMutableArray *)kCellularWcdmaRrcConnectionStates addObject:v4];
}

- (void)addKCellularWcdmaRrcConfiguration:(id)a3
{
  v4 = a3;
  kCellularWcdmaRrcConfigurations = self->_kCellularWcdmaRrcConfigurations;
  v8 = v4;
  if (!kCellularWcdmaRrcConfigurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRrcConfigurations;
    self->_kCellularWcdmaRrcConfigurations = v6;

    v4 = v8;
    kCellularWcdmaRrcConfigurations = self->_kCellularWcdmaRrcConfigurations;
  }

  [(NSMutableArray *)kCellularWcdmaRrcConfigurations addObject:v4];
}

- (void)addKCellularWcdmaRabStatus:(id)a3
{
  v4 = a3;
  kCellularWcdmaRabStatus = self->_kCellularWcdmaRabStatus;
  v8 = v4;
  if (!kCellularWcdmaRabStatus)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRabStatus;
    self->_kCellularWcdmaRabStatus = v6;

    v4 = v8;
    kCellularWcdmaRabStatus = self->_kCellularWcdmaRabStatus;
  }

  [(NSMutableArray *)kCellularWcdmaRabStatus addObject:v4];
}

- (void)addKCellularWcdmaL1State:(id)a3
{
  v4 = a3;
  kCellularWcdmaL1States = self->_kCellularWcdmaL1States;
  v8 = v4;
  if (!kCellularWcdmaL1States)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaL1States;
    self->_kCellularWcdmaL1States = v6;

    v4 = v8;
    kCellularWcdmaL1States = self->_kCellularWcdmaL1States;
  }

  [(NSMutableArray *)kCellularWcdmaL1States addObject:v4];
}

- (void)addKCellularWcdmaDataInactivityBeforeIdle:(id)a3
{
  v4 = a3;
  kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v8 = v4;
  if (!kCellularWcdmaDataInactivityBeforeIdles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaDataInactivityBeforeIdles;
    self->_kCellularWcdmaDataInactivityBeforeIdles = v6;

    v4 = v8;
    kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles;
  }

  [(NSMutableArray *)kCellularWcdmaDataInactivityBeforeIdles addObject:v4];
}

- (void)addKCellularWcdmaIdleToConnectedUserData:(id)a3
{
  v4 = a3;
  kCellularWcdmaIdleToConnectedUserDatas = self->_kCellularWcdmaIdleToConnectedUserDatas;
  v8 = v4;
  if (!kCellularWcdmaIdleToConnectedUserDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaIdleToConnectedUserDatas;
    self->_kCellularWcdmaIdleToConnectedUserDatas = v6;

    v4 = v8;
    kCellularWcdmaIdleToConnectedUserDatas = self->_kCellularWcdmaIdleToConnectedUserDatas;
  }

  [(NSMutableArray *)kCellularWcdmaIdleToConnectedUserDatas addObject:v4];
}

- (void)addKCellularWcdmaVadHist:(id)a3
{
  v4 = a3;
  kCellularWcdmaVadHists = self->_kCellularWcdmaVadHists;
  v8 = v4;
  if (!kCellularWcdmaVadHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaVadHists;
    self->_kCellularWcdmaVadHists = v6;

    v4 = v8;
    kCellularWcdmaVadHists = self->_kCellularWcdmaVadHists;
  }

  [(NSMutableArray *)kCellularWcdmaVadHists addObject:v4];
}

- (void)addKCellularTdsRxDiversityHist:(id)a3
{
  v4 = a3;
  kCellularTdsRxDiversityHists = self->_kCellularTdsRxDiversityHists;
  v8 = v4;
  if (!kCellularTdsRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsRxDiversityHists;
    self->_kCellularTdsRxDiversityHists = v6;

    v4 = v8;
    kCellularTdsRxDiversityHists = self->_kCellularTdsRxDiversityHists;
  }

  [(NSMutableArray *)kCellularTdsRxDiversityHists addObject:v4];
}

- (void)addKCellularTdsServingCellRx0RssiHist:(id)a3
{
  v4 = a3;
  kCellularTdsServingCellRx0RssiHists = self->_kCellularTdsServingCellRx0RssiHists;
  v8 = v4;
  if (!kCellularTdsServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsServingCellRx0RssiHists;
    self->_kCellularTdsServingCellRx0RssiHists = v6;

    v4 = v8;
    kCellularTdsServingCellRx0RssiHists = self->_kCellularTdsServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularTdsServingCellRx0RssiHists addObject:v4];
}

- (void)addKCellularTdsServingCellRx1RssiHist:(id)a3
{
  v4 = a3;
  kCellularTdsServingCellRx1RssiHists = self->_kCellularTdsServingCellRx1RssiHists;
  v8 = v4;
  if (!kCellularTdsServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsServingCellRx1RssiHists;
    self->_kCellularTdsServingCellRx1RssiHists = v6;

    v4 = v8;
    kCellularTdsServingCellRx1RssiHists = self->_kCellularTdsServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularTdsServingCellRx1RssiHists addObject:v4];
}

- (void)addKCellularTdsServingCellRx0RscpHist:(id)a3
{
  v4 = a3;
  kCellularTdsServingCellRx0RscpHists = self->_kCellularTdsServingCellRx0RscpHists;
  v8 = v4;
  if (!kCellularTdsServingCellRx0RscpHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsServingCellRx0RscpHists;
    self->_kCellularTdsServingCellRx0RscpHists = v6;

    v4 = v8;
    kCellularTdsServingCellRx0RscpHists = self->_kCellularTdsServingCellRx0RscpHists;
  }

  [(NSMutableArray *)kCellularTdsServingCellRx0RscpHists addObject:v4];
}

- (void)addKCellularTdsServingCellRx1RscpHist:(id)a3
{
  v4 = a3;
  kCellularTdsServingCellRx1RscpHists = self->_kCellularTdsServingCellRx1RscpHists;
  v8 = v4;
  if (!kCellularTdsServingCellRx1RscpHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsServingCellRx1RscpHists;
    self->_kCellularTdsServingCellRx1RscpHists = v6;

    v4 = v8;
    kCellularTdsServingCellRx1RscpHists = self->_kCellularTdsServingCellRx1RscpHists;
  }

  [(NSMutableArray *)kCellularTdsServingCellRx1RscpHists addObject:v4];
}

- (void)addKCellularTdsTxPowerHist:(id)a3
{
  v4 = a3;
  kCellularTdsTxPowerHists = self->_kCellularTdsTxPowerHists;
  v8 = v4;
  if (!kCellularTdsTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsTxPowerHists;
    self->_kCellularTdsTxPowerHists = v6;

    v4 = v8;
    kCellularTdsTxPowerHists = self->_kCellularTdsTxPowerHists;
  }

  [(NSMutableArray *)kCellularTdsTxPowerHists addObject:v4];
}

- (void)addKCellularTdsRabModeHist:(id)a3
{
  v4 = a3;
  kCellularTdsRabModeHists = self->_kCellularTdsRabModeHists;
  v8 = v4;
  if (!kCellularTdsRabModeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsRabModeHists;
    self->_kCellularTdsRabModeHists = v6;

    v4 = v8;
    kCellularTdsRabModeHists = self->_kCellularTdsRabModeHists;
  }

  [(NSMutableArray *)kCellularTdsRabModeHists addObject:v4];
}

- (void)addKCellularTdsRabTypeHist:(id)a3
{
  v4 = a3;
  kCellularTdsRabTypeHists = self->_kCellularTdsRabTypeHists;
  v8 = v4;
  if (!kCellularTdsRabTypeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsRabTypeHists;
    self->_kCellularTdsRabTypeHists = v6;

    v4 = v8;
    kCellularTdsRabTypeHists = self->_kCellularTdsRabTypeHists;
  }

  [(NSMutableArray *)kCellularTdsRabTypeHists addObject:v4];
}

- (void)addKCellularTdsRrcState:(id)a3
{
  v4 = a3;
  kCellularTdsRrcStates = self->_kCellularTdsRrcStates;
  v8 = v4;
  if (!kCellularTdsRrcStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsRrcStates;
    self->_kCellularTdsRrcStates = v6;

    v4 = v8;
    kCellularTdsRrcStates = self->_kCellularTdsRrcStates;
  }

  [(NSMutableArray *)kCellularTdsRrcStates addObject:v4];
}

- (void)addKCellularTdsL1State:(id)a3
{
  v4 = a3;
  kCellularTdsL1States = self->_kCellularTdsL1States;
  v8 = v4;
  if (!kCellularTdsL1States)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsL1States;
    self->_kCellularTdsL1States = v6;

    v4 = v8;
    kCellularTdsL1States = self->_kCellularTdsL1States;
  }

  [(NSMutableArray *)kCellularTdsL1States addObject:v4];
}

- (void)addKCellularLteFwDuplexMode:(id)a3
{
  v4 = a3;
  kCellularLteFwDuplexModes = self->_kCellularLteFwDuplexModes;
  v8 = v4;
  if (!kCellularLteFwDuplexModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteFwDuplexModes;
    self->_kCellularLteFwDuplexModes = v6;

    v4 = v8;
    kCellularLteFwDuplexModes = self->_kCellularLteFwDuplexModes;
  }

  [(NSMutableArray *)kCellularLteFwDuplexModes addObject:v4];
}

- (void)addKCellularLteServingCellRsrpHist:(id)a3
{
  v4 = a3;
  kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists;
  v8 = v4;
  if (!kCellularLteServingCellRsrpHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteServingCellRsrpHists;
    self->_kCellularLteServingCellRsrpHists = v6;

    v4 = v8;
    kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists;
  }

  [(NSMutableArray *)kCellularLteServingCellRsrpHists addObject:v4];
}

- (void)addKCellularLteServingCellSinrHist:(id)a3
{
  v4 = a3;
  kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists;
  v8 = v4;
  if (!kCellularLteServingCellSinrHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteServingCellSinrHists;
    self->_kCellularLteServingCellSinrHists = v6;

    v4 = v8;
    kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists;
  }

  [(NSMutableArray *)kCellularLteServingCellSinrHists addObject:v4];
}

- (void)addKCellularLteSleepStateHist:(id)a3
{
  v4 = a3;
  kCellularLteSleepStateHists = self->_kCellularLteSleepStateHists;
  v8 = v4;
  if (!kCellularLteSleepStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteSleepStateHists;
    self->_kCellularLteSleepStateHists = v6;

    v4 = v8;
    kCellularLteSleepStateHists = self->_kCellularLteSleepStateHists;
  }

  [(NSMutableArray *)kCellularLteSleepStateHists addObject:v4];
}

- (void)addKCellularLteTxPowerHist:(id)a3
{
  v4 = a3;
  kCellularLteTxPowerHists = self->_kCellularLteTxPowerHists;
  v8 = v4;
  if (!kCellularLteTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteTxPowerHists;
    self->_kCellularLteTxPowerHists = v6;

    v4 = v8;
    kCellularLteTxPowerHists = self->_kCellularLteTxPowerHists;
  }

  [(NSMutableArray *)kCellularLteTxPowerHists addObject:v4];
}

- (void)addKCellularLteDlSccStateHist:(id)a3
{
  v4 = a3;
  kCellularLteDlSccStateHists = self->_kCellularLteDlSccStateHists;
  v8 = v4;
  if (!kCellularLteDlSccStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteDlSccStateHists;
    self->_kCellularLteDlSccStateHists = v6;

    v4 = v8;
    kCellularLteDlSccStateHists = self->_kCellularLteDlSccStateHists;
  }

  [(NSMutableArray *)kCellularLteDlSccStateHists addObject:v4];
}

- (void)addKCellularLteUlSccStateHist:(id)a3
{
  v4 = a3;
  kCellularLteUlSccStateHists = self->_kCellularLteUlSccStateHists;
  v8 = v4;
  if (!kCellularLteUlSccStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteUlSccStateHists;
    self->_kCellularLteUlSccStateHists = v6;

    v4 = v8;
    kCellularLteUlSccStateHists = self->_kCellularLteUlSccStateHists;
  }

  [(NSMutableArray *)kCellularLteUlSccStateHists addObject:v4];
}

- (void)addKCellularLteAdvancedRxStateHist:(id)a3
{
  v4 = a3;
  kCellularLteAdvancedRxStateHists = self->_kCellularLteAdvancedRxStateHists;
  v8 = v4;
  if (!kCellularLteAdvancedRxStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteAdvancedRxStateHists;
    self->_kCellularLteAdvancedRxStateHists = v6;

    v4 = v8;
    kCellularLteAdvancedRxStateHists = self->_kCellularLteAdvancedRxStateHists;
  }

  [(NSMutableArray *)kCellularLteAdvancedRxStateHists addObject:v4];
}

- (void)addKCellularLteComponentCarrierInfo:(id)a3
{
  v4 = a3;
  kCellularLteComponentCarrierInfos = self->_kCellularLteComponentCarrierInfos;
  v8 = v4;
  if (!kCellularLteComponentCarrierInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteComponentCarrierInfos;
    self->_kCellularLteComponentCarrierInfos = v6;

    v4 = v8;
    kCellularLteComponentCarrierInfos = self->_kCellularLteComponentCarrierInfos;
  }

  [(NSMutableArray *)kCellularLteComponentCarrierInfos addObject:v4];
}

- (void)addKCellularLteRxTxStateHist:(id)a3
{
  v4 = a3;
  kCellularLteRxTxStateHists = self->_kCellularLteRxTxStateHists;
  v8 = v4;
  if (!kCellularLteRxTxStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteRxTxStateHists;
    self->_kCellularLteRxTxStateHists = v6;

    v4 = v8;
    kCellularLteRxTxStateHists = self->_kCellularLteRxTxStateHists;
  }

  [(NSMutableArray *)kCellularLteRxTxStateHists addObject:v4];
}

- (void)addKCellularLteTotalDlTbsHist:(id)a3
{
  v4 = a3;
  kCellularLteTotalDlTbsHists = self->_kCellularLteTotalDlTbsHists;
  v8 = v4;
  if (!kCellularLteTotalDlTbsHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteTotalDlTbsHists;
    self->_kCellularLteTotalDlTbsHists = v6;

    v4 = v8;
    kCellularLteTotalDlTbsHists = self->_kCellularLteTotalDlTbsHists;
  }

  [(NSMutableArray *)kCellularLteTotalDlTbsHists addObject:v4];
}

- (void)addKCellularLteDlSccStateHistV3:(id)a3
{
  v4 = a3;
  kCellularLteDlSccStateHistV3s = self->_kCellularLteDlSccStateHistV3s;
  v8 = v4;
  if (!kCellularLteDlSccStateHistV3s)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteDlSccStateHistV3s;
    self->_kCellularLteDlSccStateHistV3s = v6;

    v4 = v8;
    kCellularLteDlSccStateHistV3s = self->_kCellularLteDlSccStateHistV3s;
  }

  [(NSMutableArray *)kCellularLteDlSccStateHistV3s addObject:v4];
}

- (void)addKCellularLteRxDiversityHist:(id)a3
{
  v4 = a3;
  kCellularLteRxDiversityHists = self->_kCellularLteRxDiversityHists;
  v8 = v4;
  if (!kCellularLteRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteRxDiversityHists;
    self->_kCellularLteRxDiversityHists = v6;

    v4 = v8;
    kCellularLteRxDiversityHists = self->_kCellularLteRxDiversityHists;
  }

  [(NSMutableArray *)kCellularLteRxDiversityHists addObject:v4];
}

- (void)addKCellularLtePdcchStateHist:(id)a3
{
  v4 = a3;
  kCellularLtePdcchStateHists = self->_kCellularLtePdcchStateHists;
  v8 = v4;
  if (!kCellularLtePdcchStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLtePdcchStateHists;
    self->_kCellularLtePdcchStateHists = v6;

    v4 = v8;
    kCellularLtePdcchStateHists = self->_kCellularLtePdcchStateHists;
  }

  [(NSMutableArray *)kCellularLtePdcchStateHists addObject:v4];
}

- (void)addKCellularLteRrcState:(id)a3
{
  v4 = a3;
  kCellularLteRrcStates = self->_kCellularLteRrcStates;
  v8 = v4;
  if (!kCellularLteRrcStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteRrcStates;
    self->_kCellularLteRrcStates = v6;

    v4 = v8;
    kCellularLteRrcStates = self->_kCellularLteRrcStates;
  }

  [(NSMutableArray *)kCellularLteRrcStates addObject:v4];
}

- (void)addKCellularLtePagingCycle:(id)a3
{
  v4 = a3;
  kCellularLtePagingCycles = self->_kCellularLtePagingCycles;
  v8 = v4;
  if (!kCellularLtePagingCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLtePagingCycles;
    self->_kCellularLtePagingCycles = v6;

    v4 = v8;
    kCellularLtePagingCycles = self->_kCellularLtePagingCycles;
  }

  [(NSMutableArray *)kCellularLtePagingCycles addObject:v4];
}

- (void)addKCellularLteCdrxConfig:(id)a3
{
  v4 = a3;
  kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs;
  v8 = v4;
  if (!kCellularLteCdrxConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteCdrxConfigs;
    self->_kCellularLteCdrxConfigs = v6;

    v4 = v8;
    kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs;
  }

  [(NSMutableArray *)kCellularLteCdrxConfigs addObject:v4];
}

- (void)addKCellularLteRadioLinkFailure:(id)a3
{
  v4 = a3;
  kCellularLteRadioLinkFailures = self->_kCellularLteRadioLinkFailures;
  v8 = v4;
  if (!kCellularLteRadioLinkFailures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteRadioLinkFailures;
    self->_kCellularLteRadioLinkFailures = v6;

    v4 = v8;
    kCellularLteRadioLinkFailures = self->_kCellularLteRadioLinkFailures;
  }

  [(NSMutableArray *)kCellularLteRadioLinkFailures addObject:v4];
}

- (void)addKCellularLtePdcchStateStats:(id)a3
{
  v4 = a3;
  kCellularLtePdcchStateStats = self->_kCellularLtePdcchStateStats;
  v8 = v4;
  if (!kCellularLtePdcchStateStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLtePdcchStateStats;
    self->_kCellularLtePdcchStateStats = v6;

    v4 = v8;
    kCellularLtePdcchStateStats = self->_kCellularLtePdcchStateStats;
  }

  [(NSMutableArray *)kCellularLtePdcchStateStats addObject:v4];
}

- (void)addKCellularLqmStateChange:(id)a3
{
  v4 = a3;
  kCellularLqmStateChanges = self->_kCellularLqmStateChanges;
  v8 = v4;
  if (!kCellularLqmStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLqmStateChanges;
    self->_kCellularLqmStateChanges = v6;

    v4 = v8;
    kCellularLqmStateChanges = self->_kCellularLqmStateChanges;
  }

  [(NSMutableArray *)kCellularLqmStateChanges addObject:v4];
}

- (void)addKCellularServiceLost:(id)a3
{
  v4 = a3;
  kCellularServiceLosts = self->_kCellularServiceLosts;
  v8 = v4;
  if (!kCellularServiceLosts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularServiceLosts;
    self->_kCellularServiceLosts = v6;

    v4 = v8;
    kCellularServiceLosts = self->_kCellularServiceLosts;
  }

  [(NSMutableArray *)kCellularServiceLosts addObject:v4];
}

- (void)addKCellularProtocolStackStateHist:(id)a3
{
  v4 = a3;
  kCellularProtocolStackStateHists = self->_kCellularProtocolStackStateHists;
  v8 = v4;
  if (!kCellularProtocolStackStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackStateHists;
    self->_kCellularProtocolStackStateHists = v6;

    v4 = v8;
    kCellularProtocolStackStateHists = self->_kCellularProtocolStackStateHists;
  }

  [(NSMutableArray *)kCellularProtocolStackStateHists addObject:v4];
}

- (void)addKCellularCellPlmnSearchCount:(id)a3
{
  v4 = a3;
  kCellularCellPlmnSearchCounts = self->_kCellularCellPlmnSearchCounts;
  v8 = v4;
  if (!kCellularCellPlmnSearchCounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCellPlmnSearchCounts;
    self->_kCellularCellPlmnSearchCounts = v6;

    v4 = v8;
    kCellularCellPlmnSearchCounts = self->_kCellularCellPlmnSearchCounts;
  }

  [(NSMutableArray *)kCellularCellPlmnSearchCounts addObject:v4];
}

- (void)addKCellularCellPlmnSearchHist:(id)a3
{
  v4 = a3;
  kCellularCellPlmnSearchHists = self->_kCellularCellPlmnSearchHists;
  v8 = v4;
  if (!kCellularCellPlmnSearchHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCellPlmnSearchHists;
    self->_kCellularCellPlmnSearchHists = v6;

    v4 = v8;
    kCellularCellPlmnSearchHists = self->_kCellularCellPlmnSearchHists;
  }

  [(NSMutableArray *)kCellularCellPlmnSearchHists addObject:v4];
}

- (void)addKCellularProtocolStackPowerState:(id)a3
{
  v4 = a3;
  kCellularProtocolStackPowerStates = self->_kCellularProtocolStackPowerStates;
  v8 = v4;
  if (!kCellularProtocolStackPowerStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackPowerStates;
    self->_kCellularProtocolStackPowerStates = v6;

    v4 = v8;
    kCellularProtocolStackPowerStates = self->_kCellularProtocolStackPowerStates;
  }

  [(NSMutableArray *)kCellularProtocolStackPowerStates addObject:v4];
}

- (void)addKCellularDownlinkIpPacketFilterStatus:(id)a3
{
  v4 = a3;
  kCellularDownlinkIpPacketFilterStatus = self->_kCellularDownlinkIpPacketFilterStatus;
  v8 = v4;
  if (!kCellularDownlinkIpPacketFilterStatus)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularDownlinkIpPacketFilterStatus;
    self->_kCellularDownlinkIpPacketFilterStatus = v6;

    v4 = v8;
    kCellularDownlinkIpPacketFilterStatus = self->_kCellularDownlinkIpPacketFilterStatus;
  }

  [(NSMutableArray *)kCellularDownlinkIpPacketFilterStatus addObject:v4];
}

- (void)addKCellularServingCellRfBandHist:(id)a3
{
  v4 = a3;
  kCellularServingCellRfBandHists = self->_kCellularServingCellRfBandHists;
  v8 = v4;
  if (!kCellularServingCellRfBandHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularServingCellRfBandHists;
    self->_kCellularServingCellRfBandHists = v6;

    v4 = v8;
    kCellularServingCellRfBandHists = self->_kCellularServingCellRfBandHists;
  }

  [(NSMutableArray *)kCellularServingCellRfBandHists addObject:v4];
}

- (void)addKCellularProtocolStackStateHist2:(id)a3
{
  v4 = a3;
  kCellularProtocolStackStateHist2s = self->_kCellularProtocolStackStateHist2s;
  v8 = v4;
  if (!kCellularProtocolStackStateHist2s)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackStateHist2s;
    self->_kCellularProtocolStackStateHist2s = v6;

    v4 = v8;
    kCellularProtocolStackStateHist2s = self->_kCellularProtocolStackStateHist2s;
  }

  [(NSMutableArray *)kCellularProtocolStackStateHist2s addObject:v4];
}

- (void)addKCellularProtocolStackState:(id)a3
{
  v4 = a3;
  kCellularProtocolStackStates = self->_kCellularProtocolStackStates;
  v8 = v4;
  if (!kCellularProtocolStackStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackStates;
    self->_kCellularProtocolStackStates = v6;

    v4 = v8;
    kCellularProtocolStackStates = self->_kCellularProtocolStackStates;
  }

  [(NSMutableArray *)kCellularProtocolStackStates addObject:v4];
}

- (void)addKCellularCdma1XRxDiversityHist:(id)a3
{
  v4 = a3;
  kCellularCdma1XRxDiversityHists = self->_kCellularCdma1XRxDiversityHists;
  v8 = v4;
  if (!kCellularCdma1XRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XRxDiversityHists;
    self->_kCellularCdma1XRxDiversityHists = v6;

    v4 = v8;
    kCellularCdma1XRxDiversityHists = self->_kCellularCdma1XRxDiversityHists;
  }

  [(NSMutableArray *)kCellularCdma1XRxDiversityHists addObject:v4];
}

- (void)addKCellularCdma1XServingCellRx0RssiHist:(id)a3
{
  v4 = a3;
  kCellularCdma1XServingCellRx0RssiHists = self->_kCellularCdma1XServingCellRx0RssiHists;
  v8 = v4;
  if (!kCellularCdma1XServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XServingCellRx0RssiHists;
    self->_kCellularCdma1XServingCellRx0RssiHists = v6;

    v4 = v8;
    kCellularCdma1XServingCellRx0RssiHists = self->_kCellularCdma1XServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularCdma1XServingCellRx0RssiHists addObject:v4];
}

- (void)addKCellularCdma1XServingCellRx1RssiHist:(id)a3
{
  v4 = a3;
  kCellularCdma1XServingCellRx1RssiHists = self->_kCellularCdma1XServingCellRx1RssiHists;
  v8 = v4;
  if (!kCellularCdma1XServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XServingCellRx1RssiHists;
    self->_kCellularCdma1XServingCellRx1RssiHists = v6;

    v4 = v8;
    kCellularCdma1XServingCellRx1RssiHists = self->_kCellularCdma1XServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularCdma1XServingCellRx1RssiHists addObject:v4];
}

- (void)addKCellularCdma1XServingCellRx0EcIoHist:(id)a3
{
  v4 = a3;
  kCellularCdma1XServingCellRx0EcIoHists = self->_kCellularCdma1XServingCellRx0EcIoHists;
  v8 = v4;
  if (!kCellularCdma1XServingCellRx0EcIoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XServingCellRx0EcIoHists;
    self->_kCellularCdma1XServingCellRx0EcIoHists = v6;

    v4 = v8;
    kCellularCdma1XServingCellRx0EcIoHists = self->_kCellularCdma1XServingCellRx0EcIoHists;
  }

  [(NSMutableArray *)kCellularCdma1XServingCellRx0EcIoHists addObject:v4];
}

- (void)addKCellularCdma1XServingCellRx1EcIoHist:(id)a3
{
  v4 = a3;
  kCellularCdma1XServingCellRx1EcIoHists = self->_kCellularCdma1XServingCellRx1EcIoHists;
  v8 = v4;
  if (!kCellularCdma1XServingCellRx1EcIoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XServingCellRx1EcIoHists;
    self->_kCellularCdma1XServingCellRx1EcIoHists = v6;

    v4 = v8;
    kCellularCdma1XServingCellRx1EcIoHists = self->_kCellularCdma1XServingCellRx1EcIoHists;
  }

  [(NSMutableArray *)kCellularCdma1XServingCellRx1EcIoHists addObject:v4];
}

- (void)addKCellularCdma1XTxPowerHist:(id)a3
{
  v4 = a3;
  kCellularCdma1XTxPowerHists = self->_kCellularCdma1XTxPowerHists;
  v8 = v4;
  if (!kCellularCdma1XTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XTxPowerHists;
    self->_kCellularCdma1XTxPowerHists = v6;

    v4 = v8;
    kCellularCdma1XTxPowerHists = self->_kCellularCdma1XTxPowerHists;
  }

  [(NSMutableArray *)kCellularCdma1XTxPowerHists addObject:v4];
}

- (void)addKCellularCdma1XProtocolStackStateHist:(id)a3
{
  v4 = a3;
  kCellularCdma1XProtocolStackStateHists = self->_kCellularCdma1XProtocolStackStateHists;
  v8 = v4;
  if (!kCellularCdma1XProtocolStackStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XProtocolStackStateHists;
    self->_kCellularCdma1XProtocolStackStateHists = v6;

    v4 = v8;
    kCellularCdma1XProtocolStackStateHists = self->_kCellularCdma1XProtocolStackStateHists;
  }

  [(NSMutableArray *)kCellularCdma1XProtocolStackStateHists addObject:v4];
}

- (void)addKCellularCdma1XConnectionHist:(id)a3
{
  v4 = a3;
  kCellularCdma1XConnectionHists = self->_kCellularCdma1XConnectionHists;
  v8 = v4;
  if (!kCellularCdma1XConnectionHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XConnectionHists;
    self->_kCellularCdma1XConnectionHists = v6;

    v4 = v8;
    kCellularCdma1XConnectionHists = self->_kCellularCdma1XConnectionHists;
  }

  [(NSMutableArray *)kCellularCdma1XConnectionHists addObject:v4];
}

- (void)addKCellularCdma1XRrState:(id)a3
{
  v4 = a3;
  kCellularCdma1XRrStates = self->_kCellularCdma1XRrStates;
  v8 = v4;
  if (!kCellularCdma1XRrStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XRrStates;
    self->_kCellularCdma1XRrStates = v6;

    v4 = v8;
    kCellularCdma1XRrStates = self->_kCellularCdma1XRrStates;
  }

  [(NSMutableArray *)kCellularCdma1XRrStates addObject:v4];
}

- (void)addKCellularCdmaEvdoRxDiversityHist:(id)a3
{
  v4 = a3;
  kCellularCdmaEvdoRxDiversityHists = self->_kCellularCdmaEvdoRxDiversityHists;
  v8 = v4;
  if (!kCellularCdmaEvdoRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoRxDiversityHists;
    self->_kCellularCdmaEvdoRxDiversityHists = v6;

    v4 = v8;
    kCellularCdmaEvdoRxDiversityHists = self->_kCellularCdmaEvdoRxDiversityHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoRxDiversityHists addObject:v4];
}

- (void)addKCellularCdmaEvdoServingCellRx0RssiHist:(id)a3
{
  v4 = a3;
  kCellularCdmaEvdoServingCellRx0RssiHists = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
  v8 = v4;
  if (!kCellularCdmaEvdoServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
    self->_kCellularCdmaEvdoServingCellRx0RssiHists = v6;

    v4 = v8;
    kCellularCdmaEvdoServingCellRx0RssiHists = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoServingCellRx0RssiHists addObject:v4];
}

- (void)addKCellularCdmaEvdoServingCellRx1RssiHist:(id)a3
{
  v4 = a3;
  kCellularCdmaEvdoServingCellRx1RssiHists = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
  v8 = v4;
  if (!kCellularCdmaEvdoServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
    self->_kCellularCdmaEvdoServingCellRx1RssiHists = v6;

    v4 = v8;
    kCellularCdmaEvdoServingCellRx1RssiHists = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoServingCellRx1RssiHists addObject:v4];
}

- (void)addKCellularCdmaEvdoServingCellRx0EcIoHist:(id)a3
{
  v4 = a3;
  kCellularCdmaEvdoServingCellRx0EcIoHists = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
  v8 = v4;
  if (!kCellularCdmaEvdoServingCellRx0EcIoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
    self->_kCellularCdmaEvdoServingCellRx0EcIoHists = v6;

    v4 = v8;
    kCellularCdmaEvdoServingCellRx0EcIoHists = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoServingCellRx0EcIoHists addObject:v4];
}

- (void)addKCellularCdmaEvdoServingCellRx1EcIoHist:(id)a3
{
  v4 = a3;
  kCellularCdmaEvdoServingCellRx1EcIoHists = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
  v8 = v4;
  if (!kCellularCdmaEvdoServingCellRx1EcIoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
    self->_kCellularCdmaEvdoServingCellRx1EcIoHists = v6;

    v4 = v8;
    kCellularCdmaEvdoServingCellRx1EcIoHists = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoServingCellRx1EcIoHists addObject:v4];
}

- (void)addKCellularCdmaEvdoTxPowerHist:(id)a3
{
  v4 = a3;
  kCellularCdmaEvdoTxPowerHists = self->_kCellularCdmaEvdoTxPowerHists;
  v8 = v4;
  if (!kCellularCdmaEvdoTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoTxPowerHists;
    self->_kCellularCdmaEvdoTxPowerHists = v6;

    v4 = v8;
    kCellularCdmaEvdoTxPowerHists = self->_kCellularCdmaEvdoTxPowerHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoTxPowerHists addObject:v4];
}

- (void)addKCellularCdmaEvdoProtocolStackStateHist:(id)a3
{
  v4 = a3;
  kCellularCdmaEvdoProtocolStackStateHists = self->_kCellularCdmaEvdoProtocolStackStateHists;
  v8 = v4;
  if (!kCellularCdmaEvdoProtocolStackStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoProtocolStackStateHists;
    self->_kCellularCdmaEvdoProtocolStackStateHists = v6;

    v4 = v8;
    kCellularCdmaEvdoProtocolStackStateHists = self->_kCellularCdmaEvdoProtocolStackStateHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoProtocolStackStateHists addObject:v4];
}

- (void)addKCellularCdmaEvdoRrState:(id)a3
{
  v4 = a3;
  kCellularCdmaEvdoRrStates = self->_kCellularCdmaEvdoRrStates;
  v8 = v4;
  if (!kCellularCdmaEvdoRrStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoRrStates;
    self->_kCellularCdmaEvdoRrStates = v6;

    v4 = v8;
    kCellularCdmaEvdoRrStates = self->_kCellularCdmaEvdoRrStates;
  }

  [(NSMutableArray *)kCellularCdmaEvdoRrStates addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PowerlogMetricLog;
  v4 = [(PowerlogMetricLog *)&v8 description];
  v5 = [(PowerlogMetricLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v1087 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_kCellularPerClientProfileTriggerCounts count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPerClientProfileTriggerCounts, "count")}];
    v993 = 0u;
    v994 = 0u;
    v995 = 0u;
    v996 = 0u;
    v5 = self->_kCellularPerClientProfileTriggerCounts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v993 objects:v1086 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v994;
      do
      {
        v9 = 0;
        do
        {
          if (*v994 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v993 + 1) + 8 * v9) dictionaryRepresentation];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v993 objects:v1086 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"kCellularPerClientProfileTriggerCount"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackCpuStats count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackCpuStats, "count")}];
    v989 = 0u;
    v990 = 0u;
    v991 = 0u;
    v992 = 0u;
    v12 = self->_kCellularProtocolStackCpuStats;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v989 objects:v1085 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v990;
      do
      {
        v16 = 0;
        do
        {
          if (*v990 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v989 + 1) + 8 * v16) dictionaryRepresentation];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v989 objects:v1085 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"kCellularProtocolStackCpuStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPeripheralStats count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPeripheralStats, "count")}];
    v985 = 0u;
    v986 = 0u;
    v987 = 0u;
    v988 = 0u;
    v19 = self->_kCellularPeripheralStats;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v985 objects:v1084 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v986;
      do
      {
        v23 = 0;
        do
        {
          if (*v986 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v985 + 1) + 8 * v23) dictionaryRepresentation];
          [v18 addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v985 objects:v1084 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKey:@"kCellularPeripheralStats"];
  }

  if ([(NSMutableArray *)self->_kCellularDvfsStats count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularDvfsStats, "count")}];
    v981 = 0u;
    v982 = 0u;
    v983 = 0u;
    v984 = 0u;
    v26 = self->_kCellularDvfsStats;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v981 objects:v1083 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v982;
      do
      {
        v30 = 0;
        do
        {
          if (*v982 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v981 + 1) + 8 * v30) dictionaryRepresentation];
          [v25 addObject:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v981 objects:v1083 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"kCellularDvfsStats"];
  }

  if ([(NSMutableArray *)self->_kCellularLteWcdmaGsmHwStats count])
  {
    v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteWcdmaGsmHwStats, "count")}];
    v977 = 0u;
    v978 = 0u;
    v979 = 0u;
    v980 = 0u;
    v33 = self->_kCellularLteWcdmaGsmHwStats;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v977 objects:v1082 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v978;
      do
      {
        v37 = 0;
        do
        {
          if (*v978 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v977 + 1) + 8 * v37) dictionaryRepresentation];
          [v32 addObject:v38];

          ++v37;
        }

        while (v35 != v37);
        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v977 objects:v1082 count:16];
      }

      while (v35);
    }

    [v3 setObject:v32 forKey:@"kCellularLteWcdmaGsmHwStats"];
  }

  if ([(NSMutableArray *)self->_kCellularLteTdsGsmHwStats count])
  {
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteTdsGsmHwStats, "count")}];
    v973 = 0u;
    v974 = 0u;
    v975 = 0u;
    v976 = 0u;
    v40 = self->_kCellularLteTdsGsmHwStats;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v973 objects:v1081 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v974;
      do
      {
        v44 = 0;
        do
        {
          if (*v974 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v973 + 1) + 8 * v44) dictionaryRepresentation];
          [v39 addObject:v45];

          ++v44;
        }

        while (v42 != v44);
        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v973 objects:v1081 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKey:@"kCellularLteTdsGsmHwStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPmuAverageCurrents count])
  {
    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPmuAverageCurrents, "count")}];
    v969 = 0u;
    v970 = 0u;
    v971 = 0u;
    v972 = 0u;
    v47 = self->_kCellularPmuAverageCurrents;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v969 objects:v1080 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v970;
      do
      {
        v51 = 0;
        do
        {
          if (*v970 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v969 + 1) + 8 * v51) dictionaryRepresentation];
          [v46 addObject:v52];

          ++v51;
        }

        while (v49 != v51);
        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v969 objects:v1080 count:16];
      }

      while (v49);
    }

    [v3 setObject:v46 forKey:@"kCellularPmuAverageCurrent"];
  }

  if ([(NSMutableArray *)self->_kCellularFwCoreStats count])
  {
    v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularFwCoreStats, "count")}];
    v965 = 0u;
    v966 = 0u;
    v967 = 0u;
    v968 = 0u;
    v54 = self->_kCellularFwCoreStats;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v965 objects:v1079 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v966;
      do
      {
        v58 = 0;
        do
        {
          if (*v966 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = [*(*(&v965 + 1) + 8 * v58) dictionaryRepresentation];
          [v53 addObject:v59];

          ++v58;
        }

        while (v56 != v58);
        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v965 objects:v1079 count:16];
      }

      while (v56);
    }

    [v3 setObject:v53 forKey:@"kCellularFwCoreStats"];
  }

  if ([(NSMutableArray *)self->_kCellularLteWcdmaTdsHwStats count])
  {
    v60 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteWcdmaTdsHwStats, "count")}];
    v961 = 0u;
    v962 = 0u;
    v963 = 0u;
    v964 = 0u;
    v61 = self->_kCellularLteWcdmaTdsHwStats;
    v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v961 objects:v1078 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v962;
      do
      {
        v65 = 0;
        do
        {
          if (*v962 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = [*(*(&v961 + 1) + 8 * v65) dictionaryRepresentation];
          [v60 addObject:v66];

          ++v65;
        }

        while (v63 != v65);
        v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v961 objects:v1078 count:16];
      }

      while (v63);
    }

    [v3 setObject:v60 forKey:@"kCellularLteWcdmaTdsHwStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPmicHwStats count])
  {
    v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPmicHwStats, "count")}];
    v957 = 0u;
    v958 = 0u;
    v959 = 0u;
    v960 = 0u;
    v68 = self->_kCellularPmicHwStats;
    v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v957 objects:v1077 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v958;
      do
      {
        v72 = 0;
        do
        {
          if (*v958 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = [*(*(&v957 + 1) + 8 * v72) dictionaryRepresentation];
          [v67 addObject:v73];

          ++v72;
        }

        while (v70 != v72);
        v70 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v957 objects:v1077 count:16];
      }

      while (v70);
    }

    [v3 setObject:v67 forKey:@"kCellularPmicHwStats"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmServingCellRssiHists count])
  {
    v74 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmServingCellRssiHists, "count")}];
    v953 = 0u;
    v954 = 0u;
    v955 = 0u;
    v956 = 0u;
    v75 = self->_kCellularGsmServingCellRssiHists;
    v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v953 objects:v1076 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v954;
      do
      {
        v79 = 0;
        do
        {
          if (*v954 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v80 = [*(*(&v953 + 1) + 8 * v79) dictionaryRepresentation];
          [v74 addObject:v80];

          ++v79;
        }

        while (v77 != v79);
        v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v953 objects:v1076 count:16];
      }

      while (v77);
    }

    [v3 setObject:v74 forKey:@"kCellularGsmServingCellRssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmServingCellSnrHists count])
  {
    v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmServingCellSnrHists, "count")}];
    v949 = 0u;
    v950 = 0u;
    v951 = 0u;
    v952 = 0u;
    v82 = self->_kCellularGsmServingCellSnrHists;
    v83 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v949 objects:v1075 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v950;
      do
      {
        v86 = 0;
        do
        {
          if (*v950 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v87 = [*(*(&v949 + 1) + 8 * v86) dictionaryRepresentation];
          [v81 addObject:v87];

          ++v86;
        }

        while (v84 != v86);
        v84 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v949 objects:v1075 count:16];
      }

      while (v84);
    }

    [v3 setObject:v81 forKey:@"kCellularGsmServingCellSnrHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmTxPowerHists count])
  {
    v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmTxPowerHists, "count")}];
    v945 = 0u;
    v946 = 0u;
    v947 = 0u;
    v948 = 0u;
    v89 = self->_kCellularGsmTxPowerHists;
    v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v945 objects:v1074 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v946;
      do
      {
        v93 = 0;
        do
        {
          if (*v946 != v92)
          {
            objc_enumerationMutation(v89);
          }

          v94 = [*(*(&v945 + 1) + 8 * v93) dictionaryRepresentation];
          [v88 addObject:v94];

          ++v93;
        }

        while (v91 != v93);
        v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v945 objects:v1074 count:16];
      }

      while (v91);
    }

    [v3 setObject:v88 forKey:@"kCellularGsmTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmConnectedModeHists count])
  {
    v95 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmConnectedModeHists, "count")}];
    v941 = 0u;
    v942 = 0u;
    v943 = 0u;
    v944 = 0u;
    v96 = self->_kCellularGsmConnectedModeHists;
    v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v941 objects:v1073 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v942;
      do
      {
        v100 = 0;
        do
        {
          if (*v942 != v99)
          {
            objc_enumerationMutation(v96);
          }

          v101 = [*(*(&v941 + 1) + 8 * v100) dictionaryRepresentation];
          [v95 addObject:v101];

          ++v100;
        }

        while (v98 != v100);
        v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v941 objects:v1073 count:16];
      }

      while (v98);
    }

    [v3 setObject:v95 forKey:@"kCellularGsmConnectedModeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmL1States count])
  {
    v102 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmL1States, "count")}];
    v937 = 0u;
    v938 = 0u;
    v939 = 0u;
    v940 = 0u;
    v103 = self->_kCellularGsmL1States;
    v104 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v937 objects:v1072 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v938;
      do
      {
        v107 = 0;
        do
        {
          if (*v938 != v106)
          {
            objc_enumerationMutation(v103);
          }

          v108 = [*(*(&v937 + 1) + 8 * v107) dictionaryRepresentation];
          [v102 addObject:v108];

          ++v107;
        }

        while (v105 != v107);
        v105 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v937 objects:v1072 count:16];
      }

      while (v105);
    }

    [v3 setObject:v102 forKey:@"kCellularGsmL1State"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaCpcStats count])
  {
    v109 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaCpcStats, "count")}];
    v933 = 0u;
    v934 = 0u;
    v935 = 0u;
    v936 = 0u;
    v110 = self->_kCellularWcdmaCpcStats;
    v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v933 objects:v1071 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v934;
      do
      {
        v114 = 0;
        do
        {
          if (*v934 != v113)
          {
            objc_enumerationMutation(v110);
          }

          v115 = [*(*(&v933 + 1) + 8 * v114) dictionaryRepresentation];
          [v109 addObject:v115];

          ++v114;
        }

        while (v112 != v114);
        v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v933 objects:v1071 count:16];
      }

      while (v112);
    }

    [v3 setObject:v109 forKey:@"kCellularWcdmaCpcStat"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRxDiversityHists count])
  {
    v116 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRxDiversityHists, "count")}];
    v929 = 0u;
    v930 = 0u;
    v931 = 0u;
    v932 = 0u;
    v117 = self->_kCellularWcdmaRxDiversityHists;
    v118 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v929 objects:v1070 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v930;
      do
      {
        v121 = 0;
        do
        {
          if (*v930 != v120)
          {
            objc_enumerationMutation(v117);
          }

          v122 = [*(*(&v929 + 1) + 8 * v121) dictionaryRepresentation];
          [v116 addObject:v122];

          ++v121;
        }

        while (v119 != v121);
        v119 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v929 objects:v1070 count:16];
      }

      while (v119);
    }

    [v3 setObject:v116 forKey:@"kCellularWcdmaRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx0RssiHists count])
  {
    v123 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx0RssiHists, "count")}];
    v925 = 0u;
    v926 = 0u;
    v927 = 0u;
    v928 = 0u;
    v124 = self->_kCellularWcdmaServingCellRx0RssiHists;
    v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v925 objects:v1069 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v926;
      do
      {
        v128 = 0;
        do
        {
          if (*v926 != v127)
          {
            objc_enumerationMutation(v124);
          }

          v129 = [*(*(&v925 + 1) + 8 * v128) dictionaryRepresentation];
          [v123 addObject:v129];

          ++v128;
        }

        while (v126 != v128);
        v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v925 objects:v1069 count:16];
      }

      while (v126);
    }

    [v3 setObject:v123 forKey:@"kCellularWcdmaServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx1RssiHists count])
  {
    v130 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx1RssiHists, "count")}];
    v921 = 0u;
    v922 = 0u;
    v923 = 0u;
    v924 = 0u;
    v131 = self->_kCellularWcdmaServingCellRx1RssiHists;
    v132 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v921 objects:v1068 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v922;
      do
      {
        v135 = 0;
        do
        {
          if (*v922 != v134)
          {
            objc_enumerationMutation(v131);
          }

          v136 = [*(*(&v921 + 1) + 8 * v135) dictionaryRepresentation];
          [v130 addObject:v136];

          ++v135;
        }

        while (v133 != v135);
        v133 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v921 objects:v1068 count:16];
      }

      while (v133);
    }

    [v3 setObject:v130 forKey:@"kCellularWcdmaServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx0EcNoHists count])
  {
    v137 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx0EcNoHists, "count")}];
    v917 = 0u;
    v918 = 0u;
    v919 = 0u;
    v920 = 0u;
    v138 = self->_kCellularWcdmaServingCellRx0EcNoHists;
    v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v917 objects:v1067 count:16];
    if (v139)
    {
      v140 = v139;
      v141 = *v918;
      do
      {
        v142 = 0;
        do
        {
          if (*v918 != v141)
          {
            objc_enumerationMutation(v138);
          }

          v143 = [*(*(&v917 + 1) + 8 * v142) dictionaryRepresentation];
          [v137 addObject:v143];

          ++v142;
        }

        while (v140 != v142);
        v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v917 objects:v1067 count:16];
      }

      while (v140);
    }

    [v3 setObject:v137 forKey:@"kCellularWcdmaServingCellRx0EcNoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx1EcNoHists count])
  {
    v144 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx1EcNoHists, "count")}];
    v913 = 0u;
    v914 = 0u;
    v915 = 0u;
    v916 = 0u;
    v145 = self->_kCellularWcdmaServingCellRx1EcNoHists;
    v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v913 objects:v1066 count:16];
    if (v146)
    {
      v147 = v146;
      v148 = *v914;
      do
      {
        v149 = 0;
        do
        {
          if (*v914 != v148)
          {
            objc_enumerationMutation(v145);
          }

          v150 = [*(*(&v913 + 1) + 8 * v149) dictionaryRepresentation];
          [v144 addObject:v150];

          ++v149;
        }

        while (v147 != v149);
        v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v913 objects:v1066 count:16];
      }

      while (v147);
    }

    [v3 setObject:v144 forKey:@"kCellularWcdmaServingCellRx1EcNoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaTxPowerHists count])
  {
    v151 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaTxPowerHists, "count")}];
    v909 = 0u;
    v910 = 0u;
    v911 = 0u;
    v912 = 0u;
    v152 = self->_kCellularWcdmaTxPowerHists;
    v153 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v909 objects:v1065 count:16];
    if (v153)
    {
      v154 = v153;
      v155 = *v910;
      do
      {
        v156 = 0;
        do
        {
          if (*v910 != v155)
          {
            objc_enumerationMutation(v152);
          }

          v157 = [*(*(&v909 + 1) + 8 * v156) dictionaryRepresentation];
          [v151 addObject:v157];

          ++v156;
        }

        while (v154 != v156);
        v154 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v909 objects:v1065 count:16];
      }

      while (v154);
    }

    [v3 setObject:v151 forKey:@"kCellularWcdmaTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaReceiverStatusOnC0Hists count])
  {
    v158 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaReceiverStatusOnC0Hists, "count")}];
    v905 = 0u;
    v906 = 0u;
    v907 = 0u;
    v908 = 0u;
    v159 = self->_kCellularWcdmaReceiverStatusOnC0Hists;
    v160 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v905 objects:v1064 count:16];
    if (v160)
    {
      v161 = v160;
      v162 = *v906;
      do
      {
        v163 = 0;
        do
        {
          if (*v906 != v162)
          {
            objc_enumerationMutation(v159);
          }

          v164 = [*(*(&v905 + 1) + 8 * v163) dictionaryRepresentation];
          [v158 addObject:v164];

          ++v163;
        }

        while (v161 != v163);
        v161 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v905 objects:v1064 count:16];
      }

      while (v161);
    }

    [v3 setObject:v158 forKey:@"kCellularWcdmaReceiverStatusOnC0Hist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaReceiverStatusOnC1Hists count])
  {
    v165 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaReceiverStatusOnC1Hists, "count")}];
    v901 = 0u;
    v902 = 0u;
    v903 = 0u;
    v904 = 0u;
    v166 = self->_kCellularWcdmaReceiverStatusOnC1Hists;
    v167 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v901 objects:v1063 count:16];
    if (v167)
    {
      v168 = v167;
      v169 = *v902;
      do
      {
        v170 = 0;
        do
        {
          if (*v902 != v169)
          {
            objc_enumerationMutation(v166);
          }

          v171 = [*(*(&v901 + 1) + 8 * v170) dictionaryRepresentation];
          [v165 addObject:v171];

          ++v170;
        }

        while (v168 != v170);
        v168 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v901 objects:v1063 count:16];
      }

      while (v168);
    }

    [v3 setObject:v165 forKey:@"kCellularWcdmaReceiverStatusOnC1Hist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaCarrierStatusHists count])
  {
    v172 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaCarrierStatusHists, "count")}];
    v897 = 0u;
    v898 = 0u;
    v899 = 0u;
    v900 = 0u;
    v173 = self->_kCellularWcdmaCarrierStatusHists;
    v174 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v897 objects:v1062 count:16];
    if (v174)
    {
      v175 = v174;
      v176 = *v898;
      do
      {
        v177 = 0;
        do
        {
          if (*v898 != v176)
          {
            objc_enumerationMutation(v173);
          }

          v178 = [*(*(&v897 + 1) + 8 * v177) dictionaryRepresentation];
          [v172 addObject:v178];

          ++v177;
        }

        while (v175 != v177);
        v175 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v897 objects:v1062 count:16];
      }

      while (v175);
    }

    [v3 setObject:v172 forKey:@"kCellularWcdmaCarrierStatusHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRabModeHists count])
  {
    v179 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRabModeHists, "count")}];
    v893 = 0u;
    v894 = 0u;
    v895 = 0u;
    v896 = 0u;
    v180 = self->_kCellularWcdmaRabModeHists;
    v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v893 objects:v1061 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = *v894;
      do
      {
        v184 = 0;
        do
        {
          if (*v894 != v183)
          {
            objc_enumerationMutation(v180);
          }

          v185 = [*(*(&v893 + 1) + 8 * v184) dictionaryRepresentation];
          [v179 addObject:v185];

          ++v184;
        }

        while (v182 != v184);
        v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v893 objects:v1061 count:16];
      }

      while (v182);
    }

    [v3 setObject:v179 forKey:@"kCellularWcdmaRabModeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRabTypeHists count])
  {
    v186 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRabTypeHists, "count")}];
    v889 = 0u;
    v890 = 0u;
    v891 = 0u;
    v892 = 0u;
    v187 = self->_kCellularWcdmaRabTypeHists;
    v188 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v889 objects:v1060 count:16];
    if (v188)
    {
      v189 = v188;
      v190 = *v890;
      do
      {
        v191 = 0;
        do
        {
          if (*v890 != v190)
          {
            objc_enumerationMutation(v187);
          }

          v192 = [*(*(&v889 + 1) + 8 * v191) dictionaryRepresentation];
          [v186 addObject:v192];

          ++v191;
        }

        while (v189 != v191);
        v189 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v889 objects:v1060 count:16];
      }

      while (v189);
    }

    [v3 setObject:v186 forKey:@"kCellularWcdmaRabTypeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRrcConnectionStates count])
  {
    v193 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRrcConnectionStates, "count")}];
    v885 = 0u;
    v886 = 0u;
    v887 = 0u;
    v888 = 0u;
    v194 = self->_kCellularWcdmaRrcConnectionStates;
    v195 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v885 objects:v1059 count:16];
    if (v195)
    {
      v196 = v195;
      v197 = *v886;
      do
      {
        v198 = 0;
        do
        {
          if (*v886 != v197)
          {
            objc_enumerationMutation(v194);
          }

          v199 = [*(*(&v885 + 1) + 8 * v198) dictionaryRepresentation];
          [v193 addObject:v199];

          ++v198;
        }

        while (v196 != v198);
        v196 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v885 objects:v1059 count:16];
      }

      while (v196);
    }

    [v3 setObject:v193 forKey:@"kCellularWcdmaRrcConnectionState"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRrcConfigurations count])
  {
    v200 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRrcConfigurations, "count")}];
    v881 = 0u;
    v882 = 0u;
    v883 = 0u;
    v884 = 0u;
    v201 = self->_kCellularWcdmaRrcConfigurations;
    v202 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v881 objects:v1058 count:16];
    if (v202)
    {
      v203 = v202;
      v204 = *v882;
      do
      {
        v205 = 0;
        do
        {
          if (*v882 != v204)
          {
            objc_enumerationMutation(v201);
          }

          v206 = [*(*(&v881 + 1) + 8 * v205) dictionaryRepresentation];
          [v200 addObject:v206];

          ++v205;
        }

        while (v203 != v205);
        v203 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v881 objects:v1058 count:16];
      }

      while (v203);
    }

    [v3 setObject:v200 forKey:@"kCellularWcdmaRrcConfiguration"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRabStatus count])
  {
    v207 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRabStatus, "count")}];
    v877 = 0u;
    v878 = 0u;
    v879 = 0u;
    v880 = 0u;
    v208 = self->_kCellularWcdmaRabStatus;
    v209 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v877 objects:v1057 count:16];
    if (v209)
    {
      v210 = v209;
      v211 = *v878;
      do
      {
        v212 = 0;
        do
        {
          if (*v878 != v211)
          {
            objc_enumerationMutation(v208);
          }

          v213 = [*(*(&v877 + 1) + 8 * v212) dictionaryRepresentation];
          [v207 addObject:v213];

          ++v212;
        }

        while (v210 != v212);
        v210 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v877 objects:v1057 count:16];
      }

      while (v210);
    }

    [v3 setObject:v207 forKey:@"kCellularWcdmaRabStatus"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaL1States count])
  {
    v214 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaL1States, "count")}];
    v873 = 0u;
    v874 = 0u;
    v875 = 0u;
    v876 = 0u;
    v215 = self->_kCellularWcdmaL1States;
    v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v873 objects:v1056 count:16];
    if (v216)
    {
      v217 = v216;
      v218 = *v874;
      do
      {
        v219 = 0;
        do
        {
          if (*v874 != v218)
          {
            objc_enumerationMutation(v215);
          }

          v220 = [*(*(&v873 + 1) + 8 * v219) dictionaryRepresentation];
          [v214 addObject:v220];

          ++v219;
        }

        while (v217 != v219);
        v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v873 objects:v1056 count:16];
      }

      while (v217);
    }

    [v3 setObject:v214 forKey:@"kCellularWcdmaL1State"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaDataInactivityBeforeIdles count])
  {
    v221 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaDataInactivityBeforeIdles, "count")}];
    v869 = 0u;
    v870 = 0u;
    v871 = 0u;
    v872 = 0u;
    v222 = self->_kCellularWcdmaDataInactivityBeforeIdles;
    v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v869 objects:v1055 count:16];
    if (v223)
    {
      v224 = v223;
      v225 = *v870;
      do
      {
        v226 = 0;
        do
        {
          if (*v870 != v225)
          {
            objc_enumerationMutation(v222);
          }

          v227 = [*(*(&v869 + 1) + 8 * v226) dictionaryRepresentation];
          [v221 addObject:v227];

          ++v226;
        }

        while (v224 != v226);
        v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v869 objects:v1055 count:16];
      }

      while (v224);
    }

    [v3 setObject:v221 forKey:@"kCellularWcdmaDataInactivityBeforeIdle"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaIdleToConnectedUserDatas count])
  {
    v228 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaIdleToConnectedUserDatas, "count")}];
    v865 = 0u;
    v866 = 0u;
    v867 = 0u;
    v868 = 0u;
    v229 = self->_kCellularWcdmaIdleToConnectedUserDatas;
    v230 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v865 objects:v1054 count:16];
    if (v230)
    {
      v231 = v230;
      v232 = *v866;
      do
      {
        v233 = 0;
        do
        {
          if (*v866 != v232)
          {
            objc_enumerationMutation(v229);
          }

          v234 = [*(*(&v865 + 1) + 8 * v233) dictionaryRepresentation];
          [v228 addObject:v234];

          ++v233;
        }

        while (v231 != v233);
        v231 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v865 objects:v1054 count:16];
      }

      while (v231);
    }

    [v3 setObject:v228 forKey:@"kCellularWcdmaIdleToConnectedUserData"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaVadHists count])
  {
    v235 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaVadHists, "count")}];
    v861 = 0u;
    v862 = 0u;
    v863 = 0u;
    v864 = 0u;
    v236 = self->_kCellularWcdmaVadHists;
    v237 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v861 objects:v1053 count:16];
    if (v237)
    {
      v238 = v237;
      v239 = *v862;
      do
      {
        v240 = 0;
        do
        {
          if (*v862 != v239)
          {
            objc_enumerationMutation(v236);
          }

          v241 = [*(*(&v861 + 1) + 8 * v240) dictionaryRepresentation];
          [v235 addObject:v241];

          ++v240;
        }

        while (v238 != v240);
        v238 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v861 objects:v1053 count:16];
      }

      while (v238);
    }

    [v3 setObject:v235 forKey:@"kCellularWcdmaVadHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsRxDiversityHists count])
  {
    v242 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsRxDiversityHists, "count")}];
    v857 = 0u;
    v858 = 0u;
    v859 = 0u;
    v860 = 0u;
    v243 = self->_kCellularTdsRxDiversityHists;
    v244 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v857 objects:v1052 count:16];
    if (v244)
    {
      v245 = v244;
      v246 = *v858;
      do
      {
        v247 = 0;
        do
        {
          if (*v858 != v246)
          {
            objc_enumerationMutation(v243);
          }

          v248 = [*(*(&v857 + 1) + 8 * v247) dictionaryRepresentation];
          [v242 addObject:v248];

          ++v247;
        }

        while (v245 != v247);
        v245 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v857 objects:v1052 count:16];
      }

      while (v245);
    }

    [v3 setObject:v242 forKey:@"kCellularTdsRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsServingCellRx0RssiHists count])
  {
    v249 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsServingCellRx0RssiHists, "count")}];
    v853 = 0u;
    v854 = 0u;
    v855 = 0u;
    v856 = 0u;
    v250 = self->_kCellularTdsServingCellRx0RssiHists;
    v251 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v853 objects:v1051 count:16];
    if (v251)
    {
      v252 = v251;
      v253 = *v854;
      do
      {
        v254 = 0;
        do
        {
          if (*v854 != v253)
          {
            objc_enumerationMutation(v250);
          }

          v255 = [*(*(&v853 + 1) + 8 * v254) dictionaryRepresentation];
          [v249 addObject:v255];

          ++v254;
        }

        while (v252 != v254);
        v252 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v853 objects:v1051 count:16];
      }

      while (v252);
    }

    [v3 setObject:v249 forKey:@"kCellularTdsServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsServingCellRx1RssiHists count])
  {
    v256 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsServingCellRx1RssiHists, "count")}];
    v849 = 0u;
    v850 = 0u;
    v851 = 0u;
    v852 = 0u;
    v257 = self->_kCellularTdsServingCellRx1RssiHists;
    v258 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v849 objects:v1050 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = *v850;
      do
      {
        v261 = 0;
        do
        {
          if (*v850 != v260)
          {
            objc_enumerationMutation(v257);
          }

          v262 = [*(*(&v849 + 1) + 8 * v261) dictionaryRepresentation];
          [v256 addObject:v262];

          ++v261;
        }

        while (v259 != v261);
        v259 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v849 objects:v1050 count:16];
      }

      while (v259);
    }

    [v3 setObject:v256 forKey:@"kCellularTdsServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsServingCellRx0RscpHists count])
  {
    v263 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsServingCellRx0RscpHists, "count")}];
    v845 = 0u;
    v846 = 0u;
    v847 = 0u;
    v848 = 0u;
    v264 = self->_kCellularTdsServingCellRx0RscpHists;
    v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v845 objects:v1049 count:16];
    if (v265)
    {
      v266 = v265;
      v267 = *v846;
      do
      {
        v268 = 0;
        do
        {
          if (*v846 != v267)
          {
            objc_enumerationMutation(v264);
          }

          v269 = [*(*(&v845 + 1) + 8 * v268) dictionaryRepresentation];
          [v263 addObject:v269];

          ++v268;
        }

        while (v266 != v268);
        v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v845 objects:v1049 count:16];
      }

      while (v266);
    }

    [v3 setObject:v263 forKey:@"kCellularTdsServingCellRx0RscpHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsServingCellRx1RscpHists count])
  {
    v270 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsServingCellRx1RscpHists, "count")}];
    v841 = 0u;
    v842 = 0u;
    v843 = 0u;
    v844 = 0u;
    v271 = self->_kCellularTdsServingCellRx1RscpHists;
    v272 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v841 objects:v1048 count:16];
    if (v272)
    {
      v273 = v272;
      v274 = *v842;
      do
      {
        v275 = 0;
        do
        {
          if (*v842 != v274)
          {
            objc_enumerationMutation(v271);
          }

          v276 = [*(*(&v841 + 1) + 8 * v275) dictionaryRepresentation];
          [v270 addObject:v276];

          ++v275;
        }

        while (v273 != v275);
        v273 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v841 objects:v1048 count:16];
      }

      while (v273);
    }

    [v3 setObject:v270 forKey:@"kCellularTdsServingCellRx1RscpHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsTxPowerHists count])
  {
    v277 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsTxPowerHists, "count")}];
    v837 = 0u;
    v838 = 0u;
    v839 = 0u;
    v840 = 0u;
    v278 = self->_kCellularTdsTxPowerHists;
    v279 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v837 objects:v1047 count:16];
    if (v279)
    {
      v280 = v279;
      v281 = *v838;
      do
      {
        v282 = 0;
        do
        {
          if (*v838 != v281)
          {
            objc_enumerationMutation(v278);
          }

          v283 = [*(*(&v837 + 1) + 8 * v282) dictionaryRepresentation];
          [v277 addObject:v283];

          ++v282;
        }

        while (v280 != v282);
        v280 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v837 objects:v1047 count:16];
      }

      while (v280);
    }

    [v3 setObject:v277 forKey:@"kCellularTdsTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsRabModeHists count])
  {
    v284 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsRabModeHists, "count")}];
    v833 = 0u;
    v834 = 0u;
    v835 = 0u;
    v836 = 0u;
    v285 = self->_kCellularTdsRabModeHists;
    v286 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v833 objects:v1046 count:16];
    if (v286)
    {
      v287 = v286;
      v288 = *v834;
      do
      {
        v289 = 0;
        do
        {
          if (*v834 != v288)
          {
            objc_enumerationMutation(v285);
          }

          v290 = [*(*(&v833 + 1) + 8 * v289) dictionaryRepresentation];
          [v284 addObject:v290];

          ++v289;
        }

        while (v287 != v289);
        v287 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v833 objects:v1046 count:16];
      }

      while (v287);
    }

    [v3 setObject:v284 forKey:@"kCellularTdsRabModeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsRabTypeHists count])
  {
    v291 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsRabTypeHists, "count")}];
    v829 = 0u;
    v830 = 0u;
    v831 = 0u;
    v832 = 0u;
    v292 = self->_kCellularTdsRabTypeHists;
    v293 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v829 objects:v1045 count:16];
    if (v293)
    {
      v294 = v293;
      v295 = *v830;
      do
      {
        v296 = 0;
        do
        {
          if (*v830 != v295)
          {
            objc_enumerationMutation(v292);
          }

          v297 = [*(*(&v829 + 1) + 8 * v296) dictionaryRepresentation];
          [v291 addObject:v297];

          ++v296;
        }

        while (v294 != v296);
        v294 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v829 objects:v1045 count:16];
      }

      while (v294);
    }

    [v3 setObject:v291 forKey:@"kCellularTdsRabTypeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsRrcStates count])
  {
    v298 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsRrcStates, "count")}];
    v825 = 0u;
    v826 = 0u;
    v827 = 0u;
    v828 = 0u;
    v299 = self->_kCellularTdsRrcStates;
    v300 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v825 objects:v1044 count:16];
    if (v300)
    {
      v301 = v300;
      v302 = *v826;
      do
      {
        v303 = 0;
        do
        {
          if (*v826 != v302)
          {
            objc_enumerationMutation(v299);
          }

          v304 = [*(*(&v825 + 1) + 8 * v303) dictionaryRepresentation];
          [v298 addObject:v304];

          ++v303;
        }

        while (v301 != v303);
        v301 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v825 objects:v1044 count:16];
      }

      while (v301);
    }

    [v3 setObject:v298 forKey:@"kCellularTdsRrcState"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsL1States count])
  {
    v305 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsL1States, "count")}];
    v821 = 0u;
    v822 = 0u;
    v823 = 0u;
    v824 = 0u;
    v306 = self->_kCellularTdsL1States;
    v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v821 objects:v1043 count:16];
    if (v307)
    {
      v308 = v307;
      v309 = *v822;
      do
      {
        v310 = 0;
        do
        {
          if (*v822 != v309)
          {
            objc_enumerationMutation(v306);
          }

          v311 = [*(*(&v821 + 1) + 8 * v310) dictionaryRepresentation];
          [v305 addObject:v311];

          ++v310;
        }

        while (v308 != v310);
        v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v821 objects:v1043 count:16];
      }

      while (v308);
    }

    [v3 setObject:v305 forKey:@"kCellularTdsL1State"];
  }

  if ([(NSMutableArray *)self->_kCellularLteFwDuplexModes count])
  {
    v312 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteFwDuplexModes, "count")}];
    v817 = 0u;
    v818 = 0u;
    v819 = 0u;
    v820 = 0u;
    v313 = self->_kCellularLteFwDuplexModes;
    v314 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v817 objects:v1042 count:16];
    if (v314)
    {
      v315 = v314;
      v316 = *v818;
      do
      {
        v317 = 0;
        do
        {
          if (*v818 != v316)
          {
            objc_enumerationMutation(v313);
          }

          v318 = [*(*(&v817 + 1) + 8 * v317) dictionaryRepresentation];
          [v312 addObject:v318];

          ++v317;
        }

        while (v315 != v317);
        v315 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v817 objects:v1042 count:16];
      }

      while (v315);
    }

    [v3 setObject:v312 forKey:@"kCellularLteFwDuplexMode"];
  }

  if ([(NSMutableArray *)self->_kCellularLteServingCellRsrpHists count])
  {
    v319 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteServingCellRsrpHists, "count")}];
    v813 = 0u;
    v814 = 0u;
    v815 = 0u;
    v816 = 0u;
    v320 = self->_kCellularLteServingCellRsrpHists;
    v321 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v813 objects:v1041 count:16];
    if (v321)
    {
      v322 = v321;
      v323 = *v814;
      do
      {
        v324 = 0;
        do
        {
          if (*v814 != v323)
          {
            objc_enumerationMutation(v320);
          }

          v325 = [*(*(&v813 + 1) + 8 * v324) dictionaryRepresentation];
          [v319 addObject:v325];

          ++v324;
        }

        while (v322 != v324);
        v322 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v813 objects:v1041 count:16];
      }

      while (v322);
    }

    [v3 setObject:v319 forKey:@"kCellularLteServingCellRsrpHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteServingCellSinrHists count])
  {
    v326 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteServingCellSinrHists, "count")}];
    v809 = 0u;
    v810 = 0u;
    v811 = 0u;
    v812 = 0u;
    v327 = self->_kCellularLteServingCellSinrHists;
    v328 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v809 objects:v1040 count:16];
    if (v328)
    {
      v329 = v328;
      v330 = *v810;
      do
      {
        v331 = 0;
        do
        {
          if (*v810 != v330)
          {
            objc_enumerationMutation(v327);
          }

          v332 = [*(*(&v809 + 1) + 8 * v331) dictionaryRepresentation];
          [v326 addObject:v332];

          ++v331;
        }

        while (v329 != v331);
        v329 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v809 objects:v1040 count:16];
      }

      while (v329);
    }

    [v3 setObject:v326 forKey:@"kCellularLteServingCellSinrHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteSleepStateHists count])
  {
    v333 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteSleepStateHists, "count")}];
    v805 = 0u;
    v806 = 0u;
    v807 = 0u;
    v808 = 0u;
    v334 = self->_kCellularLteSleepStateHists;
    v335 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v805 objects:v1039 count:16];
    if (v335)
    {
      v336 = v335;
      v337 = *v806;
      do
      {
        v338 = 0;
        do
        {
          if (*v806 != v337)
          {
            objc_enumerationMutation(v334);
          }

          v339 = [*(*(&v805 + 1) + 8 * v338) dictionaryRepresentation];
          [v333 addObject:v339];

          ++v338;
        }

        while (v336 != v338);
        v336 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v805 objects:v1039 count:16];
      }

      while (v336);
    }

    [v3 setObject:v333 forKey:@"kCellularLteSleepStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteTxPowerHists count])
  {
    v340 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteTxPowerHists, "count")}];
    v801 = 0u;
    v802 = 0u;
    v803 = 0u;
    v804 = 0u;
    v341 = self->_kCellularLteTxPowerHists;
    v342 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v801 objects:v1038 count:16];
    if (v342)
    {
      v343 = v342;
      v344 = *v802;
      do
      {
        v345 = 0;
        do
        {
          if (*v802 != v344)
          {
            objc_enumerationMutation(v341);
          }

          v346 = [*(*(&v801 + 1) + 8 * v345) dictionaryRepresentation];
          [v340 addObject:v346];

          ++v345;
        }

        while (v343 != v345);
        v343 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v801 objects:v1038 count:16];
      }

      while (v343);
    }

    [v3 setObject:v340 forKey:@"kCellularLteTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteDlSccStateHists count])
  {
    v347 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteDlSccStateHists, "count")}];
    v797 = 0u;
    v798 = 0u;
    v799 = 0u;
    v800 = 0u;
    v348 = self->_kCellularLteDlSccStateHists;
    v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v797 objects:v1037 count:16];
    if (v349)
    {
      v350 = v349;
      v351 = *v798;
      do
      {
        v352 = 0;
        do
        {
          if (*v798 != v351)
          {
            objc_enumerationMutation(v348);
          }

          v353 = [*(*(&v797 + 1) + 8 * v352) dictionaryRepresentation];
          [v347 addObject:v353];

          ++v352;
        }

        while (v350 != v352);
        v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v797 objects:v1037 count:16];
      }

      while (v350);
    }

    [v3 setObject:v347 forKey:@"kCellularLteDlSccStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteUlSccStateHists count])
  {
    v354 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteUlSccStateHists, "count")}];
    v793 = 0u;
    v794 = 0u;
    v795 = 0u;
    v796 = 0u;
    v355 = self->_kCellularLteUlSccStateHists;
    v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v793 objects:v1036 count:16];
    if (v356)
    {
      v357 = v356;
      v358 = *v794;
      do
      {
        v359 = 0;
        do
        {
          if (*v794 != v358)
          {
            objc_enumerationMutation(v355);
          }

          v360 = [*(*(&v793 + 1) + 8 * v359) dictionaryRepresentation];
          [v354 addObject:v360];

          ++v359;
        }

        while (v357 != v359);
        v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v793 objects:v1036 count:16];
      }

      while (v357);
    }

    [v3 setObject:v354 forKey:@"kCellularLteUlSccStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteAdvancedRxStateHists count])
  {
    v361 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteAdvancedRxStateHists, "count")}];
    v789 = 0u;
    v790 = 0u;
    v791 = 0u;
    v792 = 0u;
    v362 = self->_kCellularLteAdvancedRxStateHists;
    v363 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v789 objects:v1035 count:16];
    if (v363)
    {
      v364 = v363;
      v365 = *v790;
      do
      {
        v366 = 0;
        do
        {
          if (*v790 != v365)
          {
            objc_enumerationMutation(v362);
          }

          v367 = [*(*(&v789 + 1) + 8 * v366) dictionaryRepresentation];
          [v361 addObject:v367];

          ++v366;
        }

        while (v364 != v366);
        v364 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v789 objects:v1035 count:16];
      }

      while (v364);
    }

    [v3 setObject:v361 forKey:@"kCellularLteAdvancedRxStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteComponentCarrierInfos count])
  {
    v368 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteComponentCarrierInfos, "count")}];
    v785 = 0u;
    v786 = 0u;
    v787 = 0u;
    v788 = 0u;
    v369 = self->_kCellularLteComponentCarrierInfos;
    v370 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v785 objects:v1034 count:16];
    if (v370)
    {
      v371 = v370;
      v372 = *v786;
      do
      {
        v373 = 0;
        do
        {
          if (*v786 != v372)
          {
            objc_enumerationMutation(v369);
          }

          v374 = [*(*(&v785 + 1) + 8 * v373) dictionaryRepresentation];
          [v368 addObject:v374];

          ++v373;
        }

        while (v371 != v373);
        v371 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v785 objects:v1034 count:16];
      }

      while (v371);
    }

    [v3 setObject:v368 forKey:@"kCellularLteComponentCarrierInfo"];
  }

  if ([(NSMutableArray *)self->_kCellularLteRxTxStateHists count])
  {
    v375 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteRxTxStateHists, "count")}];
    v781 = 0u;
    v782 = 0u;
    v783 = 0u;
    v784 = 0u;
    v376 = self->_kCellularLteRxTxStateHists;
    v377 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v781 objects:v1033 count:16];
    if (v377)
    {
      v378 = v377;
      v379 = *v782;
      do
      {
        v380 = 0;
        do
        {
          if (*v782 != v379)
          {
            objc_enumerationMutation(v376);
          }

          v381 = [*(*(&v781 + 1) + 8 * v380) dictionaryRepresentation];
          [v375 addObject:v381];

          ++v380;
        }

        while (v378 != v380);
        v378 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v781 objects:v1033 count:16];
      }

      while (v378);
    }

    [v3 setObject:v375 forKey:@"kCellularLteRxTxStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteTotalDlTbsHists count])
  {
    v382 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteTotalDlTbsHists, "count")}];
    v777 = 0u;
    v778 = 0u;
    v779 = 0u;
    v780 = 0u;
    v383 = self->_kCellularLteTotalDlTbsHists;
    v384 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v777 objects:v1032 count:16];
    if (v384)
    {
      v385 = v384;
      v386 = *v778;
      do
      {
        v387 = 0;
        do
        {
          if (*v778 != v386)
          {
            objc_enumerationMutation(v383);
          }

          v388 = [*(*(&v777 + 1) + 8 * v387) dictionaryRepresentation];
          [v382 addObject:v388];

          ++v387;
        }

        while (v385 != v387);
        v385 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v777 objects:v1032 count:16];
      }

      while (v385);
    }

    [v3 setObject:v382 forKey:@"kCellularLteTotalDlTbsHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteDlSccStateHistV3s count])
  {
    v389 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteDlSccStateHistV3s, "count")}];
    v773 = 0u;
    v774 = 0u;
    v775 = 0u;
    v776 = 0u;
    v390 = self->_kCellularLteDlSccStateHistV3s;
    v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v773 objects:v1031 count:16];
    if (v391)
    {
      v392 = v391;
      v393 = *v774;
      do
      {
        v394 = 0;
        do
        {
          if (*v774 != v393)
          {
            objc_enumerationMutation(v390);
          }

          v395 = [*(*(&v773 + 1) + 8 * v394) dictionaryRepresentation];
          [v389 addObject:v395];

          ++v394;
        }

        while (v392 != v394);
        v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v773 objects:v1031 count:16];
      }

      while (v392);
    }

    [v3 setObject:v389 forKey:@"kCellularLteDlSccStateHistV3"];
  }

  if ([(NSMutableArray *)self->_kCellularLteRxDiversityHists count])
  {
    v396 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteRxDiversityHists, "count")}];
    v769 = 0u;
    v770 = 0u;
    v771 = 0u;
    v772 = 0u;
    v397 = self->_kCellularLteRxDiversityHists;
    v398 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v769 objects:v1030 count:16];
    if (v398)
    {
      v399 = v398;
      v400 = *v770;
      do
      {
        v401 = 0;
        do
        {
          if (*v770 != v400)
          {
            objc_enumerationMutation(v397);
          }

          v402 = [*(*(&v769 + 1) + 8 * v401) dictionaryRepresentation];
          [v396 addObject:v402];

          ++v401;
        }

        while (v399 != v401);
        v399 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v769 objects:v1030 count:16];
      }

      while (v399);
    }

    [v3 setObject:v396 forKey:@"kCellularLteRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLtePdcchStateHists count])
  {
    v403 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLtePdcchStateHists, "count")}];
    v765 = 0u;
    v766 = 0u;
    v767 = 0u;
    v768 = 0u;
    v404 = self->_kCellularLtePdcchStateHists;
    v405 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v765 objects:v1029 count:16];
    if (v405)
    {
      v406 = v405;
      v407 = *v766;
      do
      {
        v408 = 0;
        do
        {
          if (*v766 != v407)
          {
            objc_enumerationMutation(v404);
          }

          v409 = [*(*(&v765 + 1) + 8 * v408) dictionaryRepresentation];
          [v403 addObject:v409];

          ++v408;
        }

        while (v406 != v408);
        v406 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v765 objects:v1029 count:16];
      }

      while (v406);
    }

    [v3 setObject:v403 forKey:@"kCellularLtePdcchStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteRrcStates count])
  {
    v410 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteRrcStates, "count")}];
    v761 = 0u;
    v762 = 0u;
    v763 = 0u;
    v764 = 0u;
    v411 = self->_kCellularLteRrcStates;
    v412 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v761 objects:v1028 count:16];
    if (v412)
    {
      v413 = v412;
      v414 = *v762;
      do
      {
        v415 = 0;
        do
        {
          if (*v762 != v414)
          {
            objc_enumerationMutation(v411);
          }

          v416 = [*(*(&v761 + 1) + 8 * v415) dictionaryRepresentation];
          [v410 addObject:v416];

          ++v415;
        }

        while (v413 != v415);
        v413 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v761 objects:v1028 count:16];
      }

      while (v413);
    }

    [v3 setObject:v410 forKey:@"kCellularLteRrcState"];
  }

  if ([(NSMutableArray *)self->_kCellularLtePagingCycles count])
  {
    v417 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLtePagingCycles, "count")}];
    v757 = 0u;
    v758 = 0u;
    v759 = 0u;
    v760 = 0u;
    v418 = self->_kCellularLtePagingCycles;
    v419 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v757 objects:v1027 count:16];
    if (v419)
    {
      v420 = v419;
      v421 = *v758;
      do
      {
        v422 = 0;
        do
        {
          if (*v758 != v421)
          {
            objc_enumerationMutation(v418);
          }

          v423 = [*(*(&v757 + 1) + 8 * v422) dictionaryRepresentation];
          [v417 addObject:v423];

          ++v422;
        }

        while (v420 != v422);
        v420 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v757 objects:v1027 count:16];
      }

      while (v420);
    }

    [v3 setObject:v417 forKey:@"kCellularLtePagingCycle"];
  }

  if ([(NSMutableArray *)self->_kCellularLteCdrxConfigs count])
  {
    v424 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteCdrxConfigs, "count")}];
    v753 = 0u;
    v754 = 0u;
    v755 = 0u;
    v756 = 0u;
    v425 = self->_kCellularLteCdrxConfigs;
    v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v753 objects:v1026 count:16];
    if (v426)
    {
      v427 = v426;
      v428 = *v754;
      do
      {
        v429 = 0;
        do
        {
          if (*v754 != v428)
          {
            objc_enumerationMutation(v425);
          }

          v430 = [*(*(&v753 + 1) + 8 * v429) dictionaryRepresentation];
          [v424 addObject:v430];

          ++v429;
        }

        while (v427 != v429);
        v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v753 objects:v1026 count:16];
      }

      while (v427);
    }

    [v3 setObject:v424 forKey:@"kCellularLteCdrxConfig"];
  }

  if ([(NSMutableArray *)self->_kCellularLteRadioLinkFailures count])
  {
    v431 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteRadioLinkFailures, "count")}];
    v749 = 0u;
    v750 = 0u;
    v751 = 0u;
    v752 = 0u;
    v432 = self->_kCellularLteRadioLinkFailures;
    v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v749 objects:v1025 count:16];
    if (v433)
    {
      v434 = v433;
      v435 = *v750;
      do
      {
        v436 = 0;
        do
        {
          if (*v750 != v435)
          {
            objc_enumerationMutation(v432);
          }

          v437 = [*(*(&v749 + 1) + 8 * v436) dictionaryRepresentation];
          [v431 addObject:v437];

          ++v436;
        }

        while (v434 != v436);
        v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v749 objects:v1025 count:16];
      }

      while (v434);
    }

    [v3 setObject:v431 forKey:@"kCellularLteRadioLinkFailure"];
  }

  if ([(NSMutableArray *)self->_kCellularLtePdcchStateStats count])
  {
    v438 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLtePdcchStateStats, "count")}];
    v745 = 0u;
    v746 = 0u;
    v747 = 0u;
    v748 = 0u;
    v439 = self->_kCellularLtePdcchStateStats;
    v440 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v745 objects:v1024 count:16];
    if (v440)
    {
      v441 = v440;
      v442 = *v746;
      do
      {
        v443 = 0;
        do
        {
          if (*v746 != v442)
          {
            objc_enumerationMutation(v439);
          }

          v444 = [*(*(&v745 + 1) + 8 * v443) dictionaryRepresentation];
          [v438 addObject:v444];

          ++v443;
        }

        while (v441 != v443);
        v441 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v745 objects:v1024 count:16];
      }

      while (v441);
    }

    [v3 setObject:v438 forKey:@"kCellularLtePdcchStateStats"];
  }

  if ([(NSMutableArray *)self->_kCellularLqmStateChanges count])
  {
    v445 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLqmStateChanges, "count")}];
    v741 = 0u;
    v742 = 0u;
    v743 = 0u;
    v744 = 0u;
    v446 = self->_kCellularLqmStateChanges;
    v447 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v741 objects:v1023 count:16];
    if (v447)
    {
      v448 = v447;
      v449 = *v742;
      do
      {
        v450 = 0;
        do
        {
          if (*v742 != v449)
          {
            objc_enumerationMutation(v446);
          }

          v451 = [*(*(&v741 + 1) + 8 * v450) dictionaryRepresentation];
          [v445 addObject:v451];

          ++v450;
        }

        while (v448 != v450);
        v448 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v741 objects:v1023 count:16];
      }

      while (v448);
    }

    [v3 setObject:v445 forKey:@"kCellularLqmStateChange"];
  }

  if ([(NSMutableArray *)self->_kCellularServiceLosts count])
  {
    v452 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularServiceLosts, "count")}];
    v737 = 0u;
    v738 = 0u;
    v739 = 0u;
    v740 = 0u;
    v453 = self->_kCellularServiceLosts;
    v454 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v737 objects:v1022 count:16];
    if (v454)
    {
      v455 = v454;
      v456 = *v738;
      do
      {
        v457 = 0;
        do
        {
          if (*v738 != v456)
          {
            objc_enumerationMutation(v453);
          }

          v458 = [*(*(&v737 + 1) + 8 * v457) dictionaryRepresentation];
          [v452 addObject:v458];

          ++v457;
        }

        while (v455 != v457);
        v455 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v737 objects:v1022 count:16];
      }

      while (v455);
    }

    [v3 setObject:v452 forKey:@"kCellularServiceLost"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackStateHists count])
  {
    v459 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackStateHists, "count")}];
    v733 = 0u;
    v734 = 0u;
    v735 = 0u;
    v736 = 0u;
    v460 = self->_kCellularProtocolStackStateHists;
    v461 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v733 objects:v1021 count:16];
    if (v461)
    {
      v462 = v461;
      v463 = *v734;
      do
      {
        v464 = 0;
        do
        {
          if (*v734 != v463)
          {
            objc_enumerationMutation(v460);
          }

          v465 = [*(*(&v733 + 1) + 8 * v464) dictionaryRepresentation];
          [v459 addObject:v465];

          ++v464;
        }

        while (v462 != v464);
        v462 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v733 objects:v1021 count:16];
      }

      while (v462);
    }

    [v3 setObject:v459 forKey:@"kCellularProtocolStackStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCellPlmnSearchCounts count])
  {
    v466 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCellPlmnSearchCounts, "count")}];
    v729 = 0u;
    v730 = 0u;
    v731 = 0u;
    v732 = 0u;
    v467 = self->_kCellularCellPlmnSearchCounts;
    v468 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v729 objects:v1020 count:16];
    if (v468)
    {
      v469 = v468;
      v470 = *v730;
      do
      {
        v471 = 0;
        do
        {
          if (*v730 != v470)
          {
            objc_enumerationMutation(v467);
          }

          v472 = [*(*(&v729 + 1) + 8 * v471) dictionaryRepresentation];
          [v466 addObject:v472];

          ++v471;
        }

        while (v469 != v471);
        v469 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v729 objects:v1020 count:16];
      }

      while (v469);
    }

    [v3 setObject:v466 forKey:@"kCellularCellPlmnSearchCount"];
  }

  if ([(NSMutableArray *)self->_kCellularCellPlmnSearchHists count])
  {
    v473 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCellPlmnSearchHists, "count")}];
    v725 = 0u;
    v726 = 0u;
    v727 = 0u;
    v728 = 0u;
    v474 = self->_kCellularCellPlmnSearchHists;
    v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v725 objects:v1019 count:16];
    if (v475)
    {
      v476 = v475;
      v477 = *v726;
      do
      {
        v478 = 0;
        do
        {
          if (*v726 != v477)
          {
            objc_enumerationMutation(v474);
          }

          v479 = [*(*(&v725 + 1) + 8 * v478) dictionaryRepresentation];
          [v473 addObject:v479];

          ++v478;
        }

        while (v476 != v478);
        v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v725 objects:v1019 count:16];
      }

      while (v476);
    }

    [v3 setObject:v473 forKey:@"kCellularCellPlmnSearchHist"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackPowerStates count])
  {
    v480 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackPowerStates, "count")}];
    v721 = 0u;
    v722 = 0u;
    v723 = 0u;
    v724 = 0u;
    v481 = self->_kCellularProtocolStackPowerStates;
    v482 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v721 objects:v1018 count:16];
    if (v482)
    {
      v483 = v482;
      v484 = *v722;
      do
      {
        v485 = 0;
        do
        {
          if (*v722 != v484)
          {
            objc_enumerationMutation(v481);
          }

          v486 = [*(*(&v721 + 1) + 8 * v485) dictionaryRepresentation];
          [v480 addObject:v486];

          ++v485;
        }

        while (v483 != v485);
        v483 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v721 objects:v1018 count:16];
      }

      while (v483);
    }

    [v3 setObject:v480 forKey:@"kCellularProtocolStackPowerState"];
  }

  if ([(NSMutableArray *)self->_kCellularDownlinkIpPacketFilterStatus count])
  {
    v487 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularDownlinkIpPacketFilterStatus, "count")}];
    v717 = 0u;
    v718 = 0u;
    v719 = 0u;
    v720 = 0u;
    v488 = self->_kCellularDownlinkIpPacketFilterStatus;
    v489 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v717 objects:v1017 count:16];
    if (v489)
    {
      v490 = v489;
      v491 = *v718;
      do
      {
        v492 = 0;
        do
        {
          if (*v718 != v491)
          {
            objc_enumerationMutation(v488);
          }

          v493 = [*(*(&v717 + 1) + 8 * v492) dictionaryRepresentation];
          [v487 addObject:v493];

          ++v492;
        }

        while (v490 != v492);
        v490 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v717 objects:v1017 count:16];
      }

      while (v490);
    }

    [v3 setObject:v487 forKey:@"kCellularDownlinkIpPacketFilterStatus"];
  }

  if ([(NSMutableArray *)self->_kCellularServingCellRfBandHists count])
  {
    v494 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularServingCellRfBandHists, "count")}];
    v713 = 0u;
    v714 = 0u;
    v715 = 0u;
    v716 = 0u;
    v495 = self->_kCellularServingCellRfBandHists;
    v496 = [(NSMutableArray *)v495 countByEnumeratingWithState:&v713 objects:v1016 count:16];
    if (v496)
    {
      v497 = v496;
      v498 = *v714;
      do
      {
        v499 = 0;
        do
        {
          if (*v714 != v498)
          {
            objc_enumerationMutation(v495);
          }

          v500 = [*(*(&v713 + 1) + 8 * v499) dictionaryRepresentation];
          [v494 addObject:v500];

          ++v499;
        }

        while (v497 != v499);
        v497 = [(NSMutableArray *)v495 countByEnumeratingWithState:&v713 objects:v1016 count:16];
      }

      while (v497);
    }

    [v3 setObject:v494 forKey:@"kCellularServingCellRfBandHist"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackStateHist2s count])
  {
    v501 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackStateHist2s, "count")}];
    v709 = 0u;
    v710 = 0u;
    v711 = 0u;
    v712 = 0u;
    v502 = self->_kCellularProtocolStackStateHist2s;
    v503 = [(NSMutableArray *)v502 countByEnumeratingWithState:&v709 objects:v1015 count:16];
    if (v503)
    {
      v504 = v503;
      v505 = *v710;
      do
      {
        v506 = 0;
        do
        {
          if (*v710 != v505)
          {
            objc_enumerationMutation(v502);
          }

          v507 = [*(*(&v709 + 1) + 8 * v506) dictionaryRepresentation];
          [v501 addObject:v507];

          ++v506;
        }

        while (v504 != v506);
        v504 = [(NSMutableArray *)v502 countByEnumeratingWithState:&v709 objects:v1015 count:16];
      }

      while (v504);
    }

    [v3 setObject:v501 forKey:@"kCellularProtocolStackStateHist2"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackStates count])
  {
    v508 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackStates, "count")}];
    v705 = 0u;
    v706 = 0u;
    v707 = 0u;
    v708 = 0u;
    v509 = self->_kCellularProtocolStackStates;
    v510 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v705 objects:v1014 count:16];
    if (v510)
    {
      v511 = v510;
      v512 = *v706;
      do
      {
        v513 = 0;
        do
        {
          if (*v706 != v512)
          {
            objc_enumerationMutation(v509);
          }

          v514 = [*(*(&v705 + 1) + 8 * v513) dictionaryRepresentation];
          [v508 addObject:v514];

          ++v513;
        }

        while (v511 != v513);
        v511 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v705 objects:v1014 count:16];
      }

      while (v511);
    }

    [v3 setObject:v508 forKey:@"kCellularProtocolStackState"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XRxDiversityHists count])
  {
    v515 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XRxDiversityHists, "count")}];
    v701 = 0u;
    v702 = 0u;
    v703 = 0u;
    v704 = 0u;
    v516 = self->_kCellularCdma1XRxDiversityHists;
    v517 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v701 objects:v1013 count:16];
    if (v517)
    {
      v518 = v517;
      v519 = *v702;
      do
      {
        v520 = 0;
        do
        {
          if (*v702 != v519)
          {
            objc_enumerationMutation(v516);
          }

          v521 = [*(*(&v701 + 1) + 8 * v520) dictionaryRepresentation];
          [v515 addObject:v521];

          ++v520;
        }

        while (v518 != v520);
        v518 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v701 objects:v1013 count:16];
      }

      while (v518);
    }

    [v3 setObject:v515 forKey:@"kCellularCdma1XRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XServingCellRx0RssiHists count])
  {
    v522 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XServingCellRx0RssiHists, "count")}];
    v697 = 0u;
    v698 = 0u;
    v699 = 0u;
    v700 = 0u;
    v523 = self->_kCellularCdma1XServingCellRx0RssiHists;
    v524 = [(NSMutableArray *)v523 countByEnumeratingWithState:&v697 objects:v1012 count:16];
    if (v524)
    {
      v525 = v524;
      v526 = *v698;
      do
      {
        v527 = 0;
        do
        {
          if (*v698 != v526)
          {
            objc_enumerationMutation(v523);
          }

          v528 = [*(*(&v697 + 1) + 8 * v527) dictionaryRepresentation];
          [v522 addObject:v528];

          ++v527;
        }

        while (v525 != v527);
        v525 = [(NSMutableArray *)v523 countByEnumeratingWithState:&v697 objects:v1012 count:16];
      }

      while (v525);
    }

    [v3 setObject:v522 forKey:@"kCellularCdma1XServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XServingCellRx1RssiHists count])
  {
    v529 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XServingCellRx1RssiHists, "count")}];
    v693 = 0u;
    v694 = 0u;
    v695 = 0u;
    v696 = 0u;
    v530 = self->_kCellularCdma1XServingCellRx1RssiHists;
    v531 = [(NSMutableArray *)v530 countByEnumeratingWithState:&v693 objects:v1011 count:16];
    if (v531)
    {
      v532 = v531;
      v533 = *v694;
      do
      {
        v534 = 0;
        do
        {
          if (*v694 != v533)
          {
            objc_enumerationMutation(v530);
          }

          v535 = [*(*(&v693 + 1) + 8 * v534) dictionaryRepresentation];
          [v529 addObject:v535];

          ++v534;
        }

        while (v532 != v534);
        v532 = [(NSMutableArray *)v530 countByEnumeratingWithState:&v693 objects:v1011 count:16];
      }

      while (v532);
    }

    [v3 setObject:v529 forKey:@"kCellularCdma1XServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XServingCellRx0EcIoHists count])
  {
    v536 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XServingCellRx0EcIoHists, "count")}];
    v689 = 0u;
    v690 = 0u;
    v691 = 0u;
    v692 = 0u;
    v537 = self->_kCellularCdma1XServingCellRx0EcIoHists;
    v538 = [(NSMutableArray *)v537 countByEnumeratingWithState:&v689 objects:v1010 count:16];
    if (v538)
    {
      v539 = v538;
      v540 = *v690;
      do
      {
        v541 = 0;
        do
        {
          if (*v690 != v540)
          {
            objc_enumerationMutation(v537);
          }

          v542 = [*(*(&v689 + 1) + 8 * v541) dictionaryRepresentation];
          [v536 addObject:v542];

          ++v541;
        }

        while (v539 != v541);
        v539 = [(NSMutableArray *)v537 countByEnumeratingWithState:&v689 objects:v1010 count:16];
      }

      while (v539);
    }

    [v3 setObject:v536 forKey:@"kCellularCdma1XServingCellRx0EcIoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XServingCellRx1EcIoHists count])
  {
    v543 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XServingCellRx1EcIoHists, "count")}];
    v685 = 0u;
    v686 = 0u;
    v687 = 0u;
    v688 = 0u;
    v544 = self->_kCellularCdma1XServingCellRx1EcIoHists;
    v545 = [(NSMutableArray *)v544 countByEnumeratingWithState:&v685 objects:v1009 count:16];
    if (v545)
    {
      v546 = v545;
      v547 = *v686;
      do
      {
        v548 = 0;
        do
        {
          if (*v686 != v547)
          {
            objc_enumerationMutation(v544);
          }

          v549 = [*(*(&v685 + 1) + 8 * v548) dictionaryRepresentation];
          [v543 addObject:v549];

          ++v548;
        }

        while (v546 != v548);
        v546 = [(NSMutableArray *)v544 countByEnumeratingWithState:&v685 objects:v1009 count:16];
      }

      while (v546);
    }

    [v3 setObject:v543 forKey:@"kCellularCdma1XServingCellRx1EcIoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XTxPowerHists count])
  {
    v550 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XTxPowerHists, "count")}];
    v681 = 0u;
    v682 = 0u;
    v683 = 0u;
    v684 = 0u;
    v551 = self->_kCellularCdma1XTxPowerHists;
    v552 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v681 objects:v1008 count:16];
    if (v552)
    {
      v553 = v552;
      v554 = *v682;
      do
      {
        v555 = 0;
        do
        {
          if (*v682 != v554)
          {
            objc_enumerationMutation(v551);
          }

          v556 = [*(*(&v681 + 1) + 8 * v555) dictionaryRepresentation];
          [v550 addObject:v556];

          ++v555;
        }

        while (v553 != v555);
        v553 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v681 objects:v1008 count:16];
      }

      while (v553);
    }

    [v3 setObject:v550 forKey:@"kCellularCdma1XTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XProtocolStackStateHists count])
  {
    v557 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XProtocolStackStateHists, "count")}];
    v677 = 0u;
    v678 = 0u;
    v679 = 0u;
    v680 = 0u;
    v558 = self->_kCellularCdma1XProtocolStackStateHists;
    v559 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v677 objects:v1007 count:16];
    if (v559)
    {
      v560 = v559;
      v561 = *v678;
      do
      {
        v562 = 0;
        do
        {
          if (*v678 != v561)
          {
            objc_enumerationMutation(v558);
          }

          v563 = [*(*(&v677 + 1) + 8 * v562) dictionaryRepresentation];
          [v557 addObject:v563];

          ++v562;
        }

        while (v560 != v562);
        v560 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v677 objects:v1007 count:16];
      }

      while (v560);
    }

    [v3 setObject:v557 forKey:@"kCellularCdma1XProtocolStackStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XConnectionHists count])
  {
    v564 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XConnectionHists, "count")}];
    v673 = 0u;
    v674 = 0u;
    v675 = 0u;
    v676 = 0u;
    v565 = self->_kCellularCdma1XConnectionHists;
    v566 = [(NSMutableArray *)v565 countByEnumeratingWithState:&v673 objects:v1006 count:16];
    if (v566)
    {
      v567 = v566;
      v568 = *v674;
      do
      {
        v569 = 0;
        do
        {
          if (*v674 != v568)
          {
            objc_enumerationMutation(v565);
          }

          v570 = [*(*(&v673 + 1) + 8 * v569) dictionaryRepresentation];
          [v564 addObject:v570];

          ++v569;
        }

        while (v567 != v569);
        v567 = [(NSMutableArray *)v565 countByEnumeratingWithState:&v673 objects:v1006 count:16];
      }

      while (v567);
    }

    [v3 setObject:v564 forKey:@"kCellularCdma1XConnectionHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XRrStates count])
  {
    v571 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XRrStates, "count")}];
    v669 = 0u;
    v670 = 0u;
    v671 = 0u;
    v672 = 0u;
    v572 = self->_kCellularCdma1XRrStates;
    v573 = [(NSMutableArray *)v572 countByEnumeratingWithState:&v669 objects:v1005 count:16];
    if (v573)
    {
      v574 = v573;
      v575 = *v670;
      do
      {
        v576 = 0;
        do
        {
          if (*v670 != v575)
          {
            objc_enumerationMutation(v572);
          }

          v577 = [*(*(&v669 + 1) + 8 * v576) dictionaryRepresentation];
          [v571 addObject:v577];

          ++v576;
        }

        while (v574 != v576);
        v574 = [(NSMutableArray *)v572 countByEnumeratingWithState:&v669 objects:v1005 count:16];
      }

      while (v574);
    }

    [v3 setObject:v571 forKey:@"kCellularCdma1XRrState"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoRxDiversityHists count])
  {
    v578 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoRxDiversityHists, "count")}];
    v665 = 0u;
    v666 = 0u;
    v667 = 0u;
    v668 = 0u;
    v579 = self->_kCellularCdmaEvdoRxDiversityHists;
    v580 = [(NSMutableArray *)v579 countByEnumeratingWithState:&v665 objects:v1004 count:16];
    if (v580)
    {
      v581 = v580;
      v582 = *v666;
      do
      {
        v583 = 0;
        do
        {
          if (*v666 != v582)
          {
            objc_enumerationMutation(v579);
          }

          v584 = [*(*(&v665 + 1) + 8 * v583) dictionaryRepresentation];
          [v578 addObject:v584];

          ++v583;
        }

        while (v581 != v583);
        v581 = [(NSMutableArray *)v579 countByEnumeratingWithState:&v665 objects:v1004 count:16];
      }

      while (v581);
    }

    [v3 setObject:v578 forKey:@"kCellularCdmaEvdoRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx0RssiHists count])
  {
    v585 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoServingCellRx0RssiHists, "count")}];
    v661 = 0u;
    v662 = 0u;
    v663 = 0u;
    v664 = 0u;
    v586 = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
    v587 = [(NSMutableArray *)v586 countByEnumeratingWithState:&v661 objects:v1003 count:16];
    if (v587)
    {
      v588 = v587;
      v589 = *v662;
      do
      {
        v590 = 0;
        do
        {
          if (*v662 != v589)
          {
            objc_enumerationMutation(v586);
          }

          v591 = [*(*(&v661 + 1) + 8 * v590) dictionaryRepresentation];
          [v585 addObject:v591];

          ++v590;
        }

        while (v588 != v590);
        v588 = [(NSMutableArray *)v586 countByEnumeratingWithState:&v661 objects:v1003 count:16];
      }

      while (v588);
    }

    [v3 setObject:v585 forKey:@"kCellularCdmaEvdoServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx1RssiHists count])
  {
    v592 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoServingCellRx1RssiHists, "count")}];
    v657 = 0u;
    v658 = 0u;
    v659 = 0u;
    v660 = 0u;
    v593 = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
    v594 = [(NSMutableArray *)v593 countByEnumeratingWithState:&v657 objects:v1002 count:16];
    if (v594)
    {
      v595 = v594;
      v596 = *v658;
      do
      {
        v597 = 0;
        do
        {
          if (*v658 != v596)
          {
            objc_enumerationMutation(v593);
          }

          v598 = [*(*(&v657 + 1) + 8 * v597) dictionaryRepresentation];
          [v592 addObject:v598];

          ++v597;
        }

        while (v595 != v597);
        v595 = [(NSMutableArray *)v593 countByEnumeratingWithState:&v657 objects:v1002 count:16];
      }

      while (v595);
    }

    [v3 setObject:v592 forKey:@"kCellularCdmaEvdoServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx0EcIoHists count])
  {
    v599 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoServingCellRx0EcIoHists, "count")}];
    v653 = 0u;
    v654 = 0u;
    v655 = 0u;
    v656 = 0u;
    v600 = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
    v601 = [(NSMutableArray *)v600 countByEnumeratingWithState:&v653 objects:v1001 count:16];
    if (v601)
    {
      v602 = v601;
      v603 = *v654;
      do
      {
        v604 = 0;
        do
        {
          if (*v654 != v603)
          {
            objc_enumerationMutation(v600);
          }

          v605 = [*(*(&v653 + 1) + 8 * v604) dictionaryRepresentation];
          [v599 addObject:v605];

          ++v604;
        }

        while (v602 != v604);
        v602 = [(NSMutableArray *)v600 countByEnumeratingWithState:&v653 objects:v1001 count:16];
      }

      while (v602);
    }

    [v3 setObject:v599 forKey:@"kCellularCdmaEvdoServingCellRx0EcIoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx1EcIoHists count])
  {
    v606 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoServingCellRx1EcIoHists, "count")}];
    v649 = 0u;
    v650 = 0u;
    v651 = 0u;
    v652 = 0u;
    v607 = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
    v608 = [(NSMutableArray *)v607 countByEnumeratingWithState:&v649 objects:v1000 count:16];
    if (v608)
    {
      v609 = v608;
      v610 = *v650;
      do
      {
        v611 = 0;
        do
        {
          if (*v650 != v610)
          {
            objc_enumerationMutation(v607);
          }

          v612 = [*(*(&v649 + 1) + 8 * v611) dictionaryRepresentation];
          [v606 addObject:v612];

          ++v611;
        }

        while (v609 != v611);
        v609 = [(NSMutableArray *)v607 countByEnumeratingWithState:&v649 objects:v1000 count:16];
      }

      while (v609);
    }

    [v3 setObject:v606 forKey:@"kCellularCdmaEvdoServingCellRx1EcIoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoTxPowerHists count])
  {
    v613 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoTxPowerHists, "count")}];
    v645 = 0u;
    v646 = 0u;
    v647 = 0u;
    v648 = 0u;
    v614 = self->_kCellularCdmaEvdoTxPowerHists;
    v615 = [(NSMutableArray *)v614 countByEnumeratingWithState:&v645 objects:v999 count:16];
    if (v615)
    {
      v616 = v615;
      v617 = *v646;
      do
      {
        v618 = 0;
        do
        {
          if (*v646 != v617)
          {
            objc_enumerationMutation(v614);
          }

          v619 = [*(*(&v645 + 1) + 8 * v618) dictionaryRepresentation];
          [v613 addObject:v619];

          ++v618;
        }

        while (v616 != v618);
        v616 = [(NSMutableArray *)v614 countByEnumeratingWithState:&v645 objects:v999 count:16];
      }

      while (v616);
    }

    [v3 setObject:v613 forKey:@"kCellularCdmaEvdoTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoProtocolStackStateHists count])
  {
    v620 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoProtocolStackStateHists, "count")}];
    v641 = 0u;
    v642 = 0u;
    v643 = 0u;
    v644 = 0u;
    v621 = self->_kCellularCdmaEvdoProtocolStackStateHists;
    v622 = [(NSMutableArray *)v621 countByEnumeratingWithState:&v641 objects:v998 count:16];
    if (v622)
    {
      v623 = v622;
      v624 = *v642;
      do
      {
        v625 = 0;
        do
        {
          if (*v642 != v624)
          {
            objc_enumerationMutation(v621);
          }

          v626 = [*(*(&v641 + 1) + 8 * v625) dictionaryRepresentation];
          [v620 addObject:v626];

          ++v625;
        }

        while (v623 != v625);
        v623 = [(NSMutableArray *)v621 countByEnumeratingWithState:&v641 objects:v998 count:16];
      }

      while (v623);
    }

    [v3 setObject:v620 forKey:@"kCellularCdmaEvdoProtocolStackStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoRrStates count])
  {
    v627 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoRrStates, "count")}];
    v637 = 0u;
    v638 = 0u;
    v639 = 0u;
    v640 = 0u;
    v628 = self->_kCellularCdmaEvdoRrStates;
    v629 = [(NSMutableArray *)v628 countByEnumeratingWithState:&v637 objects:v997 count:16];
    if (v629)
    {
      v630 = v629;
      v631 = *v638;
      do
      {
        v632 = 0;
        do
        {
          if (*v638 != v631)
          {
            objc_enumerationMutation(v628);
          }

          v633 = [*(*(&v637 + 1) + 8 * v632) dictionaryRepresentation];
          [v627 addObject:v633];

          ++v632;
        }

        while (v630 != v632);
        v630 = [(NSMutableArray *)v628 countByEnumeratingWithState:&v637 objects:v997 count:16];
      }

      while (v630);
    }

    [v3 setObject:v627 forKey:@"kCellularCdmaEvdoRrState"];
  }

  v634 = v3;

  v635 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)writeTo:(id)a3
{
  v996 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v902 = 0u;
  v903 = 0u;
  v904 = 0u;
  v905 = 0u;
  v5 = self->_kCellularPerClientProfileTriggerCounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v902 objects:v995 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v903;
    do
    {
      v9 = 0;
      do
      {
        if (*v903 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v902 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v902 objects:v995 count:16];
    }

    while (v7);
  }

  v901 = 0u;
  v900 = 0u;
  v899 = 0u;
  v898 = 0u;
  v11 = self->_kCellularProtocolStackCpuStats;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v898 objects:v994 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v899;
    do
    {
      v15 = 0;
      do
      {
        if (*v899 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v898 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v898 objects:v994 count:16];
    }

    while (v13);
  }

  v897 = 0u;
  v896 = 0u;
  v895 = 0u;
  v894 = 0u;
  v17 = self->_kCellularPeripheralStats;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v894 objects:v993 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v895;
    do
    {
      v21 = 0;
      do
      {
        if (*v895 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v894 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v894 objects:v993 count:16];
    }

    while (v19);
  }

  v893 = 0u;
  v892 = 0u;
  v891 = 0u;
  v890 = 0u;
  v23 = self->_kCellularDvfsStats;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v890 objects:v992 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v891;
    do
    {
      v27 = 0;
      do
      {
        if (*v891 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v890 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v890 objects:v992 count:16];
    }

    while (v25);
  }

  v889 = 0u;
  v888 = 0u;
  v887 = 0u;
  v886 = 0u;
  v29 = self->_kCellularLteWcdmaGsmHwStats;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v886 objects:v991 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v887;
    do
    {
      v33 = 0;
      do
      {
        if (*v887 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v886 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v886 objects:v991 count:16];
    }

    while (v31);
  }

  v885 = 0u;
  v884 = 0u;
  v883 = 0u;
  v882 = 0u;
  v35 = self->_kCellularLteTdsGsmHwStats;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v882 objects:v990 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v883;
    do
    {
      v39 = 0;
      do
      {
        if (*v883 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v882 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v882 objects:v990 count:16];
    }

    while (v37);
  }

  v881 = 0u;
  v880 = 0u;
  v879 = 0u;
  v878 = 0u;
  v41 = self->_kCellularPmuAverageCurrents;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v878 objects:v989 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v879;
    do
    {
      v45 = 0;
      do
      {
        if (*v879 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v878 + 1) + 8 * v45);
        PBDataWriterWriteSubmessage();
        ++v45;
      }

      while (v43 != v45);
      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v878 objects:v989 count:16];
    }

    while (v43);
  }

  v877 = 0u;
  v876 = 0u;
  v875 = 0u;
  v874 = 0u;
  v47 = self->_kCellularFwCoreStats;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v874 objects:v988 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v875;
    do
    {
      v51 = 0;
      do
      {
        if (*v875 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v874 + 1) + 8 * v51);
        PBDataWriterWriteSubmessage();
        ++v51;
      }

      while (v49 != v51);
      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v874 objects:v988 count:16];
    }

    while (v49);
  }

  v873 = 0u;
  v872 = 0u;
  v871 = 0u;
  v870 = 0u;
  v53 = self->_kCellularLteWcdmaTdsHwStats;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v870 objects:v987 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v871;
    do
    {
      v57 = 0;
      do
      {
        if (*v871 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v870 + 1) + 8 * v57);
        PBDataWriterWriteSubmessage();
        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v870 objects:v987 count:16];
    }

    while (v55);
  }

  v869 = 0u;
  v868 = 0u;
  v867 = 0u;
  v866 = 0u;
  v59 = self->_kCellularPmicHwStats;
  v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v866 objects:v986 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v867;
    do
    {
      v63 = 0;
      do
      {
        if (*v867 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v866 + 1) + 8 * v63);
        PBDataWriterWriteSubmessage();
        ++v63;
      }

      while (v61 != v63);
      v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v866 objects:v986 count:16];
    }

    while (v61);
  }

  v865 = 0u;
  v864 = 0u;
  v863 = 0u;
  v862 = 0u;
  v65 = self->_kCellularTdsRrcStates;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v862 objects:v985 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v863;
    do
    {
      v69 = 0;
      do
      {
        if (*v863 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v862 + 1) + 8 * v69);
        PBDataWriterWriteSubmessage();
        ++v69;
      }

      while (v67 != v69);
      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v862 objects:v985 count:16];
    }

    while (v67);
  }

  v861 = 0u;
  v860 = 0u;
  v859 = 0u;
  v858 = 0u;
  v71 = self->_kCellularLteRrcStates;
  v72 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v858 objects:v984 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v859;
    do
    {
      v75 = 0;
      do
      {
        if (*v859 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = *(*(&v858 + 1) + 8 * v75);
        PBDataWriterWriteSubmessage();
        ++v75;
      }

      while (v73 != v75);
      v73 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v858 objects:v984 count:16];
    }

    while (v73);
  }

  v857 = 0u;
  v856 = 0u;
  v855 = 0u;
  v854 = 0u;
  v77 = self->_kCellularLtePagingCycles;
  v78 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v854 objects:v983 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v855;
    do
    {
      v81 = 0;
      do
      {
        if (*v855 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v854 + 1) + 8 * v81);
        PBDataWriterWriteSubmessage();
        ++v81;
      }

      while (v79 != v81);
      v79 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v854 objects:v983 count:16];
    }

    while (v79);
  }

  v853 = 0u;
  v852 = 0u;
  v851 = 0u;
  v850 = 0u;
  v83 = self->_kCellularLteCdrxConfigs;
  v84 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v850 objects:v982 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v851;
    do
    {
      v87 = 0;
      do
      {
        if (*v851 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = *(*(&v850 + 1) + 8 * v87);
        PBDataWriterWriteSubmessage();
        ++v87;
      }

      while (v85 != v87);
      v85 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v850 objects:v982 count:16];
    }

    while (v85);
  }

  v849 = 0u;
  v848 = 0u;
  v847 = 0u;
  v846 = 0u;
  v89 = self->_kCellularLteRadioLinkFailures;
  v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v846 objects:v981 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v847;
    do
    {
      v93 = 0;
      do
      {
        if (*v847 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v846 + 1) + 8 * v93);
        PBDataWriterWriteSubmessage();
        ++v93;
      }

      while (v91 != v93);
      v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v846 objects:v981 count:16];
    }

    while (v91);
  }

  v845 = 0u;
  v844 = 0u;
  v843 = 0u;
  v842 = 0u;
  v95 = self->_kCellularLtePdcchStateStats;
  v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v842 objects:v980 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v843;
    do
    {
      v99 = 0;
      do
      {
        if (*v843 != v98)
        {
          objc_enumerationMutation(v95);
        }

        v100 = *(*(&v842 + 1) + 8 * v99);
        PBDataWriterWriteSubmessage();
        ++v99;
      }

      while (v97 != v99);
      v97 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v842 objects:v980 count:16];
    }

    while (v97);
  }

  v841 = 0u;
  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v101 = self->_kCellularLqmStateChanges;
  v102 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v838 objects:v979 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v839;
    do
    {
      v105 = 0;
      do
      {
        if (*v839 != v104)
        {
          objc_enumerationMutation(v101);
        }

        v106 = *(*(&v838 + 1) + 8 * v105);
        PBDataWriterWriteSubmessage();
        ++v105;
      }

      while (v103 != v105);
      v103 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v838 objects:v979 count:16];
    }

    while (v103);
  }

  v837 = 0u;
  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v107 = self->_kCellularServiceLosts;
  v108 = [(NSMutableArray *)v107 countByEnumeratingWithState:&v834 objects:v978 count:16];
  if (v108)
  {
    v109 = v108;
    v110 = *v835;
    do
    {
      v111 = 0;
      do
      {
        if (*v835 != v110)
        {
          objc_enumerationMutation(v107);
        }

        v112 = *(*(&v834 + 1) + 8 * v111);
        PBDataWriterWriteSubmessage();
        ++v111;
      }

      while (v109 != v111);
      v109 = [(NSMutableArray *)v107 countByEnumeratingWithState:&v834 objects:v978 count:16];
    }

    while (v109);
  }

  v833 = 0u;
  v832 = 0u;
  v831 = 0u;
  v830 = 0u;
  v113 = self->_kCellularGsmServingCellRssiHists;
  v114 = [(NSMutableArray *)v113 countByEnumeratingWithState:&v830 objects:v977 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v831;
    do
    {
      v117 = 0;
      do
      {
        if (*v831 != v116)
        {
          objc_enumerationMutation(v113);
        }

        v118 = *(*(&v830 + 1) + 8 * v117);
        PBDataWriterWriteSubmessage();
        ++v117;
      }

      while (v115 != v117);
      v115 = [(NSMutableArray *)v113 countByEnumeratingWithState:&v830 objects:v977 count:16];
    }

    while (v115);
  }

  v829 = 0u;
  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v119 = self->_kCellularGsmServingCellSnrHists;
  v120 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v826 objects:v976 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v827;
    do
    {
      v123 = 0;
      do
      {
        if (*v827 != v122)
        {
          objc_enumerationMutation(v119);
        }

        v124 = *(*(&v826 + 1) + 8 * v123);
        PBDataWriterWriteSubmessage();
        ++v123;
      }

      while (v121 != v123);
      v121 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v826 objects:v976 count:16];
    }

    while (v121);
  }

  v825 = 0u;
  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v125 = self->_kCellularGsmTxPowerHists;
  v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v822 objects:v975 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v823;
    do
    {
      v129 = 0;
      do
      {
        if (*v823 != v128)
        {
          objc_enumerationMutation(v125);
        }

        v130 = *(*(&v822 + 1) + 8 * v129);
        PBDataWriterWriteSubmessage();
        ++v129;
      }

      while (v127 != v129);
      v127 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v822 objects:v975 count:16];
    }

    while (v127);
  }

  v821 = 0u;
  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v131 = self->_kCellularGsmConnectedModeHists;
  v132 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v818 objects:v974 count:16];
  if (v132)
  {
    v133 = v132;
    v134 = *v819;
    do
    {
      v135 = 0;
      do
      {
        if (*v819 != v134)
        {
          objc_enumerationMutation(v131);
        }

        v136 = *(*(&v818 + 1) + 8 * v135);
        PBDataWriterWriteSubmessage();
        ++v135;
      }

      while (v133 != v135);
      v133 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v818 objects:v974 count:16];
    }

    while (v133);
  }

  v817 = 0u;
  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v137 = self->_kCellularGsmL1States;
  v138 = [(NSMutableArray *)v137 countByEnumeratingWithState:&v814 objects:v973 count:16];
  if (v138)
  {
    v139 = v138;
    v140 = *v815;
    do
    {
      v141 = 0;
      do
      {
        if (*v815 != v140)
        {
          objc_enumerationMutation(v137);
        }

        v142 = *(*(&v814 + 1) + 8 * v141);
        PBDataWriterWriteSubmessage();
        ++v141;
      }

      while (v139 != v141);
      v139 = [(NSMutableArray *)v137 countByEnumeratingWithState:&v814 objects:v973 count:16];
    }

    while (v139);
  }

  v813 = 0u;
  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v143 = self->_kCellularWcdmaCpcStats;
  v144 = [(NSMutableArray *)v143 countByEnumeratingWithState:&v810 objects:v972 count:16];
  if (v144)
  {
    v145 = v144;
    v146 = *v811;
    do
    {
      v147 = 0;
      do
      {
        if (*v811 != v146)
        {
          objc_enumerationMutation(v143);
        }

        v148 = *(*(&v810 + 1) + 8 * v147);
        PBDataWriterWriteSubmessage();
        ++v147;
      }

      while (v145 != v147);
      v145 = [(NSMutableArray *)v143 countByEnumeratingWithState:&v810 objects:v972 count:16];
    }

    while (v145);
  }

  v809 = 0u;
  v808 = 0u;
  v807 = 0u;
  v806 = 0u;
  v149 = self->_kCellularWcdmaRxDiversityHists;
  v150 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v806 objects:v971 count:16];
  if (v150)
  {
    v151 = v150;
    v152 = *v807;
    do
    {
      v153 = 0;
      do
      {
        if (*v807 != v152)
        {
          objc_enumerationMutation(v149);
        }

        v154 = *(*(&v806 + 1) + 8 * v153);
        PBDataWriterWriteSubmessage();
        ++v153;
      }

      while (v151 != v153);
      v151 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v806 objects:v971 count:16];
    }

    while (v151);
  }

  v805 = 0u;
  v804 = 0u;
  v803 = 0u;
  v802 = 0u;
  v155 = self->_kCellularWcdmaServingCellRx0RssiHists;
  v156 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v802 objects:v970 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v803;
    do
    {
      v159 = 0;
      do
      {
        if (*v803 != v158)
        {
          objc_enumerationMutation(v155);
        }

        v160 = *(*(&v802 + 1) + 8 * v159);
        PBDataWriterWriteSubmessage();
        ++v159;
      }

      while (v157 != v159);
      v157 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v802 objects:v970 count:16];
    }

    while (v157);
  }

  v801 = 0u;
  v800 = 0u;
  v799 = 0u;
  v798 = 0u;
  v161 = self->_kCellularWcdmaServingCellRx1RssiHists;
  v162 = [(NSMutableArray *)v161 countByEnumeratingWithState:&v798 objects:v969 count:16];
  if (v162)
  {
    v163 = v162;
    v164 = *v799;
    do
    {
      v165 = 0;
      do
      {
        if (*v799 != v164)
        {
          objc_enumerationMutation(v161);
        }

        v166 = *(*(&v798 + 1) + 8 * v165);
        PBDataWriterWriteSubmessage();
        ++v165;
      }

      while (v163 != v165);
      v163 = [(NSMutableArray *)v161 countByEnumeratingWithState:&v798 objects:v969 count:16];
    }

    while (v163);
  }

  v797 = 0u;
  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v167 = self->_kCellularWcdmaServingCellRx0EcNoHists;
  v168 = [(NSMutableArray *)v167 countByEnumeratingWithState:&v794 objects:v968 count:16];
  if (v168)
  {
    v169 = v168;
    v170 = *v795;
    do
    {
      v171 = 0;
      do
      {
        if (*v795 != v170)
        {
          objc_enumerationMutation(v167);
        }

        v172 = *(*(&v794 + 1) + 8 * v171);
        PBDataWriterWriteSubmessage();
        ++v171;
      }

      while (v169 != v171);
      v169 = [(NSMutableArray *)v167 countByEnumeratingWithState:&v794 objects:v968 count:16];
    }

    while (v169);
  }

  v793 = 0u;
  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v173 = self->_kCellularWcdmaServingCellRx1EcNoHists;
  v174 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v790 objects:v967 count:16];
  if (v174)
  {
    v175 = v174;
    v176 = *v791;
    do
    {
      v177 = 0;
      do
      {
        if (*v791 != v176)
        {
          objc_enumerationMutation(v173);
        }

        v178 = *(*(&v790 + 1) + 8 * v177);
        PBDataWriterWriteSubmessage();
        ++v177;
      }

      while (v175 != v177);
      v175 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v790 objects:v967 count:16];
    }

    while (v175);
  }

  v789 = 0u;
  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v179 = self->_kCellularWcdmaTxPowerHists;
  v180 = [(NSMutableArray *)v179 countByEnumeratingWithState:&v786 objects:v966 count:16];
  if (v180)
  {
    v181 = v180;
    v182 = *v787;
    do
    {
      v183 = 0;
      do
      {
        if (*v787 != v182)
        {
          objc_enumerationMutation(v179);
        }

        v184 = *(*(&v786 + 1) + 8 * v183);
        PBDataWriterWriteSubmessage();
        ++v183;
      }

      while (v181 != v183);
      v181 = [(NSMutableArray *)v179 countByEnumeratingWithState:&v786 objects:v966 count:16];
    }

    while (v181);
  }

  v785 = 0u;
  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v185 = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  v186 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v782 objects:v965 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v783;
    do
    {
      v189 = 0;
      do
      {
        if (*v783 != v188)
        {
          objc_enumerationMutation(v185);
        }

        v190 = *(*(&v782 + 1) + 8 * v189);
        PBDataWriterWriteSubmessage();
        ++v189;
      }

      while (v187 != v189);
      v187 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v782 objects:v965 count:16];
    }

    while (v187);
  }

  v781 = 0u;
  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v191 = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  v192 = [(NSMutableArray *)v191 countByEnumeratingWithState:&v778 objects:v964 count:16];
  if (v192)
  {
    v193 = v192;
    v194 = *v779;
    do
    {
      v195 = 0;
      do
      {
        if (*v779 != v194)
        {
          objc_enumerationMutation(v191);
        }

        v196 = *(*(&v778 + 1) + 8 * v195);
        PBDataWriterWriteSubmessage();
        ++v195;
      }

      while (v193 != v195);
      v193 = [(NSMutableArray *)v191 countByEnumeratingWithState:&v778 objects:v964 count:16];
    }

    while (v193);
  }

  v777 = 0u;
  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v197 = self->_kCellularWcdmaCarrierStatusHists;
  v198 = [(NSMutableArray *)v197 countByEnumeratingWithState:&v774 objects:v963 count:16];
  if (v198)
  {
    v199 = v198;
    v200 = *v775;
    do
    {
      v201 = 0;
      do
      {
        if (*v775 != v200)
        {
          objc_enumerationMutation(v197);
        }

        v202 = *(*(&v774 + 1) + 8 * v201);
        PBDataWriterWriteSubmessage();
        ++v201;
      }

      while (v199 != v201);
      v199 = [(NSMutableArray *)v197 countByEnumeratingWithState:&v774 objects:v963 count:16];
    }

    while (v199);
  }

  v773 = 0u;
  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v203 = self->_kCellularWcdmaRabModeHists;
  v204 = [(NSMutableArray *)v203 countByEnumeratingWithState:&v770 objects:v962 count:16];
  if (v204)
  {
    v205 = v204;
    v206 = *v771;
    do
    {
      v207 = 0;
      do
      {
        if (*v771 != v206)
        {
          objc_enumerationMutation(v203);
        }

        v208 = *(*(&v770 + 1) + 8 * v207);
        PBDataWriterWriteSubmessage();
        ++v207;
      }

      while (v205 != v207);
      v205 = [(NSMutableArray *)v203 countByEnumeratingWithState:&v770 objects:v962 count:16];
    }

    while (v205);
  }

  v769 = 0u;
  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v209 = self->_kCellularWcdmaRabTypeHists;
  v210 = [(NSMutableArray *)v209 countByEnumeratingWithState:&v766 objects:v961 count:16];
  if (v210)
  {
    v211 = v210;
    v212 = *v767;
    do
    {
      v213 = 0;
      do
      {
        if (*v767 != v212)
        {
          objc_enumerationMutation(v209);
        }

        v214 = *(*(&v766 + 1) + 8 * v213);
        PBDataWriterWriteSubmessage();
        ++v213;
      }

      while (v211 != v213);
      v211 = [(NSMutableArray *)v209 countByEnumeratingWithState:&v766 objects:v961 count:16];
    }

    while (v211);
  }

  v765 = 0u;
  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v215 = self->_kCellularWcdmaRrcConnectionStates;
  v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v762 objects:v960 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v763;
    do
    {
      v219 = 0;
      do
      {
        if (*v763 != v218)
        {
          objc_enumerationMutation(v215);
        }

        v220 = *(*(&v762 + 1) + 8 * v219);
        PBDataWriterWriteSubmessage();
        ++v219;
      }

      while (v217 != v219);
      v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v762 objects:v960 count:16];
    }

    while (v217);
  }

  v761 = 0u;
  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v221 = self->_kCellularWcdmaRrcConfigurations;
  v222 = [(NSMutableArray *)v221 countByEnumeratingWithState:&v758 objects:v959 count:16];
  if (v222)
  {
    v223 = v222;
    v224 = *v759;
    do
    {
      v225 = 0;
      do
      {
        if (*v759 != v224)
        {
          objc_enumerationMutation(v221);
        }

        v226 = *(*(&v758 + 1) + 8 * v225);
        PBDataWriterWriteSubmessage();
        ++v225;
      }

      while (v223 != v225);
      v223 = [(NSMutableArray *)v221 countByEnumeratingWithState:&v758 objects:v959 count:16];
    }

    while (v223);
  }

  v757 = 0u;
  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v227 = self->_kCellularWcdmaRabStatus;
  v228 = [(NSMutableArray *)v227 countByEnumeratingWithState:&v754 objects:v958 count:16];
  if (v228)
  {
    v229 = v228;
    v230 = *v755;
    do
    {
      v231 = 0;
      do
      {
        if (*v755 != v230)
        {
          objc_enumerationMutation(v227);
        }

        v232 = *(*(&v754 + 1) + 8 * v231);
        PBDataWriterWriteSubmessage();
        ++v231;
      }

      while (v229 != v231);
      v229 = [(NSMutableArray *)v227 countByEnumeratingWithState:&v754 objects:v958 count:16];
    }

    while (v229);
  }

  v753 = 0u;
  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v233 = self->_kCellularWcdmaL1States;
  v234 = [(NSMutableArray *)v233 countByEnumeratingWithState:&v750 objects:v957 count:16];
  if (v234)
  {
    v235 = v234;
    v236 = *v751;
    do
    {
      v237 = 0;
      do
      {
        if (*v751 != v236)
        {
          objc_enumerationMutation(v233);
        }

        v238 = *(*(&v750 + 1) + 8 * v237);
        PBDataWriterWriteSubmessage();
        ++v237;
      }

      while (v235 != v237);
      v235 = [(NSMutableArray *)v233 countByEnumeratingWithState:&v750 objects:v957 count:16];
    }

    while (v235);
  }

  v749 = 0u;
  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v239 = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v240 = [(NSMutableArray *)v239 countByEnumeratingWithState:&v746 objects:v956 count:16];
  if (v240)
  {
    v241 = v240;
    v242 = *v747;
    do
    {
      v243 = 0;
      do
      {
        if (*v747 != v242)
        {
          objc_enumerationMutation(v239);
        }

        v244 = *(*(&v746 + 1) + 8 * v243);
        PBDataWriterWriteSubmessage();
        ++v243;
      }

      while (v241 != v243);
      v241 = [(NSMutableArray *)v239 countByEnumeratingWithState:&v746 objects:v956 count:16];
    }

    while (v241);
  }

  v745 = 0u;
  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v245 = self->_kCellularWcdmaIdleToConnectedUserDatas;
  v246 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v742 objects:v955 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v743;
    do
    {
      v249 = 0;
      do
      {
        if (*v743 != v248)
        {
          objc_enumerationMutation(v245);
        }

        v250 = *(*(&v742 + 1) + 8 * v249);
        PBDataWriterWriteSubmessage();
        ++v249;
      }

      while (v247 != v249);
      v247 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v742 objects:v955 count:16];
    }

    while (v247);
  }

  v741 = 0u;
  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v251 = self->_kCellularWcdmaVadHists;
  v252 = [(NSMutableArray *)v251 countByEnumeratingWithState:&v738 objects:v954 count:16];
  if (v252)
  {
    v253 = v252;
    v254 = *v739;
    do
    {
      v255 = 0;
      do
      {
        if (*v739 != v254)
        {
          objc_enumerationMutation(v251);
        }

        v256 = *(*(&v738 + 1) + 8 * v255);
        PBDataWriterWriteSubmessage();
        ++v255;
      }

      while (v253 != v255);
      v253 = [(NSMutableArray *)v251 countByEnumeratingWithState:&v738 objects:v954 count:16];
    }

    while (v253);
  }

  v737 = 0u;
  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v257 = self->_kCellularTdsRxDiversityHists;
  v258 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v734 objects:v953 count:16];
  if (v258)
  {
    v259 = v258;
    v260 = *v735;
    do
    {
      v261 = 0;
      do
      {
        if (*v735 != v260)
        {
          objc_enumerationMutation(v257);
        }

        v262 = *(*(&v734 + 1) + 8 * v261);
        PBDataWriterWriteSubmessage();
        ++v261;
      }

      while (v259 != v261);
      v259 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v734 objects:v953 count:16];
    }

    while (v259);
  }

  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v263 = self->_kCellularTdsServingCellRx0RssiHists;
  v264 = [(NSMutableArray *)v263 countByEnumeratingWithState:&v730 objects:v952 count:16];
  if (v264)
  {
    v265 = v264;
    v266 = *v731;
    do
    {
      v267 = 0;
      do
      {
        if (*v731 != v266)
        {
          objc_enumerationMutation(v263);
        }

        v268 = *(*(&v730 + 1) + 8 * v267);
        PBDataWriterWriteSubmessage();
        ++v267;
      }

      while (v265 != v267);
      v265 = [(NSMutableArray *)v263 countByEnumeratingWithState:&v730 objects:v952 count:16];
    }

    while (v265);
  }

  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v269 = self->_kCellularTdsServingCellRx1RssiHists;
  v270 = [(NSMutableArray *)v269 countByEnumeratingWithState:&v726 objects:v951 count:16];
  if (v270)
  {
    v271 = v270;
    v272 = *v727;
    do
    {
      v273 = 0;
      do
      {
        if (*v727 != v272)
        {
          objc_enumerationMutation(v269);
        }

        v274 = *(*(&v726 + 1) + 8 * v273);
        PBDataWriterWriteSubmessage();
        ++v273;
      }

      while (v271 != v273);
      v271 = [(NSMutableArray *)v269 countByEnumeratingWithState:&v726 objects:v951 count:16];
    }

    while (v271);
  }

  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v275 = self->_kCellularTdsServingCellRx0RscpHists;
  v276 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v722 objects:v950 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v723;
    do
    {
      v279 = 0;
      do
      {
        if (*v723 != v278)
        {
          objc_enumerationMutation(v275);
        }

        v280 = *(*(&v722 + 1) + 8 * v279);
        PBDataWriterWriteSubmessage();
        ++v279;
      }

      while (v277 != v279);
      v277 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v722 objects:v950 count:16];
    }

    while (v277);
  }

  v721 = 0u;
  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v281 = self->_kCellularTdsServingCellRx1RscpHists;
  v282 = [(NSMutableArray *)v281 countByEnumeratingWithState:&v718 objects:v949 count:16];
  if (v282)
  {
    v283 = v282;
    v284 = *v719;
    do
    {
      v285 = 0;
      do
      {
        if (*v719 != v284)
        {
          objc_enumerationMutation(v281);
        }

        v286 = *(*(&v718 + 1) + 8 * v285);
        PBDataWriterWriteSubmessage();
        ++v285;
      }

      while (v283 != v285);
      v283 = [(NSMutableArray *)v281 countByEnumeratingWithState:&v718 objects:v949 count:16];
    }

    while (v283);
  }

  v717 = 0u;
  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v287 = self->_kCellularTdsTxPowerHists;
  v288 = [(NSMutableArray *)v287 countByEnumeratingWithState:&v714 objects:v948 count:16];
  if (v288)
  {
    v289 = v288;
    v290 = *v715;
    do
    {
      v291 = 0;
      do
      {
        if (*v715 != v290)
        {
          objc_enumerationMutation(v287);
        }

        v292 = *(*(&v714 + 1) + 8 * v291);
        PBDataWriterWriteSubmessage();
        ++v291;
      }

      while (v289 != v291);
      v289 = [(NSMutableArray *)v287 countByEnumeratingWithState:&v714 objects:v948 count:16];
    }

    while (v289);
  }

  v713 = 0u;
  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v293 = self->_kCellularTdsRabModeHists;
  v294 = [(NSMutableArray *)v293 countByEnumeratingWithState:&v710 objects:v947 count:16];
  if (v294)
  {
    v295 = v294;
    v296 = *v711;
    do
    {
      v297 = 0;
      do
      {
        if (*v711 != v296)
        {
          objc_enumerationMutation(v293);
        }

        v298 = *(*(&v710 + 1) + 8 * v297);
        PBDataWriterWriteSubmessage();
        ++v297;
      }

      while (v295 != v297);
      v295 = [(NSMutableArray *)v293 countByEnumeratingWithState:&v710 objects:v947 count:16];
    }

    while (v295);
  }

  v709 = 0u;
  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v299 = self->_kCellularTdsRabTypeHists;
  v300 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v706 objects:v946 count:16];
  if (v300)
  {
    v301 = v300;
    v302 = *v707;
    do
    {
      v303 = 0;
      do
      {
        if (*v707 != v302)
        {
          objc_enumerationMutation(v299);
        }

        v304 = *(*(&v706 + 1) + 8 * v303);
        PBDataWriterWriteSubmessage();
        ++v303;
      }

      while (v301 != v303);
      v301 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v706 objects:v946 count:16];
    }

    while (v301);
  }

  v705 = 0u;
  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v305 = self->_kCellularTdsL1States;
  v306 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v702 objects:v945 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v703;
    do
    {
      v309 = 0;
      do
      {
        if (*v703 != v308)
        {
          objc_enumerationMutation(v305);
        }

        v310 = *(*(&v702 + 1) + 8 * v309);
        PBDataWriterWriteSubmessage();
        ++v309;
      }

      while (v307 != v309);
      v307 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v702 objects:v945 count:16];
    }

    while (v307);
  }

  v701 = 0u;
  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v311 = self->_kCellularLteFwDuplexModes;
  v312 = [(NSMutableArray *)v311 countByEnumeratingWithState:&v698 objects:v944 count:16];
  if (v312)
  {
    v313 = v312;
    v314 = *v699;
    do
    {
      v315 = 0;
      do
      {
        if (*v699 != v314)
        {
          objc_enumerationMutation(v311);
        }

        v316 = *(*(&v698 + 1) + 8 * v315);
        PBDataWriterWriteSubmessage();
        ++v315;
      }

      while (v313 != v315);
      v313 = [(NSMutableArray *)v311 countByEnumeratingWithState:&v698 objects:v944 count:16];
    }

    while (v313);
  }

  v697 = 0u;
  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v317 = self->_kCellularLteServingCellRsrpHists;
  v318 = [(NSMutableArray *)v317 countByEnumeratingWithState:&v694 objects:v943 count:16];
  if (v318)
  {
    v319 = v318;
    v320 = *v695;
    do
    {
      v321 = 0;
      do
      {
        if (*v695 != v320)
        {
          objc_enumerationMutation(v317);
        }

        v322 = *(*(&v694 + 1) + 8 * v321);
        PBDataWriterWriteSubmessage();
        ++v321;
      }

      while (v319 != v321);
      v319 = [(NSMutableArray *)v317 countByEnumeratingWithState:&v694 objects:v943 count:16];
    }

    while (v319);
  }

  v693 = 0u;
  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v323 = self->_kCellularLteServingCellSinrHists;
  v324 = [(NSMutableArray *)v323 countByEnumeratingWithState:&v690 objects:v942 count:16];
  if (v324)
  {
    v325 = v324;
    v326 = *v691;
    do
    {
      v327 = 0;
      do
      {
        if (*v691 != v326)
        {
          objc_enumerationMutation(v323);
        }

        v328 = *(*(&v690 + 1) + 8 * v327);
        PBDataWriterWriteSubmessage();
        ++v327;
      }

      while (v325 != v327);
      v325 = [(NSMutableArray *)v323 countByEnumeratingWithState:&v690 objects:v942 count:16];
    }

    while (v325);
  }

  v689 = 0u;
  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v329 = self->_kCellularLteSleepStateHists;
  v330 = [(NSMutableArray *)v329 countByEnumeratingWithState:&v686 objects:v941 count:16];
  if (v330)
  {
    v331 = v330;
    v332 = *v687;
    do
    {
      v333 = 0;
      do
      {
        if (*v687 != v332)
        {
          objc_enumerationMutation(v329);
        }

        v334 = *(*(&v686 + 1) + 8 * v333);
        PBDataWriterWriteSubmessage();
        ++v333;
      }

      while (v331 != v333);
      v331 = [(NSMutableArray *)v329 countByEnumeratingWithState:&v686 objects:v941 count:16];
    }

    while (v331);
  }

  v685 = 0u;
  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v335 = self->_kCellularLteTxPowerHists;
  v336 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v682 objects:v940 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v683;
    do
    {
      v339 = 0;
      do
      {
        if (*v683 != v338)
        {
          objc_enumerationMutation(v335);
        }

        v340 = *(*(&v682 + 1) + 8 * v339);
        PBDataWriterWriteSubmessage();
        ++v339;
      }

      while (v337 != v339);
      v337 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v682 objects:v940 count:16];
    }

    while (v337);
  }

  v681 = 0u;
  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v341 = self->_kCellularLteDlSccStateHists;
  v342 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v678 objects:v939 count:16];
  if (v342)
  {
    v343 = v342;
    v344 = *v679;
    do
    {
      v345 = 0;
      do
      {
        if (*v679 != v344)
        {
          objc_enumerationMutation(v341);
        }

        v346 = *(*(&v678 + 1) + 8 * v345);
        PBDataWriterWriteSubmessage();
        ++v345;
      }

      while (v343 != v345);
      v343 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v678 objects:v939 count:16];
    }

    while (v343);
  }

  v677 = 0u;
  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v347 = self->_kCellularLteUlSccStateHists;
  v348 = [(NSMutableArray *)v347 countByEnumeratingWithState:&v674 objects:v938 count:16];
  if (v348)
  {
    v349 = v348;
    v350 = *v675;
    do
    {
      v351 = 0;
      do
      {
        if (*v675 != v350)
        {
          objc_enumerationMutation(v347);
        }

        v352 = *(*(&v674 + 1) + 8 * v351);
        PBDataWriterWriteSubmessage();
        ++v351;
      }

      while (v349 != v351);
      v349 = [(NSMutableArray *)v347 countByEnumeratingWithState:&v674 objects:v938 count:16];
    }

    while (v349);
  }

  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v353 = self->_kCellularLteAdvancedRxStateHists;
  v354 = [(NSMutableArray *)v353 countByEnumeratingWithState:&v670 objects:v937 count:16];
  if (v354)
  {
    v355 = v354;
    v356 = *v671;
    do
    {
      v357 = 0;
      do
      {
        if (*v671 != v356)
        {
          objc_enumerationMutation(v353);
        }

        v358 = *(*(&v670 + 1) + 8 * v357);
        PBDataWriterWriteSubmessage();
        ++v357;
      }

      while (v355 != v357);
      v355 = [(NSMutableArray *)v353 countByEnumeratingWithState:&v670 objects:v937 count:16];
    }

    while (v355);
  }

  v669 = 0u;
  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v359 = self->_kCellularLteComponentCarrierInfos;
  v360 = [(NSMutableArray *)v359 countByEnumeratingWithState:&v666 objects:v936 count:16];
  if (v360)
  {
    v361 = v360;
    v362 = *v667;
    do
    {
      v363 = 0;
      do
      {
        if (*v667 != v362)
        {
          objc_enumerationMutation(v359);
        }

        v364 = *(*(&v666 + 1) + 8 * v363);
        PBDataWriterWriteSubmessage();
        ++v363;
      }

      while (v361 != v363);
      v361 = [(NSMutableArray *)v359 countByEnumeratingWithState:&v666 objects:v936 count:16];
    }

    while (v361);
  }

  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v365 = self->_kCellularLteRxTxStateHists;
  v366 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v662 objects:v935 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v663;
    do
    {
      v369 = 0;
      do
      {
        if (*v663 != v368)
        {
          objc_enumerationMutation(v365);
        }

        v370 = *(*(&v662 + 1) + 8 * v369);
        PBDataWriterWriteSubmessage();
        ++v369;
      }

      while (v367 != v369);
      v367 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v662 objects:v935 count:16];
    }

    while (v367);
  }

  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v371 = self->_kCellularLteTotalDlTbsHists;
  v372 = [(NSMutableArray *)v371 countByEnumeratingWithState:&v658 objects:v934 count:16];
  if (v372)
  {
    v373 = v372;
    v374 = *v659;
    do
    {
      v375 = 0;
      do
      {
        if (*v659 != v374)
        {
          objc_enumerationMutation(v371);
        }

        v376 = *(*(&v658 + 1) + 8 * v375);
        PBDataWriterWriteSubmessage();
        ++v375;
      }

      while (v373 != v375);
      v373 = [(NSMutableArray *)v371 countByEnumeratingWithState:&v658 objects:v934 count:16];
    }

    while (v373);
  }

  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v377 = self->_kCellularLteDlSccStateHistV3s;
  v378 = [(NSMutableArray *)v377 countByEnumeratingWithState:&v654 objects:v933 count:16];
  if (v378)
  {
    v379 = v378;
    v380 = *v655;
    do
    {
      v381 = 0;
      do
      {
        if (*v655 != v380)
        {
          objc_enumerationMutation(v377);
        }

        v382 = *(*(&v654 + 1) + 8 * v381);
        PBDataWriterWriteSubmessage();
        ++v381;
      }

      while (v379 != v381);
      v379 = [(NSMutableArray *)v377 countByEnumeratingWithState:&v654 objects:v933 count:16];
    }

    while (v379);
  }

  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v383 = self->_kCellularLteRxDiversityHists;
  v384 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v650 objects:v932 count:16];
  if (v384)
  {
    v385 = v384;
    v386 = *v651;
    do
    {
      v387 = 0;
      do
      {
        if (*v651 != v386)
        {
          objc_enumerationMutation(v383);
        }

        v388 = *(*(&v650 + 1) + 8 * v387);
        PBDataWriterWriteSubmessage();
        ++v387;
      }

      while (v385 != v387);
      v385 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v650 objects:v932 count:16];
    }

    while (v385);
  }

  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v389 = self->_kCellularLtePdcchStateHists;
  v390 = [(NSMutableArray *)v389 countByEnumeratingWithState:&v646 objects:v931 count:16];
  if (v390)
  {
    v391 = v390;
    v392 = *v647;
    do
    {
      v393 = 0;
      do
      {
        if (*v647 != v392)
        {
          objc_enumerationMutation(v389);
        }

        v394 = *(*(&v646 + 1) + 8 * v393);
        PBDataWriterWriteSubmessage();
        ++v393;
      }

      while (v391 != v393);
      v391 = [(NSMutableArray *)v389 countByEnumeratingWithState:&v646 objects:v931 count:16];
    }

    while (v391);
  }

  v645 = 0u;
  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v395 = self->_kCellularProtocolStackStateHists;
  v396 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v642 objects:v930 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v643;
    do
    {
      v399 = 0;
      do
      {
        if (*v643 != v398)
        {
          objc_enumerationMutation(v395);
        }

        v400 = *(*(&v642 + 1) + 8 * v399);
        PBDataWriterWriteSubmessage();
        ++v399;
      }

      while (v397 != v399);
      v397 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v642 objects:v930 count:16];
    }

    while (v397);
  }

  v641 = 0u;
  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v401 = self->_kCellularCellPlmnSearchCounts;
  v402 = [(NSMutableArray *)v401 countByEnumeratingWithState:&v638 objects:v929 count:16];
  if (v402)
  {
    v403 = v402;
    v404 = *v639;
    do
    {
      v405 = 0;
      do
      {
        if (*v639 != v404)
        {
          objc_enumerationMutation(v401);
        }

        v406 = *(*(&v638 + 1) + 8 * v405);
        PBDataWriterWriteSubmessage();
        ++v405;
      }

      while (v403 != v405);
      v403 = [(NSMutableArray *)v401 countByEnumeratingWithState:&v638 objects:v929 count:16];
    }

    while (v403);
  }

  v637 = 0u;
  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v407 = self->_kCellularCellPlmnSearchHists;
  v408 = [(NSMutableArray *)v407 countByEnumeratingWithState:&v634 objects:v928 count:16];
  if (v408)
  {
    v409 = v408;
    v410 = *v635;
    do
    {
      v411 = 0;
      do
      {
        if (*v635 != v410)
        {
          objc_enumerationMutation(v407);
        }

        v412 = *(*(&v634 + 1) + 8 * v411);
        PBDataWriterWriteSubmessage();
        ++v411;
      }

      while (v409 != v411);
      v409 = [(NSMutableArray *)v407 countByEnumeratingWithState:&v634 objects:v928 count:16];
    }

    while (v409);
  }

  v633 = 0u;
  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v413 = self->_kCellularProtocolStackPowerStates;
  v414 = [(NSMutableArray *)v413 countByEnumeratingWithState:&v630 objects:v927 count:16];
  if (v414)
  {
    v415 = v414;
    v416 = *v631;
    do
    {
      v417 = 0;
      do
      {
        if (*v631 != v416)
        {
          objc_enumerationMutation(v413);
        }

        v418 = *(*(&v630 + 1) + 8 * v417);
        PBDataWriterWriteSubmessage();
        ++v417;
      }

      while (v415 != v417);
      v415 = [(NSMutableArray *)v413 countByEnumeratingWithState:&v630 objects:v927 count:16];
    }

    while (v415);
  }

  v629 = 0u;
  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v419 = self->_kCellularDownlinkIpPacketFilterStatus;
  v420 = [(NSMutableArray *)v419 countByEnumeratingWithState:&v626 objects:v926 count:16];
  if (v420)
  {
    v421 = v420;
    v422 = *v627;
    do
    {
      v423 = 0;
      do
      {
        if (*v627 != v422)
        {
          objc_enumerationMutation(v419);
        }

        v424 = *(*(&v626 + 1) + 8 * v423);
        PBDataWriterWriteSubmessage();
        ++v423;
      }

      while (v421 != v423);
      v421 = [(NSMutableArray *)v419 countByEnumeratingWithState:&v626 objects:v926 count:16];
    }

    while (v421);
  }

  v625 = 0u;
  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v425 = self->_kCellularServingCellRfBandHists;
  v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v622 objects:v925 count:16];
  if (v426)
  {
    v427 = v426;
    v428 = *v623;
    do
    {
      v429 = 0;
      do
      {
        if (*v623 != v428)
        {
          objc_enumerationMutation(v425);
        }

        v430 = *(*(&v622 + 1) + 8 * v429);
        PBDataWriterWriteSubmessage();
        ++v429;
      }

      while (v427 != v429);
      v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v622 objects:v925 count:16];
    }

    while (v427);
  }

  v621 = 0u;
  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v431 = self->_kCellularProtocolStackStateHist2s;
  v432 = [(NSMutableArray *)v431 countByEnumeratingWithState:&v618 objects:v924 count:16];
  if (v432)
  {
    v433 = v432;
    v434 = *v619;
    do
    {
      v435 = 0;
      do
      {
        if (*v619 != v434)
        {
          objc_enumerationMutation(v431);
        }

        v436 = *(*(&v618 + 1) + 8 * v435);
        PBDataWriterWriteSubmessage();
        ++v435;
      }

      while (v433 != v435);
      v433 = [(NSMutableArray *)v431 countByEnumeratingWithState:&v618 objects:v924 count:16];
    }

    while (v433);
  }

  v617 = 0u;
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v437 = self->_kCellularProtocolStackStates;
  v438 = [(NSMutableArray *)v437 countByEnumeratingWithState:&v614 objects:v923 count:16];
  if (v438)
  {
    v439 = v438;
    v440 = *v615;
    do
    {
      v441 = 0;
      do
      {
        if (*v615 != v440)
        {
          objc_enumerationMutation(v437);
        }

        v442 = *(*(&v614 + 1) + 8 * v441);
        PBDataWriterWriteSubmessage();
        ++v441;
      }

      while (v439 != v441);
      v439 = [(NSMutableArray *)v437 countByEnumeratingWithState:&v614 objects:v923 count:16];
    }

    while (v439);
  }

  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v443 = self->_kCellularCdma1XRxDiversityHists;
  v444 = [(NSMutableArray *)v443 countByEnumeratingWithState:&v610 objects:v922 count:16];
  if (v444)
  {
    v445 = v444;
    v446 = *v611;
    do
    {
      v447 = 0;
      do
      {
        if (*v611 != v446)
        {
          objc_enumerationMutation(v443);
        }

        v448 = *(*(&v610 + 1) + 8 * v447);
        PBDataWriterWriteSubmessage();
        ++v447;
      }

      while (v445 != v447);
      v445 = [(NSMutableArray *)v443 countByEnumeratingWithState:&v610 objects:v922 count:16];
    }

    while (v445);
  }

  v608 = 0u;
  v609 = 0u;
  v606 = 0u;
  v607 = 0u;
  v449 = self->_kCellularCdma1XServingCellRx0RssiHists;
  v450 = [(NSMutableArray *)v449 countByEnumeratingWithState:&v606 objects:v921 count:16];
  if (v450)
  {
    v451 = v450;
    v452 = *v607;
    do
    {
      v453 = 0;
      do
      {
        if (*v607 != v452)
        {
          objc_enumerationMutation(v449);
        }

        v454 = *(*(&v606 + 1) + 8 * v453);
        PBDataWriterWriteSubmessage();
        ++v453;
      }

      while (v451 != v453);
      v451 = [(NSMutableArray *)v449 countByEnumeratingWithState:&v606 objects:v921 count:16];
    }

    while (v451);
  }

  v604 = 0u;
  v605 = 0u;
  v602 = 0u;
  v603 = 0u;
  v455 = self->_kCellularCdma1XServingCellRx1RssiHists;
  v456 = [(NSMutableArray *)v455 countByEnumeratingWithState:&v602 objects:v920 count:16];
  if (v456)
  {
    v457 = v456;
    v458 = *v603;
    do
    {
      v459 = 0;
      do
      {
        if (*v603 != v458)
        {
          objc_enumerationMutation(v455);
        }

        v460 = *(*(&v602 + 1) + 8 * v459);
        PBDataWriterWriteSubmessage();
        ++v459;
      }

      while (v457 != v459);
      v457 = [(NSMutableArray *)v455 countByEnumeratingWithState:&v602 objects:v920 count:16];
    }

    while (v457);
  }

  v600 = 0u;
  v601 = 0u;
  v598 = 0u;
  v599 = 0u;
  v461 = self->_kCellularCdma1XServingCellRx0EcIoHists;
  v462 = [(NSMutableArray *)v461 countByEnumeratingWithState:&v598 objects:v919 count:16];
  if (v462)
  {
    v463 = v462;
    v464 = *v599;
    do
    {
      v465 = 0;
      do
      {
        if (*v599 != v464)
        {
          objc_enumerationMutation(v461);
        }

        v466 = *(*(&v598 + 1) + 8 * v465);
        PBDataWriterWriteSubmessage();
        ++v465;
      }

      while (v463 != v465);
      v463 = [(NSMutableArray *)v461 countByEnumeratingWithState:&v598 objects:v919 count:16];
    }

    while (v463);
  }

  v596 = 0u;
  v597 = 0u;
  v594 = 0u;
  v595 = 0u;
  v467 = self->_kCellularCdma1XServingCellRx1EcIoHists;
  v468 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v594 objects:v918 count:16];
  if (v468)
  {
    v469 = v468;
    v470 = *v595;
    do
    {
      v471 = 0;
      do
      {
        if (*v595 != v470)
        {
          objc_enumerationMutation(v467);
        }

        v472 = *(*(&v594 + 1) + 8 * v471);
        PBDataWriterWriteSubmessage();
        ++v471;
      }

      while (v469 != v471);
      v469 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v594 objects:v918 count:16];
    }

    while (v469);
  }

  v592 = 0u;
  v593 = 0u;
  v590 = 0u;
  v591 = 0u;
  v473 = self->_kCellularCdma1XTxPowerHists;
  v474 = [(NSMutableArray *)v473 countByEnumeratingWithState:&v590 objects:v917 count:16];
  if (v474)
  {
    v475 = v474;
    v476 = *v591;
    do
    {
      v477 = 0;
      do
      {
        if (*v591 != v476)
        {
          objc_enumerationMutation(v473);
        }

        v478 = *(*(&v590 + 1) + 8 * v477);
        PBDataWriterWriteSubmessage();
        ++v477;
      }

      while (v475 != v477);
      v475 = [(NSMutableArray *)v473 countByEnumeratingWithState:&v590 objects:v917 count:16];
    }

    while (v475);
  }

  v588 = 0u;
  v589 = 0u;
  v586 = 0u;
  v587 = 0u;
  v479 = self->_kCellularCdma1XProtocolStackStateHists;
  v480 = [(NSMutableArray *)v479 countByEnumeratingWithState:&v586 objects:v916 count:16];
  if (v480)
  {
    v481 = v480;
    v482 = *v587;
    do
    {
      v483 = 0;
      do
      {
        if (*v587 != v482)
        {
          objc_enumerationMutation(v479);
        }

        v484 = *(*(&v586 + 1) + 8 * v483);
        PBDataWriterWriteSubmessage();
        ++v483;
      }

      while (v481 != v483);
      v481 = [(NSMutableArray *)v479 countByEnumeratingWithState:&v586 objects:v916 count:16];
    }

    while (v481);
  }

  v584 = 0u;
  v585 = 0u;
  v582 = 0u;
  v583 = 0u;
  v485 = self->_kCellularCdma1XConnectionHists;
  v486 = [(NSMutableArray *)v485 countByEnumeratingWithState:&v582 objects:v915 count:16];
  if (v486)
  {
    v487 = v486;
    v488 = *v583;
    do
    {
      v489 = 0;
      do
      {
        if (*v583 != v488)
        {
          objc_enumerationMutation(v485);
        }

        v490 = *(*(&v582 + 1) + 8 * v489);
        PBDataWriterWriteSubmessage();
        ++v489;
      }

      while (v487 != v489);
      v487 = [(NSMutableArray *)v485 countByEnumeratingWithState:&v582 objects:v915 count:16];
    }

    while (v487);
  }

  v580 = 0u;
  v581 = 0u;
  v578 = 0u;
  v579 = 0u;
  v491 = self->_kCellularCdma1XRrStates;
  v492 = [(NSMutableArray *)v491 countByEnumeratingWithState:&v578 objects:v914 count:16];
  if (v492)
  {
    v493 = v492;
    v494 = *v579;
    do
    {
      v495 = 0;
      do
      {
        if (*v579 != v494)
        {
          objc_enumerationMutation(v491);
        }

        v496 = *(*(&v578 + 1) + 8 * v495);
        PBDataWriterWriteSubmessage();
        ++v495;
      }

      while (v493 != v495);
      v493 = [(NSMutableArray *)v491 countByEnumeratingWithState:&v578 objects:v914 count:16];
    }

    while (v493);
  }

  v576 = 0u;
  v577 = 0u;
  v574 = 0u;
  v575 = 0u;
  v497 = self->_kCellularCdmaEvdoRxDiversityHists;
  v498 = [(NSMutableArray *)v497 countByEnumeratingWithState:&v574 objects:v913 count:16];
  if (v498)
  {
    v499 = v498;
    v500 = *v575;
    do
    {
      v501 = 0;
      do
      {
        if (*v575 != v500)
        {
          objc_enumerationMutation(v497);
        }

        v502 = *(*(&v574 + 1) + 8 * v501);
        PBDataWriterWriteSubmessage();
        ++v501;
      }

      while (v499 != v501);
      v499 = [(NSMutableArray *)v497 countByEnumeratingWithState:&v574 objects:v913 count:16];
    }

    while (v499);
  }

  v572 = 0u;
  v573 = 0u;
  v570 = 0u;
  v571 = 0u;
  v503 = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
  v504 = [(NSMutableArray *)v503 countByEnumeratingWithState:&v570 objects:v912 count:16];
  if (v504)
  {
    v505 = v504;
    v506 = *v571;
    do
    {
      v507 = 0;
      do
      {
        if (*v571 != v506)
        {
          objc_enumerationMutation(v503);
        }

        v508 = *(*(&v570 + 1) + 8 * v507);
        PBDataWriterWriteSubmessage();
        ++v507;
      }

      while (v505 != v507);
      v505 = [(NSMutableArray *)v503 countByEnumeratingWithState:&v570 objects:v912 count:16];
    }

    while (v505);
  }

  v568 = 0u;
  v569 = 0u;
  v566 = 0u;
  v567 = 0u;
  v509 = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
  v510 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v566 objects:v911 count:16];
  if (v510)
  {
    v511 = v510;
    v512 = *v567;
    do
    {
      v513 = 0;
      do
      {
        if (*v567 != v512)
        {
          objc_enumerationMutation(v509);
        }

        v514 = *(*(&v566 + 1) + 8 * v513);
        PBDataWriterWriteSubmessage();
        ++v513;
      }

      while (v511 != v513);
      v511 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v566 objects:v911 count:16];
    }

    while (v511);
  }

  v564 = 0u;
  v565 = 0u;
  v562 = 0u;
  v563 = 0u;
  v515 = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
  v516 = [(NSMutableArray *)v515 countByEnumeratingWithState:&v562 objects:v910 count:16];
  if (v516)
  {
    v517 = v516;
    v518 = *v563;
    do
    {
      v519 = 0;
      do
      {
        if (*v563 != v518)
        {
          objc_enumerationMutation(v515);
        }

        v520 = *(*(&v562 + 1) + 8 * v519);
        PBDataWriterWriteSubmessage();
        ++v519;
      }

      while (v517 != v519);
      v517 = [(NSMutableArray *)v515 countByEnumeratingWithState:&v562 objects:v910 count:16];
    }

    while (v517);
  }

  v560 = 0u;
  v561 = 0u;
  v558 = 0u;
  v559 = 0u;
  v521 = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
  v522 = [(NSMutableArray *)v521 countByEnumeratingWithState:&v558 objects:v909 count:16];
  if (v522)
  {
    v523 = v522;
    v524 = *v559;
    do
    {
      v525 = 0;
      do
      {
        if (*v559 != v524)
        {
          objc_enumerationMutation(v521);
        }

        v526 = *(*(&v558 + 1) + 8 * v525);
        PBDataWriterWriteSubmessage();
        ++v525;
      }

      while (v523 != v525);
      v523 = [(NSMutableArray *)v521 countByEnumeratingWithState:&v558 objects:v909 count:16];
    }

    while (v523);
  }

  v556 = 0u;
  v557 = 0u;
  v554 = 0u;
  v555 = 0u;
  v527 = self->_kCellularCdmaEvdoTxPowerHists;
  v528 = [(NSMutableArray *)v527 countByEnumeratingWithState:&v554 objects:v908 count:16];
  if (v528)
  {
    v529 = v528;
    v530 = *v555;
    do
    {
      v531 = 0;
      do
      {
        if (*v555 != v530)
        {
          objc_enumerationMutation(v527);
        }

        v532 = *(*(&v554 + 1) + 8 * v531);
        PBDataWriterWriteSubmessage();
        ++v531;
      }

      while (v529 != v531);
      v529 = [(NSMutableArray *)v527 countByEnumeratingWithState:&v554 objects:v908 count:16];
    }

    while (v529);
  }

  v552 = 0u;
  v553 = 0u;
  v550 = 0u;
  v551 = 0u;
  v533 = self->_kCellularCdmaEvdoProtocolStackStateHists;
  v534 = [(NSMutableArray *)v533 countByEnumeratingWithState:&v550 objects:v907 count:16];
  if (v534)
  {
    v535 = v534;
    v536 = *v551;
    do
    {
      v537 = 0;
      do
      {
        if (*v551 != v536)
        {
          objc_enumerationMutation(v533);
        }

        v538 = *(*(&v550 + 1) + 8 * v537);
        PBDataWriterWriteSubmessage();
        ++v537;
      }

      while (v535 != v537);
      v535 = [(NSMutableArray *)v533 countByEnumeratingWithState:&v550 objects:v907 count:16];
    }

    while (v535);
  }

  v548 = 0u;
  v549 = 0u;
  v546 = 0u;
  v547 = 0u;
  v539 = self->_kCellularCdmaEvdoRrStates;
  v540 = [(NSMutableArray *)v539 countByEnumeratingWithState:&v546 objects:v906 count:16];
  if (v540)
  {
    v541 = v540;
    v542 = *v547;
    do
    {
      v543 = 0;
      do
      {
        if (*v547 != v542)
        {
          objc_enumerationMutation(v539);
        }

        v544 = *(*(&v546 + 1) + 8 * v543);
        PBDataWriterWriteSubmessage();
        ++v543;
      }

      while (v541 != v543);
      v541 = [(NSMutableArray *)v539 countByEnumeratingWithState:&v546 objects:v906 count:16];
    }

    while (v541);
  }

  v545 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v364 = a3;
  if ([(PowerlogMetricLog *)self kCellularPerClientProfileTriggerCountsCount])
  {
    [v364 clearKCellularPerClientProfileTriggerCounts];
    v4 = [(PowerlogMetricLog *)self kCellularPerClientProfileTriggerCountsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PowerlogMetricLog *)self kCellularPerClientProfileTriggerCountAtIndex:i];
        [v364 addKCellularPerClientProfileTriggerCount:v7];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackCpuStatsCount])
  {
    [v364 clearKCellularProtocolStackCpuStats];
    v8 = [(PowerlogMetricLog *)self kCellularProtocolStackCpuStatsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PowerlogMetricLog *)self kCellularProtocolStackCpuStatsAtIndex:j];
        [v364 addKCellularProtocolStackCpuStats:v11];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularPeripheralStatsCount])
  {
    [v364 clearKCellularPeripheralStats];
    v12 = [(PowerlogMetricLog *)self kCellularPeripheralStatsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(PowerlogMetricLog *)self kCellularPeripheralStatsAtIndex:k];
        [v364 addKCellularPeripheralStats:v15];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularDvfsStatsCount])
  {
    [v364 clearKCellularDvfsStats];
    v16 = [(PowerlogMetricLog *)self kCellularDvfsStatsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(PowerlogMetricLog *)self kCellularDvfsStatsAtIndex:m];
        [v364 addKCellularDvfsStats:v19];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteWcdmaGsmHwStatsCount])
  {
    [v364 clearKCellularLteWcdmaGsmHwStats];
    v20 = [(PowerlogMetricLog *)self kCellularLteWcdmaGsmHwStatsCount];
    if (v20)
    {
      v21 = v20;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(PowerlogMetricLog *)self kCellularLteWcdmaGsmHwStatsAtIndex:n];
        [v364 addKCellularLteWcdmaGsmHwStats:v23];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteTdsGsmHwStatsCount])
  {
    [v364 clearKCellularLteTdsGsmHwStats];
    v24 = [(PowerlogMetricLog *)self kCellularLteTdsGsmHwStatsCount];
    if (v24)
    {
      v25 = v24;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(PowerlogMetricLog *)self kCellularLteTdsGsmHwStatsAtIndex:ii];
        [v364 addKCellularLteTdsGsmHwStats:v27];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularPmuAverageCurrentsCount])
  {
    [v364 clearKCellularPmuAverageCurrents];
    v28 = [(PowerlogMetricLog *)self kCellularPmuAverageCurrentsCount];
    if (v28)
    {
      v29 = v28;
      for (jj = 0; jj != v29; ++jj)
      {
        v31 = [(PowerlogMetricLog *)self kCellularPmuAverageCurrentAtIndex:jj];
        [v364 addKCellularPmuAverageCurrent:v31];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularFwCoreStatsCount])
  {
    [v364 clearKCellularFwCoreStats];
    v32 = [(PowerlogMetricLog *)self kCellularFwCoreStatsCount];
    if (v32)
    {
      v33 = v32;
      for (kk = 0; kk != v33; ++kk)
      {
        v35 = [(PowerlogMetricLog *)self kCellularFwCoreStatsAtIndex:kk];
        [v364 addKCellularFwCoreStats:v35];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteWcdmaTdsHwStatsCount])
  {
    [v364 clearKCellularLteWcdmaTdsHwStats];
    v36 = [(PowerlogMetricLog *)self kCellularLteWcdmaTdsHwStatsCount];
    if (v36)
    {
      v37 = v36;
      for (mm = 0; mm != v37; ++mm)
      {
        v39 = [(PowerlogMetricLog *)self kCellularLteWcdmaTdsHwStatsAtIndex:mm];
        [v364 addKCellularLteWcdmaTdsHwStats:v39];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularPmicHwStatsCount])
  {
    [v364 clearKCellularPmicHwStats];
    v40 = [(PowerlogMetricLog *)self kCellularPmicHwStatsCount];
    if (v40)
    {
      v41 = v40;
      for (nn = 0; nn != v41; ++nn)
      {
        v43 = [(PowerlogMetricLog *)self kCellularPmicHwStatsAtIndex:nn];
        [v364 addKCellularPmicHwStats:v43];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsRrcStatesCount])
  {
    [v364 clearKCellularTdsRrcStates];
    v44 = [(PowerlogMetricLog *)self kCellularTdsRrcStatesCount];
    if (v44)
    {
      v45 = v44;
      for (i1 = 0; i1 != v45; ++i1)
      {
        v47 = [(PowerlogMetricLog *)self kCellularTdsRrcStateAtIndex:i1];
        [v364 addKCellularTdsRrcState:v47];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteRrcStatesCount])
  {
    [v364 clearKCellularLteRrcStates];
    v48 = [(PowerlogMetricLog *)self kCellularLteRrcStatesCount];
    if (v48)
    {
      v49 = v48;
      for (i2 = 0; i2 != v49; ++i2)
      {
        v51 = [(PowerlogMetricLog *)self kCellularLteRrcStateAtIndex:i2];
        [v364 addKCellularLteRrcState:v51];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLtePagingCyclesCount])
  {
    [v364 clearKCellularLtePagingCycles];
    v52 = [(PowerlogMetricLog *)self kCellularLtePagingCyclesCount];
    if (v52)
    {
      v53 = v52;
      for (i3 = 0; i3 != v53; ++i3)
      {
        v55 = [(PowerlogMetricLog *)self kCellularLtePagingCycleAtIndex:i3];
        [v364 addKCellularLtePagingCycle:v55];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteCdrxConfigsCount])
  {
    [v364 clearKCellularLteCdrxConfigs];
    v56 = [(PowerlogMetricLog *)self kCellularLteCdrxConfigsCount];
    if (v56)
    {
      v57 = v56;
      for (i4 = 0; i4 != v57; ++i4)
      {
        v59 = [(PowerlogMetricLog *)self kCellularLteCdrxConfigAtIndex:i4];
        [v364 addKCellularLteCdrxConfig:v59];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteRadioLinkFailuresCount])
  {
    [v364 clearKCellularLteRadioLinkFailures];
    v60 = [(PowerlogMetricLog *)self kCellularLteRadioLinkFailuresCount];
    if (v60)
    {
      v61 = v60;
      for (i5 = 0; i5 != v61; ++i5)
      {
        v63 = [(PowerlogMetricLog *)self kCellularLteRadioLinkFailureAtIndex:i5];
        [v364 addKCellularLteRadioLinkFailure:v63];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLtePdcchStateStatsCount])
  {
    [v364 clearKCellularLtePdcchStateStats];
    v64 = [(PowerlogMetricLog *)self kCellularLtePdcchStateStatsCount];
    if (v64)
    {
      v65 = v64;
      for (i6 = 0; i6 != v65; ++i6)
      {
        v67 = [(PowerlogMetricLog *)self kCellularLtePdcchStateStatsAtIndex:i6];
        [v364 addKCellularLtePdcchStateStats:v67];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLqmStateChangesCount])
  {
    [v364 clearKCellularLqmStateChanges];
    v68 = [(PowerlogMetricLog *)self kCellularLqmStateChangesCount];
    if (v68)
    {
      v69 = v68;
      for (i7 = 0; i7 != v69; ++i7)
      {
        v71 = [(PowerlogMetricLog *)self kCellularLqmStateChangeAtIndex:i7];
        [v364 addKCellularLqmStateChange:v71];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularServiceLostsCount])
  {
    [v364 clearKCellularServiceLosts];
    v72 = [(PowerlogMetricLog *)self kCellularServiceLostsCount];
    if (v72)
    {
      v73 = v72;
      for (i8 = 0; i8 != v73; ++i8)
      {
        v75 = [(PowerlogMetricLog *)self kCellularServiceLostAtIndex:i8];
        [v364 addKCellularServiceLost:v75];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmServingCellRssiHistsCount])
  {
    [v364 clearKCellularGsmServingCellRssiHists];
    v76 = [(PowerlogMetricLog *)self kCellularGsmServingCellRssiHistsCount];
    if (v76)
    {
      v77 = v76;
      for (i9 = 0; i9 != v77; ++i9)
      {
        v79 = [(PowerlogMetricLog *)self kCellularGsmServingCellRssiHistAtIndex:i9];
        [v364 addKCellularGsmServingCellRssiHist:v79];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmServingCellSnrHistsCount])
  {
    [v364 clearKCellularGsmServingCellSnrHists];
    v80 = [(PowerlogMetricLog *)self kCellularGsmServingCellSnrHistsCount];
    if (v80)
    {
      v81 = v80;
      for (i10 = 0; i10 != v81; ++i10)
      {
        v83 = [(PowerlogMetricLog *)self kCellularGsmServingCellSnrHistAtIndex:i10];
        [v364 addKCellularGsmServingCellSnrHist:v83];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmTxPowerHistsCount])
  {
    [v364 clearKCellularGsmTxPowerHists];
    v84 = [(PowerlogMetricLog *)self kCellularGsmTxPowerHistsCount];
    if (v84)
    {
      v85 = v84;
      for (i11 = 0; i11 != v85; ++i11)
      {
        v87 = [(PowerlogMetricLog *)self kCellularGsmTxPowerHistAtIndex:i11];
        [v364 addKCellularGsmTxPowerHist:v87];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmConnectedModeHistsCount])
  {
    [v364 clearKCellularGsmConnectedModeHists];
    v88 = [(PowerlogMetricLog *)self kCellularGsmConnectedModeHistsCount];
    if (v88)
    {
      v89 = v88;
      for (i12 = 0; i12 != v89; ++i12)
      {
        v91 = [(PowerlogMetricLog *)self kCellularGsmConnectedModeHistAtIndex:i12];
        [v364 addKCellularGsmConnectedModeHist:v91];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmL1StatesCount])
  {
    [v364 clearKCellularGsmL1States];
    v92 = [(PowerlogMetricLog *)self kCellularGsmL1StatesCount];
    if (v92)
    {
      v93 = v92;
      for (i13 = 0; i13 != v93; ++i13)
      {
        v95 = [(PowerlogMetricLog *)self kCellularGsmL1StateAtIndex:i13];
        [v364 addKCellularGsmL1State:v95];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaCpcStatsCount])
  {
    [v364 clearKCellularWcdmaCpcStats];
    v96 = [(PowerlogMetricLog *)self kCellularWcdmaCpcStatsCount];
    if (v96)
    {
      v97 = v96;
      for (i14 = 0; i14 != v97; ++i14)
      {
        v99 = [(PowerlogMetricLog *)self kCellularWcdmaCpcStatAtIndex:i14];
        [v364 addKCellularWcdmaCpcStat:v99];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRxDiversityHistsCount])
  {
    [v364 clearKCellularWcdmaRxDiversityHists];
    v100 = [(PowerlogMetricLog *)self kCellularWcdmaRxDiversityHistsCount];
    if (v100)
    {
      v101 = v100;
      for (i15 = 0; i15 != v101; ++i15)
      {
        v103 = [(PowerlogMetricLog *)self kCellularWcdmaRxDiversityHistAtIndex:i15];
        [v364 addKCellularWcdmaRxDiversityHist:v103];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0RssiHistsCount])
  {
    [v364 clearKCellularWcdmaServingCellRx0RssiHists];
    v104 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0RssiHistsCount];
    if (v104)
    {
      v105 = v104;
      for (i16 = 0; i16 != v105; ++i16)
      {
        v107 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0RssiHistAtIndex:i16];
        [v364 addKCellularWcdmaServingCellRx0RssiHist:v107];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1RssiHistsCount])
  {
    [v364 clearKCellularWcdmaServingCellRx1RssiHists];
    v108 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1RssiHistsCount];
    if (v108)
    {
      v109 = v108;
      for (i17 = 0; i17 != v109; ++i17)
      {
        v111 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1RssiHistAtIndex:i17];
        [v364 addKCellularWcdmaServingCellRx1RssiHist:v111];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0EcNoHistsCount])
  {
    [v364 clearKCellularWcdmaServingCellRx0EcNoHists];
    v112 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0EcNoHistsCount];
    if (v112)
    {
      v113 = v112;
      for (i18 = 0; i18 != v113; ++i18)
      {
        v115 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0EcNoHistAtIndex:i18];
        [v364 addKCellularWcdmaServingCellRx0EcNoHist:v115];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1EcNoHistsCount])
  {
    [v364 clearKCellularWcdmaServingCellRx1EcNoHists];
    v116 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1EcNoHistsCount];
    if (v116)
    {
      v117 = v116;
      for (i19 = 0; i19 != v117; ++i19)
      {
        v119 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1EcNoHistAtIndex:i19];
        [v364 addKCellularWcdmaServingCellRx1EcNoHist:v119];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaTxPowerHistsCount])
  {
    [v364 clearKCellularWcdmaTxPowerHists];
    v120 = [(PowerlogMetricLog *)self kCellularWcdmaTxPowerHistsCount];
    if (v120)
    {
      v121 = v120;
      for (i20 = 0; i20 != v121; ++i20)
      {
        v123 = [(PowerlogMetricLog *)self kCellularWcdmaTxPowerHistAtIndex:i20];
        [v364 addKCellularWcdmaTxPowerHist:v123];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC0HistsCount])
  {
    [v364 clearKCellularWcdmaReceiverStatusOnC0Hists];
    v124 = [(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC0HistsCount];
    if (v124)
    {
      v125 = v124;
      for (i21 = 0; i21 != v125; ++i21)
      {
        v127 = [(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC0HistAtIndex:i21];
        [v364 addKCellularWcdmaReceiverStatusOnC0Hist:v127];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC1HistsCount])
  {
    [v364 clearKCellularWcdmaReceiverStatusOnC1Hists];
    v128 = [(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC1HistsCount];
    if (v128)
    {
      v129 = v128;
      for (i22 = 0; i22 != v129; ++i22)
      {
        v131 = [(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC1HistAtIndex:i22];
        [v364 addKCellularWcdmaReceiverStatusOnC1Hist:v131];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaCarrierStatusHistsCount])
  {
    [v364 clearKCellularWcdmaCarrierStatusHists];
    v132 = [(PowerlogMetricLog *)self kCellularWcdmaCarrierStatusHistsCount];
    if (v132)
    {
      v133 = v132;
      for (i23 = 0; i23 != v133; ++i23)
      {
        v135 = [(PowerlogMetricLog *)self kCellularWcdmaCarrierStatusHistAtIndex:i23];
        [v364 addKCellularWcdmaCarrierStatusHist:v135];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRabModeHistsCount])
  {
    [v364 clearKCellularWcdmaRabModeHists];
    v136 = [(PowerlogMetricLog *)self kCellularWcdmaRabModeHistsCount];
    if (v136)
    {
      v137 = v136;
      for (i24 = 0; i24 != v137; ++i24)
      {
        v139 = [(PowerlogMetricLog *)self kCellularWcdmaRabModeHistAtIndex:i24];
        [v364 addKCellularWcdmaRabModeHist:v139];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRabTypeHistsCount])
  {
    [v364 clearKCellularWcdmaRabTypeHists];
    v140 = [(PowerlogMetricLog *)self kCellularWcdmaRabTypeHistsCount];
    if (v140)
    {
      v141 = v140;
      for (i25 = 0; i25 != v141; ++i25)
      {
        v143 = [(PowerlogMetricLog *)self kCellularWcdmaRabTypeHistAtIndex:i25];
        [v364 addKCellularWcdmaRabTypeHist:v143];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRrcConnectionStatesCount])
  {
    [v364 clearKCellularWcdmaRrcConnectionStates];
    v144 = [(PowerlogMetricLog *)self kCellularWcdmaRrcConnectionStatesCount];
    if (v144)
    {
      v145 = v144;
      for (i26 = 0; i26 != v145; ++i26)
      {
        v147 = [(PowerlogMetricLog *)self kCellularWcdmaRrcConnectionStateAtIndex:i26];
        [v364 addKCellularWcdmaRrcConnectionState:v147];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRrcConfigurationsCount])
  {
    [v364 clearKCellularWcdmaRrcConfigurations];
    v148 = [(PowerlogMetricLog *)self kCellularWcdmaRrcConfigurationsCount];
    if (v148)
    {
      v149 = v148;
      for (i27 = 0; i27 != v149; ++i27)
      {
        v151 = [(PowerlogMetricLog *)self kCellularWcdmaRrcConfigurationAtIndex:i27];
        [v364 addKCellularWcdmaRrcConfiguration:v151];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRabStatusCount])
  {
    [v364 clearKCellularWcdmaRabStatus];
    v152 = [(PowerlogMetricLog *)self kCellularWcdmaRabStatusCount];
    if (v152)
    {
      v153 = v152;
      for (i28 = 0; i28 != v153; ++i28)
      {
        v155 = [(PowerlogMetricLog *)self kCellularWcdmaRabStatusAtIndex:i28];
        [v364 addKCellularWcdmaRabStatus:v155];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaL1StatesCount])
  {
    [v364 clearKCellularWcdmaL1States];
    v156 = [(PowerlogMetricLog *)self kCellularWcdmaL1StatesCount];
    if (v156)
    {
      v157 = v156;
      for (i29 = 0; i29 != v157; ++i29)
      {
        v159 = [(PowerlogMetricLog *)self kCellularWcdmaL1StateAtIndex:i29];
        [v364 addKCellularWcdmaL1State:v159];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaDataInactivityBeforeIdlesCount])
  {
    [v364 clearKCellularWcdmaDataInactivityBeforeIdles];
    v160 = [(PowerlogMetricLog *)self kCellularWcdmaDataInactivityBeforeIdlesCount];
    if (v160)
    {
      v161 = v160;
      for (i30 = 0; i30 != v161; ++i30)
      {
        v163 = [(PowerlogMetricLog *)self kCellularWcdmaDataInactivityBeforeIdleAtIndex:i30];
        [v364 addKCellularWcdmaDataInactivityBeforeIdle:v163];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaIdleToConnectedUserDatasCount])
  {
    [v364 clearKCellularWcdmaIdleToConnectedUserDatas];
    v164 = [(PowerlogMetricLog *)self kCellularWcdmaIdleToConnectedUserDatasCount];
    if (v164)
    {
      v165 = v164;
      for (i31 = 0; i31 != v165; ++i31)
      {
        v167 = [(PowerlogMetricLog *)self kCellularWcdmaIdleToConnectedUserDataAtIndex:i31];
        [v364 addKCellularWcdmaIdleToConnectedUserData:v167];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaVadHistsCount])
  {
    [v364 clearKCellularWcdmaVadHists];
    v168 = [(PowerlogMetricLog *)self kCellularWcdmaVadHistsCount];
    if (v168)
    {
      v169 = v168;
      for (i32 = 0; i32 != v169; ++i32)
      {
        v171 = [(PowerlogMetricLog *)self kCellularWcdmaVadHistAtIndex:i32];
        [v364 addKCellularWcdmaVadHist:v171];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsRxDiversityHistsCount])
  {
    [v364 clearKCellularTdsRxDiversityHists];
    v172 = [(PowerlogMetricLog *)self kCellularTdsRxDiversityHistsCount];
    if (v172)
    {
      v173 = v172;
      for (i33 = 0; i33 != v173; ++i33)
      {
        v175 = [(PowerlogMetricLog *)self kCellularTdsRxDiversityHistAtIndex:i33];
        [v364 addKCellularTdsRxDiversityHist:v175];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsServingCellRx0RssiHistsCount])
  {
    [v364 clearKCellularTdsServingCellRx0RssiHists];
    v176 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx0RssiHistsCount];
    if (v176)
    {
      v177 = v176;
      for (i34 = 0; i34 != v177; ++i34)
      {
        v179 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx0RssiHistAtIndex:i34];
        [v364 addKCellularTdsServingCellRx0RssiHist:v179];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsServingCellRx1RssiHistsCount])
  {
    [v364 clearKCellularTdsServingCellRx1RssiHists];
    v180 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx1RssiHistsCount];
    if (v180)
    {
      v181 = v180;
      for (i35 = 0; i35 != v181; ++i35)
      {
        v183 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx1RssiHistAtIndex:i35];
        [v364 addKCellularTdsServingCellRx1RssiHist:v183];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsServingCellRx0RscpHistsCount])
  {
    [v364 clearKCellularTdsServingCellRx0RscpHists];
    v184 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx0RscpHistsCount];
    if (v184)
    {
      v185 = v184;
      for (i36 = 0; i36 != v185; ++i36)
      {
        v187 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx0RscpHistAtIndex:i36];
        [v364 addKCellularTdsServingCellRx0RscpHist:v187];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsServingCellRx1RscpHistsCount])
  {
    [v364 clearKCellularTdsServingCellRx1RscpHists];
    v188 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx1RscpHistsCount];
    if (v188)
    {
      v189 = v188;
      for (i37 = 0; i37 != v189; ++i37)
      {
        v191 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx1RscpHistAtIndex:i37];
        [v364 addKCellularTdsServingCellRx1RscpHist:v191];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsTxPowerHistsCount])
  {
    [v364 clearKCellularTdsTxPowerHists];
    v192 = [(PowerlogMetricLog *)self kCellularTdsTxPowerHistsCount];
    if (v192)
    {
      v193 = v192;
      for (i38 = 0; i38 != v193; ++i38)
      {
        v195 = [(PowerlogMetricLog *)self kCellularTdsTxPowerHistAtIndex:i38];
        [v364 addKCellularTdsTxPowerHist:v195];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsRabModeHistsCount])
  {
    [v364 clearKCellularTdsRabModeHists];
    v196 = [(PowerlogMetricLog *)self kCellularTdsRabModeHistsCount];
    if (v196)
    {
      v197 = v196;
      for (i39 = 0; i39 != v197; ++i39)
      {
        v199 = [(PowerlogMetricLog *)self kCellularTdsRabModeHistAtIndex:i39];
        [v364 addKCellularTdsRabModeHist:v199];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsRabTypeHistsCount])
  {
    [v364 clearKCellularTdsRabTypeHists];
    v200 = [(PowerlogMetricLog *)self kCellularTdsRabTypeHistsCount];
    if (v200)
    {
      v201 = v200;
      for (i40 = 0; i40 != v201; ++i40)
      {
        v203 = [(PowerlogMetricLog *)self kCellularTdsRabTypeHistAtIndex:i40];
        [v364 addKCellularTdsRabTypeHist:v203];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsL1StatesCount])
  {
    [v364 clearKCellularTdsL1States];
    v204 = [(PowerlogMetricLog *)self kCellularTdsL1StatesCount];
    if (v204)
    {
      v205 = v204;
      for (i41 = 0; i41 != v205; ++i41)
      {
        v207 = [(PowerlogMetricLog *)self kCellularTdsL1StateAtIndex:i41];
        [v364 addKCellularTdsL1State:v207];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteFwDuplexModesCount])
  {
    [v364 clearKCellularLteFwDuplexModes];
    v208 = [(PowerlogMetricLog *)self kCellularLteFwDuplexModesCount];
    if (v208)
    {
      v209 = v208;
      for (i42 = 0; i42 != v209; ++i42)
      {
        v211 = [(PowerlogMetricLog *)self kCellularLteFwDuplexModeAtIndex:i42];
        [v364 addKCellularLteFwDuplexMode:v211];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteServingCellRsrpHistsCount])
  {
    [v364 clearKCellularLteServingCellRsrpHists];
    v212 = [(PowerlogMetricLog *)self kCellularLteServingCellRsrpHistsCount];
    if (v212)
    {
      v213 = v212;
      for (i43 = 0; i43 != v213; ++i43)
      {
        v215 = [(PowerlogMetricLog *)self kCellularLteServingCellRsrpHistAtIndex:i43];
        [v364 addKCellularLteServingCellRsrpHist:v215];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteServingCellSinrHistsCount])
  {
    [v364 clearKCellularLteServingCellSinrHists];
    v216 = [(PowerlogMetricLog *)self kCellularLteServingCellSinrHistsCount];
    if (v216)
    {
      v217 = v216;
      for (i44 = 0; i44 != v217; ++i44)
      {
        v219 = [(PowerlogMetricLog *)self kCellularLteServingCellSinrHistAtIndex:i44];
        [v364 addKCellularLteServingCellSinrHist:v219];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteSleepStateHistsCount])
  {
    [v364 clearKCellularLteSleepStateHists];
    v220 = [(PowerlogMetricLog *)self kCellularLteSleepStateHistsCount];
    if (v220)
    {
      v221 = v220;
      for (i45 = 0; i45 != v221; ++i45)
      {
        v223 = [(PowerlogMetricLog *)self kCellularLteSleepStateHistAtIndex:i45];
        [v364 addKCellularLteSleepStateHist:v223];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteTxPowerHistsCount])
  {
    [v364 clearKCellularLteTxPowerHists];
    v224 = [(PowerlogMetricLog *)self kCellularLteTxPowerHistsCount];
    if (v224)
    {
      v225 = v224;
      for (i46 = 0; i46 != v225; ++i46)
      {
        v227 = [(PowerlogMetricLog *)self kCellularLteTxPowerHistAtIndex:i46];
        [v364 addKCellularLteTxPowerHist:v227];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteDlSccStateHistsCount])
  {
    [v364 clearKCellularLteDlSccStateHists];
    v228 = [(PowerlogMetricLog *)self kCellularLteDlSccStateHistsCount];
    if (v228)
    {
      v229 = v228;
      for (i47 = 0; i47 != v229; ++i47)
      {
        v231 = [(PowerlogMetricLog *)self kCellularLteDlSccStateHistAtIndex:i47];
        [v364 addKCellularLteDlSccStateHist:v231];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteUlSccStateHistsCount])
  {
    [v364 clearKCellularLteUlSccStateHists];
    v232 = [(PowerlogMetricLog *)self kCellularLteUlSccStateHistsCount];
    if (v232)
    {
      v233 = v232;
      for (i48 = 0; i48 != v233; ++i48)
      {
        v235 = [(PowerlogMetricLog *)self kCellularLteUlSccStateHistAtIndex:i48];
        [v364 addKCellularLteUlSccStateHist:v235];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteAdvancedRxStateHistsCount])
  {
    [v364 clearKCellularLteAdvancedRxStateHists];
    v236 = [(PowerlogMetricLog *)self kCellularLteAdvancedRxStateHistsCount];
    if (v236)
    {
      v237 = v236;
      for (i49 = 0; i49 != v237; ++i49)
      {
        v239 = [(PowerlogMetricLog *)self kCellularLteAdvancedRxStateHistAtIndex:i49];
        [v364 addKCellularLteAdvancedRxStateHist:v239];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteComponentCarrierInfosCount])
  {
    [v364 clearKCellularLteComponentCarrierInfos];
    v240 = [(PowerlogMetricLog *)self kCellularLteComponentCarrierInfosCount];
    if (v240)
    {
      v241 = v240;
      for (i50 = 0; i50 != v241; ++i50)
      {
        v243 = [(PowerlogMetricLog *)self kCellularLteComponentCarrierInfoAtIndex:i50];
        [v364 addKCellularLteComponentCarrierInfo:v243];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteRxTxStateHistsCount])
  {
    [v364 clearKCellularLteRxTxStateHists];
    v244 = [(PowerlogMetricLog *)self kCellularLteRxTxStateHistsCount];
    if (v244)
    {
      v245 = v244;
      for (i51 = 0; i51 != v245; ++i51)
      {
        v247 = [(PowerlogMetricLog *)self kCellularLteRxTxStateHistAtIndex:i51];
        [v364 addKCellularLteRxTxStateHist:v247];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteTotalDlTbsHistsCount])
  {
    [v364 clearKCellularLteTotalDlTbsHists];
    v248 = [(PowerlogMetricLog *)self kCellularLteTotalDlTbsHistsCount];
    if (v248)
    {
      v249 = v248;
      for (i52 = 0; i52 != v249; ++i52)
      {
        v251 = [(PowerlogMetricLog *)self kCellularLteTotalDlTbsHistAtIndex:i52];
        [v364 addKCellularLteTotalDlTbsHist:v251];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteDlSccStateHistV3sCount])
  {
    [v364 clearKCellularLteDlSccStateHistV3s];
    v252 = [(PowerlogMetricLog *)self kCellularLteDlSccStateHistV3sCount];
    if (v252)
    {
      v253 = v252;
      for (i53 = 0; i53 != v253; ++i53)
      {
        v255 = [(PowerlogMetricLog *)self kCellularLteDlSccStateHistV3AtIndex:i53];
        [v364 addKCellularLteDlSccStateHistV3:v255];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteRxDiversityHistsCount])
  {
    [v364 clearKCellularLteRxDiversityHists];
    v256 = [(PowerlogMetricLog *)self kCellularLteRxDiversityHistsCount];
    if (v256)
    {
      v257 = v256;
      for (i54 = 0; i54 != v257; ++i54)
      {
        v259 = [(PowerlogMetricLog *)self kCellularLteRxDiversityHistAtIndex:i54];
        [v364 addKCellularLteRxDiversityHist:v259];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLtePdcchStateHistsCount])
  {
    [v364 clearKCellularLtePdcchStateHists];
    v260 = [(PowerlogMetricLog *)self kCellularLtePdcchStateHistsCount];
    if (v260)
    {
      v261 = v260;
      for (i55 = 0; i55 != v261; ++i55)
      {
        v263 = [(PowerlogMetricLog *)self kCellularLtePdcchStateHistAtIndex:i55];
        [v364 addKCellularLtePdcchStateHist:v263];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackStateHistsCount])
  {
    [v364 clearKCellularProtocolStackStateHists];
    v264 = [(PowerlogMetricLog *)self kCellularProtocolStackStateHistsCount];
    if (v264)
    {
      v265 = v264;
      for (i56 = 0; i56 != v265; ++i56)
      {
        v267 = [(PowerlogMetricLog *)self kCellularProtocolStackStateHistAtIndex:i56];
        [v364 addKCellularProtocolStackStateHist:v267];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCellPlmnSearchCountsCount])
  {
    [v364 clearKCellularCellPlmnSearchCounts];
    v268 = [(PowerlogMetricLog *)self kCellularCellPlmnSearchCountsCount];
    if (v268)
    {
      v269 = v268;
      for (i57 = 0; i57 != v269; ++i57)
      {
        v271 = [(PowerlogMetricLog *)self kCellularCellPlmnSearchCountAtIndex:i57];
        [v364 addKCellularCellPlmnSearchCount:v271];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCellPlmnSearchHistsCount])
  {
    [v364 clearKCellularCellPlmnSearchHists];
    v272 = [(PowerlogMetricLog *)self kCellularCellPlmnSearchHistsCount];
    if (v272)
    {
      v273 = v272;
      for (i58 = 0; i58 != v273; ++i58)
      {
        v275 = [(PowerlogMetricLog *)self kCellularCellPlmnSearchHistAtIndex:i58];
        [v364 addKCellularCellPlmnSearchHist:v275];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackPowerStatesCount])
  {
    [v364 clearKCellularProtocolStackPowerStates];
    v276 = [(PowerlogMetricLog *)self kCellularProtocolStackPowerStatesCount];
    if (v276)
    {
      v277 = v276;
      for (i59 = 0; i59 != v277; ++i59)
      {
        v279 = [(PowerlogMetricLog *)self kCellularProtocolStackPowerStateAtIndex:i59];
        [v364 addKCellularProtocolStackPowerState:v279];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularDownlinkIpPacketFilterStatusCount])
  {
    [v364 clearKCellularDownlinkIpPacketFilterStatus];
    v280 = [(PowerlogMetricLog *)self kCellularDownlinkIpPacketFilterStatusCount];
    if (v280)
    {
      v281 = v280;
      for (i60 = 0; i60 != v281; ++i60)
      {
        v283 = [(PowerlogMetricLog *)self kCellularDownlinkIpPacketFilterStatusAtIndex:i60];
        [v364 addKCellularDownlinkIpPacketFilterStatus:v283];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularServingCellRfBandHistsCount])
  {
    [v364 clearKCellularServingCellRfBandHists];
    v284 = [(PowerlogMetricLog *)self kCellularServingCellRfBandHistsCount];
    if (v284)
    {
      v285 = v284;
      for (i61 = 0; i61 != v285; ++i61)
      {
        v287 = [(PowerlogMetricLog *)self kCellularServingCellRfBandHistAtIndex:i61];
        [v364 addKCellularServingCellRfBandHist:v287];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackStateHist2sCount])
  {
    [v364 clearKCellularProtocolStackStateHist2s];
    v288 = [(PowerlogMetricLog *)self kCellularProtocolStackStateHist2sCount];
    if (v288)
    {
      v289 = v288;
      for (i62 = 0; i62 != v289; ++i62)
      {
        v291 = [(PowerlogMetricLog *)self kCellularProtocolStackStateHist2AtIndex:i62];
        [v364 addKCellularProtocolStackStateHist2:v291];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackStatesCount])
  {
    [v364 clearKCellularProtocolStackStates];
    v292 = [(PowerlogMetricLog *)self kCellularProtocolStackStatesCount];
    if (v292)
    {
      v293 = v292;
      for (i63 = 0; i63 != v293; ++i63)
      {
        v295 = [(PowerlogMetricLog *)self kCellularProtocolStackStateAtIndex:i63];
        [v364 addKCellularProtocolStackState:v295];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XRxDiversityHistsCount])
  {
    [v364 clearKCellularCdma1XRxDiversityHists];
    v296 = [(PowerlogMetricLog *)self kCellularCdma1XRxDiversityHistsCount];
    if (v296)
    {
      v297 = v296;
      for (i64 = 0; i64 != v297; ++i64)
      {
        v299 = [(PowerlogMetricLog *)self kCellularCdma1XRxDiversityHistAtIndex:i64];
        [v364 addKCellularCdma1XRxDiversityHist:v299];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0RssiHistsCount])
  {
    [v364 clearKCellularCdma1XServingCellRx0RssiHists];
    v300 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0RssiHistsCount];
    if (v300)
    {
      v301 = v300;
      for (i65 = 0; i65 != v301; ++i65)
      {
        v303 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0RssiHistAtIndex:i65];
        [v364 addKCellularCdma1XServingCellRx0RssiHist:v303];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1RssiHistsCount])
  {
    [v364 clearKCellularCdma1XServingCellRx1RssiHists];
    v304 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1RssiHistsCount];
    if (v304)
    {
      v305 = v304;
      for (i66 = 0; i66 != v305; ++i66)
      {
        v307 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1RssiHistAtIndex:i66];
        [v364 addKCellularCdma1XServingCellRx1RssiHist:v307];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0EcIoHistsCount])
  {
    [v364 clearKCellularCdma1XServingCellRx0EcIoHists];
    v308 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0EcIoHistsCount];
    if (v308)
    {
      v309 = v308;
      for (i67 = 0; i67 != v309; ++i67)
      {
        v311 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0EcIoHistAtIndex:i67];
        [v364 addKCellularCdma1XServingCellRx0EcIoHist:v311];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1EcIoHistsCount])
  {
    [v364 clearKCellularCdma1XServingCellRx1EcIoHists];
    v312 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1EcIoHistsCount];
    if (v312)
    {
      v313 = v312;
      for (i68 = 0; i68 != v313; ++i68)
      {
        v315 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1EcIoHistAtIndex:i68];
        [v364 addKCellularCdma1XServingCellRx1EcIoHist:v315];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XTxPowerHistsCount])
  {
    [v364 clearKCellularCdma1XTxPowerHists];
    v316 = [(PowerlogMetricLog *)self kCellularCdma1XTxPowerHistsCount];
    if (v316)
    {
      v317 = v316;
      for (i69 = 0; i69 != v317; ++i69)
      {
        v319 = [(PowerlogMetricLog *)self kCellularCdma1XTxPowerHistAtIndex:i69];
        [v364 addKCellularCdma1XTxPowerHist:v319];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XProtocolStackStateHistsCount])
  {
    [v364 clearKCellularCdma1XProtocolStackStateHists];
    v320 = [(PowerlogMetricLog *)self kCellularCdma1XProtocolStackStateHistsCount];
    if (v320)
    {
      v321 = v320;
      for (i70 = 0; i70 != v321; ++i70)
      {
        v323 = [(PowerlogMetricLog *)self kCellularCdma1XProtocolStackStateHistAtIndex:i70];
        [v364 addKCellularCdma1XProtocolStackStateHist:v323];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XConnectionHistsCount])
  {
    [v364 clearKCellularCdma1XConnectionHists];
    v324 = [(PowerlogMetricLog *)self kCellularCdma1XConnectionHistsCount];
    if (v324)
    {
      v325 = v324;
      for (i71 = 0; i71 != v325; ++i71)
      {
        v327 = [(PowerlogMetricLog *)self kCellularCdma1XConnectionHistAtIndex:i71];
        [v364 addKCellularCdma1XConnectionHist:v327];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XRrStatesCount])
  {
    [v364 clearKCellularCdma1XRrStates];
    v328 = [(PowerlogMetricLog *)self kCellularCdma1XRrStatesCount];
    if (v328)
    {
      v329 = v328;
      for (i72 = 0; i72 != v329; ++i72)
      {
        v331 = [(PowerlogMetricLog *)self kCellularCdma1XRrStateAtIndex:i72];
        [v364 addKCellularCdma1XRrState:v331];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoRxDiversityHistsCount])
  {
    [v364 clearKCellularCdmaEvdoRxDiversityHists];
    v332 = [(PowerlogMetricLog *)self kCellularCdmaEvdoRxDiversityHistsCount];
    if (v332)
    {
      v333 = v332;
      for (i73 = 0; i73 != v333; ++i73)
      {
        v335 = [(PowerlogMetricLog *)self kCellularCdmaEvdoRxDiversityHistAtIndex:i73];
        [v364 addKCellularCdmaEvdoRxDiversityHist:v335];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0RssiHistsCount])
  {
    [v364 clearKCellularCdmaEvdoServingCellRx0RssiHists];
    v336 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0RssiHistsCount];
    if (v336)
    {
      v337 = v336;
      for (i74 = 0; i74 != v337; ++i74)
      {
        v339 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0RssiHistAtIndex:i74];
        [v364 addKCellularCdmaEvdoServingCellRx0RssiHist:v339];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1RssiHistsCount])
  {
    [v364 clearKCellularCdmaEvdoServingCellRx1RssiHists];
    v340 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1RssiHistsCount];
    if (v340)
    {
      v341 = v340;
      for (i75 = 0; i75 != v341; ++i75)
      {
        v343 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1RssiHistAtIndex:i75];
        [v364 addKCellularCdmaEvdoServingCellRx1RssiHist:v343];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0EcIoHistsCount])
  {
    [v364 clearKCellularCdmaEvdoServingCellRx0EcIoHists];
    v344 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0EcIoHistsCount];
    if (v344)
    {
      v345 = v344;
      for (i76 = 0; i76 != v345; ++i76)
      {
        v347 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0EcIoHistAtIndex:i76];
        [v364 addKCellularCdmaEvdoServingCellRx0EcIoHist:v347];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1EcIoHistsCount])
  {
    [v364 clearKCellularCdmaEvdoServingCellRx1EcIoHists];
    v348 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1EcIoHistsCount];
    if (v348)
    {
      v349 = v348;
      for (i77 = 0; i77 != v349; ++i77)
      {
        v351 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1EcIoHistAtIndex:i77];
        [v364 addKCellularCdmaEvdoServingCellRx1EcIoHist:v351];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoTxPowerHistsCount])
  {
    [v364 clearKCellularCdmaEvdoTxPowerHists];
    v352 = [(PowerlogMetricLog *)self kCellularCdmaEvdoTxPowerHistsCount];
    if (v352)
    {
      v353 = v352;
      for (i78 = 0; i78 != v353; ++i78)
      {
        v355 = [(PowerlogMetricLog *)self kCellularCdmaEvdoTxPowerHistAtIndex:i78];
        [v364 addKCellularCdmaEvdoTxPowerHist:v355];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoProtocolStackStateHistsCount])
  {
    [v364 clearKCellularCdmaEvdoProtocolStackStateHists];
    v356 = [(PowerlogMetricLog *)self kCellularCdmaEvdoProtocolStackStateHistsCount];
    if (v356)
    {
      v357 = v356;
      for (i79 = 0; i79 != v357; ++i79)
      {
        v359 = [(PowerlogMetricLog *)self kCellularCdmaEvdoProtocolStackStateHistAtIndex:i79];
        [v364 addKCellularCdmaEvdoProtocolStackStateHist:v359];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoRrStatesCount])
  {
    [v364 clearKCellularCdmaEvdoRrStates];
    v360 = [(PowerlogMetricLog *)self kCellularCdmaEvdoRrStatesCount];
    if (v360)
    {
      v361 = v360;
      for (i80 = 0; i80 != v361; ++i80)
      {
        v363 = [(PowerlogMetricLog *)self kCellularCdmaEvdoRrStateAtIndex:i80];
        [v364 addKCellularCdmaEvdoRrState:v363];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v999 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v905 = 0u;
  v906 = 0u;
  v907 = 0u;
  v908 = 0u;
  v6 = self->_kCellularPerClientProfileTriggerCounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v905 objects:v998 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v906;
    do
    {
      v10 = 0;
      do
      {
        if (*v906 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v905 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addKCellularPerClientProfileTriggerCount:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v905 objects:v998 count:16];
    }

    while (v8);
  }

  v904 = 0u;
  v903 = 0u;
  v902 = 0u;
  v901 = 0u;
  v12 = self->_kCellularProtocolStackCpuStats;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v901 objects:v997 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v902;
    do
    {
      v16 = 0;
      do
      {
        if (*v902 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v901 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addKCellularProtocolStackCpuStats:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v901 objects:v997 count:16];
    }

    while (v14);
  }

  v900 = 0u;
  v899 = 0u;
  v898 = 0u;
  v897 = 0u;
  v18 = self->_kCellularPeripheralStats;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v897 objects:v996 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v898;
    do
    {
      v22 = 0;
      do
      {
        if (*v898 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v897 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addKCellularPeripheralStats:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v897 objects:v996 count:16];
    }

    while (v20);
  }

  v896 = 0u;
  v895 = 0u;
  v894 = 0u;
  v893 = 0u;
  v24 = self->_kCellularDvfsStats;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v893 objects:v995 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v894;
    do
    {
      v28 = 0;
      do
      {
        if (*v894 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v893 + 1) + 8 * v28) copyWithZone:a3];
        [v5 addKCellularDvfsStats:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v893 objects:v995 count:16];
    }

    while (v26);
  }

  v892 = 0u;
  v891 = 0u;
  v890 = 0u;
  v889 = 0u;
  v30 = self->_kCellularLteWcdmaGsmHwStats;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v889 objects:v994 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v890;
    do
    {
      v34 = 0;
      do
      {
        if (*v890 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v889 + 1) + 8 * v34) copyWithZone:a3];
        [v5 addKCellularLteWcdmaGsmHwStats:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v889 objects:v994 count:16];
    }

    while (v32);
  }

  v888 = 0u;
  v887 = 0u;
  v886 = 0u;
  v885 = 0u;
  v36 = self->_kCellularLteTdsGsmHwStats;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v885 objects:v993 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v886;
    do
    {
      v40 = 0;
      do
      {
        if (*v886 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v885 + 1) + 8 * v40) copyWithZone:a3];
        [v5 addKCellularLteTdsGsmHwStats:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v885 objects:v993 count:16];
    }

    while (v38);
  }

  v884 = 0u;
  v883 = 0u;
  v882 = 0u;
  v881 = 0u;
  v42 = self->_kCellularPmuAverageCurrents;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v881 objects:v992 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v882;
    do
    {
      v46 = 0;
      do
      {
        if (*v882 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v881 + 1) + 8 * v46) copyWithZone:a3];
        [v5 addKCellularPmuAverageCurrent:v47];

        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v881 objects:v992 count:16];
    }

    while (v44);
  }

  v880 = 0u;
  v879 = 0u;
  v878 = 0u;
  v877 = 0u;
  v48 = self->_kCellularFwCoreStats;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v877 objects:v991 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v878;
    do
    {
      v52 = 0;
      do
      {
        if (*v878 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v877 + 1) + 8 * v52) copyWithZone:a3];
        [v5 addKCellularFwCoreStats:v53];

        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v877 objects:v991 count:16];
    }

    while (v50);
  }

  v876 = 0u;
  v875 = 0u;
  v874 = 0u;
  v873 = 0u;
  v54 = self->_kCellularLteWcdmaTdsHwStats;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v873 objects:v990 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v874;
    do
    {
      v58 = 0;
      do
      {
        if (*v874 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v873 + 1) + 8 * v58) copyWithZone:a3];
        [v5 addKCellularLteWcdmaTdsHwStats:v59];

        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v873 objects:v990 count:16];
    }

    while (v56);
  }

  v872 = 0u;
  v871 = 0u;
  v870 = 0u;
  v869 = 0u;
  v60 = self->_kCellularPmicHwStats;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v869 objects:v989 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v870;
    do
    {
      v64 = 0;
      do
      {
        if (*v870 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v869 + 1) + 8 * v64) copyWithZone:a3];
        [v5 addKCellularPmicHwStats:v65];

        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v869 objects:v989 count:16];
    }

    while (v62);
  }

  v868 = 0u;
  v867 = 0u;
  v866 = 0u;
  v865 = 0u;
  v66 = self->_kCellularTdsRrcStates;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v865 objects:v988 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v866;
    do
    {
      v70 = 0;
      do
      {
        if (*v866 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = [*(*(&v865 + 1) + 8 * v70) copyWithZone:a3];
        [v5 addKCellularTdsRrcState:v71];

        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v865 objects:v988 count:16];
    }

    while (v68);
  }

  v864 = 0u;
  v863 = 0u;
  v862 = 0u;
  v861 = 0u;
  v72 = self->_kCellularLteRrcStates;
  v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v861 objects:v987 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v862;
    do
    {
      v76 = 0;
      do
      {
        if (*v862 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = [*(*(&v861 + 1) + 8 * v76) copyWithZone:a3];
        [v5 addKCellularLteRrcState:v77];

        ++v76;
      }

      while (v74 != v76);
      v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v861 objects:v987 count:16];
    }

    while (v74);
  }

  v860 = 0u;
  v859 = 0u;
  v858 = 0u;
  v857 = 0u;
  v78 = self->_kCellularLtePagingCycles;
  v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v857 objects:v986 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v858;
    do
    {
      v82 = 0;
      do
      {
        if (*v858 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = [*(*(&v857 + 1) + 8 * v82) copyWithZone:a3];
        [v5 addKCellularLtePagingCycle:v83];

        ++v82;
      }

      while (v80 != v82);
      v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v857 objects:v986 count:16];
    }

    while (v80);
  }

  v856 = 0u;
  v855 = 0u;
  v854 = 0u;
  v853 = 0u;
  v84 = self->_kCellularLteCdrxConfigs;
  v85 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v853 objects:v985 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v854;
    do
    {
      v88 = 0;
      do
      {
        if (*v854 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = [*(*(&v853 + 1) + 8 * v88) copyWithZone:a3];
        [v5 addKCellularLteCdrxConfig:v89];

        ++v88;
      }

      while (v86 != v88);
      v86 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v853 objects:v985 count:16];
    }

    while (v86);
  }

  v852 = 0u;
  v851 = 0u;
  v850 = 0u;
  v849 = 0u;
  v90 = self->_kCellularLteRadioLinkFailures;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v849 objects:v984 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v850;
    do
    {
      v94 = 0;
      do
      {
        if (*v850 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = [*(*(&v849 + 1) + 8 * v94) copyWithZone:a3];
        [v5 addKCellularLteRadioLinkFailure:v95];

        ++v94;
      }

      while (v92 != v94);
      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v849 objects:v984 count:16];
    }

    while (v92);
  }

  v848 = 0u;
  v847 = 0u;
  v846 = 0u;
  v845 = 0u;
  v96 = self->_kCellularLtePdcchStateStats;
  v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v845 objects:v983 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v846;
    do
    {
      v100 = 0;
      do
      {
        if (*v846 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = [*(*(&v845 + 1) + 8 * v100) copyWithZone:a3];
        [v5 addKCellularLtePdcchStateStats:v101];

        ++v100;
      }

      while (v98 != v100);
      v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v845 objects:v983 count:16];
    }

    while (v98);
  }

  v844 = 0u;
  v843 = 0u;
  v842 = 0u;
  v841 = 0u;
  v102 = self->_kCellularLqmStateChanges;
  v103 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v841 objects:v982 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v842;
    do
    {
      v106 = 0;
      do
      {
        if (*v842 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v107 = [*(*(&v841 + 1) + 8 * v106) copyWithZone:a3];
        [v5 addKCellularLqmStateChange:v107];

        ++v106;
      }

      while (v104 != v106);
      v104 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v841 objects:v982 count:16];
    }

    while (v104);
  }

  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v837 = 0u;
  v108 = self->_kCellularServiceLosts;
  v109 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v837 objects:v981 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v838;
    do
    {
      v112 = 0;
      do
      {
        if (*v838 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = [*(*(&v837 + 1) + 8 * v112) copyWithZone:a3];
        [v5 addKCellularServiceLost:v113];

        ++v112;
      }

      while (v110 != v112);
      v110 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v837 objects:v981 count:16];
    }

    while (v110);
  }

  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v833 = 0u;
  v114 = self->_kCellularGsmServingCellRssiHists;
  v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v833 objects:v980 count:16];
  if (v115)
  {
    v116 = v115;
    v117 = *v834;
    do
    {
      v118 = 0;
      do
      {
        if (*v834 != v117)
        {
          objc_enumerationMutation(v114);
        }

        v119 = [*(*(&v833 + 1) + 8 * v118) copyWithZone:a3];
        [v5 addKCellularGsmServingCellRssiHist:v119];

        ++v118;
      }

      while (v116 != v118);
      v116 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v833 objects:v980 count:16];
    }

    while (v116);
  }

  v832 = 0u;
  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v120 = self->_kCellularGsmServingCellSnrHists;
  v121 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v829 objects:v979 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v830;
    do
    {
      v124 = 0;
      do
      {
        if (*v830 != v123)
        {
          objc_enumerationMutation(v120);
        }

        v125 = [*(*(&v829 + 1) + 8 * v124) copyWithZone:a3];
        [v5 addKCellularGsmServingCellSnrHist:v125];

        ++v124;
      }

      while (v122 != v124);
      v122 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v829 objects:v979 count:16];
    }

    while (v122);
  }

  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v126 = self->_kCellularGsmTxPowerHists;
  v127 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v825 objects:v978 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v826;
    do
    {
      v130 = 0;
      do
      {
        if (*v826 != v129)
        {
          objc_enumerationMutation(v126);
        }

        v131 = [*(*(&v825 + 1) + 8 * v130) copyWithZone:a3];
        [v5 addKCellularGsmTxPowerHist:v131];

        ++v130;
      }

      while (v128 != v130);
      v128 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v825 objects:v978 count:16];
    }

    while (v128);
  }

  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v132 = self->_kCellularGsmConnectedModeHists;
  v133 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v821 objects:v977 count:16];
  if (v133)
  {
    v134 = v133;
    v135 = *v822;
    do
    {
      v136 = 0;
      do
      {
        if (*v822 != v135)
        {
          objc_enumerationMutation(v132);
        }

        v137 = [*(*(&v821 + 1) + 8 * v136) copyWithZone:a3];
        [v5 addKCellularGsmConnectedModeHist:v137];

        ++v136;
      }

      while (v134 != v136);
      v134 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v821 objects:v977 count:16];
    }

    while (v134);
  }

  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v138 = self->_kCellularGsmL1States;
  v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v817 objects:v976 count:16];
  if (v139)
  {
    v140 = v139;
    v141 = *v818;
    do
    {
      v142 = 0;
      do
      {
        if (*v818 != v141)
        {
          objc_enumerationMutation(v138);
        }

        v143 = [*(*(&v817 + 1) + 8 * v142) copyWithZone:a3];
        [v5 addKCellularGsmL1State:v143];

        ++v142;
      }

      while (v140 != v142);
      v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v817 objects:v976 count:16];
    }

    while (v140);
  }

  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v144 = self->_kCellularWcdmaCpcStats;
  v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v813 objects:v975 count:16];
  if (v145)
  {
    v146 = v145;
    v147 = *v814;
    do
    {
      v148 = 0;
      do
      {
        if (*v814 != v147)
        {
          objc_enumerationMutation(v144);
        }

        v149 = [*(*(&v813 + 1) + 8 * v148) copyWithZone:a3];
        [v5 addKCellularWcdmaCpcStat:v149];

        ++v148;
      }

      while (v146 != v148);
      v146 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v813 objects:v975 count:16];
    }

    while (v146);
  }

  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  v150 = self->_kCellularWcdmaRxDiversityHists;
  v151 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v809 objects:v974 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v810;
    do
    {
      v154 = 0;
      do
      {
        if (*v810 != v153)
        {
          objc_enumerationMutation(v150);
        }

        v155 = [*(*(&v809 + 1) + 8 * v154) copyWithZone:a3];
        [v5 addKCellularWcdmaRxDiversityHist:v155];

        ++v154;
      }

      while (v152 != v154);
      v152 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v809 objects:v974 count:16];
    }

    while (v152);
  }

  v808 = 0u;
  v807 = 0u;
  v806 = 0u;
  v805 = 0u;
  v156 = self->_kCellularWcdmaServingCellRx0RssiHists;
  v157 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v805 objects:v973 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v806;
    do
    {
      v160 = 0;
      do
      {
        if (*v806 != v159)
        {
          objc_enumerationMutation(v156);
        }

        v161 = [*(*(&v805 + 1) + 8 * v160) copyWithZone:a3];
        [v5 addKCellularWcdmaServingCellRx0RssiHist:v161];

        ++v160;
      }

      while (v158 != v160);
      v158 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v805 objects:v973 count:16];
    }

    while (v158);
  }

  v804 = 0u;
  v803 = 0u;
  v802 = 0u;
  v801 = 0u;
  v162 = self->_kCellularWcdmaServingCellRx1RssiHists;
  v163 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v801 objects:v972 count:16];
  if (v163)
  {
    v164 = v163;
    v165 = *v802;
    do
    {
      v166 = 0;
      do
      {
        if (*v802 != v165)
        {
          objc_enumerationMutation(v162);
        }

        v167 = [*(*(&v801 + 1) + 8 * v166) copyWithZone:a3];
        [v5 addKCellularWcdmaServingCellRx1RssiHist:v167];

        ++v166;
      }

      while (v164 != v166);
      v164 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v801 objects:v972 count:16];
    }

    while (v164);
  }

  v800 = 0u;
  v799 = 0u;
  v798 = 0u;
  v797 = 0u;
  v168 = self->_kCellularWcdmaServingCellRx0EcNoHists;
  v169 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v797 objects:v971 count:16];
  if (v169)
  {
    v170 = v169;
    v171 = *v798;
    do
    {
      v172 = 0;
      do
      {
        if (*v798 != v171)
        {
          objc_enumerationMutation(v168);
        }

        v173 = [*(*(&v797 + 1) + 8 * v172) copyWithZone:a3];
        [v5 addKCellularWcdmaServingCellRx0EcNoHist:v173];

        ++v172;
      }

      while (v170 != v172);
      v170 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v797 objects:v971 count:16];
    }

    while (v170);
  }

  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v174 = self->_kCellularWcdmaServingCellRx1EcNoHists;
  v175 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v793 objects:v970 count:16];
  if (v175)
  {
    v176 = v175;
    v177 = *v794;
    do
    {
      v178 = 0;
      do
      {
        if (*v794 != v177)
        {
          objc_enumerationMutation(v174);
        }

        v179 = [*(*(&v793 + 1) + 8 * v178) copyWithZone:a3];
        [v5 addKCellularWcdmaServingCellRx1EcNoHist:v179];

        ++v178;
      }

      while (v176 != v178);
      v176 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v793 objects:v970 count:16];
    }

    while (v176);
  }

  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v789 = 0u;
  v180 = self->_kCellularWcdmaTxPowerHists;
  v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v789 objects:v969 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v790;
    do
    {
      v184 = 0;
      do
      {
        if (*v790 != v183)
        {
          objc_enumerationMutation(v180);
        }

        v185 = [*(*(&v789 + 1) + 8 * v184) copyWithZone:a3];
        [v5 addKCellularWcdmaTxPowerHist:v185];

        ++v184;
      }

      while (v182 != v184);
      v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v789 objects:v969 count:16];
    }

    while (v182);
  }

  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v785 = 0u;
  v186 = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  v187 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v785 objects:v968 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v786;
    do
    {
      v190 = 0;
      do
      {
        if (*v786 != v189)
        {
          objc_enumerationMutation(v186);
        }

        v191 = [*(*(&v785 + 1) + 8 * v190) copyWithZone:a3];
        [v5 addKCellularWcdmaReceiverStatusOnC0Hist:v191];

        ++v190;
      }

      while (v188 != v190);
      v188 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v785 objects:v968 count:16];
    }

    while (v188);
  }

  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v781 = 0u;
  v192 = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  v193 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v781 objects:v967 count:16];
  if (v193)
  {
    v194 = v193;
    v195 = *v782;
    do
    {
      v196 = 0;
      do
      {
        if (*v782 != v195)
        {
          objc_enumerationMutation(v192);
        }

        v197 = [*(*(&v781 + 1) + 8 * v196) copyWithZone:a3];
        [v5 addKCellularWcdmaReceiverStatusOnC1Hist:v197];

        ++v196;
      }

      while (v194 != v196);
      v194 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v781 objects:v967 count:16];
    }

    while (v194);
  }

  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v777 = 0u;
  v198 = self->_kCellularWcdmaCarrierStatusHists;
  v199 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v777 objects:v966 count:16];
  if (v199)
  {
    v200 = v199;
    v201 = *v778;
    do
    {
      v202 = 0;
      do
      {
        if (*v778 != v201)
        {
          objc_enumerationMutation(v198);
        }

        v203 = [*(*(&v777 + 1) + 8 * v202) copyWithZone:a3];
        [v5 addKCellularWcdmaCarrierStatusHist:v203];

        ++v202;
      }

      while (v200 != v202);
      v200 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v777 objects:v966 count:16];
    }

    while (v200);
  }

  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v773 = 0u;
  v204 = self->_kCellularWcdmaRabModeHists;
  v205 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v773 objects:v965 count:16];
  if (v205)
  {
    v206 = v205;
    v207 = *v774;
    do
    {
      v208 = 0;
      do
      {
        if (*v774 != v207)
        {
          objc_enumerationMutation(v204);
        }

        v209 = [*(*(&v773 + 1) + 8 * v208) copyWithZone:a3];
        [v5 addKCellularWcdmaRabModeHist:v209];

        ++v208;
      }

      while (v206 != v208);
      v206 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v773 objects:v965 count:16];
    }

    while (v206);
  }

  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v769 = 0u;
  v210 = self->_kCellularWcdmaRabTypeHists;
  v211 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v769 objects:v964 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v770;
    do
    {
      v214 = 0;
      do
      {
        if (*v770 != v213)
        {
          objc_enumerationMutation(v210);
        }

        v215 = [*(*(&v769 + 1) + 8 * v214) copyWithZone:a3];
        [v5 addKCellularWcdmaRabTypeHist:v215];

        ++v214;
      }

      while (v212 != v214);
      v212 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v769 objects:v964 count:16];
    }

    while (v212);
  }

  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v765 = 0u;
  v216 = self->_kCellularWcdmaRrcConnectionStates;
  v217 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v765 objects:v963 count:16];
  if (v217)
  {
    v218 = v217;
    v219 = *v766;
    do
    {
      v220 = 0;
      do
      {
        if (*v766 != v219)
        {
          objc_enumerationMutation(v216);
        }

        v221 = [*(*(&v765 + 1) + 8 * v220) copyWithZone:a3];
        [v5 addKCellularWcdmaRrcConnectionState:v221];

        ++v220;
      }

      while (v218 != v220);
      v218 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v765 objects:v963 count:16];
    }

    while (v218);
  }

  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v222 = self->_kCellularWcdmaRrcConfigurations;
  v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v761 objects:v962 count:16];
  if (v223)
  {
    v224 = v223;
    v225 = *v762;
    do
    {
      v226 = 0;
      do
      {
        if (*v762 != v225)
        {
          objc_enumerationMutation(v222);
        }

        v227 = [*(*(&v761 + 1) + 8 * v226) copyWithZone:a3];
        [v5 addKCellularWcdmaRrcConfiguration:v227];

        ++v226;
      }

      while (v224 != v226);
      v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v761 objects:v962 count:16];
    }

    while (v224);
  }

  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v757 = 0u;
  v228 = self->_kCellularWcdmaRabStatus;
  v229 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v757 objects:v961 count:16];
  if (v229)
  {
    v230 = v229;
    v231 = *v758;
    do
    {
      v232 = 0;
      do
      {
        if (*v758 != v231)
        {
          objc_enumerationMutation(v228);
        }

        v233 = [*(*(&v757 + 1) + 8 * v232) copyWithZone:a3];
        [v5 addKCellularWcdmaRabStatus:v233];

        ++v232;
      }

      while (v230 != v232);
      v230 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v757 objects:v961 count:16];
    }

    while (v230);
  }

  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v753 = 0u;
  v234 = self->_kCellularWcdmaL1States;
  v235 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v753 objects:v960 count:16];
  if (v235)
  {
    v236 = v235;
    v237 = *v754;
    do
    {
      v238 = 0;
      do
      {
        if (*v754 != v237)
        {
          objc_enumerationMutation(v234);
        }

        v239 = [*(*(&v753 + 1) + 8 * v238) copyWithZone:a3];
        [v5 addKCellularWcdmaL1State:v239];

        ++v238;
      }

      while (v236 != v238);
      v236 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v753 objects:v960 count:16];
    }

    while (v236);
  }

  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v749 = 0u;
  v240 = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v749 objects:v959 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v750;
    do
    {
      v244 = 0;
      do
      {
        if (*v750 != v243)
        {
          objc_enumerationMutation(v240);
        }

        v245 = [*(*(&v749 + 1) + 8 * v244) copyWithZone:a3];
        [v5 addKCellularWcdmaDataInactivityBeforeIdle:v245];

        ++v244;
      }

      while (v242 != v244);
      v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v749 objects:v959 count:16];
    }

    while (v242);
  }

  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v745 = 0u;
  v246 = self->_kCellularWcdmaIdleToConnectedUserDatas;
  v247 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v745 objects:v958 count:16];
  if (v247)
  {
    v248 = v247;
    v249 = *v746;
    do
    {
      v250 = 0;
      do
      {
        if (*v746 != v249)
        {
          objc_enumerationMutation(v246);
        }

        v251 = [*(*(&v745 + 1) + 8 * v250) copyWithZone:a3];
        [v5 addKCellularWcdmaIdleToConnectedUserData:v251];

        ++v250;
      }

      while (v248 != v250);
      v248 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v745 objects:v958 count:16];
    }

    while (v248);
  }

  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v741 = 0u;
  v252 = self->_kCellularWcdmaVadHists;
  v253 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v741 objects:v957 count:16];
  if (v253)
  {
    v254 = v253;
    v255 = *v742;
    do
    {
      v256 = 0;
      do
      {
        if (*v742 != v255)
        {
          objc_enumerationMutation(v252);
        }

        v257 = [*(*(&v741 + 1) + 8 * v256) copyWithZone:a3];
        [v5 addKCellularWcdmaVadHist:v257];

        ++v256;
      }

      while (v254 != v256);
      v254 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v741 objects:v957 count:16];
    }

    while (v254);
  }

  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v258 = self->_kCellularTdsRxDiversityHists;
  v259 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v737 objects:v956 count:16];
  if (v259)
  {
    v260 = v259;
    v261 = *v738;
    do
    {
      v262 = 0;
      do
      {
        if (*v738 != v261)
        {
          objc_enumerationMutation(v258);
        }

        v263 = [*(*(&v737 + 1) + 8 * v262) copyWithZone:a3];
        [v5 addKCellularTdsRxDiversityHist:v263];

        ++v262;
      }

      while (v260 != v262);
      v260 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v737 objects:v956 count:16];
    }

    while (v260);
  }

  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v264 = self->_kCellularTdsServingCellRx0RssiHists;
  v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v733 objects:v955 count:16];
  if (v265)
  {
    v266 = v265;
    v267 = *v734;
    do
    {
      v268 = 0;
      do
      {
        if (*v734 != v267)
        {
          objc_enumerationMutation(v264);
        }

        v269 = [*(*(&v733 + 1) + 8 * v268) copyWithZone:a3];
        [v5 addKCellularTdsServingCellRx0RssiHist:v269];

        ++v268;
      }

      while (v266 != v268);
      v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v733 objects:v955 count:16];
    }

    while (v266);
  }

  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v270 = self->_kCellularTdsServingCellRx1RssiHists;
  v271 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v729 objects:v954 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v730;
    do
    {
      v274 = 0;
      do
      {
        if (*v730 != v273)
        {
          objc_enumerationMutation(v270);
        }

        v275 = [*(*(&v729 + 1) + 8 * v274) copyWithZone:a3];
        [v5 addKCellularTdsServingCellRx1RssiHist:v275];

        ++v274;
      }

      while (v272 != v274);
      v272 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v729 objects:v954 count:16];
    }

    while (v272);
  }

  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v276 = self->_kCellularTdsServingCellRx0RscpHists;
  v277 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v725 objects:v953 count:16];
  if (v277)
  {
    v278 = v277;
    v279 = *v726;
    do
    {
      v280 = 0;
      do
      {
        if (*v726 != v279)
        {
          objc_enumerationMutation(v276);
        }

        v281 = [*(*(&v725 + 1) + 8 * v280) copyWithZone:a3];
        [v5 addKCellularTdsServingCellRx0RscpHist:v281];

        ++v280;
      }

      while (v278 != v280);
      v278 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v725 objects:v953 count:16];
    }

    while (v278);
  }

  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v282 = self->_kCellularTdsServingCellRx1RscpHists;
  v283 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v721 objects:v952 count:16];
  if (v283)
  {
    v284 = v283;
    v285 = *v722;
    do
    {
      v286 = 0;
      do
      {
        if (*v722 != v285)
        {
          objc_enumerationMutation(v282);
        }

        v287 = [*(*(&v721 + 1) + 8 * v286) copyWithZone:a3];
        [v5 addKCellularTdsServingCellRx1RscpHist:v287];

        ++v286;
      }

      while (v284 != v286);
      v284 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v721 objects:v952 count:16];
    }

    while (v284);
  }

  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v717 = 0u;
  v288 = self->_kCellularTdsTxPowerHists;
  v289 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v717 objects:v951 count:16];
  if (v289)
  {
    v290 = v289;
    v291 = *v718;
    do
    {
      v292 = 0;
      do
      {
        if (*v718 != v291)
        {
          objc_enumerationMutation(v288);
        }

        v293 = [*(*(&v717 + 1) + 8 * v292) copyWithZone:a3];
        [v5 addKCellularTdsTxPowerHist:v293];

        ++v292;
      }

      while (v290 != v292);
      v290 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v717 objects:v951 count:16];
    }

    while (v290);
  }

  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v713 = 0u;
  v294 = self->_kCellularTdsRabModeHists;
  v295 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v713 objects:v950 count:16];
  if (v295)
  {
    v296 = v295;
    v297 = *v714;
    do
    {
      v298 = 0;
      do
      {
        if (*v714 != v297)
        {
          objc_enumerationMutation(v294);
        }

        v299 = [*(*(&v713 + 1) + 8 * v298) copyWithZone:a3];
        [v5 addKCellularTdsRabModeHist:v299];

        ++v298;
      }

      while (v296 != v298);
      v296 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v713 objects:v950 count:16];
    }

    while (v296);
  }

  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v709 = 0u;
  v300 = self->_kCellularTdsRabTypeHists;
  v301 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v709 objects:v949 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v710;
    do
    {
      v304 = 0;
      do
      {
        if (*v710 != v303)
        {
          objc_enumerationMutation(v300);
        }

        v305 = [*(*(&v709 + 1) + 8 * v304) copyWithZone:a3];
        [v5 addKCellularTdsRabTypeHist:v305];

        ++v304;
      }

      while (v302 != v304);
      v302 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v709 objects:v949 count:16];
    }

    while (v302);
  }

  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v306 = self->_kCellularTdsL1States;
  v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v705 objects:v948 count:16];
  if (v307)
  {
    v308 = v307;
    v309 = *v706;
    do
    {
      v310 = 0;
      do
      {
        if (*v706 != v309)
        {
          objc_enumerationMutation(v306);
        }

        v311 = [*(*(&v705 + 1) + 8 * v310) copyWithZone:a3];
        [v5 addKCellularTdsL1State:v311];

        ++v310;
      }

      while (v308 != v310);
      v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v705 objects:v948 count:16];
    }

    while (v308);
  }

  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v312 = self->_kCellularLteFwDuplexModes;
  v313 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v701 objects:v947 count:16];
  if (v313)
  {
    v314 = v313;
    v315 = *v702;
    do
    {
      v316 = 0;
      do
      {
        if (*v702 != v315)
        {
          objc_enumerationMutation(v312);
        }

        v317 = [*(*(&v701 + 1) + 8 * v316) copyWithZone:a3];
        [v5 addKCellularLteFwDuplexMode:v317];

        ++v316;
      }

      while (v314 != v316);
      v314 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v701 objects:v947 count:16];
    }

    while (v314);
  }

  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v318 = self->_kCellularLteServingCellRsrpHists;
  v319 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v697 objects:v946 count:16];
  if (v319)
  {
    v320 = v319;
    v321 = *v698;
    do
    {
      v322 = 0;
      do
      {
        if (*v698 != v321)
        {
          objc_enumerationMutation(v318);
        }

        v323 = [*(*(&v697 + 1) + 8 * v322) copyWithZone:a3];
        [v5 addKCellularLteServingCellRsrpHist:v323];

        ++v322;
      }

      while (v320 != v322);
      v320 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v697 objects:v946 count:16];
    }

    while (v320);
  }

  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v324 = self->_kCellularLteServingCellSinrHists;
  v325 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v693 objects:v945 count:16];
  if (v325)
  {
    v326 = v325;
    v327 = *v694;
    do
    {
      v328 = 0;
      do
      {
        if (*v694 != v327)
        {
          objc_enumerationMutation(v324);
        }

        v329 = [*(*(&v693 + 1) + 8 * v328) copyWithZone:a3];
        [v5 addKCellularLteServingCellSinrHist:v329];

        ++v328;
      }

      while (v326 != v328);
      v326 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v693 objects:v945 count:16];
    }

    while (v326);
  }

  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v330 = self->_kCellularLteSleepStateHists;
  v331 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v689 objects:v944 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v690;
    do
    {
      v334 = 0;
      do
      {
        if (*v690 != v333)
        {
          objc_enumerationMutation(v330);
        }

        v335 = [*(*(&v689 + 1) + 8 * v334) copyWithZone:a3];
        [v5 addKCellularLteSleepStateHist:v335];

        ++v334;
      }

      while (v332 != v334);
      v332 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v689 objects:v944 count:16];
    }

    while (v332);
  }

  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v336 = self->_kCellularLteTxPowerHists;
  v337 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v685 objects:v943 count:16];
  if (v337)
  {
    v338 = v337;
    v339 = *v686;
    do
    {
      v340 = 0;
      do
      {
        if (*v686 != v339)
        {
          objc_enumerationMutation(v336);
        }

        v341 = [*(*(&v685 + 1) + 8 * v340) copyWithZone:a3];
        [v5 addKCellularLteTxPowerHist:v341];

        ++v340;
      }

      while (v338 != v340);
      v338 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v685 objects:v943 count:16];
    }

    while (v338);
  }

  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v342 = self->_kCellularLteDlSccStateHists;
  v343 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v681 objects:v942 count:16];
  if (v343)
  {
    v344 = v343;
    v345 = *v682;
    do
    {
      v346 = 0;
      do
      {
        if (*v682 != v345)
        {
          objc_enumerationMutation(v342);
        }

        v347 = [*(*(&v681 + 1) + 8 * v346) copyWithZone:a3];
        [v5 addKCellularLteDlSccStateHist:v347];

        ++v346;
      }

      while (v344 != v346);
      v344 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v681 objects:v942 count:16];
    }

    while (v344);
  }

  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v348 = self->_kCellularLteUlSccStateHists;
  v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v677 objects:v941 count:16];
  if (v349)
  {
    v350 = v349;
    v351 = *v678;
    do
    {
      v352 = 0;
      do
      {
        if (*v678 != v351)
        {
          objc_enumerationMutation(v348);
        }

        v353 = [*(*(&v677 + 1) + 8 * v352) copyWithZone:a3];
        [v5 addKCellularLteUlSccStateHist:v353];

        ++v352;
      }

      while (v350 != v352);
      v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v677 objects:v941 count:16];
    }

    while (v350);
  }

  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v354 = self->_kCellularLteAdvancedRxStateHists;
  v355 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v673 objects:v940 count:16];
  if (v355)
  {
    v356 = v355;
    v357 = *v674;
    do
    {
      v358 = 0;
      do
      {
        if (*v674 != v357)
        {
          objc_enumerationMutation(v354);
        }

        v359 = [*(*(&v673 + 1) + 8 * v358) copyWithZone:a3];
        [v5 addKCellularLteAdvancedRxStateHist:v359];

        ++v358;
      }

      while (v356 != v358);
      v356 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v673 objects:v940 count:16];
    }

    while (v356);
  }

  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v360 = self->_kCellularLteComponentCarrierInfos;
  v361 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v669 objects:v939 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v670;
    do
    {
      v364 = 0;
      do
      {
        if (*v670 != v363)
        {
          objc_enumerationMutation(v360);
        }

        v365 = [*(*(&v669 + 1) + 8 * v364) copyWithZone:a3];
        [v5 addKCellularLteComponentCarrierInfo:v365];

        ++v364;
      }

      while (v362 != v364);
      v362 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v669 objects:v939 count:16];
    }

    while (v362);
  }

  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v366 = self->_kCellularLteRxTxStateHists;
  v367 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v665 objects:v938 count:16];
  if (v367)
  {
    v368 = v367;
    v369 = *v666;
    do
    {
      v370 = 0;
      do
      {
        if (*v666 != v369)
        {
          objc_enumerationMutation(v366);
        }

        v371 = [*(*(&v665 + 1) + 8 * v370) copyWithZone:a3];
        [v5 addKCellularLteRxTxStateHist:v371];

        ++v370;
      }

      while (v368 != v370);
      v368 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v665 objects:v938 count:16];
    }

    while (v368);
  }

  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v372 = self->_kCellularLteTotalDlTbsHists;
  v373 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v661 objects:v937 count:16];
  if (v373)
  {
    v374 = v373;
    v375 = *v662;
    do
    {
      v376 = 0;
      do
      {
        if (*v662 != v375)
        {
          objc_enumerationMutation(v372);
        }

        v377 = [*(*(&v661 + 1) + 8 * v376) copyWithZone:a3];
        [v5 addKCellularLteTotalDlTbsHist:v377];

        ++v376;
      }

      while (v374 != v376);
      v374 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v661 objects:v937 count:16];
    }

    while (v374);
  }

  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v378 = self->_kCellularLteDlSccStateHistV3s;
  v379 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v657 objects:v936 count:16];
  if (v379)
  {
    v380 = v379;
    v381 = *v658;
    do
    {
      v382 = 0;
      do
      {
        if (*v658 != v381)
        {
          objc_enumerationMutation(v378);
        }

        v383 = [*(*(&v657 + 1) + 8 * v382) copyWithZone:a3];
        [v5 addKCellularLteDlSccStateHistV3:v383];

        ++v382;
      }

      while (v380 != v382);
      v380 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v657 objects:v936 count:16];
    }

    while (v380);
  }

  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v384 = self->_kCellularLteRxDiversityHists;
  v385 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v653 objects:v935 count:16];
  if (v385)
  {
    v386 = v385;
    v387 = *v654;
    do
    {
      v388 = 0;
      do
      {
        if (*v654 != v387)
        {
          objc_enumerationMutation(v384);
        }

        v389 = [*(*(&v653 + 1) + 8 * v388) copyWithZone:a3];
        [v5 addKCellularLteRxDiversityHist:v389];

        ++v388;
      }

      while (v386 != v388);
      v386 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v653 objects:v935 count:16];
    }

    while (v386);
  }

  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v390 = self->_kCellularLtePdcchStateHists;
  v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v649 objects:v934 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v650;
    do
    {
      v394 = 0;
      do
      {
        if (*v650 != v393)
        {
          objc_enumerationMutation(v390);
        }

        v395 = [*(*(&v649 + 1) + 8 * v394) copyWithZone:a3];
        [v5 addKCellularLtePdcchStateHist:v395];

        ++v394;
      }

      while (v392 != v394);
      v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v649 objects:v934 count:16];
    }

    while (v392);
  }

  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v396 = self->_kCellularProtocolStackStateHists;
  v397 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v645 objects:v933 count:16];
  if (v397)
  {
    v398 = v397;
    v399 = *v646;
    do
    {
      v400 = 0;
      do
      {
        if (*v646 != v399)
        {
          objc_enumerationMutation(v396);
        }

        v401 = [*(*(&v645 + 1) + 8 * v400) copyWithZone:a3];
        [v5 addKCellularProtocolStackStateHist:v401];

        ++v400;
      }

      while (v398 != v400);
      v398 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v645 objects:v933 count:16];
    }

    while (v398);
  }

  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v402 = self->_kCellularCellPlmnSearchCounts;
  v403 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v641 objects:v932 count:16];
  if (v403)
  {
    v404 = v403;
    v405 = *v642;
    do
    {
      v406 = 0;
      do
      {
        if (*v642 != v405)
        {
          objc_enumerationMutation(v402);
        }

        v407 = [*(*(&v641 + 1) + 8 * v406) copyWithZone:a3];
        [v5 addKCellularCellPlmnSearchCount:v407];

        ++v406;
      }

      while (v404 != v406);
      v404 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v641 objects:v932 count:16];
    }

    while (v404);
  }

  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v408 = self->_kCellularCellPlmnSearchHists;
  v409 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v637 objects:v931 count:16];
  if (v409)
  {
    v410 = v409;
    v411 = *v638;
    do
    {
      v412 = 0;
      do
      {
        if (*v638 != v411)
        {
          objc_enumerationMutation(v408);
        }

        v413 = [*(*(&v637 + 1) + 8 * v412) copyWithZone:a3];
        [v5 addKCellularCellPlmnSearchHist:v413];

        ++v412;
      }

      while (v410 != v412);
      v410 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v637 objects:v931 count:16];
    }

    while (v410);
  }

  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v414 = self->_kCellularProtocolStackPowerStates;
  v415 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v633 objects:v930 count:16];
  if (v415)
  {
    v416 = v415;
    v417 = *v634;
    do
    {
      v418 = 0;
      do
      {
        if (*v634 != v417)
        {
          objc_enumerationMutation(v414);
        }

        v419 = [*(*(&v633 + 1) + 8 * v418) copyWithZone:a3];
        [v5 addKCellularProtocolStackPowerState:v419];

        ++v418;
      }

      while (v416 != v418);
      v416 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v633 objects:v930 count:16];
    }

    while (v416);
  }

  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v420 = self->_kCellularDownlinkIpPacketFilterStatus;
  v421 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v629 objects:v929 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v630;
    do
    {
      v424 = 0;
      do
      {
        if (*v630 != v423)
        {
          objc_enumerationMutation(v420);
        }

        v425 = [*(*(&v629 + 1) + 8 * v424) copyWithZone:a3];
        [v5 addKCellularDownlinkIpPacketFilterStatus:v425];

        ++v424;
      }

      while (v422 != v424);
      v422 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v629 objects:v929 count:16];
    }

    while (v422);
  }

  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v426 = self->_kCellularServingCellRfBandHists;
  v427 = [(NSMutableArray *)v426 countByEnumeratingWithState:&v625 objects:v928 count:16];
  if (v427)
  {
    v428 = v427;
    v429 = *v626;
    do
    {
      v430 = 0;
      do
      {
        if (*v626 != v429)
        {
          objc_enumerationMutation(v426);
        }

        v431 = [*(*(&v625 + 1) + 8 * v430) copyWithZone:a3];
        [v5 addKCellularServingCellRfBandHist:v431];

        ++v430;
      }

      while (v428 != v430);
      v428 = [(NSMutableArray *)v426 countByEnumeratingWithState:&v625 objects:v928 count:16];
    }

    while (v428);
  }

  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v432 = self->_kCellularProtocolStackStateHist2s;
  v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v621 objects:v927 count:16];
  if (v433)
  {
    v434 = v433;
    v435 = *v622;
    do
    {
      v436 = 0;
      do
      {
        if (*v622 != v435)
        {
          objc_enumerationMutation(v432);
        }

        v437 = [*(*(&v621 + 1) + 8 * v436) copyWithZone:a3];
        [v5 addKCellularProtocolStackStateHist2:v437];

        ++v436;
      }

      while (v434 != v436);
      v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v621 objects:v927 count:16];
    }

    while (v434);
  }

  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v438 = self->_kCellularProtocolStackStates;
  v439 = [(NSMutableArray *)v438 countByEnumeratingWithState:&v617 objects:v926 count:16];
  if (v439)
  {
    v440 = v439;
    v441 = *v618;
    do
    {
      v442 = 0;
      do
      {
        if (*v618 != v441)
        {
          objc_enumerationMutation(v438);
        }

        v443 = [*(*(&v617 + 1) + 8 * v442) copyWithZone:a3];
        [v5 addKCellularProtocolStackState:v443];

        ++v442;
      }

      while (v440 != v442);
      v440 = [(NSMutableArray *)v438 countByEnumeratingWithState:&v617 objects:v926 count:16];
    }

    while (v440);
  }

  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v444 = self->_kCellularCdma1XRxDiversityHists;
  v445 = [(NSMutableArray *)v444 countByEnumeratingWithState:&v613 objects:v925 count:16];
  if (v445)
  {
    v446 = v445;
    v447 = *v614;
    do
    {
      v448 = 0;
      do
      {
        if (*v614 != v447)
        {
          objc_enumerationMutation(v444);
        }

        v449 = [*(*(&v613 + 1) + 8 * v448) copyWithZone:a3];
        [v5 addKCellularCdma1XRxDiversityHist:v449];

        ++v448;
      }

      while (v446 != v448);
      v446 = [(NSMutableArray *)v444 countByEnumeratingWithState:&v613 objects:v925 count:16];
    }

    while (v446);
  }

  v611 = 0u;
  v612 = 0u;
  v609 = 0u;
  v610 = 0u;
  v450 = self->_kCellularCdma1XServingCellRx0RssiHists;
  v451 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v609 objects:v924 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v610;
    do
    {
      v454 = 0;
      do
      {
        if (*v610 != v453)
        {
          objc_enumerationMutation(v450);
        }

        v455 = [*(*(&v609 + 1) + 8 * v454) copyWithZone:a3];
        [v5 addKCellularCdma1XServingCellRx0RssiHist:v455];

        ++v454;
      }

      while (v452 != v454);
      v452 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v609 objects:v924 count:16];
    }

    while (v452);
  }

  v607 = 0u;
  v608 = 0u;
  v605 = 0u;
  v606 = 0u;
  v456 = self->_kCellularCdma1XServingCellRx1RssiHists;
  v457 = [(NSMutableArray *)v456 countByEnumeratingWithState:&v605 objects:v923 count:16];
  if (v457)
  {
    v458 = v457;
    v459 = *v606;
    do
    {
      v460 = 0;
      do
      {
        if (*v606 != v459)
        {
          objc_enumerationMutation(v456);
        }

        v461 = [*(*(&v605 + 1) + 8 * v460) copyWithZone:a3];
        [v5 addKCellularCdma1XServingCellRx1RssiHist:v461];

        ++v460;
      }

      while (v458 != v460);
      v458 = [(NSMutableArray *)v456 countByEnumeratingWithState:&v605 objects:v923 count:16];
    }

    while (v458);
  }

  v603 = 0u;
  v604 = 0u;
  v601 = 0u;
  v602 = 0u;
  v462 = self->_kCellularCdma1XServingCellRx0EcIoHists;
  v463 = [(NSMutableArray *)v462 countByEnumeratingWithState:&v601 objects:v922 count:16];
  if (v463)
  {
    v464 = v463;
    v465 = *v602;
    do
    {
      v466 = 0;
      do
      {
        if (*v602 != v465)
        {
          objc_enumerationMutation(v462);
        }

        v467 = [*(*(&v601 + 1) + 8 * v466) copyWithZone:a3];
        [v5 addKCellularCdma1XServingCellRx0EcIoHist:v467];

        ++v466;
      }

      while (v464 != v466);
      v464 = [(NSMutableArray *)v462 countByEnumeratingWithState:&v601 objects:v922 count:16];
    }

    while (v464);
  }

  v599 = 0u;
  v600 = 0u;
  v597 = 0u;
  v598 = 0u;
  v468 = self->_kCellularCdma1XServingCellRx1EcIoHists;
  v469 = [(NSMutableArray *)v468 countByEnumeratingWithState:&v597 objects:v921 count:16];
  if (v469)
  {
    v470 = v469;
    v471 = *v598;
    do
    {
      v472 = 0;
      do
      {
        if (*v598 != v471)
        {
          objc_enumerationMutation(v468);
        }

        v473 = [*(*(&v597 + 1) + 8 * v472) copyWithZone:a3];
        [v5 addKCellularCdma1XServingCellRx1EcIoHist:v473];

        ++v472;
      }

      while (v470 != v472);
      v470 = [(NSMutableArray *)v468 countByEnumeratingWithState:&v597 objects:v921 count:16];
    }

    while (v470);
  }

  v595 = 0u;
  v596 = 0u;
  v593 = 0u;
  v594 = 0u;
  v474 = self->_kCellularCdma1XTxPowerHists;
  v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v593 objects:v920 count:16];
  if (v475)
  {
    v476 = v475;
    v477 = *v594;
    do
    {
      v478 = 0;
      do
      {
        if (*v594 != v477)
        {
          objc_enumerationMutation(v474);
        }

        v479 = [*(*(&v593 + 1) + 8 * v478) copyWithZone:a3];
        [v5 addKCellularCdma1XTxPowerHist:v479];

        ++v478;
      }

      while (v476 != v478);
      v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v593 objects:v920 count:16];
    }

    while (v476);
  }

  v591 = 0u;
  v592 = 0u;
  v589 = 0u;
  v590 = 0u;
  v480 = self->_kCellularCdma1XProtocolStackStateHists;
  v481 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v589 objects:v919 count:16];
  if (v481)
  {
    v482 = v481;
    v483 = *v590;
    do
    {
      v484 = 0;
      do
      {
        if (*v590 != v483)
        {
          objc_enumerationMutation(v480);
        }

        v485 = [*(*(&v589 + 1) + 8 * v484) copyWithZone:a3];
        [v5 addKCellularCdma1XProtocolStackStateHist:v485];

        ++v484;
      }

      while (v482 != v484);
      v482 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v589 objects:v919 count:16];
    }

    while (v482);
  }

  v587 = 0u;
  v588 = 0u;
  v585 = 0u;
  v586 = 0u;
  v486 = self->_kCellularCdma1XConnectionHists;
  v487 = [(NSMutableArray *)v486 countByEnumeratingWithState:&v585 objects:v918 count:16];
  if (v487)
  {
    v488 = v487;
    v489 = *v586;
    do
    {
      v490 = 0;
      do
      {
        if (*v586 != v489)
        {
          objc_enumerationMutation(v486);
        }

        v491 = [*(*(&v585 + 1) + 8 * v490) copyWithZone:a3];
        [v5 addKCellularCdma1XConnectionHist:v491];

        ++v490;
      }

      while (v488 != v490);
      v488 = [(NSMutableArray *)v486 countByEnumeratingWithState:&v585 objects:v918 count:16];
    }

    while (v488);
  }

  v583 = 0u;
  v584 = 0u;
  v581 = 0u;
  v582 = 0u;
  v492 = self->_kCellularCdma1XRrStates;
  v493 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v581 objects:v917 count:16];
  if (v493)
  {
    v494 = v493;
    v495 = *v582;
    do
    {
      v496 = 0;
      do
      {
        if (*v582 != v495)
        {
          objc_enumerationMutation(v492);
        }

        v497 = [*(*(&v581 + 1) + 8 * v496) copyWithZone:a3];
        [v5 addKCellularCdma1XRrState:v497];

        ++v496;
      }

      while (v494 != v496);
      v494 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v581 objects:v917 count:16];
    }

    while (v494);
  }

  v579 = 0u;
  v580 = 0u;
  v577 = 0u;
  v578 = 0u;
  v498 = self->_kCellularCdmaEvdoRxDiversityHists;
  v499 = [(NSMutableArray *)v498 countByEnumeratingWithState:&v577 objects:v916 count:16];
  if (v499)
  {
    v500 = v499;
    v501 = *v578;
    do
    {
      v502 = 0;
      do
      {
        if (*v578 != v501)
        {
          objc_enumerationMutation(v498);
        }

        v503 = [*(*(&v577 + 1) + 8 * v502) copyWithZone:a3];
        [v5 addKCellularCdmaEvdoRxDiversityHist:v503];

        ++v502;
      }

      while (v500 != v502);
      v500 = [(NSMutableArray *)v498 countByEnumeratingWithState:&v577 objects:v916 count:16];
    }

    while (v500);
  }

  v575 = 0u;
  v576 = 0u;
  v573 = 0u;
  v574 = 0u;
  v504 = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
  v505 = [(NSMutableArray *)v504 countByEnumeratingWithState:&v573 objects:v915 count:16];
  if (v505)
  {
    v506 = v505;
    v507 = *v574;
    do
    {
      v508 = 0;
      do
      {
        if (*v574 != v507)
        {
          objc_enumerationMutation(v504);
        }

        v509 = [*(*(&v573 + 1) + 8 * v508) copyWithZone:a3];
        [v5 addKCellularCdmaEvdoServingCellRx0RssiHist:v509];

        ++v508;
      }

      while (v506 != v508);
      v506 = [(NSMutableArray *)v504 countByEnumeratingWithState:&v573 objects:v915 count:16];
    }

    while (v506);
  }

  v571 = 0u;
  v572 = 0u;
  v569 = 0u;
  v570 = 0u;
  v510 = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
  v511 = [(NSMutableArray *)v510 countByEnumeratingWithState:&v569 objects:v914 count:16];
  if (v511)
  {
    v512 = v511;
    v513 = *v570;
    do
    {
      v514 = 0;
      do
      {
        if (*v570 != v513)
        {
          objc_enumerationMutation(v510);
        }

        v515 = [*(*(&v569 + 1) + 8 * v514) copyWithZone:a3];
        [v5 addKCellularCdmaEvdoServingCellRx1RssiHist:v515];

        ++v514;
      }

      while (v512 != v514);
      v512 = [(NSMutableArray *)v510 countByEnumeratingWithState:&v569 objects:v914 count:16];
    }

    while (v512);
  }

  v567 = 0u;
  v568 = 0u;
  v565 = 0u;
  v566 = 0u;
  v516 = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
  v517 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v565 objects:v913 count:16];
  if (v517)
  {
    v518 = v517;
    v519 = *v566;
    do
    {
      v520 = 0;
      do
      {
        if (*v566 != v519)
        {
          objc_enumerationMutation(v516);
        }

        v521 = [*(*(&v565 + 1) + 8 * v520) copyWithZone:a3];
        [v5 addKCellularCdmaEvdoServingCellRx0EcIoHist:v521];

        ++v520;
      }

      while (v518 != v520);
      v518 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v565 objects:v913 count:16];
    }

    while (v518);
  }

  v563 = 0u;
  v564 = 0u;
  v561 = 0u;
  v562 = 0u;
  v522 = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
  v523 = [(NSMutableArray *)v522 countByEnumeratingWithState:&v561 objects:v912 count:16];
  if (v523)
  {
    v524 = v523;
    v525 = *v562;
    do
    {
      v526 = 0;
      do
      {
        if (*v562 != v525)
        {
          objc_enumerationMutation(v522);
        }

        v527 = [*(*(&v561 + 1) + 8 * v526) copyWithZone:a3];
        [v5 addKCellularCdmaEvdoServingCellRx1EcIoHist:v527];

        ++v526;
      }

      while (v524 != v526);
      v524 = [(NSMutableArray *)v522 countByEnumeratingWithState:&v561 objects:v912 count:16];
    }

    while (v524);
  }

  v559 = 0u;
  v560 = 0u;
  v557 = 0u;
  v558 = 0u;
  v528 = self->_kCellularCdmaEvdoTxPowerHists;
  v529 = [(NSMutableArray *)v528 countByEnumeratingWithState:&v557 objects:v911 count:16];
  if (v529)
  {
    v530 = v529;
    v531 = *v558;
    do
    {
      v532 = 0;
      do
      {
        if (*v558 != v531)
        {
          objc_enumerationMutation(v528);
        }

        v533 = [*(*(&v557 + 1) + 8 * v532) copyWithZone:a3];
        [v5 addKCellularCdmaEvdoTxPowerHist:v533];

        ++v532;
      }

      while (v530 != v532);
      v530 = [(NSMutableArray *)v528 countByEnumeratingWithState:&v557 objects:v911 count:16];
    }

    while (v530);
  }

  v555 = 0u;
  v556 = 0u;
  v553 = 0u;
  v554 = 0u;
  v534 = self->_kCellularCdmaEvdoProtocolStackStateHists;
  v535 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v553 objects:v910 count:16];
  if (v535)
  {
    v536 = v535;
    v537 = *v554;
    do
    {
      v538 = 0;
      do
      {
        if (*v554 != v537)
        {
          objc_enumerationMutation(v534);
        }

        v539 = [*(*(&v553 + 1) + 8 * v538) copyWithZone:a3];
        [v5 addKCellularCdmaEvdoProtocolStackStateHist:v539];

        ++v538;
      }

      while (v536 != v538);
      v536 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v553 objects:v910 count:16];
    }

    while (v536);
  }

  v551 = 0u;
  v552 = 0u;
  v549 = 0u;
  v550 = 0u;
  v540 = self->_kCellularCdmaEvdoRrStates;
  v541 = [(NSMutableArray *)v540 countByEnumeratingWithState:&v549 objects:v909 count:16];
  if (v541)
  {
    v542 = v541;
    v543 = *v550;
    do
    {
      v544 = 0;
      do
      {
        if (*v550 != v543)
        {
          objc_enumerationMutation(v540);
        }

        v545 = [*(*(&v549 + 1) + 8 * v544) copyWithZone:{a3, v549}];
        [v5 addKCellularCdmaEvdoRrState:v545];

        ++v544;
      }

      while (v542 != v544);
      v542 = [(NSMutableArray *)v540 countByEnumeratingWithState:&v549 objects:v909 count:16];
    }

    while (v542);
  }

  v546 = v5;
  v547 = *MEMORY[0x277D85DE8];
  return v546;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_182;
  }

  kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts;
  if (kCellularPerClientProfileTriggerCounts | v4[51])
  {
    if (![(NSMutableArray *)kCellularPerClientProfileTriggerCounts isEqual:?])
    {
      goto LABEL_182;
    }
  }

  kCellularProtocolStackCpuStats = self->_kCellularProtocolStackCpuStats;
  if (kCellularProtocolStackCpuStats | v4[55] && ![(NSMutableArray *)kCellularProtocolStackCpuStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularPeripheralStats = self->_kCellularPeripheralStats;
  if (kCellularPeripheralStats | v4[52] && ![(NSMutableArray *)kCellularPeripheralStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularDvfsStats = self->_kCellularDvfsStats;
  if (kCellularDvfsStats | v4[21] && ![(NSMutableArray *)kCellularDvfsStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteWcdmaGsmHwStats = self->_kCellularLteWcdmaGsmHwStats;
  if (kCellularLteWcdmaGsmHwStats | v4[49] && ![(NSMutableArray *)kCellularLteWcdmaGsmHwStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteTdsGsmHwStats = self->_kCellularLteTdsGsmHwStats;
  if (kCellularLteTdsGsmHwStats | v4[45] && ![(NSMutableArray *)kCellularLteTdsGsmHwStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularPmuAverageCurrents = self->_kCellularPmuAverageCurrents;
  if (kCellularPmuAverageCurrents | v4[54] && ![(NSMutableArray *)kCellularPmuAverageCurrents isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularFwCoreStats = self->_kCellularFwCoreStats;
  if (kCellularFwCoreStats | v4[22] && ![(NSMutableArray *)kCellularFwCoreStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteWcdmaTdsHwStats = self->_kCellularLteWcdmaTdsHwStats;
  if (kCellularLteWcdmaTdsHwStats | v4[50] && ![(NSMutableArray *)kCellularLteWcdmaTdsHwStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularPmicHwStats = self->_kCellularPmicHwStats;
  if (kCellularPmicHwStats | v4[53] && ![(NSMutableArray *)kCellularPmicHwStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsRrcStates = self->_kCellularTdsRrcStates;
  if (kCellularTdsRrcStates | v4[65] && ![(NSMutableArray *)kCellularTdsRrcStates isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteRrcStates = self->_kCellularLteRrcStates;
  if (kCellularLteRrcStates | v4[39] && ![(NSMutableArray *)kCellularLteRrcStates isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLtePagingCycles = self->_kCellularLtePagingCycles;
  if (kCellularLtePagingCycles | v4[35] && ![(NSMutableArray *)kCellularLtePagingCycles isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs;
  if (kCellularLteCdrxConfigs | v4[30] && ![(NSMutableArray *)kCellularLteCdrxConfigs isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteRadioLinkFailures = self->_kCellularLteRadioLinkFailures;
  if (kCellularLteRadioLinkFailures | v4[38] && ![(NSMutableArray *)kCellularLteRadioLinkFailures isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLtePdcchStateStats = self->_kCellularLtePdcchStateStats;
  if (kCellularLtePdcchStateStats | v4[37] && ![(NSMutableArray *)kCellularLtePdcchStateStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLqmStateChanges = self->_kCellularLqmStateChanges;
  if (kCellularLqmStateChanges | v4[28] && ![(NSMutableArray *)kCellularLqmStateChanges isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularServiceLosts = self->_kCellularServiceLosts;
  if (kCellularServiceLosts | v4[60] && ![(NSMutableArray *)kCellularServiceLosts isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists;
  if (kCellularGsmServingCellRssiHists | v4[25] && ![(NSMutableArray *)kCellularGsmServingCellRssiHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularGsmServingCellSnrHists = self->_kCellularGsmServingCellSnrHists;
  if (kCellularGsmServingCellSnrHists | v4[26] && ![(NSMutableArray *)kCellularGsmServingCellSnrHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists;
  if (kCellularGsmTxPowerHists | v4[27] && ![(NSMutableArray *)kCellularGsmTxPowerHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularGsmConnectedModeHists = self->_kCellularGsmConnectedModeHists;
  if (kCellularGsmConnectedModeHists | v4[23] && ![(NSMutableArray *)kCellularGsmConnectedModeHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularGsmL1States = self->_kCellularGsmL1States;
  if (kCellularGsmL1States | v4[24] && ![(NSMutableArray *)kCellularGsmL1States isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaCpcStats = self->_kCellularWcdmaCpcStats;
  if (kCellularWcdmaCpcStats | v4[73] && ![(NSMutableArray *)kCellularWcdmaCpcStats isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists;
  if (kCellularWcdmaRxDiversityHists | v4[84] && ![(NSMutableArray *)kCellularWcdmaRxDiversityHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists;
  if (kCellularWcdmaServingCellRx0RssiHists | v4[86] && ![(NSMutableArray *)kCellularWcdmaServingCellRx0RssiHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists;
  if (kCellularWcdmaServingCellRx1RssiHists | v4[88] && ![(NSMutableArray *)kCellularWcdmaServingCellRx1RssiHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaServingCellRx0EcNoHists = self->_kCellularWcdmaServingCellRx0EcNoHists;
  if (kCellularWcdmaServingCellRx0EcNoHists | v4[85] && ![(NSMutableArray *)kCellularWcdmaServingCellRx0EcNoHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaServingCellRx1EcNoHists = self->_kCellularWcdmaServingCellRx1EcNoHists;
  if (kCellularWcdmaServingCellRx1EcNoHists | v4[87] && ![(NSMutableArray *)kCellularWcdmaServingCellRx1EcNoHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists;
  if (kCellularWcdmaTxPowerHists | v4[89] && ![(NSMutableArray *)kCellularWcdmaTxPowerHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaReceiverStatusOnC0Hists = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  if (kCellularWcdmaReceiverStatusOnC0Hists | v4[80] && ![(NSMutableArray *)kCellularWcdmaReceiverStatusOnC0Hists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaReceiverStatusOnC1Hists = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  if (kCellularWcdmaReceiverStatusOnC1Hists | v4[81] && ![(NSMutableArray *)kCellularWcdmaReceiverStatusOnC1Hists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaCarrierStatusHists = self->_kCellularWcdmaCarrierStatusHists;
  if (kCellularWcdmaCarrierStatusHists | v4[72] && ![(NSMutableArray *)kCellularWcdmaCarrierStatusHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists;
  if (kCellularWcdmaRabModeHists | v4[77] && ![(NSMutableArray *)kCellularWcdmaRabModeHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaRabTypeHists = self->_kCellularWcdmaRabTypeHists;
  if (kCellularWcdmaRabTypeHists | v4[79] && ![(NSMutableArray *)kCellularWcdmaRabTypeHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaRrcConnectionStates = self->_kCellularWcdmaRrcConnectionStates;
  if (kCellularWcdmaRrcConnectionStates | v4[83] && ![(NSMutableArray *)kCellularWcdmaRrcConnectionStates isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaRrcConfigurations = self->_kCellularWcdmaRrcConfigurations;
  if (kCellularWcdmaRrcConfigurations | v4[82] && ![(NSMutableArray *)kCellularWcdmaRrcConfigurations isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaRabStatus = self->_kCellularWcdmaRabStatus;
  if (kCellularWcdmaRabStatus | v4[78] && ![(NSMutableArray *)kCellularWcdmaRabStatus isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaL1States = self->_kCellularWcdmaL1States;
  if (kCellularWcdmaL1States | v4[76] && ![(NSMutableArray *)kCellularWcdmaL1States isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles;
  if (kCellularWcdmaDataInactivityBeforeIdles | v4[74] && ![(NSMutableArray *)kCellularWcdmaDataInactivityBeforeIdles isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaIdleToConnectedUserDatas = self->_kCellularWcdmaIdleToConnectedUserDatas;
  if (kCellularWcdmaIdleToConnectedUserDatas | v4[75] && ![(NSMutableArray *)kCellularWcdmaIdleToConnectedUserDatas isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularWcdmaVadHists = self->_kCellularWcdmaVadHists;
  if (kCellularWcdmaVadHists | v4[90] && ![(NSMutableArray *)kCellularWcdmaVadHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsRxDiversityHists = self->_kCellularTdsRxDiversityHists;
  if (kCellularTdsRxDiversityHists | v4[66] && ![(NSMutableArray *)kCellularTdsRxDiversityHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsServingCellRx0RssiHists = self->_kCellularTdsServingCellRx0RssiHists;
  if (kCellularTdsServingCellRx0RssiHists | v4[68] && ![(NSMutableArray *)kCellularTdsServingCellRx0RssiHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsServingCellRx1RssiHists = self->_kCellularTdsServingCellRx1RssiHists;
  if (kCellularTdsServingCellRx1RssiHists | v4[70] && ![(NSMutableArray *)kCellularTdsServingCellRx1RssiHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsServingCellRx0RscpHists = self->_kCellularTdsServingCellRx0RscpHists;
  if (kCellularTdsServingCellRx0RscpHists | v4[67] && ![(NSMutableArray *)kCellularTdsServingCellRx0RscpHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsServingCellRx1RscpHists = self->_kCellularTdsServingCellRx1RscpHists;
  if (kCellularTdsServingCellRx1RscpHists | v4[69] && ![(NSMutableArray *)kCellularTdsServingCellRx1RscpHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsTxPowerHists = self->_kCellularTdsTxPowerHists;
  if (kCellularTdsTxPowerHists | v4[71] && ![(NSMutableArray *)kCellularTdsTxPowerHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsRabModeHists = self->_kCellularTdsRabModeHists;
  if (kCellularTdsRabModeHists | v4[63] && ![(NSMutableArray *)kCellularTdsRabModeHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsRabTypeHists = self->_kCellularTdsRabTypeHists;
  if (kCellularTdsRabTypeHists | v4[64] && ![(NSMutableArray *)kCellularTdsRabTypeHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularTdsL1States = self->_kCellularTdsL1States;
  if (kCellularTdsL1States | v4[62] && ![(NSMutableArray *)kCellularTdsL1States isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteFwDuplexModes = self->_kCellularLteFwDuplexModes;
  if (kCellularLteFwDuplexModes | v4[34] && ![(NSMutableArray *)kCellularLteFwDuplexModes isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists;
  if (kCellularLteServingCellRsrpHists | v4[42] && ![(NSMutableArray *)kCellularLteServingCellRsrpHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists;
  if (kCellularLteServingCellSinrHists | v4[43] && ![(NSMutableArray *)kCellularLteServingCellSinrHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteSleepStateHists = self->_kCellularLteSleepStateHists;
  if (kCellularLteSleepStateHists | v4[44] && ![(NSMutableArray *)kCellularLteSleepStateHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteTxPowerHists = self->_kCellularLteTxPowerHists;
  if (kCellularLteTxPowerHists | v4[47] && ![(NSMutableArray *)kCellularLteTxPowerHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteDlSccStateHists = self->_kCellularLteDlSccStateHists;
  if (kCellularLteDlSccStateHists | v4[33] && ![(NSMutableArray *)kCellularLteDlSccStateHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteUlSccStateHists = self->_kCellularLteUlSccStateHists;
  if (kCellularLteUlSccStateHists | v4[48] && ![(NSMutableArray *)kCellularLteUlSccStateHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteAdvancedRxStateHists = self->_kCellularLteAdvancedRxStateHists;
  if (kCellularLteAdvancedRxStateHists | v4[29] && ![(NSMutableArray *)kCellularLteAdvancedRxStateHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteComponentCarrierInfos = self->_kCellularLteComponentCarrierInfos;
  if (kCellularLteComponentCarrierInfos | v4[31] && ![(NSMutableArray *)kCellularLteComponentCarrierInfos isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteRxTxStateHists = self->_kCellularLteRxTxStateHists;
  if (kCellularLteRxTxStateHists | v4[41] && ![(NSMutableArray *)kCellularLteRxTxStateHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteTotalDlTbsHists = self->_kCellularLteTotalDlTbsHists;
  if (kCellularLteTotalDlTbsHists | v4[46] && ![(NSMutableArray *)kCellularLteTotalDlTbsHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteDlSccStateHistV3s = self->_kCellularLteDlSccStateHistV3s;
  if (kCellularLteDlSccStateHistV3s | v4[32] && ![(NSMutableArray *)kCellularLteDlSccStateHistV3s isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLteRxDiversityHists = self->_kCellularLteRxDiversityHists;
  if (kCellularLteRxDiversityHists | v4[40] && ![(NSMutableArray *)kCellularLteRxDiversityHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularLtePdcchStateHists = self->_kCellularLtePdcchStateHists;
  if (kCellularLtePdcchStateHists | v4[36] && ![(NSMutableArray *)kCellularLtePdcchStateHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularProtocolStackStateHists = self->_kCellularProtocolStackStateHists;
  if (kCellularProtocolStackStateHists | v4[58] && ![(NSMutableArray *)kCellularProtocolStackStateHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCellPlmnSearchCounts = self->_kCellularCellPlmnSearchCounts;
  if (kCellularCellPlmnSearchCounts | v4[18] && ![(NSMutableArray *)kCellularCellPlmnSearchCounts isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCellPlmnSearchHists = self->_kCellularCellPlmnSearchHists;
  if (kCellularCellPlmnSearchHists | v4[19] && ![(NSMutableArray *)kCellularCellPlmnSearchHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularProtocolStackPowerStates = self->_kCellularProtocolStackPowerStates;
  if (kCellularProtocolStackPowerStates | v4[56] && ![(NSMutableArray *)kCellularProtocolStackPowerStates isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularDownlinkIpPacketFilterStatus = self->_kCellularDownlinkIpPacketFilterStatus;
  if (kCellularDownlinkIpPacketFilterStatus | v4[20] && ![(NSMutableArray *)kCellularDownlinkIpPacketFilterStatus isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularServingCellRfBandHists = self->_kCellularServingCellRfBandHists;
  if (kCellularServingCellRfBandHists | v4[61] && ![(NSMutableArray *)kCellularServingCellRfBandHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularProtocolStackStateHist2s = self->_kCellularProtocolStackStateHist2s;
  if (kCellularProtocolStackStateHist2s | v4[57] && ![(NSMutableArray *)kCellularProtocolStackStateHist2s isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularProtocolStackStates = self->_kCellularProtocolStackStates;
  if (kCellularProtocolStackStates | v4[59] && ![(NSMutableArray *)kCellularProtocolStackStates isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XRxDiversityHists = self->_kCellularCdma1XRxDiversityHists;
  if (kCellularCdma1XRxDiversityHists | v4[4] && ![(NSMutableArray *)kCellularCdma1XRxDiversityHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XServingCellRx0RssiHists = self->_kCellularCdma1XServingCellRx0RssiHists;
  if (kCellularCdma1XServingCellRx0RssiHists | v4[6] && ![(NSMutableArray *)kCellularCdma1XServingCellRx0RssiHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XServingCellRx1RssiHists = self->_kCellularCdma1XServingCellRx1RssiHists;
  if (kCellularCdma1XServingCellRx1RssiHists | v4[8] && ![(NSMutableArray *)kCellularCdma1XServingCellRx1RssiHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XServingCellRx0EcIoHists = self->_kCellularCdma1XServingCellRx0EcIoHists;
  if (kCellularCdma1XServingCellRx0EcIoHists | v4[5] && ![(NSMutableArray *)kCellularCdma1XServingCellRx0EcIoHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XServingCellRx1EcIoHists = self->_kCellularCdma1XServingCellRx1EcIoHists;
  if (kCellularCdma1XServingCellRx1EcIoHists | v4[7] && ![(NSMutableArray *)kCellularCdma1XServingCellRx1EcIoHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XTxPowerHists = self->_kCellularCdma1XTxPowerHists;
  if (kCellularCdma1XTxPowerHists | v4[9] && ![(NSMutableArray *)kCellularCdma1XTxPowerHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XProtocolStackStateHists = self->_kCellularCdma1XProtocolStackStateHists;
  if (kCellularCdma1XProtocolStackStateHists | v4[2] && ![(NSMutableArray *)kCellularCdma1XProtocolStackStateHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XConnectionHists = self->_kCellularCdma1XConnectionHists;
  if (kCellularCdma1XConnectionHists | v4[1] && ![(NSMutableArray *)kCellularCdma1XConnectionHists isEqual:?])
  {
    goto LABEL_182;
  }

  kCellularCdma1XRrStates = self->_kCellularCdma1XRrStates;
  if (kCellularCdma1XRrStates | v4[3] && ![(NSMutableArray *)kCellularCdma1XRrStates isEqual:?])
  {
    goto LABEL_182;
  }

  if (((kCellularCdmaEvdoRxDiversityHists = self->_kCellularCdmaEvdoRxDiversityHists, !(kCellularCdmaEvdoRxDiversityHists | v4[12])) || [(NSMutableArray *)kCellularCdmaEvdoRxDiversityHists isEqual:?]) && ((kCellularCdmaEvdoServingCellRx0RssiHists = self->_kCellularCdmaEvdoServingCellRx0RssiHists, !(kCellularCdmaEvdoServingCellRx0RssiHists | v4[14])) || [(NSMutableArray *)kCellularCdmaEvdoServingCellRx0RssiHists isEqual:?]) && ((kCellularCdmaEvdoServingCellRx1RssiHists = self->_kCellularCdmaEvdoServingCellRx1RssiHists, !(kCellularCdmaEvdoServingCellRx1RssiHists | v4[16])) || [(NSMutableArray *)kCellularCdmaEvdoServingCellRx1RssiHists isEqual:?]) && ((kCellularCdmaEvdoServingCellRx0EcIoHists = self->_kCellularCdmaEvdoServingCellRx0EcIoHists, !(kCellularCdmaEvdoServingCellRx0EcIoHists | v4[13])) || [(NSMutableArray *)kCellularCdmaEvdoServingCellRx0EcIoHists isEqual:?]) && ((kCellularCdmaEvdoServingCellRx1EcIoHists = self->_kCellularCdmaEvdoServingCellRx1EcIoHists, !(kCellularCdmaEvdoServingCellRx1EcIoHists | v4[15])) || [(NSMutableArray *)kCellularCdmaEvdoServingCellRx1EcIoHists isEqual:?]) && ((kCellularCdmaEvdoTxPowerHists = self->_kCellularCdmaEvdoTxPowerHists, !(kCellularCdmaEvdoTxPowerHists | v4[17])) || [(NSMutableArray *)kCellularCdmaEvdoTxPowerHists isEqual:?]) && ((kCellularCdmaEvdoProtocolStackStateHists = self->_kCellularCdmaEvdoProtocolStackStateHists, !(kCellularCdmaEvdoProtocolStackStateHists | v4[10])) || [(NSMutableArray *)kCellularCdmaEvdoProtocolStackStateHists isEqual:?]))
  {
    kCellularCdmaEvdoRrStates = self->_kCellularCdmaEvdoRrStates;
    if (kCellularCdmaEvdoRrStates | v4[11])
    {
      v95 = [(NSMutableArray *)kCellularCdmaEvdoRrStates isEqual:?];
    }

    else
    {
      v95 = 1;
    }
  }

  else
  {
LABEL_182:
    v95 = 0;
  }

  return v95;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_kCellularPerClientProfileTriggerCounts hash];
  v4 = [(NSMutableArray *)self->_kCellularProtocolStackCpuStats hash]^ v3;
  v5 = [(NSMutableArray *)self->_kCellularPeripheralStats hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_kCellularDvfsStats hash];
  v7 = [(NSMutableArray *)self->_kCellularLteWcdmaGsmHwStats hash];
  v8 = v7 ^ [(NSMutableArray *)self->_kCellularLteTdsGsmHwStats hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_kCellularPmuAverageCurrents hash];
  v10 = [(NSMutableArray *)self->_kCellularFwCoreStats hash];
  v11 = v10 ^ [(NSMutableArray *)self->_kCellularLteWcdmaTdsHwStats hash];
  v12 = v11 ^ [(NSMutableArray *)self->_kCellularPmicHwStats hash];
  v13 = v9 ^ v12 ^ [(NSMutableArray *)self->_kCellularTdsRrcStates hash];
  v14 = [(NSMutableArray *)self->_kCellularLteRrcStates hash];
  v15 = v14 ^ [(NSMutableArray *)self->_kCellularLtePagingCycles hash];
  v16 = v15 ^ [(NSMutableArray *)self->_kCellularLteCdrxConfigs hash];
  v17 = v16 ^ [(NSMutableArray *)self->_kCellularLteRadioLinkFailures hash];
  v18 = v13 ^ v17 ^ [(NSMutableArray *)self->_kCellularLtePdcchStateStats hash];
  v19 = [(NSMutableArray *)self->_kCellularLqmStateChanges hash];
  v20 = v19 ^ [(NSMutableArray *)self->_kCellularServiceLosts hash];
  v21 = v20 ^ [(NSMutableArray *)self->_kCellularGsmServingCellRssiHists hash];
  v22 = v21 ^ [(NSMutableArray *)self->_kCellularGsmServingCellSnrHists hash];
  v23 = v22 ^ [(NSMutableArray *)self->_kCellularGsmTxPowerHists hash];
  v24 = v18 ^ v23 ^ [(NSMutableArray *)self->_kCellularGsmConnectedModeHists hash];
  v25 = [(NSMutableArray *)self->_kCellularGsmL1States hash];
  v26 = v25 ^ [(NSMutableArray *)self->_kCellularWcdmaCpcStats hash];
  v27 = v26 ^ [(NSMutableArray *)self->_kCellularWcdmaRxDiversityHists hash];
  v28 = v27 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx0RssiHists hash];
  v29 = v28 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx1RssiHists hash];
  v30 = v29 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx0EcNoHists hash];
  v31 = v24 ^ v30 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx1EcNoHists hash];
  v32 = [(NSMutableArray *)self->_kCellularWcdmaTxPowerHists hash];
  v33 = v32 ^ [(NSMutableArray *)self->_kCellularWcdmaReceiverStatusOnC0Hists hash];
  v34 = v33 ^ [(NSMutableArray *)self->_kCellularWcdmaReceiverStatusOnC1Hists hash];
  v35 = v34 ^ [(NSMutableArray *)self->_kCellularWcdmaCarrierStatusHists hash];
  v36 = v35 ^ [(NSMutableArray *)self->_kCellularWcdmaRabModeHists hash];
  v37 = v36 ^ [(NSMutableArray *)self->_kCellularWcdmaRabTypeHists hash];
  v38 = v37 ^ [(NSMutableArray *)self->_kCellularWcdmaRrcConnectionStates hash];
  v39 = v31 ^ v38 ^ [(NSMutableArray *)self->_kCellularWcdmaRrcConfigurations hash];
  v40 = [(NSMutableArray *)self->_kCellularWcdmaRabStatus hash];
  v41 = v40 ^ [(NSMutableArray *)self->_kCellularWcdmaL1States hash];
  v42 = v41 ^ [(NSMutableArray *)self->_kCellularWcdmaDataInactivityBeforeIdles hash];
  v43 = v42 ^ [(NSMutableArray *)self->_kCellularWcdmaIdleToConnectedUserDatas hash];
  v44 = v43 ^ [(NSMutableArray *)self->_kCellularWcdmaVadHists hash];
  v45 = v44 ^ [(NSMutableArray *)self->_kCellularTdsRxDiversityHists hash];
  v46 = v45 ^ [(NSMutableArray *)self->_kCellularTdsServingCellRx0RssiHists hash];
  v47 = v46 ^ [(NSMutableArray *)self->_kCellularTdsServingCellRx1RssiHists hash];
  v48 = v39 ^ v47 ^ [(NSMutableArray *)self->_kCellularTdsServingCellRx0RscpHists hash];
  v49 = [(NSMutableArray *)self->_kCellularTdsServingCellRx1RscpHists hash];
  v50 = v49 ^ [(NSMutableArray *)self->_kCellularTdsTxPowerHists hash];
  v51 = v50 ^ [(NSMutableArray *)self->_kCellularTdsRabModeHists hash];
  v52 = v51 ^ [(NSMutableArray *)self->_kCellularTdsRabTypeHists hash];
  v53 = v52 ^ [(NSMutableArray *)self->_kCellularTdsL1States hash];
  v54 = v53 ^ [(NSMutableArray *)self->_kCellularLteFwDuplexModes hash];
  v55 = v54 ^ [(NSMutableArray *)self->_kCellularLteServingCellRsrpHists hash];
  v56 = v55 ^ [(NSMutableArray *)self->_kCellularLteServingCellSinrHists hash];
  v57 = v56 ^ [(NSMutableArray *)self->_kCellularLteSleepStateHists hash];
  v58 = v48 ^ v57 ^ [(NSMutableArray *)self->_kCellularLteTxPowerHists hash];
  v59 = [(NSMutableArray *)self->_kCellularLteDlSccStateHists hash];
  v60 = v59 ^ [(NSMutableArray *)self->_kCellularLteUlSccStateHists hash];
  v61 = v60 ^ [(NSMutableArray *)self->_kCellularLteAdvancedRxStateHists hash];
  v62 = v61 ^ [(NSMutableArray *)self->_kCellularLteComponentCarrierInfos hash];
  v63 = v62 ^ [(NSMutableArray *)self->_kCellularLteRxTxStateHists hash];
  v64 = v63 ^ [(NSMutableArray *)self->_kCellularLteTotalDlTbsHists hash];
  v65 = v64 ^ [(NSMutableArray *)self->_kCellularLteDlSccStateHistV3s hash];
  v66 = v65 ^ [(NSMutableArray *)self->_kCellularLteRxDiversityHists hash];
  v67 = v66 ^ [(NSMutableArray *)self->_kCellularLtePdcchStateHists hash];
  v68 = v67 ^ [(NSMutableArray *)self->_kCellularProtocolStackStateHists hash];
  v69 = v58 ^ v68 ^ [(NSMutableArray *)self->_kCellularCellPlmnSearchCounts hash];
  v70 = [(NSMutableArray *)self->_kCellularCellPlmnSearchHists hash];
  v71 = v70 ^ [(NSMutableArray *)self->_kCellularProtocolStackPowerStates hash];
  v72 = v71 ^ [(NSMutableArray *)self->_kCellularDownlinkIpPacketFilterStatus hash];
  v73 = v72 ^ [(NSMutableArray *)self->_kCellularServingCellRfBandHists hash];
  v74 = v73 ^ [(NSMutableArray *)self->_kCellularProtocolStackStateHist2s hash];
  v75 = v74 ^ [(NSMutableArray *)self->_kCellularProtocolStackStates hash];
  v76 = v75 ^ [(NSMutableArray *)self->_kCellularCdma1XRxDiversityHists hash];
  v77 = v76 ^ [(NSMutableArray *)self->_kCellularCdma1XServingCellRx0RssiHists hash];
  v78 = v77 ^ [(NSMutableArray *)self->_kCellularCdma1XServingCellRx1RssiHists hash];
  v79 = v78 ^ [(NSMutableArray *)self->_kCellularCdma1XServingCellRx0EcIoHists hash];
  v80 = v79 ^ [(NSMutableArray *)self->_kCellularCdma1XServingCellRx1EcIoHists hash];
  v81 = v69 ^ v80 ^ [(NSMutableArray *)self->_kCellularCdma1XTxPowerHists hash];
  v82 = [(NSMutableArray *)self->_kCellularCdma1XProtocolStackStateHists hash];
  v83 = v82 ^ [(NSMutableArray *)self->_kCellularCdma1XConnectionHists hash];
  v84 = v83 ^ [(NSMutableArray *)self->_kCellularCdma1XRrStates hash];
  v85 = v84 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoRxDiversityHists hash];
  v86 = v85 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx0RssiHists hash];
  v87 = v86 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx1RssiHists hash];
  v88 = v87 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx0EcIoHists hash];
  v89 = v88 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx1EcIoHists hash];
  v90 = v89 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoTxPowerHists hash];
  v91 = v90 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoProtocolStackStateHists hash];
  return v81 ^ v91 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoRrStates hash];
}

- (void)mergeFrom:(id)a3
{
  v906 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v812 = 0u;
  v813 = 0u;
  v814 = 0u;
  v815 = 0u;
  v5 = v4[51];
  v6 = [v5 countByEnumeratingWithState:&v812 objects:v905 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v813;
    do
    {
      v9 = 0;
      do
      {
        if (*v813 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PowerlogMetricLog *)self addKCellularPerClientProfileTriggerCount:*(*(&v812 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v812 objects:v905 count:16];
    }

    while (v7);
  }

  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  v808 = 0u;
  v10 = v4[55];
  v11 = [v10 countByEnumeratingWithState:&v808 objects:v904 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v809;
    do
    {
      v14 = 0;
      do
      {
        if (*v809 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackCpuStats:*(*(&v808 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v808 objects:v904 count:16];
    }

    while (v12);
  }

  v807 = 0u;
  v806 = 0u;
  v805 = 0u;
  v804 = 0u;
  v15 = v4[52];
  v16 = [v15 countByEnumeratingWithState:&v804 objects:v903 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v805;
    do
    {
      v19 = 0;
      do
      {
        if (*v805 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PowerlogMetricLog *)self addKCellularPeripheralStats:*(*(&v804 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v804 objects:v903 count:16];
    }

    while (v17);
  }

  v803 = 0u;
  v802 = 0u;
  v801 = 0u;
  v800 = 0u;
  v20 = v4[21];
  v21 = [v20 countByEnumeratingWithState:&v800 objects:v902 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v801;
    do
    {
      v24 = 0;
      do
      {
        if (*v801 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(PowerlogMetricLog *)self addKCellularDvfsStats:*(*(&v800 + 1) + 8 * v24++)];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v800 objects:v902 count:16];
    }

    while (v22);
  }

  v799 = 0u;
  v798 = 0u;
  v797 = 0u;
  v796 = 0u;
  v25 = v4[49];
  v26 = [v25 countByEnumeratingWithState:&v796 objects:v901 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v797;
    do
    {
      v29 = 0;
      do
      {
        if (*v797 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(PowerlogMetricLog *)self addKCellularLteWcdmaGsmHwStats:*(*(&v796 + 1) + 8 * v29++)];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v796 objects:v901 count:16];
    }

    while (v27);
  }

  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v792 = 0u;
  v30 = v4[45];
  v31 = [v30 countByEnumeratingWithState:&v792 objects:v900 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v793;
    do
    {
      v34 = 0;
      do
      {
        if (*v793 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(PowerlogMetricLog *)self addKCellularLteTdsGsmHwStats:*(*(&v792 + 1) + 8 * v34++)];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v792 objects:v900 count:16];
    }

    while (v32);
  }

  v791 = 0u;
  v790 = 0u;
  v789 = 0u;
  v788 = 0u;
  v35 = v4[54];
  v36 = [v35 countByEnumeratingWithState:&v788 objects:v899 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v789;
    do
    {
      v39 = 0;
      do
      {
        if (*v789 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(PowerlogMetricLog *)self addKCellularPmuAverageCurrent:*(*(&v788 + 1) + 8 * v39++)];
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v788 objects:v899 count:16];
    }

    while (v37);
  }

  v787 = 0u;
  v786 = 0u;
  v785 = 0u;
  v784 = 0u;
  v40 = v4[22];
  v41 = [v40 countByEnumeratingWithState:&v784 objects:v898 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v785;
    do
    {
      v44 = 0;
      do
      {
        if (*v785 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(PowerlogMetricLog *)self addKCellularFwCoreStats:*(*(&v784 + 1) + 8 * v44++)];
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v784 objects:v898 count:16];
    }

    while (v42);
  }

  v783 = 0u;
  v782 = 0u;
  v781 = 0u;
  v780 = 0u;
  v45 = v4[50];
  v46 = [v45 countByEnumeratingWithState:&v780 objects:v897 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v781;
    do
    {
      v49 = 0;
      do
      {
        if (*v781 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(PowerlogMetricLog *)self addKCellularLteWcdmaTdsHwStats:*(*(&v780 + 1) + 8 * v49++)];
      }

      while (v47 != v49);
      v47 = [v45 countByEnumeratingWithState:&v780 objects:v897 count:16];
    }

    while (v47);
  }

  v779 = 0u;
  v778 = 0u;
  v777 = 0u;
  v776 = 0u;
  v50 = v4[53];
  v51 = [v50 countByEnumeratingWithState:&v776 objects:v896 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v777;
    do
    {
      v54 = 0;
      do
      {
        if (*v777 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(PowerlogMetricLog *)self addKCellularPmicHwStats:*(*(&v776 + 1) + 8 * v54++)];
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v776 objects:v896 count:16];
    }

    while (v52);
  }

  v775 = 0u;
  v774 = 0u;
  v773 = 0u;
  v772 = 0u;
  v55 = v4[65];
  v56 = [v55 countByEnumeratingWithState:&v772 objects:v895 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v773;
    do
    {
      v59 = 0;
      do
      {
        if (*v773 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(PowerlogMetricLog *)self addKCellularTdsRrcState:*(*(&v772 + 1) + 8 * v59++)];
      }

      while (v57 != v59);
      v57 = [v55 countByEnumeratingWithState:&v772 objects:v895 count:16];
    }

    while (v57);
  }

  v771 = 0u;
  v770 = 0u;
  v769 = 0u;
  v768 = 0u;
  v60 = v4[39];
  v61 = [v60 countByEnumeratingWithState:&v768 objects:v894 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v769;
    do
    {
      v64 = 0;
      do
      {
        if (*v769 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(PowerlogMetricLog *)self addKCellularLteRrcState:*(*(&v768 + 1) + 8 * v64++)];
      }

      while (v62 != v64);
      v62 = [v60 countByEnumeratingWithState:&v768 objects:v894 count:16];
    }

    while (v62);
  }

  v767 = 0u;
  v766 = 0u;
  v765 = 0u;
  v764 = 0u;
  v65 = v4[35];
  v66 = [v65 countByEnumeratingWithState:&v764 objects:v893 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v765;
    do
    {
      v69 = 0;
      do
      {
        if (*v765 != v68)
        {
          objc_enumerationMutation(v65);
        }

        [(PowerlogMetricLog *)self addKCellularLtePagingCycle:*(*(&v764 + 1) + 8 * v69++)];
      }

      while (v67 != v69);
      v67 = [v65 countByEnumeratingWithState:&v764 objects:v893 count:16];
    }

    while (v67);
  }

  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v760 = 0u;
  v70 = v4[30];
  v71 = [v70 countByEnumeratingWithState:&v760 objects:v892 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v761;
    do
    {
      v74 = 0;
      do
      {
        if (*v761 != v73)
        {
          objc_enumerationMutation(v70);
        }

        [(PowerlogMetricLog *)self addKCellularLteCdrxConfig:*(*(&v760 + 1) + 8 * v74++)];
      }

      while (v72 != v74);
      v72 = [v70 countByEnumeratingWithState:&v760 objects:v892 count:16];
    }

    while (v72);
  }

  v759 = 0u;
  v758 = 0u;
  v757 = 0u;
  v756 = 0u;
  v75 = v4[38];
  v76 = [v75 countByEnumeratingWithState:&v756 objects:v891 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v757;
    do
    {
      v79 = 0;
      do
      {
        if (*v757 != v78)
        {
          objc_enumerationMutation(v75);
        }

        [(PowerlogMetricLog *)self addKCellularLteRadioLinkFailure:*(*(&v756 + 1) + 8 * v79++)];
      }

      while (v77 != v79);
      v77 = [v75 countByEnumeratingWithState:&v756 objects:v891 count:16];
    }

    while (v77);
  }

  v755 = 0u;
  v754 = 0u;
  v753 = 0u;
  v752 = 0u;
  v80 = v4[37];
  v81 = [v80 countByEnumeratingWithState:&v752 objects:v890 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v753;
    do
    {
      v84 = 0;
      do
      {
        if (*v753 != v83)
        {
          objc_enumerationMutation(v80);
        }

        [(PowerlogMetricLog *)self addKCellularLtePdcchStateStats:*(*(&v752 + 1) + 8 * v84++)];
      }

      while (v82 != v84);
      v82 = [v80 countByEnumeratingWithState:&v752 objects:v890 count:16];
    }

    while (v82);
  }

  v751 = 0u;
  v750 = 0u;
  v749 = 0u;
  v748 = 0u;
  v85 = v4[28];
  v86 = [v85 countByEnumeratingWithState:&v748 objects:v889 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v749;
    do
    {
      v89 = 0;
      do
      {
        if (*v749 != v88)
        {
          objc_enumerationMutation(v85);
        }

        [(PowerlogMetricLog *)self addKCellularLqmStateChange:*(*(&v748 + 1) + 8 * v89++)];
      }

      while (v87 != v89);
      v87 = [v85 countByEnumeratingWithState:&v748 objects:v889 count:16];
    }

    while (v87);
  }

  v747 = 0u;
  v746 = 0u;
  v745 = 0u;
  v744 = 0u;
  v90 = v4[60];
  v91 = [v90 countByEnumeratingWithState:&v744 objects:v888 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v745;
    do
    {
      v94 = 0;
      do
      {
        if (*v745 != v93)
        {
          objc_enumerationMutation(v90);
        }

        [(PowerlogMetricLog *)self addKCellularServiceLost:*(*(&v744 + 1) + 8 * v94++)];
      }

      while (v92 != v94);
      v92 = [v90 countByEnumeratingWithState:&v744 objects:v888 count:16];
    }

    while (v92);
  }

  v743 = 0u;
  v742 = 0u;
  v741 = 0u;
  v740 = 0u;
  v95 = v4[25];
  v96 = [v95 countByEnumeratingWithState:&v740 objects:v887 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v741;
    do
    {
      v99 = 0;
      do
      {
        if (*v741 != v98)
        {
          objc_enumerationMutation(v95);
        }

        [(PowerlogMetricLog *)self addKCellularGsmServingCellRssiHist:*(*(&v740 + 1) + 8 * v99++)];
      }

      while (v97 != v99);
      v97 = [v95 countByEnumeratingWithState:&v740 objects:v887 count:16];
    }

    while (v97);
  }

  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v736 = 0u;
  v100 = v4[26];
  v101 = [v100 countByEnumeratingWithState:&v736 objects:v886 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v737;
    do
    {
      v104 = 0;
      do
      {
        if (*v737 != v103)
        {
          objc_enumerationMutation(v100);
        }

        [(PowerlogMetricLog *)self addKCellularGsmServingCellSnrHist:*(*(&v736 + 1) + 8 * v104++)];
      }

      while (v102 != v104);
      v102 = [v100 countByEnumeratingWithState:&v736 objects:v886 count:16];
    }

    while (v102);
  }

  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v732 = 0u;
  v105 = v4[27];
  v106 = [v105 countByEnumeratingWithState:&v732 objects:v885 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v733;
    do
    {
      v109 = 0;
      do
      {
        if (*v733 != v108)
        {
          objc_enumerationMutation(v105);
        }

        [(PowerlogMetricLog *)self addKCellularGsmTxPowerHist:*(*(&v732 + 1) + 8 * v109++)];
      }

      while (v107 != v109);
      v107 = [v105 countByEnumeratingWithState:&v732 objects:v885 count:16];
    }

    while (v107);
  }

  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v110 = v4[23];
  v111 = [v110 countByEnumeratingWithState:&v728 objects:v884 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v729;
    do
    {
      v114 = 0;
      do
      {
        if (*v729 != v113)
        {
          objc_enumerationMutation(v110);
        }

        [(PowerlogMetricLog *)self addKCellularGsmConnectedModeHist:*(*(&v728 + 1) + 8 * v114++)];
      }

      while (v112 != v114);
      v112 = [v110 countByEnumeratingWithState:&v728 objects:v884 count:16];
    }

    while (v112);
  }

  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v115 = v4[24];
  v116 = [v115 countByEnumeratingWithState:&v724 objects:v883 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v725;
    do
    {
      v119 = 0;
      do
      {
        if (*v725 != v118)
        {
          objc_enumerationMutation(v115);
        }

        [(PowerlogMetricLog *)self addKCellularGsmL1State:*(*(&v724 + 1) + 8 * v119++)];
      }

      while (v117 != v119);
      v117 = [v115 countByEnumeratingWithState:&v724 objects:v883 count:16];
    }

    while (v117);
  }

  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  v120 = v4[73];
  v121 = [v120 countByEnumeratingWithState:&v720 objects:v882 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v721;
    do
    {
      v124 = 0;
      do
      {
        if (*v721 != v123)
        {
          objc_enumerationMutation(v120);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaCpcStat:*(*(&v720 + 1) + 8 * v124++)];
      }

      while (v122 != v124);
      v122 = [v120 countByEnumeratingWithState:&v720 objects:v882 count:16];
    }

    while (v122);
  }

  v719 = 0u;
  v718 = 0u;
  v717 = 0u;
  v716 = 0u;
  v125 = v4[84];
  v126 = [v125 countByEnumeratingWithState:&v716 objects:v881 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v717;
    do
    {
      v129 = 0;
      do
      {
        if (*v717 != v128)
        {
          objc_enumerationMutation(v125);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRxDiversityHist:*(*(&v716 + 1) + 8 * v129++)];
      }

      while (v127 != v129);
      v127 = [v125 countByEnumeratingWithState:&v716 objects:v881 count:16];
    }

    while (v127);
  }

  v715 = 0u;
  v714 = 0u;
  v713 = 0u;
  v712 = 0u;
  v130 = v4[86];
  v131 = [v130 countByEnumeratingWithState:&v712 objects:v880 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v713;
    do
    {
      v134 = 0;
      do
      {
        if (*v713 != v133)
        {
          objc_enumerationMutation(v130);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaServingCellRx0RssiHist:*(*(&v712 + 1) + 8 * v134++)];
      }

      while (v132 != v134);
      v132 = [v130 countByEnumeratingWithState:&v712 objects:v880 count:16];
    }

    while (v132);
  }

  v711 = 0u;
  v710 = 0u;
  v709 = 0u;
  v708 = 0u;
  v135 = v4[88];
  v136 = [v135 countByEnumeratingWithState:&v708 objects:v879 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v709;
    do
    {
      v139 = 0;
      do
      {
        if (*v709 != v138)
        {
          objc_enumerationMutation(v135);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaServingCellRx1RssiHist:*(*(&v708 + 1) + 8 * v139++)];
      }

      while (v137 != v139);
      v137 = [v135 countByEnumeratingWithState:&v708 objects:v879 count:16];
    }

    while (v137);
  }

  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v704 = 0u;
  v140 = v4[85];
  v141 = [v140 countByEnumeratingWithState:&v704 objects:v878 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v705;
    do
    {
      v144 = 0;
      do
      {
        if (*v705 != v143)
        {
          objc_enumerationMutation(v140);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaServingCellRx0EcNoHist:*(*(&v704 + 1) + 8 * v144++)];
      }

      while (v142 != v144);
      v142 = [v140 countByEnumeratingWithState:&v704 objects:v878 count:16];
    }

    while (v142);
  }

  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v700 = 0u;
  v145 = v4[87];
  v146 = [v145 countByEnumeratingWithState:&v700 objects:v877 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v701;
    do
    {
      v149 = 0;
      do
      {
        if (*v701 != v148)
        {
          objc_enumerationMutation(v145);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaServingCellRx1EcNoHist:*(*(&v700 + 1) + 8 * v149++)];
      }

      while (v147 != v149);
      v147 = [v145 countByEnumeratingWithState:&v700 objects:v877 count:16];
    }

    while (v147);
  }

  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v696 = 0u;
  v150 = v4[89];
  v151 = [v150 countByEnumeratingWithState:&v696 objects:v876 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v697;
    do
    {
      v154 = 0;
      do
      {
        if (*v697 != v153)
        {
          objc_enumerationMutation(v150);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaTxPowerHist:*(*(&v696 + 1) + 8 * v154++)];
      }

      while (v152 != v154);
      v152 = [v150 countByEnumeratingWithState:&v696 objects:v876 count:16];
    }

    while (v152);
  }

  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v692 = 0u;
  v155 = v4[80];
  v156 = [v155 countByEnumeratingWithState:&v692 objects:v875 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v693;
    do
    {
      v159 = 0;
      do
      {
        if (*v693 != v158)
        {
          objc_enumerationMutation(v155);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaReceiverStatusOnC0Hist:*(*(&v692 + 1) + 8 * v159++)];
      }

      while (v157 != v159);
      v157 = [v155 countByEnumeratingWithState:&v692 objects:v875 count:16];
    }

    while (v157);
  }

  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v688 = 0u;
  v160 = v4[81];
  v161 = [v160 countByEnumeratingWithState:&v688 objects:v874 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v689;
    do
    {
      v164 = 0;
      do
      {
        if (*v689 != v163)
        {
          objc_enumerationMutation(v160);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaReceiverStatusOnC1Hist:*(*(&v688 + 1) + 8 * v164++)];
      }

      while (v162 != v164);
      v162 = [v160 countByEnumeratingWithState:&v688 objects:v874 count:16];
    }

    while (v162);
  }

  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v684 = 0u;
  v165 = v4[72];
  v166 = [v165 countByEnumeratingWithState:&v684 objects:v873 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v685;
    do
    {
      v169 = 0;
      do
      {
        if (*v685 != v168)
        {
          objc_enumerationMutation(v165);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaCarrierStatusHist:*(*(&v684 + 1) + 8 * v169++)];
      }

      while (v167 != v169);
      v167 = [v165 countByEnumeratingWithState:&v684 objects:v873 count:16];
    }

    while (v167);
  }

  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v680 = 0u;
  v170 = v4[77];
  v171 = [v170 countByEnumeratingWithState:&v680 objects:v872 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v681;
    do
    {
      v174 = 0;
      do
      {
        if (*v681 != v173)
        {
          objc_enumerationMutation(v170);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRabModeHist:*(*(&v680 + 1) + 8 * v174++)];
      }

      while (v172 != v174);
      v172 = [v170 countByEnumeratingWithState:&v680 objects:v872 count:16];
    }

    while (v172);
  }

  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v676 = 0u;
  v175 = v4[79];
  v176 = [v175 countByEnumeratingWithState:&v676 objects:v871 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v677;
    do
    {
      v179 = 0;
      do
      {
        if (*v677 != v178)
        {
          objc_enumerationMutation(v175);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRabTypeHist:*(*(&v676 + 1) + 8 * v179++)];
      }

      while (v177 != v179);
      v177 = [v175 countByEnumeratingWithState:&v676 objects:v871 count:16];
    }

    while (v177);
  }

  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v672 = 0u;
  v180 = v4[83];
  v181 = [v180 countByEnumeratingWithState:&v672 objects:v870 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v673;
    do
    {
      v184 = 0;
      do
      {
        if (*v673 != v183)
        {
          objc_enumerationMutation(v180);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRrcConnectionState:*(*(&v672 + 1) + 8 * v184++)];
      }

      while (v182 != v184);
      v182 = [v180 countByEnumeratingWithState:&v672 objects:v870 count:16];
    }

    while (v182);
  }

  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v668 = 0u;
  v185 = v4[82];
  v186 = [v185 countByEnumeratingWithState:&v668 objects:v869 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v669;
    do
    {
      v189 = 0;
      do
      {
        if (*v669 != v188)
        {
          objc_enumerationMutation(v185);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRrcConfiguration:*(*(&v668 + 1) + 8 * v189++)];
      }

      while (v187 != v189);
      v187 = [v185 countByEnumeratingWithState:&v668 objects:v869 count:16];
    }

    while (v187);
  }

  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v190 = v4[78];
  v191 = [v190 countByEnumeratingWithState:&v664 objects:v868 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v665;
    do
    {
      v194 = 0;
      do
      {
        if (*v665 != v193)
        {
          objc_enumerationMutation(v190);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRabStatus:*(*(&v664 + 1) + 8 * v194++)];
      }

      while (v192 != v194);
      v192 = [v190 countByEnumeratingWithState:&v664 objects:v868 count:16];
    }

    while (v192);
  }

  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v195 = v4[76];
  v196 = [v195 countByEnumeratingWithState:&v660 objects:v867 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v661;
    do
    {
      v199 = 0;
      do
      {
        if (*v661 != v198)
        {
          objc_enumerationMutation(v195);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaL1State:*(*(&v660 + 1) + 8 * v199++)];
      }

      while (v197 != v199);
      v197 = [v195 countByEnumeratingWithState:&v660 objects:v867 count:16];
    }

    while (v197);
  }

  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v200 = v4[74];
  v201 = [v200 countByEnumeratingWithState:&v656 objects:v866 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v657;
    do
    {
      v204 = 0;
      do
      {
        if (*v657 != v203)
        {
          objc_enumerationMutation(v200);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaDataInactivityBeforeIdle:*(*(&v656 + 1) + 8 * v204++)];
      }

      while (v202 != v204);
      v202 = [v200 countByEnumeratingWithState:&v656 objects:v866 count:16];
    }

    while (v202);
  }

  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v205 = v4[75];
  v206 = [v205 countByEnumeratingWithState:&v652 objects:v865 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v653;
    do
    {
      v209 = 0;
      do
      {
        if (*v653 != v208)
        {
          objc_enumerationMutation(v205);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaIdleToConnectedUserData:*(*(&v652 + 1) + 8 * v209++)];
      }

      while (v207 != v209);
      v207 = [v205 countByEnumeratingWithState:&v652 objects:v865 count:16];
    }

    while (v207);
  }

  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v210 = v4[90];
  v211 = [v210 countByEnumeratingWithState:&v648 objects:v864 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v649;
    do
    {
      v214 = 0;
      do
      {
        if (*v649 != v213)
        {
          objc_enumerationMutation(v210);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaVadHist:*(*(&v648 + 1) + 8 * v214++)];
      }

      while (v212 != v214);
      v212 = [v210 countByEnumeratingWithState:&v648 objects:v864 count:16];
    }

    while (v212);
  }

  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v644 = 0u;
  v215 = v4[66];
  v216 = [v215 countByEnumeratingWithState:&v644 objects:v863 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v645;
    do
    {
      v219 = 0;
      do
      {
        if (*v645 != v218)
        {
          objc_enumerationMutation(v215);
        }

        [(PowerlogMetricLog *)self addKCellularTdsRxDiversityHist:*(*(&v644 + 1) + 8 * v219++)];
      }

      while (v217 != v219);
      v217 = [v215 countByEnumeratingWithState:&v644 objects:v863 count:16];
    }

    while (v217);
  }

  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v640 = 0u;
  v220 = v4[68];
  v221 = [v220 countByEnumeratingWithState:&v640 objects:v862 count:16];
  if (v221)
  {
    v222 = v221;
    v223 = *v641;
    do
    {
      v224 = 0;
      do
      {
        if (*v641 != v223)
        {
          objc_enumerationMutation(v220);
        }

        [(PowerlogMetricLog *)self addKCellularTdsServingCellRx0RssiHist:*(*(&v640 + 1) + 8 * v224++)];
      }

      while (v222 != v224);
      v222 = [v220 countByEnumeratingWithState:&v640 objects:v862 count:16];
    }

    while (v222);
  }

  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v636 = 0u;
  v225 = v4[70];
  v226 = [v225 countByEnumeratingWithState:&v636 objects:v861 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = *v637;
    do
    {
      v229 = 0;
      do
      {
        if (*v637 != v228)
        {
          objc_enumerationMutation(v225);
        }

        [(PowerlogMetricLog *)self addKCellularTdsServingCellRx1RssiHist:*(*(&v636 + 1) + 8 * v229++)];
      }

      while (v227 != v229);
      v227 = [v225 countByEnumeratingWithState:&v636 objects:v861 count:16];
    }

    while (v227);
  }

  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v632 = 0u;
  v230 = v4[67];
  v231 = [v230 countByEnumeratingWithState:&v632 objects:v860 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v633;
    do
    {
      v234 = 0;
      do
      {
        if (*v633 != v233)
        {
          objc_enumerationMutation(v230);
        }

        [(PowerlogMetricLog *)self addKCellularTdsServingCellRx0RscpHist:*(*(&v632 + 1) + 8 * v234++)];
      }

      while (v232 != v234);
      v232 = [v230 countByEnumeratingWithState:&v632 objects:v860 count:16];
    }

    while (v232);
  }

  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v628 = 0u;
  v235 = v4[69];
  v236 = [v235 countByEnumeratingWithState:&v628 objects:v859 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v629;
    do
    {
      v239 = 0;
      do
      {
        if (*v629 != v238)
        {
          objc_enumerationMutation(v235);
        }

        [(PowerlogMetricLog *)self addKCellularTdsServingCellRx1RscpHist:*(*(&v628 + 1) + 8 * v239++)];
      }

      while (v237 != v239);
      v237 = [v235 countByEnumeratingWithState:&v628 objects:v859 count:16];
    }

    while (v237);
  }

  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v624 = 0u;
  v240 = v4[71];
  v241 = [v240 countByEnumeratingWithState:&v624 objects:v858 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v625;
    do
    {
      v244 = 0;
      do
      {
        if (*v625 != v243)
        {
          objc_enumerationMutation(v240);
        }

        [(PowerlogMetricLog *)self addKCellularTdsTxPowerHist:*(*(&v624 + 1) + 8 * v244++)];
      }

      while (v242 != v244);
      v242 = [v240 countByEnumeratingWithState:&v624 objects:v858 count:16];
    }

    while (v242);
  }

  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v620 = 0u;
  v245 = v4[63];
  v246 = [v245 countByEnumeratingWithState:&v620 objects:v857 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v621;
    do
    {
      v249 = 0;
      do
      {
        if (*v621 != v248)
        {
          objc_enumerationMutation(v245);
        }

        [(PowerlogMetricLog *)self addKCellularTdsRabModeHist:*(*(&v620 + 1) + 8 * v249++)];
      }

      while (v247 != v249);
      v247 = [v245 countByEnumeratingWithState:&v620 objects:v857 count:16];
    }

    while (v247);
  }

  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v616 = 0u;
  v250 = v4[64];
  v251 = [v250 countByEnumeratingWithState:&v616 objects:v856 count:16];
  if (v251)
  {
    v252 = v251;
    v253 = *v617;
    do
    {
      v254 = 0;
      do
      {
        if (*v617 != v253)
        {
          objc_enumerationMutation(v250);
        }

        [(PowerlogMetricLog *)self addKCellularTdsRabTypeHist:*(*(&v616 + 1) + 8 * v254++)];
      }

      while (v252 != v254);
      v252 = [v250 countByEnumeratingWithState:&v616 objects:v856 count:16];
    }

    while (v252);
  }

  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v612 = 0u;
  v255 = v4[62];
  v256 = [v255 countByEnumeratingWithState:&v612 objects:v855 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = *v613;
    do
    {
      v259 = 0;
      do
      {
        if (*v613 != v258)
        {
          objc_enumerationMutation(v255);
        }

        [(PowerlogMetricLog *)self addKCellularTdsL1State:*(*(&v612 + 1) + 8 * v259++)];
      }

      while (v257 != v259);
      v257 = [v255 countByEnumeratingWithState:&v612 objects:v855 count:16];
    }

    while (v257);
  }

  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v608 = 0u;
  v260 = v4[34];
  v261 = [v260 countByEnumeratingWithState:&v608 objects:v854 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v609;
    do
    {
      v264 = 0;
      do
      {
        if (*v609 != v263)
        {
          objc_enumerationMutation(v260);
        }

        [(PowerlogMetricLog *)self addKCellularLteFwDuplexMode:*(*(&v608 + 1) + 8 * v264++)];
      }

      while (v262 != v264);
      v262 = [v260 countByEnumeratingWithState:&v608 objects:v854 count:16];
    }

    while (v262);
  }

  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v265 = v4[42];
  v266 = [v265 countByEnumeratingWithState:&v604 objects:v853 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v605;
    do
    {
      v269 = 0;
      do
      {
        if (*v605 != v268)
        {
          objc_enumerationMutation(v265);
        }

        [(PowerlogMetricLog *)self addKCellularLteServingCellRsrpHist:*(*(&v604 + 1) + 8 * v269++)];
      }

      while (v267 != v269);
      v267 = [v265 countByEnumeratingWithState:&v604 objects:v853 count:16];
    }

    while (v267);
  }

  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v270 = v4[43];
  v271 = [v270 countByEnumeratingWithState:&v600 objects:v852 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v601;
    do
    {
      v274 = 0;
      do
      {
        if (*v601 != v273)
        {
          objc_enumerationMutation(v270);
        }

        [(PowerlogMetricLog *)self addKCellularLteServingCellSinrHist:*(*(&v600 + 1) + 8 * v274++)];
      }

      while (v272 != v274);
      v272 = [v270 countByEnumeratingWithState:&v600 objects:v852 count:16];
    }

    while (v272);
  }

  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v596 = 0u;
  v275 = v4[44];
  v276 = [v275 countByEnumeratingWithState:&v596 objects:v851 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v597;
    do
    {
      v279 = 0;
      do
      {
        if (*v597 != v278)
        {
          objc_enumerationMutation(v275);
        }

        [(PowerlogMetricLog *)self addKCellularLteSleepStateHist:*(*(&v596 + 1) + 8 * v279++)];
      }

      while (v277 != v279);
      v277 = [v275 countByEnumeratingWithState:&v596 objects:v851 count:16];
    }

    while (v277);
  }

  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  v592 = 0u;
  v280 = v4[47];
  v281 = [v280 countByEnumeratingWithState:&v592 objects:v850 count:16];
  if (v281)
  {
    v282 = v281;
    v283 = *v593;
    do
    {
      v284 = 0;
      do
      {
        if (*v593 != v283)
        {
          objc_enumerationMutation(v280);
        }

        [(PowerlogMetricLog *)self addKCellularLteTxPowerHist:*(*(&v592 + 1) + 8 * v284++)];
      }

      while (v282 != v284);
      v282 = [v280 countByEnumeratingWithState:&v592 objects:v850 count:16];
    }

    while (v282);
  }

  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  v588 = 0u;
  v285 = v4[33];
  v286 = [v285 countByEnumeratingWithState:&v588 objects:v849 count:16];
  if (v286)
  {
    v287 = v286;
    v288 = *v589;
    do
    {
      v289 = 0;
      do
      {
        if (*v589 != v288)
        {
          objc_enumerationMutation(v285);
        }

        [(PowerlogMetricLog *)self addKCellularLteDlSccStateHist:*(*(&v588 + 1) + 8 * v289++)];
      }

      while (v287 != v289);
      v287 = [v285 countByEnumeratingWithState:&v588 objects:v849 count:16];
    }

    while (v287);
  }

  v587 = 0u;
  v586 = 0u;
  v585 = 0u;
  v584 = 0u;
  v290 = v4[48];
  v291 = [v290 countByEnumeratingWithState:&v584 objects:v848 count:16];
  if (v291)
  {
    v292 = v291;
    v293 = *v585;
    do
    {
      v294 = 0;
      do
      {
        if (*v585 != v293)
        {
          objc_enumerationMutation(v290);
        }

        [(PowerlogMetricLog *)self addKCellularLteUlSccStateHist:*(*(&v584 + 1) + 8 * v294++)];
      }

      while (v292 != v294);
      v292 = [v290 countByEnumeratingWithState:&v584 objects:v848 count:16];
    }

    while (v292);
  }

  v583 = 0u;
  v582 = 0u;
  v581 = 0u;
  v580 = 0u;
  v295 = v4[29];
  v296 = [v295 countByEnumeratingWithState:&v580 objects:v847 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v581;
    do
    {
      v299 = 0;
      do
      {
        if (*v581 != v298)
        {
          objc_enumerationMutation(v295);
        }

        [(PowerlogMetricLog *)self addKCellularLteAdvancedRxStateHist:*(*(&v580 + 1) + 8 * v299++)];
      }

      while (v297 != v299);
      v297 = [v295 countByEnumeratingWithState:&v580 objects:v847 count:16];
    }

    while (v297);
  }

  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v576 = 0u;
  v300 = v4[31];
  v301 = [v300 countByEnumeratingWithState:&v576 objects:v846 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v577;
    do
    {
      v304 = 0;
      do
      {
        if (*v577 != v303)
        {
          objc_enumerationMutation(v300);
        }

        [(PowerlogMetricLog *)self addKCellularLteComponentCarrierInfo:*(*(&v576 + 1) + 8 * v304++)];
      }

      while (v302 != v304);
      v302 = [v300 countByEnumeratingWithState:&v576 objects:v846 count:16];
    }

    while (v302);
  }

  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v572 = 0u;
  v305 = v4[41];
  v306 = [v305 countByEnumeratingWithState:&v572 objects:v845 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v573;
    do
    {
      v309 = 0;
      do
      {
        if (*v573 != v308)
        {
          objc_enumerationMutation(v305);
        }

        [(PowerlogMetricLog *)self addKCellularLteRxTxStateHist:*(*(&v572 + 1) + 8 * v309++)];
      }

      while (v307 != v309);
      v307 = [v305 countByEnumeratingWithState:&v572 objects:v845 count:16];
    }

    while (v307);
  }

  v571 = 0u;
  v570 = 0u;
  v569 = 0u;
  v568 = 0u;
  v310 = v4[46];
  v311 = [v310 countByEnumeratingWithState:&v568 objects:v844 count:16];
  if (v311)
  {
    v312 = v311;
    v313 = *v569;
    do
    {
      v314 = 0;
      do
      {
        if (*v569 != v313)
        {
          objc_enumerationMutation(v310);
        }

        [(PowerlogMetricLog *)self addKCellularLteTotalDlTbsHist:*(*(&v568 + 1) + 8 * v314++)];
      }

      while (v312 != v314);
      v312 = [v310 countByEnumeratingWithState:&v568 objects:v844 count:16];
    }

    while (v312);
  }

  v567 = 0u;
  v566 = 0u;
  v565 = 0u;
  v564 = 0u;
  v315 = v4[32];
  v316 = [v315 countByEnumeratingWithState:&v564 objects:v843 count:16];
  if (v316)
  {
    v317 = v316;
    v318 = *v565;
    do
    {
      v319 = 0;
      do
      {
        if (*v565 != v318)
        {
          objc_enumerationMutation(v315);
        }

        [(PowerlogMetricLog *)self addKCellularLteDlSccStateHistV3:*(*(&v564 + 1) + 8 * v319++)];
      }

      while (v317 != v319);
      v317 = [v315 countByEnumeratingWithState:&v564 objects:v843 count:16];
    }

    while (v317);
  }

  v563 = 0u;
  v562 = 0u;
  v561 = 0u;
  v560 = 0u;
  v320 = v4[40];
  v321 = [v320 countByEnumeratingWithState:&v560 objects:v842 count:16];
  if (v321)
  {
    v322 = v321;
    v323 = *v561;
    do
    {
      v324 = 0;
      do
      {
        if (*v561 != v323)
        {
          objc_enumerationMutation(v320);
        }

        [(PowerlogMetricLog *)self addKCellularLteRxDiversityHist:*(*(&v560 + 1) + 8 * v324++)];
      }

      while (v322 != v324);
      v322 = [v320 countByEnumeratingWithState:&v560 objects:v842 count:16];
    }

    while (v322);
  }

  v559 = 0u;
  v558 = 0u;
  v557 = 0u;
  v556 = 0u;
  v325 = v4[36];
  v326 = [v325 countByEnumeratingWithState:&v556 objects:v841 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v557;
    do
    {
      v329 = 0;
      do
      {
        if (*v557 != v328)
        {
          objc_enumerationMutation(v325);
        }

        [(PowerlogMetricLog *)self addKCellularLtePdcchStateHist:*(*(&v556 + 1) + 8 * v329++)];
      }

      while (v327 != v329);
      v327 = [v325 countByEnumeratingWithState:&v556 objects:v841 count:16];
    }

    while (v327);
  }

  v555 = 0u;
  v554 = 0u;
  v553 = 0u;
  v552 = 0u;
  v330 = v4[58];
  v331 = [v330 countByEnumeratingWithState:&v552 objects:v840 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v553;
    do
    {
      v334 = 0;
      do
      {
        if (*v553 != v333)
        {
          objc_enumerationMutation(v330);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackStateHist:*(*(&v552 + 1) + 8 * v334++)];
      }

      while (v332 != v334);
      v332 = [v330 countByEnumeratingWithState:&v552 objects:v840 count:16];
    }

    while (v332);
  }

  v551 = 0u;
  v550 = 0u;
  v549 = 0u;
  v548 = 0u;
  v335 = v4[18];
  v336 = [v335 countByEnumeratingWithState:&v548 objects:v839 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v549;
    do
    {
      v339 = 0;
      do
      {
        if (*v549 != v338)
        {
          objc_enumerationMutation(v335);
        }

        [(PowerlogMetricLog *)self addKCellularCellPlmnSearchCount:*(*(&v548 + 1) + 8 * v339++)];
      }

      while (v337 != v339);
      v337 = [v335 countByEnumeratingWithState:&v548 objects:v839 count:16];
    }

    while (v337);
  }

  v547 = 0u;
  v546 = 0u;
  v545 = 0u;
  v544 = 0u;
  v340 = v4[19];
  v341 = [v340 countByEnumeratingWithState:&v544 objects:v838 count:16];
  if (v341)
  {
    v342 = v341;
    v343 = *v545;
    do
    {
      v344 = 0;
      do
      {
        if (*v545 != v343)
        {
          objc_enumerationMutation(v340);
        }

        [(PowerlogMetricLog *)self addKCellularCellPlmnSearchHist:*(*(&v544 + 1) + 8 * v344++)];
      }

      while (v342 != v344);
      v342 = [v340 countByEnumeratingWithState:&v544 objects:v838 count:16];
    }

    while (v342);
  }

  v543 = 0u;
  v542 = 0u;
  v541 = 0u;
  v540 = 0u;
  v345 = v4[56];
  v346 = [v345 countByEnumeratingWithState:&v540 objects:v837 count:16];
  if (v346)
  {
    v347 = v346;
    v348 = *v541;
    do
    {
      v349 = 0;
      do
      {
        if (*v541 != v348)
        {
          objc_enumerationMutation(v345);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackPowerState:*(*(&v540 + 1) + 8 * v349++)];
      }

      while (v347 != v349);
      v347 = [v345 countByEnumeratingWithState:&v540 objects:v837 count:16];
    }

    while (v347);
  }

  v539 = 0u;
  v538 = 0u;
  v537 = 0u;
  v536 = 0u;
  v350 = v4[20];
  v351 = [v350 countByEnumeratingWithState:&v536 objects:v836 count:16];
  if (v351)
  {
    v352 = v351;
    v353 = *v537;
    do
    {
      v354 = 0;
      do
      {
        if (*v537 != v353)
        {
          objc_enumerationMutation(v350);
        }

        [(PowerlogMetricLog *)self addKCellularDownlinkIpPacketFilterStatus:*(*(&v536 + 1) + 8 * v354++)];
      }

      while (v352 != v354);
      v352 = [v350 countByEnumeratingWithState:&v536 objects:v836 count:16];
    }

    while (v352);
  }

  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v355 = v4[61];
  v356 = [v355 countByEnumeratingWithState:&v532 objects:v835 count:16];
  if (v356)
  {
    v357 = v356;
    v358 = *v533;
    do
    {
      v359 = 0;
      do
      {
        if (*v533 != v358)
        {
          objc_enumerationMutation(v355);
        }

        [(PowerlogMetricLog *)self addKCellularServingCellRfBandHist:*(*(&v532 + 1) + 8 * v359++)];
      }

      while (v357 != v359);
      v357 = [v355 countByEnumeratingWithState:&v532 objects:v835 count:16];
    }

    while (v357);
  }

  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v360 = v4[57];
  v361 = [v360 countByEnumeratingWithState:&v528 objects:v834 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v529;
    do
    {
      v364 = 0;
      do
      {
        if (*v529 != v363)
        {
          objc_enumerationMutation(v360);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackStateHist2:*(*(&v528 + 1) + 8 * v364++)];
      }

      while (v362 != v364);
      v362 = [v360 countByEnumeratingWithState:&v528 objects:v834 count:16];
    }

    while (v362);
  }

  v527 = 0u;
  v526 = 0u;
  v525 = 0u;
  v524 = 0u;
  v365 = v4[59];
  v366 = [v365 countByEnumeratingWithState:&v524 objects:v833 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v525;
    do
    {
      v369 = 0;
      do
      {
        if (*v525 != v368)
        {
          objc_enumerationMutation(v365);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackState:*(*(&v524 + 1) + 8 * v369++)];
      }

      while (v367 != v369);
      v367 = [v365 countByEnumeratingWithState:&v524 objects:v833 count:16];
    }

    while (v367);
  }

  v523 = 0u;
  v522 = 0u;
  v521 = 0u;
  v520 = 0u;
  v370 = v4[4];
  v371 = [v370 countByEnumeratingWithState:&v520 objects:v832 count:16];
  if (v371)
  {
    v372 = v371;
    v373 = *v521;
    do
    {
      v374 = 0;
      do
      {
        if (*v521 != v373)
        {
          objc_enumerationMutation(v370);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XRxDiversityHist:*(*(&v520 + 1) + 8 * v374++)];
      }

      while (v372 != v374);
      v372 = [v370 countByEnumeratingWithState:&v520 objects:v832 count:16];
    }

    while (v372);
  }

  v518 = 0u;
  v519 = 0u;
  v516 = 0u;
  v517 = 0u;
  v375 = v4[6];
  v376 = [v375 countByEnumeratingWithState:&v516 objects:v831 count:16];
  if (v376)
  {
    v377 = v376;
    v378 = *v517;
    do
    {
      v379 = 0;
      do
      {
        if (*v517 != v378)
        {
          objc_enumerationMutation(v375);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XServingCellRx0RssiHist:*(*(&v516 + 1) + 8 * v379++)];
      }

      while (v377 != v379);
      v377 = [v375 countByEnumeratingWithState:&v516 objects:v831 count:16];
    }

    while (v377);
  }

  v514 = 0u;
  v515 = 0u;
  v512 = 0u;
  v513 = 0u;
  v380 = v4[8];
  v381 = [v380 countByEnumeratingWithState:&v512 objects:v830 count:16];
  if (v381)
  {
    v382 = v381;
    v383 = *v513;
    do
    {
      v384 = 0;
      do
      {
        if (*v513 != v383)
        {
          objc_enumerationMutation(v380);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XServingCellRx1RssiHist:*(*(&v512 + 1) + 8 * v384++)];
      }

      while (v382 != v384);
      v382 = [v380 countByEnumeratingWithState:&v512 objects:v830 count:16];
    }

    while (v382);
  }

  v510 = 0u;
  v511 = 0u;
  v508 = 0u;
  v509 = 0u;
  v385 = v4[5];
  v386 = [v385 countByEnumeratingWithState:&v508 objects:v829 count:16];
  if (v386)
  {
    v387 = v386;
    v388 = *v509;
    do
    {
      v389 = 0;
      do
      {
        if (*v509 != v388)
        {
          objc_enumerationMutation(v385);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XServingCellRx0EcIoHist:*(*(&v508 + 1) + 8 * v389++)];
      }

      while (v387 != v389);
      v387 = [v385 countByEnumeratingWithState:&v508 objects:v829 count:16];
    }

    while (v387);
  }

  v506 = 0u;
  v507 = 0u;
  v504 = 0u;
  v505 = 0u;
  v390 = v4[7];
  v391 = [v390 countByEnumeratingWithState:&v504 objects:v828 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v505;
    do
    {
      v394 = 0;
      do
      {
        if (*v505 != v393)
        {
          objc_enumerationMutation(v390);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XServingCellRx1EcIoHist:*(*(&v504 + 1) + 8 * v394++)];
      }

      while (v392 != v394);
      v392 = [v390 countByEnumeratingWithState:&v504 objects:v828 count:16];
    }

    while (v392);
  }

  v502 = 0u;
  v503 = 0u;
  v500 = 0u;
  v501 = 0u;
  v395 = v4[9];
  v396 = [v395 countByEnumeratingWithState:&v500 objects:v827 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v501;
    do
    {
      v399 = 0;
      do
      {
        if (*v501 != v398)
        {
          objc_enumerationMutation(v395);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XTxPowerHist:*(*(&v500 + 1) + 8 * v399++)];
      }

      while (v397 != v399);
      v397 = [v395 countByEnumeratingWithState:&v500 objects:v827 count:16];
    }

    while (v397);
  }

  v498 = 0u;
  v499 = 0u;
  v496 = 0u;
  v497 = 0u;
  v400 = v4[2];
  v401 = [v400 countByEnumeratingWithState:&v496 objects:v826 count:16];
  if (v401)
  {
    v402 = v401;
    v403 = *v497;
    do
    {
      v404 = 0;
      do
      {
        if (*v497 != v403)
        {
          objc_enumerationMutation(v400);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XProtocolStackStateHist:*(*(&v496 + 1) + 8 * v404++)];
      }

      while (v402 != v404);
      v402 = [v400 countByEnumeratingWithState:&v496 objects:v826 count:16];
    }

    while (v402);
  }

  v494 = 0u;
  v495 = 0u;
  v492 = 0u;
  v493 = 0u;
  v405 = v4[1];
  v406 = [v405 countByEnumeratingWithState:&v492 objects:v825 count:16];
  if (v406)
  {
    v407 = v406;
    v408 = *v493;
    do
    {
      v409 = 0;
      do
      {
        if (*v493 != v408)
        {
          objc_enumerationMutation(v405);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XConnectionHist:*(*(&v492 + 1) + 8 * v409++)];
      }

      while (v407 != v409);
      v407 = [v405 countByEnumeratingWithState:&v492 objects:v825 count:16];
    }

    while (v407);
  }

  v490 = 0u;
  v491 = 0u;
  v488 = 0u;
  v489 = 0u;
  v410 = v4[3];
  v411 = [v410 countByEnumeratingWithState:&v488 objects:v824 count:16];
  if (v411)
  {
    v412 = v411;
    v413 = *v489;
    do
    {
      v414 = 0;
      do
      {
        if (*v489 != v413)
        {
          objc_enumerationMutation(v410);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XRrState:*(*(&v488 + 1) + 8 * v414++)];
      }

      while (v412 != v414);
      v412 = [v410 countByEnumeratingWithState:&v488 objects:v824 count:16];
    }

    while (v412);
  }

  v486 = 0u;
  v487 = 0u;
  v484 = 0u;
  v485 = 0u;
  v415 = v4[12];
  v416 = [v415 countByEnumeratingWithState:&v484 objects:v823 count:16];
  if (v416)
  {
    v417 = v416;
    v418 = *v485;
    do
    {
      v419 = 0;
      do
      {
        if (*v485 != v418)
        {
          objc_enumerationMutation(v415);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoRxDiversityHist:*(*(&v484 + 1) + 8 * v419++)];
      }

      while (v417 != v419);
      v417 = [v415 countByEnumeratingWithState:&v484 objects:v823 count:16];
    }

    while (v417);
  }

  v482 = 0u;
  v483 = 0u;
  v480 = 0u;
  v481 = 0u;
  v420 = v4[14];
  v421 = [v420 countByEnumeratingWithState:&v480 objects:v822 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v481;
    do
    {
      v424 = 0;
      do
      {
        if (*v481 != v423)
        {
          objc_enumerationMutation(v420);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoServingCellRx0RssiHist:*(*(&v480 + 1) + 8 * v424++)];
      }

      while (v422 != v424);
      v422 = [v420 countByEnumeratingWithState:&v480 objects:v822 count:16];
    }

    while (v422);
  }

  v478 = 0u;
  v479 = 0u;
  v476 = 0u;
  v477 = 0u;
  v425 = v4[16];
  v426 = [v425 countByEnumeratingWithState:&v476 objects:v821 count:16];
  if (v426)
  {
    v427 = v426;
    v428 = *v477;
    do
    {
      v429 = 0;
      do
      {
        if (*v477 != v428)
        {
          objc_enumerationMutation(v425);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoServingCellRx1RssiHist:*(*(&v476 + 1) + 8 * v429++)];
      }

      while (v427 != v429);
      v427 = [v425 countByEnumeratingWithState:&v476 objects:v821 count:16];
    }

    while (v427);
  }

  v474 = 0u;
  v475 = 0u;
  v472 = 0u;
  v473 = 0u;
  v430 = v4[13];
  v431 = [v430 countByEnumeratingWithState:&v472 objects:v820 count:16];
  if (v431)
  {
    v432 = v431;
    v433 = *v473;
    do
    {
      v434 = 0;
      do
      {
        if (*v473 != v433)
        {
          objc_enumerationMutation(v430);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoServingCellRx0EcIoHist:*(*(&v472 + 1) + 8 * v434++)];
      }

      while (v432 != v434);
      v432 = [v430 countByEnumeratingWithState:&v472 objects:v820 count:16];
    }

    while (v432);
  }

  v470 = 0u;
  v471 = 0u;
  v468 = 0u;
  v469 = 0u;
  v435 = v4[15];
  v436 = [v435 countByEnumeratingWithState:&v468 objects:v819 count:16];
  if (v436)
  {
    v437 = v436;
    v438 = *v469;
    do
    {
      v439 = 0;
      do
      {
        if (*v469 != v438)
        {
          objc_enumerationMutation(v435);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoServingCellRx1EcIoHist:*(*(&v468 + 1) + 8 * v439++)];
      }

      while (v437 != v439);
      v437 = [v435 countByEnumeratingWithState:&v468 objects:v819 count:16];
    }

    while (v437);
  }

  v466 = 0u;
  v467 = 0u;
  v464 = 0u;
  v465 = 0u;
  v440 = v4[17];
  v441 = [v440 countByEnumeratingWithState:&v464 objects:v818 count:16];
  if (v441)
  {
    v442 = v441;
    v443 = *v465;
    do
    {
      v444 = 0;
      do
      {
        if (*v465 != v443)
        {
          objc_enumerationMutation(v440);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoTxPowerHist:*(*(&v464 + 1) + 8 * v444++)];
      }

      while (v442 != v444);
      v442 = [v440 countByEnumeratingWithState:&v464 objects:v818 count:16];
    }

    while (v442);
  }

  v462 = 0u;
  v463 = 0u;
  v460 = 0u;
  v461 = 0u;
  v445 = v4[10];
  v446 = [v445 countByEnumeratingWithState:&v460 objects:v817 count:16];
  if (v446)
  {
    v447 = v446;
    v448 = *v461;
    do
    {
      v449 = 0;
      do
      {
        if (*v461 != v448)
        {
          objc_enumerationMutation(v445);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoProtocolStackStateHist:*(*(&v460 + 1) + 8 * v449++)];
      }

      while (v447 != v449);
      v447 = [v445 countByEnumeratingWithState:&v460 objects:v817 count:16];
    }

    while (v447);
  }

  v458 = 0u;
  v459 = 0u;
  v456 = 0u;
  v457 = 0u;
  v450 = v4[11];
  v451 = [v450 countByEnumeratingWithState:&v456 objects:v816 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v457;
    do
    {
      v454 = 0;
      do
      {
        if (*v457 != v453)
        {
          objc_enumerationMutation(v450);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoRrState:*(*(&v456 + 1) + 8 * v454++), v456];
      }

      while (v452 != v454);
      v452 = [v450 countByEnumeratingWithState:&v456 objects:v816 count:16];
    }

    while (v452);
  }

  v455 = *MEMORY[0x277D85DE8];
}

@end