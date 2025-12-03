@interface VCWeeklyMetricSubmitter
- (VCWeeklyMetricSubmitter)initWithDatabaseProvider:(id)provider;
- (id)event;
@end

@implementation VCWeeklyMetricSubmitter

- (id)event
{
  v2 = objc_alloc_init(MEMORY[0x277D7C658]);
  [v2 setKey:@"WeeklyStatus"];

  return v2;
}

- (VCWeeklyMetricSubmitter)initWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  v5 = [VCMetricCheckIn recentCheckInWithMode:2];
  v6 = objc_alloc_init(MEMORY[0x277D7C658]);
  v7 = [(VCMetricSubmitter *)self initWithCheckIn:v5 event:v6 databaseProvider:providerCopy];

  return v7;
}

@end