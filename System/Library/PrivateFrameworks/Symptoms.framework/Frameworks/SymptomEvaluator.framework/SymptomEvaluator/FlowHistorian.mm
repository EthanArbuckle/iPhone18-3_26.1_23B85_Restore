@interface FlowHistorian
- (BOOL)pendingInterfaceSampleIsIdle;
- (FlowHistorian)init;
- (double)lastInterfaceTrafficTimestamp;
- (id)description;
- (id)getState:(BOOL)state;
- (unint64_t)lastSampledRxBytes;
- (unint64_t)lastSampledTxBytes;
- (unint64_t)totalClosedFlows;
- (unint64_t)totalOpenedFlows;
- (unint64_t)totalRxBytes;
- (unint64_t)totalTxBytes;
- (void)applyDeltaRx:(unint64_t)rx deltaTx:(unint64_t)tx snapshot:(id)snapshot;
- (void)updateSamplesWithTime:(double)time bumpSamples:(BOOL)samples;
@end

@implementation FlowHistorian

- (id)description
{
  v8 = MEMORY[0x277CCACA8];
  v3 = apparentTime();
  v7 = dateStringMillisecondsFromReferenceInterval(v3);
  v6 = dateStringMillisecondsFromReferenceInterval(self->_lastSampleTimeIntervalSinceReferenceDate);
  v4 = [v8 stringWithFormat:@"Flow historian at %@ last sample at %@ total/apple/non-apple/sis rx-bytes %lld %lld %lld %lld tx-bytes %lld %lld %lld %lld new flows %lld %lld %lld %lld current  %lld %lld %lld %lld closed %lld %lld %lld %lld", v7, v6, -[FlowHistorian totalRxBytes](self, "totalRxBytes"), -[FlowHistorian totalRxAppleStackBytes](self, "totalRxAppleStackBytes"), -[FlowHistorian totalRxNonAppleStackBytes](self, "totalRxNonAppleStackBytes"), -[FlowHistorian totalRxSISBytes](self, "totalRxSISBytes"), -[FlowHistorian totalTxBytes](self, "totalTxBytes"), -[FlowHistorian totalTxAppleStackBytes](self, "totalTxAppleStackBytes"), -[FlowHistorian totalTxNonAppleStackBytes](self, "totalTxNonAppleStackBytes"), -[FlowHistorian totalTxSISBytes](self, "totalTxSISBytes"), -[FlowHistorian totalOpenedFlows](self, "totalOpenedFlows"), -[FlowHistorian totalOpenedAppleStackFlows](self, "totalOpenedAppleStackFlows"), -[FlowHistorian totalOpenedNonAppleStackFlows](self, "totalOpenedNonAppleStackFlows"), -[FlowHistorian totalOpenedSISFlows](self, "totalOpenedSISFlows"), -[FlowHistorian currentOpenedFlows](self, "currentOpenedFlows"), -[FlowHistorian currentOpenedAppleStackFlows](self, "currentOpenedAppleStackFlows"), -[FlowHistorian currentOpenedNonAppleStackFlows](self, "currentOpenedNonAppleStackFlows"), -[FlowHistorian currentOpenedSISFlows](self, "currentOpenedSISFlows"), -[FlowHistorian totalClosedFlows](self, "totalClosedFlows"), -[FlowHistorian totalClosedAppleStackFlows](self, "totalClosedAppleStackFlows"), -[FlowHistorian totalClosedNonAppleStackFlows](self, "totalClosedNonAppleStackFlows"), -[FlowHistorian totalClosedSISFlows](self, "totalClosedSISFlows")];

  return v4;
}

- (unint64_t)totalRxBytes
{
  v3 = 0;
  result = 0;
  p_currentCounts = &self->_currentCounts;
  do
  {
    result += p_currentCounts->counts[v3++].rxBytes;
  }

  while (v3 != 8);
  return result;
}

