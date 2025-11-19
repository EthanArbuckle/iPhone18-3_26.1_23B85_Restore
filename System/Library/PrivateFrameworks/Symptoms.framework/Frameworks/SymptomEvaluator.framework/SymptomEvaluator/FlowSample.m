@interface FlowSample
+ (id)_cellRelay;
+ (void)acquireNominalCeilingValuesForCellDL:(double *)a3 andUL:(double *)a4;
- (double)averageCellRxThroughput;
- (double)averageCellTxThroughput;
- (double)averageRxThroughput;
- (double)averageTxThroughput;
- (double)averageWiFiRxThroughput;
- (double)averageWiFiTxThroughput;
- (double)ceilingRxThroughput;
- (double)ceilingTxThroughput;
- (double)maxCellRxThroughput;
- (double)maxCellTxThroughput;
- (double)maxRxThroughput;
- (double)maxTxThroughput;
- (double)maxWiFiRxThroughput;
- (double)maxWiFiTxThroughput;
- (double)minCellRxThroughput;
- (double)minCellTxThroughput;
- (double)minRxThroughput;
- (double)minTxThroughput;
- (double)minWiFiRxThroughput;
- (double)minWiFiTxThroughput;
- (id)description;
- (void)accumulateFrom:(id)a3;
- (void)acquireCeilingValuesForCellFlow:(id)a3;
@end

@implementation FlowSample

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  elapsedTime = self->_elapsedTime;
  totalObservedCellRxBytes = self->_totalObservedCellRxBytes;
  totalObservedCellTxBytes = self->_totalObservedCellTxBytes;
  totalObservedWiFiRxBytes = self->_totalObservedWiFiRxBytes;
  totalObservedWiFiTxBytes = self->_totalObservedWiFiTxBytes;
  [(FlowSample *)self averageRxThroughput];
  v10 = v9;
  [(FlowSample *)self averageTxThroughput];
  v12 = v11;
  [(FlowSample *)self maxRxThroughput];
  v14 = v13;
  [(FlowSample *)self ceilingRxThroughput];
  v16 = v15;
  [(FlowSample *)self maxTxThroughput];
  v18 = v17;
  [(FlowSample *)self ceilingTxThroughput];
  return [v3 stringWithFormat:@"FlowSample elapsed %8.3f secs, bytes cell/wifi rx %lld/%lld tx %lld/%lld avg tput in Mbps rx %.6f tx %.6f max tput  rx %.6f (%.2f) tx %.6f (%.2f)", *&elapsedTime, totalObservedCellRxBytes, totalObservedWiFiRxBytes, totalObservedCellTxBytes, totalObservedWiFiTxBytes, v10, v12, v14, v16, v18, v19];
}

- (double)minRxThroughput
{
  minCellRxThroughput = self->_minCellRxThroughput;
  if (minCellRxThroughput <= 0.0 && self->_minWiFiRxThroughput <= 0.0)
  {
    [(FlowSample *)self averageRxThroughput];
  }

  else
  {
    result = self->_minWiFiRxThroughput;
    if (minCellRxThroughput != 0.0)
    {
      if (result == 0.0)
      {
        return self->_minCellRxThroughput;
      }

      else if (minCellRxThroughput < result)
      {
        return self->_minCellRxThroughput;
      }
    }
  }

  return result;
}

- (double)averageRxThroughput
{
  v3 = [(FlowSample *)self totalObservedRxBytes];
  elapsedTime = self->_elapsedTime;

  return mbpsThroughput(v3, elapsedTime);
}

- (double)maxRxThroughput
{
  result = self->_maxCellRxThroughput;
  maxWiFiRxThroughput = self->_maxWiFiRxThroughput;
  if (result > 0.0 || maxWiFiRxThroughput > 0.0)
  {
    if (result <= maxWiFiRxThroughput)
    {
      return self->_maxWiFiRxThroughput;
    }
  }

  else
  {
    [(FlowSample *)self averageRxThroughput];
  }

  return result;
}

- (double)minTxThroughput
{
  minCellTxThroughput = self->_minCellTxThroughput;
  if (minCellTxThroughput <= 0.0 && self->_minWiFiTxThroughput <= 0.0)
  {
    [(FlowSample *)self averageTxThroughput];
  }

  else
  {
    result = self->_minWiFiTxThroughput;
    if (minCellTxThroughput != 0.0)
    {
      if (result == 0.0)
      {
        return self->_minCellTxThroughput;
      }

      else if (minCellTxThroughput < result)
      {
        return self->_minCellTxThroughput;
      }
    }
  }

  return result;
}

