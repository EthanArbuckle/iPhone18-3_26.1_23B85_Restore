@interface NLSessionActivitySplitsTracker
- (BOOL)isUnitMetricFor:(id)for;
- (BOOL)shouldCreateMilestoneWithSplit:(id)split;
- (NLSessionActivitySplitsTracker)initWithActivityType:(id)type builder:(id)builder distanceUnit:(id)unit activityMoveMode:(int64_t)mode multiSportLegStartDate:(id)date;
- (NLWorkoutAlertDelegate)alertDelegate;
- (double)milestoneDistanceForSplit:(id)split;
- (unint64_t)milestoneNumberForSplit:(id)split;
- (void)presentAlertIfNeededWithSplit:(id)split;
- (void)processSplitEvent:(id)event;
- (void)recoverStateFromWorkoutEvents:(id)events;
- (void)updateDistanceUnit:(id)unit;
- (void)updateLastMilestoneWithSplit:(id)split;
@end

@implementation NLSessionActivitySplitsTracker

- (NLSessionActivitySplitsTracker)initWithActivityType:(id)type builder:(id)builder distanceUnit:(id)unit activityMoveMode:(int64_t)mode multiSportLegStartDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v20 = 0;
  objc_storeStrong(&v20, builder);
  v19 = 0;
  objc_storeStrong(&v19, unit);
  modeCopy = mode;
  v17 = 0;
  objc_storeStrong(&v17, date);
  v7 = selfCopy;
  selfCopy = 0;
  v16.receiver = v7;
  v16.super_class = NLSessionActivitySplitsTracker;
  v11 = [(NLSessionActivitySplitsTracker *)&v16 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    objc_storeStrong(&selfCopy->_activityType, location[0]);
    objc_storeStrong(&selfCopy->_builder, v20);
    selfCopy->_distanceType = FIUIDistanceTypeForActivityType();
    objc_storeStrong(&selfCopy->_distanceUnit, v19);
    v8 = NLDistanceNotificationIntervalForDistanceType(selfCopy->_distanceType);
    selfCopy->_splitsPerMilestone = v8;
    selfCopy->_activityMoveMode = modeCopy;
    objc_storeStrong(&selfCopy->_multiSportLegStartDate, v17);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)processSplitEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  if ([(NLSessionActivitySplitsTracker *)selfCopy shouldCreateMilestoneWithSplit:location[0]])
  {
    [(NLSessionActivitySplitsTracker *)selfCopy presentAlertIfNeededWithSplit:location[0]];
    [(NLSessionActivitySplitsTracker *)selfCopy updateLastMilestoneWithSplit:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)shouldCreateMilestoneWithSplit:(id)split
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, split);
  if ([(NLSessionActivitySplitsTracker *)selfCopy isUnitMetricFor:location[0]])
  {
    lastMetricMilestone = selfCopy->_lastMetricMilestone;
  }

  else
  {
    lastMetricMilestone = selfCopy->_lastImperialMilestone;
  }

  v5 = [(NLSessionActivitySplitsTracker *)selfCopy milestoneNumberForSplit:location[0], location]> lastMetricMilestone;
  objc_storeStrong(v4, 0);
  return v5;
}

