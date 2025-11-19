@interface NLSessionActivitySplitsTracker
- (BOOL)isUnitMetricFor:(id)a3;
- (BOOL)shouldCreateMilestoneWithSplit:(id)a3;
- (NLSessionActivitySplitsTracker)initWithActivityType:(id)a3 builder:(id)a4 distanceUnit:(id)a5 activityMoveMode:(int64_t)a6 multiSportLegStartDate:(id)a7;
- (NLWorkoutAlertDelegate)alertDelegate;
- (double)milestoneDistanceForSplit:(id)a3;
- (unint64_t)milestoneNumberForSplit:(id)a3;
- (void)presentAlertIfNeededWithSplit:(id)a3;
- (void)processSplitEvent:(id)a3;
- (void)recoverStateFromWorkoutEvents:(id)a3;
- (void)updateDistanceUnit:(id)a3;
- (void)updateLastMilestoneWithSplit:(id)a3;
@end

@implementation NLSessionActivitySplitsTracker

- (NLSessionActivitySplitsTracker)initWithActivityType:(id)a3 builder:(id)a4 distanceUnit:(id)a5 activityMoveMode:(int64_t)a6 multiSportLegStartDate:(id)a7
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = a6;
  v17 = 0;
  objc_storeStrong(&v17, a7);
  v7 = v22;
  v22 = 0;
  v16.receiver = v7;
  v16.super_class = NLSessionActivitySplitsTracker;
  v11 = [(NLSessionActivitySplitsTracker *)&v16 init];
  v22 = v11;
  objc_storeStrong(&v22, v11);
  if (v11)
  {
    objc_storeStrong(&v22->_activityType, location[0]);
    objc_storeStrong(&v22->_builder, v20);
    v22->_distanceType = FIUIDistanceTypeForActivityType();
    objc_storeStrong(&v22->_distanceUnit, v19);
    v8 = NLDistanceNotificationIntervalForDistanceType(v22->_distanceType);
    v22->_splitsPerMilestone = v8;
    v22->_activityMoveMode = v18;
    objc_storeStrong(&v22->_multiSportLegStartDate, v17);
  }

  v10 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v10;
}

- (void)processSplitEvent:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(NLSessionActivitySplitsTracker *)v4 shouldCreateMilestoneWithSplit:location[0]])
  {
    [(NLSessionActivitySplitsTracker *)v4 presentAlertIfNeededWithSplit:location[0]];
    [(NLSessionActivitySplitsTracker *)v4 updateLastMilestoneWithSplit:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)shouldCreateMilestoneWithSplit:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(NLSessionActivitySplitsTracker *)v8 isUnitMetricFor:location[0]])
  {
    lastMetricMilestone = v8->_lastMetricMilestone;
  }

  else
  {
    lastMetricMilestone = v8->_lastImperialMilestone;
  }

  v5 = [(NLSessionActivitySplitsTracker *)v8 milestoneNumberForSplit:location[0], location]> lastMetricMilestone;
  objc_storeStrong(v4, 0);
  return v5;
}

