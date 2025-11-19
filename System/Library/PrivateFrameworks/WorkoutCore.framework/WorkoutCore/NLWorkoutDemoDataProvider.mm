@interface NLWorkoutDemoDataProvider
- (NLWorkoutDemoDataProvider)initWithDataProvider:(id)a3 activityType:(id)a4 demoSession:(id)a5;
- (double)_diffToNextMile:(double)a3;
- (id)demoAdjustedStatisticsForStatistics:(id)a3;
- (id)demoWorkoutWithSnapshot:(id)a3;
- (id)statisticsToAdvance;
@end

@implementation NLWorkoutDemoDataProvider

- (NLWorkoutDemoDataProvider)initWithDataProvider:(id)a3 activityType:(id)a4 demoSession:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v5 = v26;
  v26 = 0;
  v22.receiver = v5;
  v22.super_class = NLWorkoutDemoDataProvider;
  v26 = [(NLWorkoutDemoDataProvider *)&v22 init];
  objc_storeStrong(&v26, v26);
  if (v26)
  {
    objc_storeStrong(&v26->_dataProvider, location[0]);
    v15 = [NLDemoDistanceProvider alloc];
    v16 = [location[0] distanceProvider];
    v6 = [(NLDemoDistanceProvider *)v15 initWithDistanceProvider:?];
    demoDistanceProvider = v26->_demoDistanceProvider;
    v26->_demoDistanceProvider = v6;
    MEMORY[0x277D82BD8](demoDistanceProvider);
    MEMORY[0x277D82BD8](v16);
    v17 = [NLDemoElapsedTimeProvider alloc];
    v18 = [location[0] elapsedTimeProvider];
    v8 = [(NLDemoElapsedTimeProvider *)v17 initWithElapsedTimeProvider:?];
    demoElapsedTimeProvider = v26->_demoElapsedTimeProvider;
    v26->_demoElapsedTimeProvider = v8;
    MEMORY[0x277D82BD8](demoElapsedTimeProvider);
    MEMORY[0x277D82BD8](v18);
    objc_storeStrong(&v26->_activityType, v24);
    objc_storeStrong(&v26->_demoSession, v23);
    _HKInitializeLogging();
    v21 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NLWorkoutDemoSession *)v26->_demoSession mileDistanceAdvanceSteps];
      __os_log_helper_16_2_1_8_64(v27, v14);
      _os_log_impl(&dword_20AEA4000, v21, OS_LOG_TYPE_DEFAULT, "[DemoMode] mileDistanceAdvanceSteps: %@", v27, 0xCu);
      MEMORY[0x277D82BD8](v14);
    }

    objc_storeStrong(&v21, 0);
    v10 = [MEMORY[0x277D095D8] quantityTypeForDistanceType:FIDistanceTypeForActivityType()];
    distanceQuantityType = v26->_distanceQuantityType;
    v26->_distanceQuantityType = v10;
    MEMORY[0x277D82BD8](distanceQuantityType);
    v26->_stepIndex = 0;
  }

  v13 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  *MEMORY[0x277D85DE8];
  return v13;
}

- (double)_diffToNextMile:(double)a3
{
  v4 = ceil(a3) - a3;
  if (fabs(v4) < 2.22044605e-16)
  {
    return 1.0;
  }

  return v4;
}

