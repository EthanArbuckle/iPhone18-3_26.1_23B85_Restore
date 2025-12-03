@interface NLWorkoutDemoDataProvider
- (NLWorkoutDemoDataProvider)initWithDataProvider:(id)provider activityType:(id)type demoSession:(id)session;
- (double)_diffToNextMile:(double)mile;
- (id)demoAdjustedStatisticsForStatistics:(id)statistics;
- (id)demoWorkoutWithSnapshot:(id)snapshot;
- (id)statisticsToAdvance;
@end

@implementation NLWorkoutDemoDataProvider

- (NLWorkoutDemoDataProvider)initWithDataProvider:(id)provider activityType:(id)type demoSession:(id)session
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v24 = 0;
  objc_storeStrong(&v24, type);
  v23 = 0;
  objc_storeStrong(&v23, session);
  v5 = selfCopy;
  selfCopy = 0;
  v22.receiver = v5;
  v22.super_class = NLWorkoutDemoDataProvider;
  selfCopy = [(NLWorkoutDemoDataProvider *)&v22 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_dataProvider, location[0]);
    v15 = [NLDemoDistanceProvider alloc];
    distanceProvider = [location[0] distanceProvider];
    v6 = [(NLDemoDistanceProvider *)v15 initWithDistanceProvider:?];
    demoDistanceProvider = selfCopy->_demoDistanceProvider;
    selfCopy->_demoDistanceProvider = v6;
    MEMORY[0x277D82BD8](demoDistanceProvider);
    MEMORY[0x277D82BD8](distanceProvider);
    v17 = [NLDemoElapsedTimeProvider alloc];
    elapsedTimeProvider = [location[0] elapsedTimeProvider];
    v8 = [(NLDemoElapsedTimeProvider *)v17 initWithElapsedTimeProvider:?];
    demoElapsedTimeProvider = selfCopy->_demoElapsedTimeProvider;
    selfCopy->_demoElapsedTimeProvider = v8;
    MEMORY[0x277D82BD8](demoElapsedTimeProvider);
    MEMORY[0x277D82BD8](elapsedTimeProvider);
    objc_storeStrong(&selfCopy->_activityType, v24);
    objc_storeStrong(&selfCopy->_demoSession, v23);
    _HKInitializeLogging();
    v21 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      mileDistanceAdvanceSteps = [(NLWorkoutDemoSession *)selfCopy->_demoSession mileDistanceAdvanceSteps];
      __os_log_helper_16_2_1_8_64(v27, mileDistanceAdvanceSteps);
      _os_log_impl(&dword_20AEA4000, v21, OS_LOG_TYPE_DEFAULT, "[DemoMode] mileDistanceAdvanceSteps: %@", v27, 0xCu);
      MEMORY[0x277D82BD8](mileDistanceAdvanceSteps);
    }

    objc_storeStrong(&v21, 0);
    v10 = [MEMORY[0x277D095D8] quantityTypeForDistanceType:FIDistanceTypeForActivityType()];
    distanceQuantityType = selfCopy->_distanceQuantityType;
    selfCopy->_distanceQuantityType = v10;
    MEMORY[0x277D82BD8](distanceQuantityType);
    selfCopy->_stepIndex = 0;
  }

  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v13;
}

- (double)_diffToNextMile:(double)mile
{
  v4 = ceil(mile) - mile;
  if (fabs(v4) < 2.22044605e-16)
  {
    return 1.0;
  }

  return v4;
}