- (unint64_t)totalTxBytes
{
  v3 = 0;
  result = 0;
  p_txBytes = &self->_currentCounts.counts[0].txBytes;
  do
  {
    result += p_txBytes[v3];
    v3 += 4;
  }

  while (v3 != 32);
  return result;
}

- (unint64_t)totalOpenedFlows
{
  v3 = 0;
  result = 0;
  p_openedFlows = &self->_currentCounts.counts[0].openedFlows;
  do
  {
    result += p_openedFlows[v3];
    v3 += 4;
  }

  while (v3 != 32);
  return result;
}

- (unint64_t)totalClosedFlows
{
  v3 = 0;
  result = 0;
  p_closedFlows = &self->_currentCounts.counts[0].closedFlows;
  do
  {
    result += p_closedFlows[v3];
    v3 += 4;
  }

  while (v3 != 32);
  return result;
}

- (FlowHistorian)init
{
  v6.receiver = self;
  v6.super_class = FlowHistorian;
  v2 = [(FlowHistorian *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    historySamples = v2->_historySamples;
    v2->_historySamples = v3;

    v2->_maxHistorySamples = 2;
  }

  return v2;
}

- (unint64_t)lastSampledRxBytes
{
  v3 = 0;
  result = 0;
  p_lastSampledCounts = &self->_lastSampledCounts;
  do
  {
    result += p_lastSampledCounts->counts[v3++].rxBytes;
  }

  while (v3 != 8);
  return result;
}

- (unint64_t)lastSampledTxBytes
{
  v3 = 0;
  result = 0;
  p_txBytes = &self->_lastSampledCounts.counts[0].txBytes;
  do
  {
    result += p_txBytes[v3];
    v3 += 4;
  }

  while (v3 != 32);
  return result;
}

- (BOOL)pendingInterfaceSampleIsIdle
{
  totalRxBytes = [(FlowHistorian *)self totalRxBytes];
  result = 0;
  if (totalRxBytes == [(FlowHistorian *)self lastSampledRxBytes])
  {
    totalTxBytes = [(FlowHistorian *)self totalTxBytes];
    if (totalTxBytes == [(FlowHistorian *)self lastSampledTxBytes])
    {
      return 1;
    }
  }

  return result;
}

- (double)lastInterfaceTrafficTimestamp
{
  result = self->_lastInterfaceTrafficTimestamp;
  if (result == 0.0)
  {
    result = apparentTime();
    self->_lastInterfaceTrafficTimestamp = result;
  }

  return result;
}

- (void)updateSamplesWithTime:(double)time bumpSamples:(BOOL)samples
{
  samplesCopy = samples;
  v39 = *MEMORY[0x277D85DE8];
  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v27 = 134219264;
    timeCopy = time;
    v29 = 1024;
    v30 = samplesCopy;
    v31 = 2048;
    lastSampledRxBytes = [(FlowHistorian *)self lastSampledRxBytes];
    v33 = 2048;
    totalRxBytes = [(FlowHistorian *)self totalRxBytes];
    v35 = 2048;
    lastSampledTxBytes = [(FlowHistorian *)self lastSampledTxBytes];
    v37 = 2048;
    totalTxBytes = [(FlowHistorian *)self totalTxBytes];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "FlowHistorySampler updateSamplesWithTime %.3f bump %d, self.lastSampledRxBytes %lld self.totalRxBytes %lld  tx %lld %lld", &v27, 0x3Au);
  }

  if (self->_lastSampleTimeIntervalSinceReferenceDate == 0.0)
  {
    self->_lastSampleTimeIntervalSinceReferenceDate = time;
    v9 = *&self->_currentCounts.counts[6].openedFlows;
    *&self->_lastSampledCounts.counts[6].rxBytes = *&self->_currentCounts.counts[6].rxBytes;
    *&self->_lastSampledCounts.counts[6].openedFlows = v9;
    v10 = *&self->_currentCounts.counts[7].openedFlows;
    *&self->_lastSampledCounts.counts[7].rxBytes = *&self->_currentCounts.counts[7].rxBytes;
    *&self->_lastSampledCounts.counts[7].openedFlows = v10;
    v11 = *&self->_currentCounts.counts[4].openedFlows;
    *&self->_lastSampledCounts.counts[4].rxBytes = *&self->_currentCounts.counts[4].rxBytes;
    *&self->_lastSampledCounts.counts[4].openedFlows = v11;
    v12 = *&self->_currentCounts.counts[5].openedFlows;
    *&self->_lastSampledCounts.counts[5].rxBytes = *&self->_currentCounts.counts[5].rxBytes;
    *&self->_lastSampledCounts.counts[5].openedFlows = v12;
    v13 = *&self->_currentCounts.counts[2].openedFlows;
    *&self->_lastSampledCounts.counts[2].rxBytes = *&self->_currentCounts.counts[2].rxBytes;
    *&self->_lastSampledCounts.counts[2].openedFlows = v13;
    v14 = *&self->_currentCounts.counts[3].openedFlows;
    *&self->_lastSampledCounts.counts[3].rxBytes = *&self->_currentCounts.counts[3].rxBytes;
    *&self->_lastSampledCounts.counts[3].openedFlows = v14;
    v15 = *&self->_currentCounts.counts[0].openedFlows;
    *&self->_lastSampledCounts.counts[0].rxBytes = *&self->_currentCounts.counts[0].rxBytes;
    *&self->_lastSampledCounts.counts[0].openedFlows = v15;
    v16 = *&self->_currentCounts.counts[1].openedFlows;
    *&self->_lastSampledCounts.counts[1].rxBytes = *&self->_currentCounts.counts[1].rxBytes;
    *&self->_lastSampledCounts.counts[1].openedFlows = v16;
  }

  else if (samplesCopy)
  {
    v17 = objc_alloc_init(FlowHistorySample);
    [(FlowHistorySample *)v17 setStartTimeIntervalSinceReferenceDate:self->_lastSampleTimeIntervalSinceReferenceDate];
    [(FlowHistorySample *)v17 setElapsedTime:time - self->_lastSampleTimeIntervalSinceReferenceDate];
    [(FlowHistorySample *)v17 noteCurent:&self->_currentCounts previous:&self->_lastSampledCounts];
    [(NSMutableArray *)self->_historySamples addObject:v17];
    if ([(NSMutableArray *)self->_historySamples count]> self->_maxHistorySamples)
    {
      [(NSMutableArray *)self->_historySamples removeObjectAtIndex:0];
    }

    v18 = *&self->_currentCounts.counts[6].openedFlows;
    *&self->_lastSampledCounts.counts[6].rxBytes = *&self->_currentCounts.counts[6].rxBytes;
    *&self->_lastSampledCounts.counts[6].openedFlows = v18;
    v19 = *&self->_currentCounts.counts[7].openedFlows;
    *&self->_lastSampledCounts.counts[7].rxBytes = *&self->_currentCounts.counts[7].rxBytes;
    *&self->_lastSampledCounts.counts[7].openedFlows = v19;
    v20 = *&self->_currentCounts.counts[4].openedFlows;
    *&self->_lastSampledCounts.counts[4].rxBytes = *&self->_currentCounts.counts[4].rxBytes;
    *&self->_lastSampledCounts.counts[4].openedFlows = v20;
    v21 = *&self->_currentCounts.counts[5].openedFlows;
    *&self->_lastSampledCounts.counts[5].rxBytes = *&self->_currentCounts.counts[5].rxBytes;
    *&self->_lastSampledCounts.counts[5].openedFlows = v21;
    v22 = *&self->_currentCounts.counts[2].openedFlows;
    *&self->_lastSampledCounts.counts[2].rxBytes = *&self->_currentCounts.counts[2].rxBytes;
    *&self->_lastSampledCounts.counts[2].openedFlows = v22;
    v23 = *&self->_currentCounts.counts[3].openedFlows;
    *&self->_lastSampledCounts.counts[3].rxBytes = *&self->_currentCounts.counts[3].rxBytes;
    *&self->_lastSampledCounts.counts[3].openedFlows = v23;
    v24 = *&self->_currentCounts.counts[0].openedFlows;
    *&self->_lastSampledCounts.counts[0].rxBytes = *&self->_currentCounts.counts[0].rxBytes;
    *&self->_lastSampledCounts.counts[0].openedFlows = v24;
    v25 = *&self->_currentCounts.counts[1].openedFlows;
    *&self->_lastSampledCounts.counts[1].rxBytes = *&self->_currentCounts.counts[1].rxBytes;
    *&self->_lastSampledCounts.counts[1].openedFlows = v25;
    self->_lastSampleTimeIntervalSinceReferenceDate = time;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)applyDeltaRx:(unint64_t)rx deltaTx:(unint64_t)tx snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if ([snapshotCopy interfaceCellularViaPreferredFallback])
  {
    v8 = 1;
  }

  else if ([snapshotCopy interfaceCellularViaAnyFallback])
  {
    v8 = 2;
  }

  else if ([snapshotCopy flowUsesChannels])
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  snapshotAppStateIsForeground = [snapshotCopy snapshotAppStateIsForeground];
  LODWORD(v10) = v8 | 4;
  if (snapshotAppStateIsForeground)
  {
    v10 = v8;
  }

  else
  {
    v10 = v10;
  }

  v11 = &self->super.isa + 4 * v10;
  v12 = v11[34] + tx;
  v11[33] = (v11[33] + rx);
  v11[34] = v12;
  if ([snapshotCopy firstOccurrence])
  {
    v11[35] = (v11[35] + 1);
  }

  if ([snapshotCopy snapshotReason] == 2)
  {
    v11[36] = (v11[36] + 1);
  }

  self->_lastInterfaceTrafficTimestamp = apparentTime();
}