- (BOOL)isUnitMetricFor:(id)for
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
  metadata = [location[0] metadata];
  v4 = [metadata objectForKeyedSubscript:*MEMORY[0x277D0A768]];
  v6 = [v4 integerValue] == 1;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](metadata);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)presentAlertIfNeededWithSplit:(id)split
{
  v49 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, split);
  _isMetricDistance = [(HKUnit *)selfCopy->_distanceUnit _isMetricDistance];
  v44 = [(NLSessionActivitySplitsTracker *)selfCopy isUnitMetricFor:location[0]];
  metadata = [location[0] metadata];
  v26 = [metadata objectForKeyedSubscript:*MEMORY[0x277D0A708]];
  bOOLValue = [v26 BOOLValue];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](metadata);
  v43 = bOOLValue;
  if ((_isMetricDistance & 1) == v44 && (v43 & 1) == 0)
  {
    activityType = selfCopy->_activityType;
    v42 = FIUIDistanceTypeForActivityType();
    v41 = NLDistanceNotificationIntervalForDistanceType(v42);
    v40 = [MEMORY[0x277CCD7E8] quantityWithUnit:selfCopy->_distanceUnit doubleValue:v41];
    if (v44)
    {
      lastMetricMilestoneDuration = selfCopy->_lastMetricMilestoneDuration;
    }

    else
    {
      lastMetricMilestoneDuration = selfCopy->_lastImperialMilestoneDuration;
    }

    v39 = lastMetricMilestoneDuration;
    builder = selfCopy->_builder;
    dateInterval = [location[0] dateInterval];
    endDate = [dateInterval endDate];
    [(HKWorkoutBuilder *)builder elapsedTimeAtDate:?];
    v24 = v4;
    MEMORY[0x277D82BD8](endDate);
    MEMORY[0x277D82BD8](dateInterval);
    v38 = v24;
    if (lastMetricMilestoneDuration == 0.0 && selfCopy->_multiSportLegStartDate)
    {
      [(HKWorkoutBuilder *)selfCopy->_builder elapsedTimeAtDate:selfCopy->_multiSportLegStartDate, lastMetricMilestoneDuration];
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
    v36 = [(NLSessionActivitySplitsTracker *)selfCopy milestoneNumberForSplit:location[0]];
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
    v32 = [(WOSegmentAlert *)v7 initWithWorkoutAlertType:6 segmentMarker:v35 activityType:selfCopy->_activityType activityMoveMode:selfCopy->_activityMoveMode gpsAvailable:1 shouldHideTime:v19];
    alertDelegate = [(NLSessionActivitySplitsTracker *)selfCopy alertDelegate];
    [(NLWorkoutAlertDelegate *)alertDelegate alertSource:selfCopy didTriggerAlert:v32];
    MEMORY[0x277D82BD8](alertDelegate);
    _HKInitializeLogging();
    v31 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      log = v31;
      type = v30;
      metadata2 = [location[0] metadata];
      v16 = [metadata2 objectForKeyedSubscript:*MEMORY[0x277D0A768]];
      v15 = MEMORY[0x20F2E8470]([v16 integerValue]);
      v10 = MEMORY[0x277D82BE0](v15);
      v29 = v10;
      v11 = v36;
      v9 = v34;
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [v9 doubleValueForUnit:?];
      __os_log_helper_16_2_4_8_64_8_0_8_0_8_0(v48, v10, v11, v8, v37);
      _os_log_impl(&dword_20AEA4000, log, type, "[workoutmilestone] Presented workout distance milestone alert with measurementSystem=%@, milestoneNumber=%lu, distanceValue=%f, timeIntervalSinceLastAlert=%f", v48, 0x2Au);
      MEMORY[0x277D82BD8](meterUnit);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](metadata2);
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

- (double)milestoneDistanceForSplit:(id)split
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, split);
  metadata = [location[0] metadata];
  v7 = [metadata objectForKeyedSubscript:*MEMORY[0x277D0A770]];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [v7 doubleValueForUnit:?];
  v9 = v3;
  MEMORY[0x277D82BD8](meterUnit);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](metadata);
  metadata2 = [location[0] metadata];
  v11 = [metadata2 objectForKeyedSubscript:*MEMORY[0x277D0A760]];
  meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
  [v11 doubleValueForUnit:?];
  v13 = v4;
  MEMORY[0x277D82BD8](meterUnit2);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](metadata2);
  objc_storeStrong(location, 0);
  return (v9 / v13) * v13;
}