- (double)averageTxThroughput
{
  v3 = [(FlowSample *)self totalObservedTxBytes];
  elapsedTime = self->_elapsedTime;

  return mbpsThroughput(v3, elapsedTime);
}

- (double)maxTxThroughput
{
  result = self->_maxCellTxThroughput;
  maxWiFiTxThroughput = self->_maxWiFiTxThroughput;
  if (result > 0.0 || maxWiFiTxThroughput > 0.0)
  {
    if (result <= maxWiFiTxThroughput)
    {
      return self->_maxWiFiTxThroughput;
    }
  }

  else
  {
    [(FlowSample *)self averageTxThroughput];
  }

  return result;
}

- (double)ceilingRxThroughput
{
  result = self->_ceilingCellRxThroughput;
  if (result <= self->_ceilingWiFiRxThroughput)
  {
    return self->_ceilingWiFiRxThroughput;
  }

  return result;
}

- (double)ceilingTxThroughput
{
  result = self->_ceilingCellTxThroughput;
  if (result <= self->_ceilingWiFiTxThroughput)
  {
    return self->_ceilingWiFiTxThroughput;
  }

  return result;
}

- (double)minCellRxThroughput
{
  result = self->_minCellRxThroughput;
  if (result <= 0.0)
  {
    [(FlowSample *)self averageCellRxThroughput];
  }

  return result;
}

- (double)averageCellRxThroughput
{
  v3 = [(FlowSample *)self totalObservedCellRxBytes];
  elapsedTime = self->_elapsedTime;

  return mbpsThroughput(v3, elapsedTime);
}

- (double)maxCellRxThroughput
{
  result = self->_maxCellRxThroughput;
  if (result <= 0.0)
  {
    [(FlowSample *)self averageCellRxThroughput];
  }

  return result;
}

- (double)minCellTxThroughput
{
  result = self->_minCellTxThroughput;
  if (result <= 0.0)
  {
    [(FlowSample *)self averageCellTxThroughput];
  }

  return result;
}

- (double)averageCellTxThroughput
{
  v3 = [(FlowSample *)self totalObservedCellTxBytes];
  elapsedTime = self->_elapsedTime;

  return mbpsThroughput(v3, elapsedTime);
}

- (double)maxCellTxThroughput
{
  result = self->_maxCellTxThroughput;
  if (result <= 0.0)
  {
    [(FlowSample *)self averageCellTxThroughput];
  }

  return result;
}

- (double)minWiFiRxThroughput
{
  result = self->_minWiFiRxThroughput;
  if (result <= 0.0)
  {
    [(FlowSample *)self averageWiFiRxThroughput];
  }

  return result;
}

- (double)averageWiFiRxThroughput
{
  v3 = [(FlowSample *)self totalObservedWiFiRxBytes];
  elapsedTime = self->_elapsedTime;

  return mbpsThroughput(v3, elapsedTime);
}

- (double)maxWiFiRxThroughput
{
  result = self->_maxWiFiRxThroughput;
  if (result <= 0.0)
  {
    [(FlowSample *)self averageWiFiRxThroughput];
  }

  return result;
}

- (double)minWiFiTxThroughput
{
  result = self->_minWiFiTxThroughput;
  if (result <= 0.0)
  {
    [(FlowSample *)self averageWiFiTxThroughput];
  }

  return result;
}

- (double)averageWiFiTxThroughput
{
  v3 = [(FlowSample *)self totalObservedWiFiTxBytes];
  elapsedTime = self->_elapsedTime;

  return mbpsThroughput(v3, elapsedTime);
}

- (double)maxWiFiTxThroughput
{
  result = self->_maxWiFiTxThroughput;
  if (result <= 0.0)
  {
    [(FlowSample *)self averageWiFiTxThroughput];
  }

  return result;
}