- (id)getState:(BOOL)state
{
  stateCopy = state;
  v34 = *MEMORY[0x277D85DE8];
  v5 = apparentTime();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(FlowHistorian *)self description];
  v28 = v6;
  [v6 addObject:v7];

  if (stateCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = self->_historySamples;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v30;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v29 + 1) + 8 * v13);
          v16 = objc_alloc(MEMORY[0x277CCACA8]);
          logPrefix = self->_logPrefix;
          if (!logPrefix)
          {
            logPrefix = &stru_2847966D8;
          }

          v11 = [v16 initWithFormat:@"          %@%@", logPrefix, v15];

          [v28 addObject:v11];
          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    if (v5 > 0.0)
    {
      lastSampleTimeIntervalSinceReferenceDate = self->_lastSampleTimeIntervalSinceReferenceDate;
      if (lastSampleTimeIntervalSinceReferenceDate > 0.0)
      {
        v22 = v5 - lastSampleTimeIntervalSinceReferenceDate;
        if (v22 > 0.0)
        {
          v23 = objc_alloc_init(FlowHistorySample);
          [(FlowHistorySample *)v23 setStartTimeIntervalSinceReferenceDate:self->_lastSampleTimeIntervalSinceReferenceDate];
          [(FlowHistorySample *)v23 setElapsedTime:v22];
          [(FlowHistorySample *)v23 noteCurent:&self->_currentCounts previous:&self->_lastSampledCounts];
          v24 = self->_logPrefix;
          if (!v24)
          {
            v24 = &stru_2847966D8;
          }

          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"<partial> %@%@", v24, v23];

          [v28 addObject:v25];
          v11 = v25;
        }
      }
    }
  }

  else if ([(NSMutableArray *)self->_historySamples count])
  {
    lastObject = [(NSMutableArray *)self->_historySamples lastObject];
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = self->_logPrefix;
    if (!v20)
    {
      v20 = &stru_2847966D8;
    }

    v11 = [v19 initWithFormat:@"          %@%@", v20, lastObject];
    [v28 addObject:v11];
  }

  else
  {
    v11 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v28;
}

@end