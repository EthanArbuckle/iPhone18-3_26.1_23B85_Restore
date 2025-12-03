@interface HKSHSleepChartDataSourceProvider
- (HKSHSleepChartDataSourceProvider)initWithCalendar:(id)calendar queryIdentifier:(id)identifier;
- (id)makeSleepDataSourceFromHealthStore:(id)store representativeDisplayType:(id)type;
- (id)makeSleepStagesDataSourceFromHealthStore:(id)store representativeDisplayType:(id)type;
@end

@implementation HKSHSleepChartDataSourceProvider

- (HKSHSleepChartDataSourceProvider)initWithCalendar:(id)calendar queryIdentifier:(id)identifier
{
  calendarCopy = calendar;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HKSHSleepChartDataSourceProvider;
  v9 = [(HKSHSleepChartDataSourceProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, calendar);
    objc_storeStrong(&v10->_queryIdentifier, identifier);
  }

  return v10;
}

- (id)makeSleepDataSourceFromHealthStore:(id)store representativeDisplayType:(id)type
{
  v6 = MEMORY[0x277D12A88];
  typeCopy = type;
  storeCopy = store;
  v9 = [v6 alloc];
  v10 = *MEMORY[0x277D12768];
  queryIdentifier = [(HKSHSleepChartDataSourceProvider *)self queryIdentifier];
  calendar = [(HKSHSleepChartDataSourceProvider *)self calendar];
  v13 = [v9 initWithHealthStore:storeCopy representativeDisplayType:typeCopy queryOptions:0 cacheIdentifier:v10 queryIdentifier:queryIdentifier calendar:calendar];

  return v13;
}

- (id)makeSleepStagesDataSourceFromHealthStore:(id)store representativeDisplayType:(id)type
{
  v6 = MEMORY[0x277D12A88];
  typeCopy = type;
  storeCopy = store;
  v9 = [v6 alloc];
  v10 = *MEMORY[0x277D12770];
  queryIdentifier = [(HKSHSleepChartDataSourceProvider *)self queryIdentifier];
  calendar = [(HKSHSleepChartDataSourceProvider *)self calendar];
  v13 = [v9 initWithHealthStore:storeCopy representativeDisplayType:typeCopy queryOptions:4 cacheIdentifier:v10 queryIdentifier:queryIdentifier calendar:calendar];

  return v13;
}

@end