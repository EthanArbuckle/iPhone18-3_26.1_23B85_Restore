@interface SymptomsNetworkAnalyticsRRCConnectedPeriodMetric
- (id)_eventPayload;
- (id)_trafficClassString:(unsigned int)string;
@end

@implementation SymptomsNetworkAnalyticsRRCConnectedPeriodMetric

- (id)_trafficClassString:(unsigned int)string
{
  if (string > 0x1F)
  {
    return @"Unknown";
  }

  else
  {
    return off_27898CCA8[string];
  }
}

- (id)_eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_periodType];
  [v3 setObject:v4 forKeyedSubscript:@"periodType"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_periodDurationSecs];
  [v3 setObject:v5 forKeyedSubscript:@"periodDurationSecs"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_lastDisconnectedSecs];
  [v3 setObject:v6 forKeyedSubscript:@"lastDisconnectedSecs"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_anyListenerCount];
  [v3 setObject:v7 forKeyedSubscript:@"anyListenerCount"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_backgroundListenerCount];
  [v3 setObject:v8 forKeyedSubscript:@"backgroundListenerCount"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_ingressLQM];
  [v3 setObject:v9 forKeyedSubscript:@"ingressLQM"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_egressLQM];
  [v3 setObject:v10 forKeyedSubscript:@"egressLQM"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ingressUlThroughputBps];
  [v3 setObject:v11 forKeyedSubscript:@"ingressUlThroughputBps"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ingressDlThroughputBps];
  [v3 setObject:v12 forKeyedSubscript:@"ingressDlThroughputBps"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_egressDlThroughputBps];
  [v3 setObject:v13 forKeyedSubscript:@"egressDlThroughputBps"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_egressUlThroughputBps];
  [v3 setObject:v14 forKeyedSubscript:@"egressUlThroughputBps"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesIn];
  [v3 setObject:v15 forKeyedSubscript:@"bytesIn"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesOut];
  [v3 setObject:v16 forKeyedSubscript:@"bytesOut"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_bytesOut + self->_bytesIn];
  [v3 setObject:v17 forKeyedSubscript:@"bytesTotal"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetsIn];
  [v3 setObject:v18 forKeyedSubscript:@"packetsIn"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetsOut];
  [v3 setObject:v19 forKeyedSubscript:@"packetsOut"];

  [v3 setObject:self->_activeNameDuringPeriod forKeyedSubscript:@"activeNameDuringPeriod"];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_uniqueActiveAppCount];
  [v3 setObject:v20 forKeyedSubscript:@"uniqueActiveAppCount"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_periodDurationTCEnabledSecs];
  [v3 setObject:v21 forKeyedSubscript:@"periodDurationTCEnabledSecs"];

  v22 = 0;
  v23 = MEMORY[0x277CBEC38];
  do
  {
    if ((self->_trafficClassFlags >> v22))
    {
      v24 = [(SymptomsNetworkAnalyticsRRCConnectedPeriodMetric *)self _trafficClassString:v22];
      [v3 setObject:v23 forKeyedSubscript:v24];
    }

    v22 = (v22 + 1);
  }

  while (v22 != 32);

  return v3;
}

@end