- (id)statisticsToAdvance
{
  v57 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  stepIndex = self->_stepIndex;
  mileDistanceAdvanceSteps = [(NLWorkoutDemoSession *)self->_demoSession mileDistanceAdvanceSteps];
  v35 = [(NSArray *)mileDistanceAdvanceSteps count];
  *&v2 = MEMORY[0x277D82BD8](mileDistanceAdvanceSteps).n128_u64[0];
  if (stepIndex >= v35)
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v49 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v32 = selfCopy->_stepIndex;
      mileDistanceAdvanceSteps2 = [(NLWorkoutDemoSession *)selfCopy->_demoSession mileDistanceAdvanceSteps];
      __os_log_helper_16_0_2_8_0_8_0(v56, v32, [(NSArray *)mileDistanceAdvanceSteps2 count]);
      _os_log_impl(&dword_20AEA4000, location[0], v49, "[DemoMode] already advanced past number of steps in session, stepIndex=%lu, mileDistanceAdvanceSteps=%lu", v56, 0x16u);
      MEMORY[0x277D82BD8](mileDistanceAdvanceSteps2);
    }

    objc_storeStrong(location, 0);
    v52 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  }

  else
  {
    mileDistanceAdvanceSteps3 = [(NLWorkoutDemoSession *)selfCopy->_demoSession mileDistanceAdvanceSteps];
    v29 = [(NSArray *)mileDistanceAdvanceSteps3 objectAtIndexedSubscript:selfCopy->_stepIndex];
    [v29 doubleValue];
    v31 = v3;
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](mileDistanceAdvanceSteps3);
    v48 = v31;
    ++selfCopy->_stepIndex;
    _HKInitializeLogging();
    v47 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v55, v48);
      _os_log_impl(&dword_20AEA4000, v47, v46, "[DemoMode] nextTargetInMiles=%.2f", v55, 0xCu);
    }

    objc_storeStrong(&v47, 0);
    distanceProvider = [(NLWorkoutDemoDataProvider *)selfCopy distanceProvider];
    [(NLSessionActivityDistanceProvider *)distanceProvider distance];
    v23 = v4;
    MEMORY[0x277D82BD8](distanceProvider);
    v45 = v23;
    v24 = MEMORY[0x277CCD7E8];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v26 = [v24 quantityWithUnit:v23 doubleValue:?];
    mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
    [v26 doubleValueForUnit:?];
    v28 = v5;
    MEMORY[0x277D82BD8](mileUnit);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](meterUnit);
    v44 = v28;
    v43 = *&v48 - v28;
    if (*&v48 - v28 < 0.0 || (v53 = v43, fabs(v43) < 2.22044605e-16))
    {
      [(NLWorkoutDemoDataProvider *)selfCopy _diffToNextMile:v44];
      v43 = v6;
    }

    v13 = MEMORY[0x277CCD7E8];
    mileUnit2 = [MEMORY[0x277CCDAB0] mileUnit];
    v15 = [v13 quantityWithUnit:v43 doubleValue:?];
    meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
    [v15 doubleValueForUnit:?];
    v17 = v7;
    MEMORY[0x277D82BD8](meterUnit2);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](mileUnit2);
    v42 = v17;
    v41 = v45 + v17;
    v40 = 1141587968;
    *&v39[1] = 557.0 * v43;
    demoElapsedTimeProvider = selfCopy->_demoElapsedTimeProvider;
    [(NLDemoElapsedTimeProvider *)demoElapsedTimeProvider adjustedTime];
    [(NLDemoElapsedTimeProvider *)demoElapsedTimeProvider setAdjustedTime:v8 + 557.0 * v43];
    v39[0] = [MEMORY[0x277CBEAA8] now];
    v38 = [v39[0] dateByAddingTimeInterval:-(557.0 * v43)];
    demoDistanceProvider = selfCopy->_demoDistanceProvider;
    [(NLDemoDistanceProvider *)demoDistanceProvider adjustedDistanceInMeters];
    [(NLDemoDistanceProvider *)demoDistanceProvider setAdjustedDistanceInMeters:v9 + v42];
    v20 = MEMORY[0x277CCDA50];
    identifier = [(HKQuantityType *)selfCopy->_distanceQuantityType identifier];
    v37 = [v20 _nlDistanceStatisticsForQuantityIdentifier:v41 distanceInMeters:? startDate:? endDate:?];
    *&v10 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
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

- (id)demoAdjustedStatisticsForStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  if (([location[0] _nlIsWorkoutDemoData] & 1) != 0 || (v7 = +[NLSessionActivity _distanceSampleTypes](NLSessionActivity, "_distanceSampleTypes"), v6 = objc_msgSend(location[0], "quantityType"), v8 = objc_msgSend(v7, "containsObject:"), MEMORY[0x277D82BD8](v6), *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0], (v8 & 1) == 0))
  {
    v11 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v11 = [(NLDemoDistanceProvider *)selfCopy->_demoDistanceProvider adjustedStatisticsForStatistics:location[0], v3];
  }

  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (id)demoWorkoutWithSnapshot:(id)snapshot
{
  v69 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, snapshot);
  v53 = MEMORY[0x277CBEB38];
  allStatistics = [location[0] allStatistics];
  v65 = [v53 dictionaryWithDictionary:?];
  MEMORY[0x277D82BD8](allStatistics);
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
  [(NLDemoElapsedTimeProvider *)selfCopy->_demoElapsedTimeProvider elapsedTime];
  v59 = [v60 dateByAddingTimeInterval:-v6];
  if (v64)
  {
    v42 = MEMORY[0x277CCDA50];
    quantityType = [v64 quantityType];
    identifier = [quantityType identifier];
    [(NLDemoDistanceProvider *)selfCopy->_demoDistanceProvider distance];
    v41 = v7;
    startDate = [v64 startDate];
    endDate = [v64 endDate];
    v8 = [v42 _nlDistanceStatisticsForQuantityIdentifier:identifier distanceInMeters:startDate startDate:v41 endDate:?];
    v9 = v64;
    v64 = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](endDate);
    MEMORY[0x277D82BD8](startDate);
    MEMORY[0x277D82BD8](identifier);
    v10 = MEMORY[0x277D82BD8](quantityType).n128_u64[0];
  }

  else
  {
    v39 = MEMORY[0x277CCDA50];
    identifier2 = [(HKQuantityType *)selfCopy->_distanceQuantityType identifier];
    [(NLDemoDistanceProvider *)selfCopy->_demoDistanceProvider distance];
    v11 = [v39 _nlDistanceStatisticsForQuantityIdentifier:identifier2 distanceInMeters:v59 startDate:v60 endDate:?];
    v12 = v64;
    v64 = v11;
    MEMORY[0x277D82BD8](v12);
    v10 = MEMORY[0x277D82BD8](identifier2).n128_u64[0];
  }

  v33 = v64;
  v34 = v65;
  quantityType2 = [v64 quantityType];
  [v34 setObject:v33 forKeyedSubscript:?];
  *&v13 = MEMORY[0x277D82BD8](quantityType2).n128_u64[0];
  activityType = selfCopy->_activityType;
  [(NLDemoElapsedTimeProvider *)selfCopy->_demoElapsedTimeProvider elapsedTime];
  v37 = v14;
  sumQuantity = [v64 sumQuantity];
  v58 = [NLWorkoutDemoUtilities estimatedCaloriesFor:activityType duration:v37 distance:?];
  *&v15 = MEMORY[0x277D82BD8](sumQuantity).n128_u64[0];
  if (v58)
  {
    v57 = [MEMORY[0x277CCDA50] _nlActiveEnergyStatisticsForQuantity:v58 startDate:v59 endDate:{v60, v15}];
    v30 = v57;
    v31 = v65;
    quantityType3 = [v57 quantityType];
    [v31 setObject:v30 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](quantityType3);
    objc_storeStrong(&v57, 0);
  }

  v24 = MEMORY[0x277CCDBE8];
  workoutActivityType = [location[0] workoutActivityType];
  v20 = v59;
  v21 = v60;
  workoutEvents = [location[0] workoutEvents];
  [(NLDemoElapsedTimeProvider *)selfCopy->_demoElapsedTimeProvider elapsedTime];
  v22 = v16;
  v23 = v65;
  _goalType = [location[0] _goalType];
  _goal = [location[0] _goal];
  device = [location[0] device];
  metadata = [location[0] metadata];
  v26 = [v24 _workoutWithActivityType:workoutActivityType startDate:v20 endDate:v21 workoutEvents:workoutEvents workoutActivities:MEMORY[0x277CBEBF8] duration:v23 statistics:v22 goalType:_goalType goal:_goal device:device metadata:metadata];
  MEMORY[0x277D82BD8](metadata);
  MEMORY[0x277D82BD8](device);
  MEMORY[0x277D82BD8](_goal);
  MEMORY[0x277D82BD8](workoutEvents);
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