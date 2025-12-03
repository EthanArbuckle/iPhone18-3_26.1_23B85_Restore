@interface VCDailyMetricSubmitter
- (VCDailyMetricSubmitter)initWithDatabaseProvider:(id)provider;
- (id)event;
@end

@implementation VCDailyMetricSubmitter

- (id)event
{
  v2 = objc_alloc_init(MEMORY[0x277D7C658]);
  [v2 setKey:@"DailyStatus"];

  return v2;
}

- (VCDailyMetricSubmitter)initWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  v5 = [VCMetricCheckIn recentCheckInWithMode:1];
  v6 = objc_alloc_init(MEMORY[0x277D7C658]);
  v7 = [(VCMetricSubmitter *)self initWithCheckIn:v5 event:v6 databaseProvider:providerCopy];

  return v7;
}

@end