- (BOOL)isUnitMetricFor:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] metadata];
  v4 = [v5 objectForKeyedSubscript:*MEMORY[0x277D0A768]];
  v6 = [v4 integerValue] == 1;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)presentAlertIfNeededWithSplit:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = [(HKUnit *)v47->_distanceUnit _isMetricDistance];
  v44 = [(NLSessionActivitySplitsTracker *)v47 isUnitMetricFor:location[0]];
  v27 = [location[0] metadata];
  v26 = [v27 objectForKeyedSubscript:*MEMORY[0x277D0A708]];
  v28 = [v26 BOOLValue];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v43 = v28;
  if ((v45 & 1) == v44 && (v43 & 1) == 0)
  {
    activityType = v47->_activityType;
    v42 = FIUIDistanceTypeForActivityType();
    v41 = NLDistanceNotificationIntervalForDistanceType(v42);
    v40 = [MEMORY[0x277CCD7E8] quantityWithUnit:v47->_distanceUnit doubleValue:v41];
    if (v44)
    {
      lastMetricMilestoneDuration = v47->_lastMetricMilestoneDuration;
    }

    else
    {
      lastMetricMilestoneDuration = v47->_lastImperialMilestoneDuration;
    }

    v39 = lastMetricMilestoneDuration;
    builder = v47->_builder;
    v23 = [location[0] dateInterval];
    v22 = [v23 endDate];
    [(HKWorkoutBuilder *)builder elapsedTimeAtDate:?];
    v24 = v4;
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    v38 = v24;
    if (lastMetricMilestoneDuration == 0.0 && v47->_multiSportLegStartDate)
    {
      [(HKWorkoutBuilder *)v47->_builder elapsedTimeAtDate:v47->_multiSportLegStartDate, lastMetricMilestoneDuration];
      v39 = v5;
    }

    if (v41 == 1.0)
    {
      [location[0] fi_splitActiveDuration];
      v20 = v6;
    }

    else
    {
      v20 = v38 - v39;
    }

    v37 = *&v20;
    v36 = [(NLSessionActivitySplitsTracker *)v47 milestoneNumberForSplit:location[0]];
    v35 = objc_alloc_init(NLSessionActivitySegmentMarker);
    v34 = MEMORY[0x277D82BE0](v40);
    [v35 setSegmentIndex:v36];
    [v35 setDuration:v20];
    [v35 setDistance:v34];
    v19 = 0;
    if (v41 == 1.0)
    {
      v19 = MEMORY[0x20F2E8410](v42, v41) != 4;
    }

    v33 = v19;
    v7 = [WOSegmentAlert alloc];
    v32 = [(WOSegmentAlert *)v7 initWithWorkoutAlertType:6 segmentMarker:v35 activityType:v47->_activityType activityMoveMode:v47->_activityMoveMode gpsAvailable:1 shouldHideTime:v19];
    v18 = [(NLSessionActivitySplitsTracker *)v47 alertDelegate];
    [(NLWorkoutAlertDelegate *)v18 alertSource:v47 didTriggerAlert:v32];
    MEMORY[0x277D82BD8](v18);
    _HKInitializeLogging();
    v31 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      log = v31;
      type = v30;
      v17 = [location[0] metadata];
      v16 = [v17 objectForKeyedSubscript:*MEMORY[0x277D0A768]];
      v15 = MEMORY[0x20F2E8470]([v16 integerValue]);
      v10 = MEMORY[0x277D82BE0](v15);
      v29 = v10;
      v11 = v36;
      v9 = v34;
      v14 = [MEMORY[0x277CCDAB0] meterUnit];
      [v9 doubleValueForUnit:?];
      __os_log_helper_16_2_4_8_64_8_0_8_0_8_0(v48, v10, v11, v8, v37);
      _os_log_impl(&dword_20AEA4000, log, type, "[workoutmilestone] Presented workout distance milestone alert with measurementSystem=%@, milestoneNumber=%lu, distanceValue=%f, timeIntervalSinceLastAlert=%f", v48, 0x2Au);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (double)milestoneDistanceForSplit:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] metadata];
  v7 = [v8 objectForKeyedSubscript:*MEMORY[0x277D0A770]];
  v6 = [MEMORY[0x277CCDAB0] meterUnit];
  [v7 doubleValueForUnit:?];
  v9 = v3;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v12 = [location[0] metadata];
  v11 = [v12 objectForKeyedSubscript:*MEMORY[0x277D0A760]];
  v10 = [MEMORY[0x277CCDAB0] meterUnit];
  [v11 doubleValueForUnit:?];
  v13 = v4;
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(location, 0);
  return (v9 / v13) * v13;
}

- (unint64_t)milestoneNumberForSplit:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [location[0] metadata];
  v8 = [v9 objectForKeyedSubscript:*MEMORY[0x277D0A770]];
  v7 = [MEMORY[0x277CCDAB0] meterUnit];
  [v8 doubleValueForUnit:?];
  v10 = v3;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v17 = v10;
  v16 = [(NLSessionActivitySplitsTracker *)v19 isUnitMetricFor:location[0]];
  v13 = 0;
  v11 = 0;
  if (v16)
  {
    v14 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
    v13 = 1;
    v4 = MEMORY[0x277D82BE0](v14);
  }

  else
  {
    v12 = [MEMORY[0x277CCDAB0] mileUnit];
    v11 = 1;
    v4 = MEMORY[0x277D82BE0](v12);
  }

  v15 = v4;
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  v6 = NLMilestoneForDistance(v19->_activityType, v15, v17);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)updateLastMilestoneWithSplit:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  builder = v11->_builder;
  v8 = [location[0] dateInterval];
  v7 = [v8 endDate];
  [(HKWorkoutBuilder *)builder elapsedTimeAtDate:?];
  v9 = v3;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  if ([(NLSessionActivitySplitsTracker *)v11 isUnitMetricFor:location[0]])
  {
    v4 = [(NLSessionActivitySplitsTracker *)v11 milestoneNumberForSplit:location[0]];
    v11->_lastMetricMilestone = v4;
    v11->_lastMetricMilestoneDuration = v9;
  }

  else
  {
    v5 = [(NLSessionActivitySplitsTracker *)v11 milestoneNumberForSplit:location[0]];
    v11->_lastImperialMilestone = v5;
    v11->_lastImperialMilestoneDuration = v9;
  }

  objc_storeStrong(location, 0);
}