- (id)statisticsToAdvance
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = self;
  location[1] = a2;
  stepIndex = self->_stepIndex;
  v34 = [(NLWorkoutDemoSession *)self->_demoSession mileDistanceAdvanceSteps];
  v35 = [(NSArray *)v34 count];
  *&v2 = MEMORY[0x277D82BD8](v34).n128_u64[0];
  if (stepIndex >= v35)
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v49 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v51->_stepIndex;
      v33 = [(NLWorkoutDemoSession *)v51->_demoSession mileDistanceAdvanceSteps];
      __os_log_helper_16_0_2_8_0_8_0(v56, v32, [(NSArray *)v33 count]);
      _os_log_impl(&dword_20AEA4000, location[0], v49, "[DemoMode] already advanced past number of steps in session, stepIndex=%lu, mileDistanceAdvanceSteps=%lu", v56, 0x16u);
      MEMORY[0x277D82BD8](v33);
    }

    objc_storeStrong(location, 0);
    v52 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  }

  else
  {
    v30 = [(NLWorkoutDemoSession *)v51->_demoSession mileDistanceAdvanceSteps];
    v29 = [(NSArray *)v30 objectAtIndexedSubscript:v51->_stepIndex];
    [v29 doubleValue];
    v31 = v3;
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    v48 = v31;
    ++v51->_stepIndex;
    _HKInitializeLogging();
    v47 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v55, v48);
      _os_log_impl(&dword_20AEA4000, v47, v46, "[DemoMode] nextTargetInMiles=%.2f", v55, 0xCu);
    }

    objc_storeStrong(&v47, 0);
    v22 = [(NLWorkoutDemoDataProvider *)v51 distanceProvider];
    [(NLSessionActivityDistanceProvider *)v22 distance];
    v23 = v4;
    MEMORY[0x277D82BD8](v22);
    v45 = v23;
    v24 = MEMORY[0x277CCD7E8];
    v27 = [MEMORY[0x277CCDAB0] meterUnit];
    v26 = [v24 quantityWithUnit:v23 doubleValue:?];
    v25 = [MEMORY[0x277CCDAB0] mileUnit];
    [v26 doubleValueForUnit:?];
    v28 = v5;
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    v44 = v28;
    v43 = *&v48 - v28;
    if (*&v48 - v28 < 0.0 || (v53 = v43, fabs(v43) < 2.22044605e-16))
    {
      [(NLWorkoutDemoDataProvider *)v51 _diffToNextMile:v44];
      v43 = v6;
    }

    v13 = MEMORY[0x277CCD7E8];
    v16 = [MEMORY[0x277CCDAB0] mileUnit];
    v15 = [v13 quantityWithUnit:v43 doubleValue:?];
    v14 = [MEMORY[0x277CCDAB0] meterUnit];
    [v15 doubleValueForUnit:?];
    v17 = v7;
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v42 = v17;
    v41 = v45 + v17;
    v40 = 1141587968;
    *&v39[1] = 557.0 * v43;
    demoElapsedTimeProvider = v51->_demoElapsedTimeProvider;
    [(NLDemoElapsedTimeProvider *)demoElapsedTimeProvider adjustedTime];
    [(NLDemoElapsedTimeProvider *)demoElapsedTimeProvider setAdjustedTime:v8 + 557.0 * v43];
    v39[0] = [MEMORY[0x277CBEAA8] now];
    v38 = [v39[0] dateByAddingTimeInterval:-(557.0 * v43)];
    demoDistanceProvider = v51->_demoDistanceProvider;
    [(NLDemoDistanceProvider *)demoDistanceProvider adjustedDistanceInMeters];
    [(NLDemoDistanceProvider *)demoDistanceProvider setAdjustedDistanceInMeters:v9 + v42];
    v20 = MEMORY[0x277CCDA50];
    v21 = [(HKQuantityType *)v51->_distanceQuantityType identifier];
    v37 = [v20 _nlDistanceStatisticsForQuantityIdentifier:v41 distanceInMeters:? startDate:? endDate:?];
    *&v10 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    v54 = v37;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:{1, v10}];
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(v39, 0);
  }

  *MEMORY[0x277D85DE8];
  v11 = v52;

  return v11;
}

