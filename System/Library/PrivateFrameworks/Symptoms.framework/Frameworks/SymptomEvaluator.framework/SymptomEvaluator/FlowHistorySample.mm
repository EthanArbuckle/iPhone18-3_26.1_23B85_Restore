@interface FlowHistorySample
- (double)rxThroughput;
- (double)txThroughput;
- (id)description;
- (unint64_t)closedFlows;
- (unint64_t)openedFlows;
- (unint64_t)rxBytes;
- (unint64_t)rxThroughputBps;
- (unint64_t)txBytes;
- (unint64_t)txThroughputBps;
- (void)noteCurent:(id *)curent previous:(id *)previous;
@end

@implementation FlowHistorySample

- (id)description
{
  v22 = MEMORY[0x277CCACA8];
  v3 = dateStringMillisecondsFromReferenceInterval(self->_startTimeIntervalSinceReferenceDate);
  elapsedTime = self->_elapsedTime;
  rxBytes = [(FlowHistorySample *)self rxBytes];
  rxAppleStackBytes = [(FlowHistorySample *)self rxAppleStackBytes];
  rxNonAppleStackBytes = [(FlowHistorySample *)self rxNonAppleStackBytes];
  rxSISBytes = [(FlowHistorySample *)self rxSISBytes];
  txBytes = [(FlowHistorySample *)self txBytes];
  txAppleStackBytes = [(FlowHistorySample *)self txAppleStackBytes];
  txNonAppleStackBytes = [(FlowHistorySample *)self txNonAppleStackBytes];
  txSISBytes = [(FlowHistorySample *)self txSISBytes];
  v5 = mbpsThroughput([(FlowHistorySample *)self rxBytes], self->_elapsedTime);
  v6 = mbpsThroughput([(FlowHistorySample *)self rxAppleStackBytes], self->_elapsedTime);
  v7 = mbpsThroughput([(FlowHistorySample *)self rxNonAppleStackBytes], self->_elapsedTime);
  v8 = mbpsThroughput([(FlowHistorySample *)self rxSISBytes], self->_elapsedTime);
  v9 = mbpsThroughput([(FlowHistorySample *)self txBytes], self->_elapsedTime);
  v10 = mbpsThroughput([(FlowHistorySample *)self txAppleStackBytes], self->_elapsedTime);
  v11 = mbpsThroughput([(FlowHistorySample *)self txNonAppleStackBytes], self->_elapsedTime);
  v12 = [v22 stringWithFormat:@"Sample from %@ interval %2.3f total/apple/non-apple/sis rx-bytes %lld %lld %lld %lld tx-bytes %lld %lld %lld %lld rx-tput %.6f %.6f %.6f %.6f Mbps tx-tput %.6f %.6f %.6f %.6f Mbps new flows %lld %lld %lld %lld closed %lld %lld %lld %lld", v3, *&elapsedTime, rxBytes, rxAppleStackBytes, rxNonAppleStackBytes, rxSISBytes, txBytes, txAppleStackBytes, txNonAppleStackBytes, txSISBytes, *&v5, *&v6, *&v7, *&v8, *&v9, *&v10, *&v11, mbpsThroughput(-[FlowHistorySample txSISBytes](self, "txSISBytes"), self->_elapsedTime), -[FlowHistorySample openedFlows](self, "openedFlows"), -[FlowHistorySample openedAppleStackFlows](self, "openedAppleStackFlows"), -[FlowHistorySample openedNonAppleStackFlows](self, "openedNonAppleStackFlows"), -[FlowHistorySample openedSISFlows](self, "openedSISFlows"), -[FlowHistorySample closedFlows](self, "closedFlows"), -[FlowHistorySample closedAppleStackFlows](self, "closedAppleStackFlows"), -[FlowHistorySample closedNonAppleStackFlows](self, "closedNonAppleStackFlows"), -[FlowHistorySample closedSISFlows](self, "closedSISFlows")];

  return v12;
}

- (unint64_t)rxBytes
{
  v3 = 0;
  result = 0;
  p_flowCountArray = &self->_flowCountArray;
  do
  {
    result += p_flowCountArray->counts[v3++].rxBytes;
  }

  while (v3 != 8);
  return result;
}

- (unint64_t)openedFlows
{
  v3 = 0;
  result = 0;
  p_openedFlows = &self->_flowCountArray.counts[0].openedFlows;
  do
  {
    result += p_openedFlows[v3];
    v3 += 4;
  }

  while (v3 != 32);
  return result;
}

- (unint64_t)txBytes
{
  v3 = 0;
  result = 0;
  p_txBytes = &self->_flowCountArray.counts[0].txBytes;
  do
  {
    result += p_txBytes[v3];
    v3 += 4;
  }

  while (v3 != 32);
  return result;
}

- (unint64_t)closedFlows
{
  v3 = 0;
  result = 0;
  p_closedFlows = &self->_flowCountArray.counts[0].closedFlows;
  do
  {
    result += p_closedFlows[v3];
    v3 += 4;
  }

  while (v3 != 32);
  return result;
}

- (void)noteCurent:(id *)curent previous:(id *)previous
{
  p_openedFlows = &self->_flowCountArray.counts[0].openedFlows;
  p_var2 = &curent->var0[0].var2;
  v6 = &previous->var0[0].var2;
  v7 = 8;
  do
  {
    p_openedFlows[-1] = vsubq_s64(*(p_var2 - 1), *(v6 - 1));
    v8 = *p_var2;
    p_var2 += 4;
    v9 = v8;
    v10 = *v6;
    v6 += 4;
    *p_openedFlows = vsubq_s64(v9, v10);
    p_openedFlows += 2;
    --v7;
  }

  while (v7);
}

- (double)rxThroughput
{
  rxBytes = [(FlowHistorySample *)self rxBytes];
  elapsedTime = self->_elapsedTime;

  return mbpsThroughput(rxBytes, elapsedTime);
}

- (double)txThroughput
{
  txBytes = [(FlowHistorySample *)self txBytes];
  elapsedTime = self->_elapsedTime;

  return mbpsThroughput(txBytes, elapsedTime);
}

- (unint64_t)rxThroughputBps
{
  if (self->_elapsedTime <= 0.0)
  {
    return 0;
  }

  else
  {
    return ([(FlowHistorySample *)self rxBytes]/ self->_elapsedTime);
  }
}

- (unint64_t)txThroughputBps
{
  if (self->_elapsedTime <= 0.0)
  {
    return 0;
  }

  else
  {
    return ([(FlowHistorySample *)self txBytes]/ self->_elapsedTime);
  }
}

@end