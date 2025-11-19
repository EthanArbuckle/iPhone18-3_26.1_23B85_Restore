@interface CAUsageDeltaTracker
- (id)initForNetworkType:(unsigned __int8)a3 rootCause:(int)a4 startValue:(unint64_t)a5;
- (void)dealloc;
- (void)recordFlowCount:(unint64_t)a3;
- (void)recordUsageValue:(unint64_t)a3;
@end

@implementation CAUsageDeltaTracker

- (id)initForNetworkType:(unsigned __int8)a3 rootCause:(int)a4 startValue:(unint64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = CAUsageDeltaTracker;
  v8 = [(CAUsageDeltaTracker *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_netType = a3;
    v8->_rootCause = a4;
    v8->_startValue = a5;
    v8->_lastValue = a5;
    v8->_flowCount = 0;
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      startValue = v9->_startValue;
      *buf = 134218240;
      v16 = v9;
      v17 = 2048;
      v18 = startValue;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CFSM TriggerDisconnect logs, record created: %p, initial value: %llu", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)recordUsageValue:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  self->_lastValue = a3;
  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_lastValue - self->_startValue;
    v8 = 134218496;
    v9 = self;
    v10 = 2048;
    v11 = a3;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CFSM TriggerDisconnect logs, record: %p, new value: %llu, balance: %llu", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordFlowCount:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  self->_flowCount = a3;
  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = self;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CFSM TriggerDisconnect logs, record: %p, flowCount: %llu", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = self->_lastValue - self->_startValue;
  v4 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    flowCount = self->_flowCount;
    *buf = 134218496;
    v20 = self;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = flowCount;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CFSM TriggerDisconnect logs, record dispose: %p, final balance: %llu, flow count: %llu, will post to CA", buf, 0x20u);
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __30__CAUsageDeltaTracker_dealloc__block_invoke;
  v16 = &unk_27898C780;
  v17 = self;
  v18 = v3;
  v6 = AnalyticsSendEventLazy();
  v7 = rnfLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = self;
      v8 = "CFSM TriggerDisconnect logs, record dispose: %p, successfully posted to CA";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_23255B000, v9, v10, v8, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v20 = self;
    v8 = "CFSM TriggerDisconnect logs, record dispose: %p, failed to post to CA";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

  v12.receiver = self;
  v12.super_class = CAUsageDeltaTracker;
  [(CAUsageDeltaTracker *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

id __30__CAUsageDeltaTracker_dealloc__block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"networkType";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(*(a1 + 32) + 8)];
  v10[0] = v2;
  v9[1] = @"rootCause";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a1 + 32) + 12)];
  v10[1] = v3;
  v9[2] = @"usageBytes";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v10[2] = v4;
  v9[3] = @"numberOfImpactedFlows";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 32) + 32)];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end