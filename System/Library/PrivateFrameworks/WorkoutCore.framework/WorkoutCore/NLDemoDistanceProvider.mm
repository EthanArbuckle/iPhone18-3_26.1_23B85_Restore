@interface NLDemoDistanceProvider
- (NLDemoDistanceProvider)initWithDistanceProvider:(id)provider;
- (id)adjustedStatisticsForStatistics:(id)statistics;
@end

@implementation NLDemoDistanceProvider

- (NLDemoDistanceProvider)initWithDistanceProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = NLDemoDistanceProvider;
  selfCopy = [(NLDemoDistanceProvider *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_distanceProvider, location[0]);
    selfCopy->_adjustedDistanceInMeters = 0.0;
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)adjustedStatisticsForStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  v6 = objc_alloc(MEMORY[0x277CCDA50]);
  quantityType = [location[0] quantityType];
  startDate = [location[0] startDate];
  endDate = [location[0] endDate];
  v20 = [v6 initWithDataType:quantityType startDate:startDate endDate:?];
  MEMORY[0x277D82BD8](endDate);
  MEMORY[0x277D82BD8](startDate);
  MEMORY[0x277D82BD8](quantityType);
  [(NLDemoDistanceProvider *)selfCopy adjustedDistanceInMeters];
  v11 = v3;
  sumQuantity = [location[0] sumQuantity];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [sumQuantity doubleValueForUnit:?];
  v13 = v11 + v4;
  MEMORY[0x277D82BD8](meterUnit);
  MEMORY[0x277D82BD8](sumQuantity);
  v14 = MEMORY[0x277CCD7E8];
  meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
  v15 = [v14 quantityWithUnit:v13 doubleValue:?];
  [v20 setSumQuantity:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](meterUnit2);
  mostRecentQuantity = [location[0] mostRecentQuantity];
  [v20 setMostRecentQuantity:?];
  MEMORY[0x277D82BD8](mostRecentQuantity);
  mostRecentQuantityDateInterval = [location[0] mostRecentQuantityDateInterval];
  [v20 setMostRecentQuantityDateInterval:?];
  MEMORY[0x277D82BD8](mostRecentQuantityDateInterval);
  v19 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v19;
}

@end