- (unint64_t)milestoneNumberForSplit:(id)split
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, split);
  metadata = [location[0] metadata];
  v8 = [metadata objectForKeyedSubscript:*MEMORY[0x277D0A770]];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [v8 doubleValueForUnit:?];
  v10 = v3;
  MEMORY[0x277D82BD8](meterUnit);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](metadata);
  v17 = v10;
  v16 = [(NLSessionActivitySplitsTracker *)selfCopy isUnitMetricFor:location[0]];
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
    mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
    v11 = 1;
    v4 = MEMORY[0x277D82BE0](mileUnit);
  }

  v15 = v4;
  if (v11)
  {
    MEMORY[0x277D82BD8](mileUnit);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  v6 = NLMilestoneForDistance(selfCopy->_activityType, v15, v17);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)updateLastMilestoneWithSplit:(id)split
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, split);
  builder = selfCopy->_builder;
  dateInterval = [location[0] dateInterval];
  endDate = [dateInterval endDate];
  [(HKWorkoutBuilder *)builder elapsedTimeAtDate:?];
  v9 = v3;
  MEMORY[0x277D82BD8](endDate);
  MEMORY[0x277D82BD8](dateInterval);
  if ([(NLSessionActivitySplitsTracker *)selfCopy isUnitMetricFor:location[0]])
  {
    v4 = [(NLSessionActivitySplitsTracker *)selfCopy milestoneNumberForSplit:location[0]];
    selfCopy->_lastMetricMilestone = v4;
    selfCopy->_lastMetricMilestoneDuration = v9;
  }

  else
  {
    v5 = [(NLSessionActivitySplitsTracker *)selfCopy milestoneNumberForSplit:location[0]];
    selfCopy->_lastImperialMilestone = v5;
    selfCopy->_lastImperialMilestoneDuration = v9;
  }

  objc_storeStrong(location, 0);
}

- (void)updateDistanceUnit:(id)unit
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, unit);
  objc_storeStrong(&selfCopy->_distanceUnit, location[0]);
  objc_storeStrong(location, 0);
}

- (void)recoverStateFromWorkoutEvents:(id)events
{
  v53 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, events);
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
  if ([v41 count] >= selfCopy->_splitsPerMilestone)
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
    v17 = selfCopy;
    lastObject = [v41 lastObject];
    v19 = [(NLSessionActivitySplitsTracker *)v17 milestoneNumberForSplit:?];
    *&v3 = MEMORY[0x277D82BD8](lastObject).n128_u64[0];
    v38 = v19;
    v37 = v19 * selfCopy->_splitsPerMilestone - 1;
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
      selfCopy->_lastMetricMilestone = v38;
      builder = selfCopy->_builder;
      dateInterval = [v36 dateInterval];
      endDate = [dateInterval endDate];
      [(HKWorkoutBuilder *)builder elapsedTimeAtDate:?];
      selfCopy->_lastMetricMilestoneDuration = v4;
      MEMORY[0x277D82BD8](endDate);
      MEMORY[0x277D82BD8](dateInterval);
      objc_storeStrong(&v36, 0);
    }
  }

  v13 = MEMORY[0x20F2E8440](location[0], 2);
  v31 = [v13 mutableCopy];
  if ([v31 count] >= selfCopy->_splitsPerMilestone)
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
    v10 = selfCopy;
    lastObject2 = [v31 lastObject];
    v12 = [(NLSessionActivitySplitsTracker *)v10 milestoneNumberForSplit:?];
    *&v5 = MEMORY[0x277D82BD8](lastObject2).n128_u64[0];
    v28 = v12;
    v27 = v12 * selfCopy->_splitsPerMilestone - 1;
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
      selfCopy->_lastImperialMilestone = v28;
      v7 = selfCopy->_builder;
      dateInterval2 = [v26 dateInterval];
      endDate2 = [dateInterval2 endDate];
      [(HKWorkoutBuilder *)v7 elapsedTimeAtDate:?];
      selfCopy->_lastImperialMilestoneDuration = v6;
      MEMORY[0x277D82BD8](endDate2);
      MEMORY[0x277D82BD8](dateInterval2);
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