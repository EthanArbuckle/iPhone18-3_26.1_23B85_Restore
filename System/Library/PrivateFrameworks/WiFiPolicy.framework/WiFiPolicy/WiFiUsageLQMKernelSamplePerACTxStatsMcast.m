@interface WiFiUsageLQMKernelSamplePerACTxStatsMcast
- (void)transformTXStats;
@end

@implementation WiFiUsageLQMKernelSamplePerACTxStatsMcast

- (void)transformTXStats
{
  txMcastMaxRetriesPerc = self->_txMcastMaxRetriesPerc;
  [WiFiUsageLQMTransformations txErrorsPercentagesWithtxSuccess:self->_txMcastSuccessPerc txDropped:self->_txMcastDroppedPerc txNoBuff:self->_txMcastNoBuffPerc txNoRes:self->_txMcastNoResPerc txNoAck:self->_txMcastNoAckPerc txChipModeErr:self->_txMcastChipModeErrPerc txExpired:self->_txMcastExpiredPerc txFail:self->_txMcastFailPerc txFwFree:self->_txMcastFwFreePerc txMaxRetries:self->_txMcastMaxRetriesPerc txForceExpire:self->_txMcastForceExpirePerc];
  self->_txMcast = 0;
  self->_txMcastSuccessPerc = 0;
  self->_txMcastAllFailPerc = 0;
  self->_txMcastDroppedPerc = 0;
  self->_txMcastNoBuffPerc = 0;
  self->_txMcastNoResPerc = 0;
  self->_txMcastNoAckPerc = 0;
  self->_txMcastChipModeErrPerc = 0;
  self->_txMcastExpiredPerc = 0;
  self->_txMcastFailPerc = 0;
  self->_txMcastFwFreePerc = 0;
  self->_txMcastMaxRetriesPerc = 0;
  self->_txMcastForceExpirePerc = 0;
}

@end