@interface HKSHSleepChartDataSourceProvider
- (HKSHSleepChartDataSourceProvider)initWithCalendar:(id)a3 queryIdentifier:(id)a4;
- (id)makeSleepDataSourceFromHealthStore:(id)a3 representativeDisplayType:(id)a4;
- (id)makeSleepStagesDataSourceFromHealthStore:(id)a3 representativeDisplayType:(id)a4;
@end

@implementation HKSHSleepChartDataSourceProvider

- (HKSHSleepChartDataSourceProvider)initWithCalendar:(id)a3 queryIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKSHSleepChartDataSourceProvider;
  v9 = [(HKSHSleepChartDataSourceProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, a3);
    objc_storeStrong(&v10->_queryIdentifier, a4);
  }

  return v10;
}

- (id)makeSleepDataSourceFromHealthStore:(id)a3 representativeDisplayType:(id)a4
{
  v6 = MEMORY[0x277D12A88];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = *MEMORY[0x277D12768];
  v11 = [(HKSHSleepChartDataSourceProvider *)self queryIdentifier];
  v12 = [(HKSHSleepChartDataSourceProvider *)self calendar];
  v13 = [v9 initWithHealthStore:v8 representativeDisplayType:v7 queryOptions:0 cacheIdentifier:v10 queryIdentifier:v11 calendar:v12];

  return v13;
}

- (id)makeSleepStagesDataSourceFromHealthStore:(id)a3 representativeDisplayType:(id)a4
{
  v6 = MEMORY[0x277D12A88];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = *MEMORY[0x277D12770];
  v11 = [(HKSHSleepChartDataSourceProvider *)self queryIdentifier];
  v12 = [(HKSHSleepChartDataSourceProvider *)self calendar];
  v13 = [v9 initWithHealthStore:v8 representativeDisplayType:v7 queryOptions:4 cacheIdentifier:v10 queryIdentifier:v11 calendar:v12];

  return v13;
}

@end