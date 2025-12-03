@interface FlowOriginLedger
+ (id)getStatsString;
- (FlowOriginLedger)init;
- (double)sampleCellRxThroughput;
- (double)sampleCellTxThroughput;
- (double)sampleWiFiRxThroughput;
- (double)sampleWiFiTxThroughput;
- (id)briefDescription;
- (id)description;
- (unint64_t)sampleCellRxThroughputBps;
- (unint64_t)sampleCellTxThroughputBps;
- (void)addActivityBitmapForSnapshot:(id)snapshot;
- (void)dealloc;
- (void)startSamplingPeriod;
@end

@implementation FlowOriginLedger

- (FlowOriginLedger)init
{
  v7.receiver = self;
  v7.super_class = FlowOriginLedger;
  v2 = [(FlowOriginLedger *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currentFlows = v2->_currentFlows;
    v2->_currentFlows = v3;

    atomic_fetch_add(&_currentNumOriginLedgerAllocs, 1uLL);
    add = atomic_fetch_add(&_currentNumOriginLedgers, 1uLL);
    if (_maxNumOriginLedgers <= add)
    {
      _maxNumOriginLedgers = add + 1;
    }
  }

  return v2;
}

- (void)startSamplingPeriod
{
  [(FlowOriginLedger *)self setSampleStartCellRxBytes:[(FlowOriginLedger *)self totalObservedCellRxBytes]];
  [(FlowOriginLedger *)self setSampleStartCellTxBytes:[(FlowOriginLedger *)self totalObservedCellTxBytes]];
  [(FlowOriginLedger *)self setSampleStartWiFiRxBytes:[(FlowOriginLedger *)self totalObservedWiFiRxBytes]];
  [(FlowOriginLedger *)self setSampleStartWiFiTxBytes:[(FlowOriginLedger *)self totalObservedWiFiTxBytes]];
  [(FlowOriginLedger *)self setSampleTotalBusyTime:0.0];
  [(FlowOriginLedger *)self setSampleStartTime:0.0];
  [(FlowOriginLedger *)self setSampledAsHighTransferSize:0];
  [(FlowOriginLedger *)self setSampledAsHighInterfaceUse:0];
  [(FlowOriginLedger *)self setSampledAsCoreMediaAssetDownload:0];
  [(FlowOriginLedger *)self setSampledCoreMediaAssetDownloadInactive:0];

  [(FlowOriginLedger *)self setSampleAdditionalFlags:0];
}

+ (id)getStatsString
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = atomic_load(&_currentNumOriginLedgers);
  v4 = _maxNumOriginLedgers;
  v5 = atomic_load(&_currentNumOriginLedgerAllocs);
  v6 = atomic_load(&_currentNumOriginLedgerDeallocs);
  v7 = [v2 initWithFormat:@"Current num FlowOriginLedgers %lld max %lld allocated %lld freed %lld", v3, v4, v5, v6];

  return v7;
}

- (void)dealloc
{
  atomic_fetch_add(&_currentNumOriginLedgers, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&_currentNumOriginLedgerDeallocs, 1uLL);
  v2.receiver = self;
  v2.super_class = FlowOriginLedger;
  [(FlowOriginLedger *)&v2 dealloc];
}

- (void)addActivityBitmapForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if ([snapshotCopy hasTrafficDelta])
  {
    sourceIdentifier = [snapshotCopy sourceIdentifier];
    self->_lastUsed = apparentTime();
    activityBitmaps = [(FlowOriginLedger *)self activityBitmaps];

    if (!activityBitmaps)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(FlowOriginLedger *)self setActivityBitmaps:v6];
    }

    if ([snapshotCopy interfaceWiFi])
    {
      if ([snapshotCopy hasWiFiInfraTrafficDelta])
      {
        -[FlowOriginLedger addActivityWithFlowId:interfaceType:xnuBitmap:](self, "addActivityWithFlowId:interfaceType:xnuBitmap:", sourceIdentifier, 3, [snapshotCopy networkActivityMapWiFiInfra]);
      }

      if ([snapshotCopy hasWiFiNonInfraTrafficDelta])
      {
        -[FlowOriginLedger addActivityWithFlowId:interfaceType:xnuBitmap:](self, "addActivityWithFlowId:interfaceType:xnuBitmap:", sourceIdentifier, 4, [snapshotCopy networkActivityMapWiFiNonInfra]);
      }
    }

    if ([snapshotCopy interfaceCellular] && objc_msgSend(snapshotCopy, "hasCellTrafficDelta"))
    {
      -[FlowOriginLedger addActivityWithFlowId:interfaceType:xnuBitmap:](self, "addActivityWithFlowId:interfaceType:xnuBitmap:", sourceIdentifier, 5, [snapshotCopy networkActivityMapCell]);
    }

    if ([snapshotCopy interfaceCompanionLink] && objc_msgSend(snapshotCopy, "hasCompanionLinkBluetoothTrafficDelta"))
    {
      -[FlowOriginLedger addActivityWithFlowId:interfaceType:xnuBitmap:](self, "addActivityWithFlowId:interfaceType:xnuBitmap:", sourceIdentifier, 7, [snapshotCopy networkActivityMapBT]);
    }
  }
}