- (id)demoAdjustedStatisticsForStatistics:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([location[0] _nlIsWorkoutDemoData] & 1) != 0 || (v7 = +[NLSessionActivity _distanceSampleTypes](NLSessionActivity, "_distanceSampleTypes"), v6 = objc_msgSend(location[0], "quantityType"), v8 = objc_msgSend(v7, "containsObject:"), MEMORY[0x277D82BD8](v6), *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0], (v8 & 1) == 0))
  {
    v11 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v11 = [(NLDemoDistanceProvider *)v10->_demoDistanceProvider adjustedStatisticsForStatistics:location[0], v3];
  }

  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (id)demoWorkoutWithSnapshot:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v67 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = MEMORY[0x277CBEB38];
  v54 = [location[0] allStatistics];
  v65 = [v53 dictionaryWithDictionary:?];
  MEMORY[0x277D82BD8](v54);
  v64 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [v65 allKeys];
  v56 = [obj countByEnumeratingWithState:__b objects:v68 count:16];
  if (v56)
  {
    v50 = *__b[2];
    v51 = 0;
    v52 = v56;
    while (1)
    {
      v49 = v51;
      if (*__b[2] != v50)
      {
        objc_enumerationMutation(obj);
      }

      v63 = *(__b[1] + 8 * v51);
      v47 = +[NLSessionActivity _distanceSampleTypes];
      v48 = [v47 containsObject:v63];
      *&v3 = MEMORY[0x277D82BD8](v47).n128_u64[0];
      if (v48)
      {
        break;
      }

      ++v51;
      if (v49 + 1 >= v52)
      {
        v51 = 0;
        v52 = [obj countByEnumeratingWithState:__b objects:v68 count:{16, v3}];
        if (!v52)
        {
          goto LABEL_9;
        }
      }
    }

    v4 = [v65 objectForKeyedSubscript:{v63, v3}];
    v5 = v64;
    v64 = v4;
    MEMORY[0x277D82BD8](v5);
    v61 = 2;
  }

  else
  {
LABEL_9:
    v61 = 0;
  }

  v60 = [MEMORY[0x277CBEAA8] now];
  [(NLDemoElapsedTimeProvider *)v67->_demoElapsedTimeProvider elapsedTime];
  v59 = [v60 dateByAddingTimeInterval:-v6];
  if (v64)
  {
    v42 = MEMORY[0x277CCDA50];
    v46 = [v64 quantityType];
    v45 = [v46 identifier];
    [(NLDemoDistanceProvider *)v67->_demoDistanceProvider distance];
    v41 = v7;
    v44 = [v64 startDate];
    v43 = [v64 endDate];
    v8 = [v42 _nlDistanceStatisticsForQuantityIdentifier:v45 distanceInMeters:v44 startDate:v41 endDate:?];
    v9 = v64;
    v64 = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    v10 = MEMORY[0x277D82BD8](v46).n128_u64[0];
  }

  else
  {
    v39 = MEMORY[0x277CCDA50];
    v40 = [(HKQuantityType *)v67->_distanceQuantityType identifier];
    [(NLDemoDistanceProvider *)v67->_demoDistanceProvider distance];
    v11 = [v39 _nlDistanceStatisticsForQuantityIdentifier:v40 distanceInMeters:v59 startDate:v60 endDate:?];
    v12 = v64;
    v64 = v11;
    MEMORY[0x277D82BD8](v12);
    v10 = MEMORY[0x277D82BD8](v40).n128_u64[0];
  }

  v33 = v64;
  v34 = v65;
  v35 = [v64 quantityType];
  [v34 setObject:v33 forKeyedSubscript:?];
  *&v13 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  activityType = v67->_activityType;
  [(NLDemoElapsedTimeProvider *)v67->_demoElapsedTimeProvider elapsedTime];
  v37 = v14;
  v38 = [v64 sumQuantity];
  v58 = [NLWorkoutDemoUtilities estimatedCaloriesFor:activityType duration:v37 distance:?];
  *&v15 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  if (v58)
  {
    v57 = [MEMORY[0x277CCDA50] _nlActiveEnergyStatisticsForQuantity:v58 startDate:v59 endDate:{v60, v15}];
    v30 = v57;
    v31 = v65;
    v32 = [v57 quantityType];
    [v31 setObject:v30 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v32);
    objc_storeStrong(&v57, 0);
  }

  v24 = MEMORY[0x277CCDBE8];
  v19 = [location[0] workoutActivityType];
  v20 = v59;
  v21 = v60;
  v29 = [location[0] workoutEvents];
  [(NLDemoElapsedTimeProvider *)v67->_demoElapsedTimeProvider elapsedTime];
  v22 = v16;
  v23 = v65;
  v18 = [location[0] _goalType];
  v28 = [location[0] _goal];
  v27 = [location[0] device];
  v25 = [location[0] metadata];
  v26 = [v24 _workoutWithActivityType:v19 startDate:v20 endDate:v21 workoutEvents:v29 workoutActivities:MEMORY[0x277CBEBF8] duration:v23 statistics:v22 goalType:v18 goal:v28 device:v27 metadata:v25];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v61 = 1;
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v26;
}

@end