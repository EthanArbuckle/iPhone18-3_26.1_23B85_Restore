@interface HKStatistics(InternalDemoSupport)
+ (id)_nlActiveEnergyStatisticsForQuantity:()InternalDemoSupport startDate:endDate:;
+ (id)_nlDistanceStatisticsForQuantityIdentifier:()InternalDemoSupport distanceInMeters:startDate:endDate:;
- (uint64_t)_nlIsWorkoutDemoData;
- (uint64_t)set_nlIsWorkoutDemoData:()InternalDemoSupport;
@end

@implementation HKStatistics(InternalDemoSupport)

- (uint64_t)_nlIsWorkoutDemoData
{
  location[2] = a1;
  location[1] = a2;
  location[0] = objc_getAssociatedObject(a1, sel__nlIsWorkoutDemoData);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (uint64_t)set_nlIsWorkoutDemoData:()InternalDemoSupport
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3 & 1];
  objc_setAssociatedObject(a1, sel__nlIsWorkoutDemoData, v5, 1);
  return MEMORY[0x277D82BD8](v5);
}

+ (id)_nlDistanceStatisticsForQuantityIdentifier:()InternalDemoSupport distanceInMeters:startDate:endDate:
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v24 = a6;
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:location[0]];
  v6 = objc_alloc(MEMORY[0x277CCDA50]);
  v20 = [v6 initWithDataType:v21 startDate:v23 endDate:v22];
  v12 = MEMORY[0x277CCD7E8];
  v14 = [MEMORY[0x277CCDAB0] meterUnit];
  v13 = [v12 quantityWithUnit:v24 doubleValue:?];
  [v20 setSumQuantity:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v15 = MEMORY[0x277CCD7E8];
  v17 = [MEMORY[0x277CCDAB0] meterUnit];
  v16 = [v15 quantityWithUnit:v24 doubleValue:?];
  [v20 setMostRecentQuantity:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v7 = objc_alloc(MEMORY[0x277CCA970]);
  v18 = [v7 initWithStartDate:v23 endDate:v22];
  [v20 setMostRecentQuantityDateInterval:?];
  MEMORY[0x277D82BD8](v18);
  [v20 set_nlIsWorkoutDemoData:1];
  v19 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);

  return v19;
}

+ (id)_nlActiveEnergyStatisticsForQuantity:()InternalDemoSupport startDate:endDate:
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v5 = objc_alloc(MEMORY[0x277CCDA50]);
  v12 = [v5 initWithDataType:v13 startDate:v15 endDate:v14];
  [v12 setSumQuantity:location[0]];
  [v12 setMostRecentQuantity:location[0]];
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v6 initWithStartDate:v15 endDate:v14];
  [v12 setMostRecentQuantityDateInterval:?];
  MEMORY[0x277D82BD8](v10);
  [v12 set_nlIsWorkoutDemoData:1];
  v11 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v11;
}

@end