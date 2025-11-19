@interface STSCASessionStats
- (STSCASessionStats)init;
- (void)postReaderSessionEvent;
@end

@implementation STSCASessionStats

- (STSCASessionStats)init
{
  v3.receiver = self;
  v3.super_class = STSCASessionStats;
  result = [(STSCASessionStats *)&v3 init];
  if (result)
  {
    result->_totalTransactionsInSession = 0;
    result->_totalSuccessfulTransactionsInSession = 0;
  }

  return result;
}

- (void)postReaderSessionEvent
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2876E6790;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalTransactionsInSession];
  v8[1] = 0x2876E67B0;
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalSuccessfulTransactionsInSession];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = +[STSReaderAnalyticsLogger sharedCALogger];
  [v6 postReaderSessionEvent:v5];

  v7 = *MEMORY[0x277D85DE8];
}

@end