- (void)updateDistanceUnit:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_distanceUnit, location[0]);
  objc_storeStrong(location, 0);
}

- (void)recoverStateFromWorkoutEvents:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  v44 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v43 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    log = v44;
    type = v43;
    __os_log_helper_16_0_0(v42);
    _os_log_impl(&dword_20AEA4000, log, type, "[workoutmilestone] checking recovery for splits", v42, 2u);
  }

  objc_storeStrong(&v44, 0);
  v20 = MEMORY[0x20F2E8440](location[0], 1);
  v41 = [v20 mutableCopy];
  if ([v41 count] >= v46->_splitsPerMilestone)
  {
    _HKInitializeLogging();
    v40 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v52, [v41 count]);
      _os_log_impl(&dword_20AEA4000, v40, v39, "[workoutmilestone] recovering metric splits from %lu events", v52, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    [v41 sortUsingComparator:&__block_literal_global_8];
    v17 = v46;
    v18 = [v41 lastObject];
    v19 = [(NLSessionActivitySplitsTracker *)v17 milestoneNumberForSplit:?];
    *&v3 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    v38 = v19;
    v37 = v19 * v46->_splitsPerMilestone - 1;
    if (v37 >= [v41 count])
    {
      _HKInitializeLogging();
      v33 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v32 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_2_8_0_8_0(v50, v37, [v41 count]);
        _os_log_error_impl(&dword_20AEA4000, v33, v32, "[workoutmilestone] last metric milestone split index (%lu) is out of bounds (%lu events)", v50, 0x16u);
      }

      objc_storeStrong(&v33, 0);
    }

    else
    {
      v36 = [v41 objectAtIndex:v37];
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v34 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v51, v36);
        _os_log_impl(&dword_20AEA4000, oslog, v34, "[workoutmilestone] recovered last metric milestone split %@", v51, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v46->_lastMetricMilestone = v38;
      builder = v46->_builder;
      v16 = [v36 dateInterval];
      v15 = [v16 endDate];
      [(HKWorkoutBuilder *)builder elapsedTimeAtDate:?];
      v46->_lastMetricMilestoneDuration = v4;
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v36, 0);
    }
  }

  v13 = MEMORY[0x20F2E8440](location[0], 2);
  v31 = [v13 mutableCopy];
  if ([v31 count] >= v46->_splitsPerMilestone)
  {
    _HKInitializeLogging();
    v30 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v49, [v31 count]);
      _os_log_impl(&dword_20AEA4000, v30, v29, "[workoutmilestone] recovering imperial splits from %lu events", v49, 0xCu);
    }

    objc_storeStrong(&v30, 0);
    [v31 sortUsingComparator:&__block_literal_global_301];
    v10 = v46;
    v11 = [v31 lastObject];
    v12 = [(NLSessionActivitySplitsTracker *)v10 milestoneNumberForSplit:?];
    *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v28 = v12;
    v27 = v12 * v46->_splitsPerMilestone - 1;
    if (v27 >= [v31 count])
    {
      _HKInitializeLogging();
      v23 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_2_8_0_8_0(v47, v27, [v31 count]);
        _os_log_error_impl(&dword_20AEA4000, v23, OS_LOG_TYPE_ERROR, "[workoutmilestone] last imperial milestone split index (%lu) is out of bounds (%lu events)", v47, 0x16u);
      }

      objc_storeStrong(&v23, 0);
    }

    else
    {
      v26 = [v31 objectAtIndex:v27];
      _HKInitializeLogging();
      v25 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v24 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v48, v26);
        _os_log_impl(&dword_20AEA4000, v25, v24, "[workoutmilestone] recovered last imperial milestone split %@", v48, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      v46->_lastImperialMilestone = v28;
      v7 = v46->_builder;
      v9 = [v26 dateInterval];
      v8 = [v9 endDate];
      [(HKWorkoutBuilder *)v7 elapsedTimeAtDate:?];
      v46->_lastImperialMilestoneDuration = v6;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v26, 0);
    }
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __64__NLSessionActivitySplitsTracker_recoverStateFromWorkoutEvents___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v8 = [location[0] dateInterval];
  v7 = [v8 endDate];
  v6 = [v10 dateInterval];
  v5 = [v6 endDate];
  v9 = [v7 compare:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v9;
}

uint64_t __64__NLSessionActivitySplitsTracker_recoverStateFromWorkoutEvents___block_invoke_299(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v8 = [location[0] dateInterval];
  v7 = [v8 endDate];
  v6 = [v10 dateInterval];
  v5 = [v6 endDate];
  v9 = [v7 compare:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v9;
}

- (NLWorkoutAlertDelegate)alertDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertDelegate);

  return WeakRetained;
}

@end