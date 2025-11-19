@interface WiFiUsageLQMKernelSamplePerACTxStatsUcast
- (void)transformTXStats;
@end

@implementation WiFiUsageLQMKernelSamplePerACTxStatsUcast

- (void)transformTXStats
{
  txBEMaxRetriesPerc = self->_txBEMaxRetriesPerc;
  [WiFiUsageLQMTransformations txErrorsPercentagesWithtxSuccess:self->_txBESuccessPerc txDropped:self->_txBEDroppedPerc txNoBuff:self->_txBENoBuffPerc txNoRes:self->_txBENoResPerc txNoAck:self->_txBENoAckPerc txChipModeErr:self->_txBEChipModeErrPerc txExpired:self->_txBEExpiredPerc txFail:self->_txBEFailPerc txFwFree:self->_txBEFwFreePerc txMaxRetries:self->_txBEMaxRetriesPerc txForceExpire:self->_txBEForceExpirePerc];
  self->_txBE = 0;
  self->_txBESuccessPerc = 0;
  self->_txBEAllFailPerc = 0;
  self->_txBEDroppedPerc = 0;
  self->_txBENoBuffPerc = 0;
  self->_txBENoResPerc = 0;
  self->_txBENoAckPerc = 0;
  self->_txBEChipModeErrPerc = 0;
  self->_txBEExpiredPerc = 0;
  self->_txBEFailPerc = 0;
  self->_txBEFwFreePerc = 0;
  self->_txBEMaxRetriesPerc = 0;
  self->_txBEForceExpirePerc = 0;
  txBKMaxRetriesPerc = self->_txBKMaxRetriesPerc;
  [WiFiUsageLQMTransformations txErrorsPercentagesWithtxSuccess:self->_txBKSuccessPerc txDropped:self->_txBKDroppedPerc txNoBuff:self->_txBKNoBuffPerc txNoRes:self->_txBKNoResPerc txNoAck:self->_txBKNoAckPerc txChipModeErr:self->_txBKChipModeErrPerc txExpired:self->_txBKExpiredPerc txFail:self->_txBKFailPerc txFwFree:self->_txBKFwFreePerc txMaxRetries:txBKMaxRetriesPerc txForceExpire:self->_txBKForceExpirePerc];
  self->_txBK = v7;
  self->_txBKSuccessPerc = v8;
  self->_txBKAllFailPerc = v9;
  self->_txBKDroppedPerc = v10;
  self->_txBKNoBuffPerc = v11;
  self->_txBKNoResPerc = v12;
  self->_txBKNoAckPerc = v13;
  self->_txBKChipModeErrPerc = v14;
  self->_txBKExpiredPerc = v15;
  self->_txBKFailPerc = v16;
  self->_txBKFwFreePerc = v17;
  self->_txBKMaxRetriesPerc = v18;
  self->_txBKForceExpirePerc = v19;
  txVIMaxRetriesPerc = self->_txVIMaxRetriesPerc;
  [WiFiUsageLQMTransformations txErrorsPercentagesWithtxSuccess:self->_txVISuccessPerc txDropped:self->_txVIDroppedPerc txNoBuff:self->_txVINoBuffPerc txNoRes:self->_txVINoResPerc txNoAck:self->_txVINoAckPerc txChipModeErr:self->_txVIChipModeErrPerc txExpired:self->_txVIExpiredPerc txFail:self->_txVIFailPerc txFwFree:self->_txVIFwFreePerc txMaxRetries:txVIMaxRetriesPerc txForceExpire:self->_txVIForceExpirePerc];
  self->_txVI = v7;
  self->_txVISuccessPerc = v8;
  self->_txVIAllFailPerc = v9;
  self->_txVIDroppedPerc = v10;
  self->_txVINoBuffPerc = v11;
  self->_txVINoResPerc = v12;
  self->_txVINoAckPerc = v13;
  self->_txVIChipModeErrPerc = v14;
  self->_txVIExpiredPerc = v15;
  self->_txVIFailPerc = v16;
  self->_txVIFwFreePerc = v17;
  self->_txVIMaxRetriesPerc = v18;
  self->_txVIForceExpirePerc = v19;
  txVOMaxRetriesPerc = self->_txVOMaxRetriesPerc;
  [WiFiUsageLQMTransformations txErrorsPercentagesWithtxSuccess:self->_txVOSuccessPerc txDropped:self->_txVODroppedPerc txNoBuff:self->_txVONoBuffPerc txNoRes:self->_txVONoResPerc txNoAck:self->_txVONoAckPerc txChipModeErr:self->_txVOChipModeErrPerc txExpired:self->_txVOExpiredPerc txFail:self->_txVOFailPerc txFwFree:self->_txVOFwFreePerc txMaxRetries:txVOMaxRetriesPerc txForceExpire:self->_txVOForceExpirePerc];
  self->_txVO = v7;
  self->_txVOSuccessPerc = v8;
  self->_txVOAllFailPerc = v9;
  self->_txVODroppedPerc = v10;
  self->_txVONoBuffPerc = v11;
  self->_txVONoResPerc = v12;
  self->_txVONoAckPerc = v13;
  self->_txVOChipModeErrPerc = v14;
  self->_txVOExpiredPerc = v15;
  self->_txVOFailPerc = v16;
  self->_txVOFwFreePerc = v17;
  self->_txVOMaxRetriesPerc = v18;
  self->_txVOForceExpirePerc = v19;
}

@end