@interface TrackedFlowCounts
- (void)addFlowCounts:(id)a3;
- (void)subtractFlowCounts:(id)a3;
@end

@implementation TrackedFlowCounts

- (void)addFlowCounts:(id)a3
{
  v4 = a3;
  self->_rxWiFiBytes += [v4 rxWiFiBytes];
  self->_txWiFiBytes += [v4 txWiFiBytes];
  self->_rxPkts += [v4 rxPkts];
  self->_txPkts += [v4 txPkts];
  self->_rxDupeBytes += [v4 rxDupeBytes];
  self->_rxOOOBytes += [v4 rxOOOBytes];
  v5 = [v4 txReTxBytes];

  self->_txReTxBytes += v5;
}

- (void)subtractFlowCounts:(id)a3
{
  v4 = a3;
  self->_rxWiFiBytes -= [v4 rxWiFiBytes];
  self->_txWiFiBytes -= [v4 txWiFiBytes];
  self->_rxPkts -= [v4 rxPkts];
  self->_txPkts -= [v4 txPkts];
  self->_rxDupeBytes -= [v4 rxDupeBytes];
  self->_rxOOOBytes -= [v4 rxOOOBytes];
  v5 = [v4 txReTxBytes];

  self->_txReTxBytes -= v5;
}

@end