- (double)sampleCellRxThroughput
{
  totalObservedCellRxBytes = [(FlowOriginLedger *)self totalObservedCellRxBytes];
  v4 = totalObservedCellRxBytes - [(FlowOriginLedger *)self sampleStartCellRxBytes];
  sampleTotalBusyTime = self->_sampleTotalBusyTime;

  return mbpsThroughput(v4, sampleTotalBusyTime);
}

- (double)sampleCellTxThroughput
{
  totalObservedCellTxBytes = [(FlowOriginLedger *)self totalObservedCellTxBytes];
  v4 = totalObservedCellTxBytes - [(FlowOriginLedger *)self sampleStartCellTxBytes];
  sampleTotalBusyTime = self->_sampleTotalBusyTime;

  return mbpsThroughput(v4, sampleTotalBusyTime);
}

- (unint64_t)sampleCellRxThroughputBps
{
  if (self->_sampleTotalBusyTime <= 0.0)
  {
    return 0;
  }

  totalObservedCellRxBytes = [(FlowOriginLedger *)self totalObservedCellRxBytes];
  return ((totalObservedCellRxBytes - [(FlowOriginLedger *)self sampleStartCellRxBytes]) / self->_sampleTotalBusyTime);
}

- (unint64_t)sampleCellTxThroughputBps
{
  if (self->_sampleTotalBusyTime <= 0.0)
  {
    return 0;
  }

  totalObservedCellTxBytes = [(FlowOriginLedger *)self totalObservedCellTxBytes];
  return ((totalObservedCellTxBytes - [(FlowOriginLedger *)self sampleStartCellTxBytes]) / self->_sampleTotalBusyTime);
}

- (double)sampleWiFiRxThroughput
{
  totalObservedWiFiRxBytes = [(FlowOriginLedger *)self totalObservedWiFiRxBytes];
  v4 = totalObservedWiFiRxBytes - [(FlowOriginLedger *)self sampleStartWiFiRxBytes];
  sampleTotalBusyTime = self->_sampleTotalBusyTime;

  return mbpsThroughput(v4, sampleTotalBusyTime);
}

- (double)sampleWiFiTxThroughput
{
  totalObservedWiFiTxBytes = [(FlowOriginLedger *)self totalObservedWiFiTxBytes];
  v4 = totalObservedWiFiTxBytes - [(FlowOriginLedger *)self sampleStartWiFiTxBytes];
  sampleTotalBusyTime = self->_sampleTotalBusyTime;

  return mbpsThroughput(v4, sampleTotalBusyTime);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  currentFlows = self->_currentFlows;
  name = self->_name;
  delegates = self->_delegates;
  closedFlows = self->_closedFlows;
  v8 = dateStringMillisecondsFromReferenceInterval(self->_lastUsed);
  v9 = [v3 stringWithFormat:@"FlowOriginLedger for %@ at %p, current direct flows %@ delegates %@ closed flows %lld last used %@ sampled busy %.3f hi-xfer %d hi-i/f %d d/l %d d/l-inactive %d flags 0x%llx", name, self, currentFlows, delegates, closedFlows, v8, *&self->_sampleTotalBusyTime, self->_sampledAsHighTransferSize, self->_sampledAsHighInterfaceUse, self->_sampledAsCoreMediaAssetDownload, self->_sampledCoreMediaAssetDownloadInactive, self->_sampleAdditionalFlags];

  return v9;
}

- (id)briefDescription
{
  v3 = MEMORY[0x277CCACA8];
  name = self->_name;
  v5 = [(NSMutableDictionary *)self->_currentFlows count];
  delegates = self->_delegates;
  if (delegates)
  {
    v7 = [(NSMutableDictionary *)delegates count];
  }

  else
  {
    v7 = 0;
  }

  closedFlows = self->_closedFlows;
  v9 = dateStringMillisecondsFromReferenceInterval(self->_lastUsed);
  v10 = [v3 stringWithFormat:@"FlowOriginLedger for %@ at %p, current direct flows %d delegates %d closed flows %lld last used %@ sampled busy %.3f hi-xfer %d hi-i/f %d d/l %d d/l-inactive %d flags 0x%llx", name, self, v5, v7, closedFlows, v9, *&self->_sampleTotalBusyTime, self->_sampledAsHighTransferSize, self->_sampledAsHighInterfaceUse, self->_sampledAsCoreMediaAssetDownload, self->_sampledCoreMediaAssetDownloadInactive, self->_sampleAdditionalFlags];

  return v10;
}

@end