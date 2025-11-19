@interface NLDemoDistanceProvider
- (NLDemoDistanceProvider)initWithDistanceProvider:(id)a3;
- (id)adjustedStatisticsForStatistics:(id)a3;
@end

@implementation NLDemoDistanceProvider

- (NLDemoDistanceProvider)initWithDistanceProvider:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = NLDemoDistanceProvider;
  v8 = [(NLDemoDistanceProvider *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_distanceProvider, location[0]);
    v8->_adjustedDistanceInMeters = 0.0;
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)adjustedStatisticsForStatistics:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = objc_alloc(MEMORY[0x277CCDA50]);
  v9 = [location[0] quantityType];
  v8 = [location[0] startDate];
  v7 = [location[0] endDate];
  v20 = [v6 initWithDataType:v9 startDate:v8 endDate:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  [(NLDemoDistanceProvider *)v22 adjustedDistanceInMeters];
  v11 = v3;
  v12 = [location[0] sumQuantity];
  v10 = [MEMORY[0x277CCDAB0] meterUnit];
  [v12 doubleValueForUnit:?];
  v13 = v11 + v4;
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v12);
  v14 = MEMORY[0x277CCD7E8];
  v16 = [MEMORY[0x277CCDAB0] meterUnit];
  v15 = [v14 quantityWithUnit:v13 doubleValue:?];
  [v20 setSumQuantity:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v17 = [location[0] mostRecentQuantity];
  [v20 setMostRecentQuantity:?];
  MEMORY[0x277D82BD8](v17);
  v18 = [location[0] mostRecentQuantityDateInterval];
  [v20 setMostRecentQuantityDateInterval:?];
  MEMORY[0x277D82BD8](v18);
  v19 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v19;
}

@end