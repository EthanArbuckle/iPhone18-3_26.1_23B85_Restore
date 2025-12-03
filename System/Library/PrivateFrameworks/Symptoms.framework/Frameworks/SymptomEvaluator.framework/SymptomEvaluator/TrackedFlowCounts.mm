@interface TrackedFlowCounts
- (void)addFlowCounts:(id)counts;
- (void)subtractFlowCounts:(id)counts;
@end

@implementation TrackedFlowCounts

- (void)addFlowCounts:(id)counts
{
  countsCopy = counts;
  self->_rxWiFiBytes += [countsCopy rxWiFiBytes];
  self->_txWiFiBytes += [countsCopy txWiFiBytes];
  self->_rxPkts += [countsCopy rxPkts];
  self->_txPkts += [countsCopy txPkts];
  self->_rxDupeBytes += [countsCopy rxDupeBytes];
  self->_rxOOOBytes += [countsCopy rxOOOBytes];
  txReTxBytes = [countsCopy txReTxBytes];

  self->_txReTxBytes += txReTxBytes;
}

- (void)subtractFlowCounts:(id)counts
{
  countsCopy = counts;
  self->_rxWiFiBytes -= [countsCopy rxWiFiBytes];
  self->_txWiFiBytes -= [countsCopy txWiFiBytes];
  self->_rxPkts -= [countsCopy rxPkts];
  self->_txPkts -= [countsCopy txPkts];
  self->_rxDupeBytes -= [countsCopy rxDupeBytes];
  self->_rxOOOBytes -= [countsCopy rxOOOBytes];
  txReTxBytes = [countsCopy txReTxBytes];

  self->_txReTxBytes -= txReTxBytes;
}

@end