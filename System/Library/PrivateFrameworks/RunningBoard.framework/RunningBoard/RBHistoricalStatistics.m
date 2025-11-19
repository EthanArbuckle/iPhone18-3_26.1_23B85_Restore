@interface RBHistoricalStatistics
- (RBHistoricalStatistics)initWithReportFrequency:(unint64_t)a3;
- (void)logStatisticsPeriodically;
- (void)logStatisticsWithLabel:(void *)a1;
- (void)notifyAssertionCount:(unint64_t)a3;
- (void)notifyClientCount:(unint64_t)a3;
- (void)notifyMonitorCount:(unint64_t)a3;
- (void)notifyProcessCount:(unint64_t)a3;
@end

@implementation RBHistoricalStatistics

void __51__RBHistoricalStatistics_logStatisticsPeriodically__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("RBHistoricalStatistics", v2);
  v4 = logStatisticsPeriodically_periodicQueue;
  logStatisticsPeriodically_periodicQueue = v3;

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, logStatisticsPeriodically_periodicQueue);
  v6 = logStatisticsPeriodically_periodicSource;
  logStatisticsPeriodically_periodicSource = v5;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__RBHistoricalStatistics_logStatisticsPeriodically__block_invoke_2;
  handler[3] = &unk_279B32CB0;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(logStatisticsPeriodically_periodicSource, handler);
  dispatch_activate(logStatisticsPeriodically_periodicSource);
  v7 = logStatisticsPeriodically_periodicSource;
  v8 = dispatch_time(0, *(*(a1 + 32) + 80));
  dispatch_source_set_timer(v7, v8, *(*(a1 + 32) + 80), *(*(a1 + 32) + 80) / 0xAuLL);
}

- (RBHistoricalStatistics)initWithReportFrequency:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = RBHistoricalStatistics;
  v4 = [(RBHistoricalStatistics *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_frequency = a3;
    v4->_period = 60000000000 * a3;
    [(RBHistoricalStatistics *)v4 logStatisticsPeriodically];
  }

  return v5;
}

- (void)notifyClientCount:(unint64_t)a3
{
  self->_currentClients = a3;
  if (self->_peakClients < a3)
  {
    self->_peakClients = a3;
    [(RBHistoricalStatistics *)self logStatisticsWithLabel:?];
  }
}

- (void)notifyProcessCount:(unint64_t)a3
{
  self->_currentProcesses = a3;
  if (self->_peakProcesses < a3)
  {
    self->_peakProcesses = a3;
    [(RBHistoricalStatistics *)self logStatisticsWithLabel:?];
  }
}

- (void)notifyAssertionCount:(unint64_t)a3
{
  self->_currentAsserions = a3;
  if (self->_peakAssertions < a3)
  {
    self->_peakAssertions = a3;
    [(RBHistoricalStatistics *)self logStatisticsWithLabel:?];
  }
}

- (void)notifyMonitorCount:(unint64_t)a3
{
  self->_currentMonitors = a3;
  if (self->_peakMonitors < a3)
  {
    self->_peakMonitors = a3;
    [(RBHistoricalStatistics *)self logStatisticsWithLabel:?];
  }
}

- (void)logStatisticsWithLabel:(void *)a1
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = rbs_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[2];
      v6 = a1[3];
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      v10 = a1[7];
      v11 = a1[8];
      v12 = a1[9];
      v14 = 138414338;
      v15 = v3;
      v16 = 2048;
      v17 = v5;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      v28 = 2048;
      v29 = v11;
      v30 = 2048;
      v31 = v12;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "%@C %lu(%lu) P %lu(%lu) A %lu(%lu) M %lu(%lu)", &v14, 0x5Cu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)logStatisticsPeriodically
{
  if (a1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__RBHistoricalStatistics_logStatisticsPeriodically__block_invoke;
    block[3] = &unk_279B32CB0;
    block[4] = a1;
    if (logStatisticsPeriodically_onceToken != -1)
    {
      dispatch_once(&logStatisticsPeriodically_onceToken, block);
    }
  }
}

@end