- (void)accumulateFrom:(id)a3
{
  v17 = a3;
  [v17 elapsedTime];
  self->_elapsedTime = v4 + self->_elapsedTime;
  self->_totalObservedCellRxBytes += [v17 totalObservedCellRxBytes];
  self->_totalObservedCellTxBytes += [v17 totalObservedCellTxBytes];
  self->_totalObservedWiFiRxBytes += [v17 totalObservedWiFiRxBytes];
  self->_totalObservedWiFiTxBytes += [v17 totalObservedWiFiTxBytes];
  [v17 maxCellRxThroughput];
  if (v5 > self->_maxCellRxThroughput)
  {
    self->_maxCellRxThroughput = v5;
  }

  if (v5 < self->_minCellRxThroughput)
  {
    self->_minCellRxThroughput = v5;
  }

  [v17 maxWiFiRxThroughput];
  if (v6 > self->_maxWiFiRxThroughput)
  {
    self->_maxWiFiRxThroughput = v6;
  }

  if (v6 < self->_minWiFiRxThroughput)
  {
    self->_minWiFiRxThroughput = v6;
  }

  [v17 maxCellTxThroughput];
  if (v7 > self->_maxCellTxThroughput)
  {
    self->_maxCellTxThroughput = v7;
  }

  if (v7 < self->_minCellTxThroughput)
  {
    self->_minCellTxThroughput = v7;
  }

  [v17 maxWiFiTxThroughput];
  if (v8 > self->_maxWiFiTxThroughput)
  {
    self->_maxWiFiTxThroughput = v8;
  }

  if (v8 < self->_minWiFiTxThroughput)
  {
    self->_minWiFiTxThroughput = v8;
  }

  [v17 elapsedTime];
  v9 = 1.0;
  if (v10 > 0.0)
  {
    elapsedTime = self->_elapsedTime;
    [v17 elapsedTime];
    *&v12 = elapsedTime / v12;
    v9 = *&v12;
  }

  [v17 ceilingCellRxThroughput];
  self->_ceilingCellRxThroughput = self->_ceilingCellRxThroughput + (v13 - self->_ceilingCellRxThroughput) / v9;
  [v17 ceilingWiFiRxThroughput];
  self->_ceilingWiFiRxThroughput = self->_ceilingWiFiRxThroughput + (v14 - self->_ceilingWiFiRxThroughput) / v9;
  [v17 ceilingCellTxThroughput];
  self->_ceilingCellTxThroughput = self->_ceilingCellTxThroughput + (v15 - self->_ceilingCellTxThroughput) / v9;
  [v17 ceilingWiFiTxThroughput];
  self->_ceilingWiFiTxThroughput = self->_ceilingWiFiTxThroughput + (v16 - self->_ceilingWiFiTxThroughput) / v9;
}

+ (id)_cellRelay
{
  v2 = _cellRelay_relay;
  if (!_cellRelay_relay)
  {
    v3 = [NetworkStateRelay getStateRelayFor:5];
    v4 = _cellRelay_relay;
    _cellRelay_relay = v3;

    v2 = _cellRelay_relay;
  }

  return v2;
}

+ (void)acquireNominalCeilingValuesForCellDL:(double *)a3 andUL:(double *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v6 = +[FlowSample _cellRelay];
    if ([v6 nrFrequencyBand] == 2)
    {
      *a3 = 1549.0;
      v7 = 0x4054800000000000;
    }

    else if ([v6 nrFrequencyBand] == 1)
    {
      *a3 = 114.0;
      v7 = 0x4038000000000000;
    }

    else
    {
      if ([v6 radioTechnology] != 2 && objc_msgSend(v6, "radioTechnology") != 11 && objc_msgSend(v6, "radioTechnology") != 10)
      {
        *a3 = 0.0;
        *a4 = 0.0;
        v10 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v11 = v10;
          v12 = 67109376;
          *v13 = [v6 nrFrequencyBand];
          *&v13[4] = 1024;
          *&v13[6] = [v6 radioTechnology];
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Unindentified band/radio %d/%d", &v12, 0xEu);
        }

        goto LABEL_14;
      }

      *a3 = 43.0;
      v7 = 0x4022000000000000;
    }

    *a4 = v7;
LABEL_14:

    goto LABEL_15;
  }

  v8 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = 134218240;
    *v13 = a3;
    *&v13[8] = 2048;
    v14 = a4;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Wrong input arguments dlTput:%p ulTput:%p", &v12, 0x16u);
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)acquireCeilingValuesForCellFlow:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [FlowSample acquireNominalCeilingValuesForCellDL:&self->_ceilingCellRxThroughput andUL:&self->_ceilingCellTxThroughput];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    ceilingCellRxThroughput = self->_ceilingCellRxThroughput;
    ceilingCellTxThroughput = self->_ceilingCellTxThroughput;
    v9 = 134218498;
    v10 = ceilingCellRxThroughput;
    v11 = 2048;
    v12 = ceilingCellTxThroughput;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Using nominal DL tput %.2f and UL tput %.2f for flow: %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end