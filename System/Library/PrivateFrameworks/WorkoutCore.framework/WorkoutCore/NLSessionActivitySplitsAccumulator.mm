@interface NLSessionActivitySplitsAccumulator
- (NLSessionActivitySplitsAccumulator)initWithBuilder:(id)builder activityType:(id)type unit:(id)unit distancePerUnit:(double)perUnit measurementSystem:(int64_t)system isCustomSplit:(BOOL)split powerAccumulator:(id)accumulator;
- (NLWorkoutEventPersistenceDelegate)eventPersistenceDelegate;
- (NSDate)splitStartDate;
- (double)surplusTimeForLastSampleInSplit:(BOOL)split distanceSinceLastSplit:(double)lastSplit;
- (id)_updateGeneratingPartialSplits:(BOOL)splits;
- (id)endDateForSplit:(BOOL)split distanceSinceLastSplit:(double)lastSplit;
- (id)removeAllSplitObservers;
- (void)_finishLastSplitWithActivity:(id)activity elapsedTime:(double)time;
- (void)_generateSplitsEventsIncludingPartials:(BOOL)partials;
- (void)addSplitObserver:(id)observer;
- (void)recoverFrom:(id)from;
- (void)removeSplitObserver:(id)observer;
- (void)stopAccumulatingWithActivity:(id)activity elapsedTime:(double)time;
- (void)updateWithStatistics:(id)statistics elapsedTime:(double)time;
@end

@implementation NLSessionActivitySplitsAccumulator

- (NLSessionActivitySplitsAccumulator)initWithBuilder:(id)builder activityType:(id)type unit:(id)unit distancePerUnit:(double)perUnit measurementSystem:(int64_t)system isCustomSplit:(BOOL)split powerAccumulator:(id)accumulator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v40 = 0;
  objc_storeStrong(&v40, type);
  v39 = 0;
  objc_storeStrong(&v39, unit);
  perUnitCopy = perUnit;
  systemCopy = system;
  splitCopy = split;
  v35 = 0;
  objc_storeStrong(&v35, accumulator);
  v9 = selfCopy;
  selfCopy = 0;
  v34.receiver = v9;
  v34.super_class = NLSessionActivitySplitsAccumulator;
  v33 = [(NLSessionActivityBuilderAccumulator *)&v34 initWithBuilder:location[0]];
  selfCopy = v33;
  objc_storeStrong(&selfCopy, v33);
  if (v33)
  {
    [v40 effectiveTypeIdentifier];
    v10 = _HKWorkoutDistanceTypeForActivityType();
    expectedQuantityType = selfCopy->_expectedQuantityType;
    selfCopy->_expectedQuantityType = v10;
    MEMORY[0x277D82BD8](expectedQuantityType);
    objc_storeStrong(&selfCopy->_unit, v39);
    v26 = [MEMORY[0x277CCD7E8] quantityWithUnit:v39 doubleValue:perUnitCopy];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    [v26 doubleValueForUnit:?];
    selfCopy->_definedDistance = v12;
    MEMORY[0x277D82BD8](meterUnit);
    array = [MEMORY[0x277CBEB18] array];
    splitEvents = selfCopy->_splitEvents;
    selfCopy->_splitEvents = array;
    array2 = [MEMORY[0x277CBEB18] array];
    completedSplits = selfCopy->_completedSplits;
    selfCopy->_completedSplits = array2;
    *&v17 = MEMORY[0x277D82BD8](completedSplits).n128_u64[0];
    selfCopy->_measurementSystem = systemCopy;
    selfCopy->_isCustomSplit = splitCopy;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = selfCopy->_observers;
    selfCopy->_observers = weakObjectsHashTable;
    MEMORY[0x277D82BD8](observers);
    if (v35)
    {
      v20 = [WOAveragePowerAccumulator alloc];
      v21 = [(WOAveragePowerAccumulator *)v20 initWithPowerAccumulator:v35];
      averagePowerAccumulator = selfCopy->_averagePowerAccumulator;
      selfCopy->_averagePowerAccumulator = v21;
      MEMORY[0x277D82BD8](averagePowerAccumulator);
    }
  }

  v24 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v24;
}

- (NSDate)splitStartDate
{
  lastObject = [(NSMutableArray *)self->_splitEvents lastObject];
  dateInterval = [lastObject dateInterval];
  endDate = [dateInterval endDate];
  v9 = 0;
  v7 = 0;
  if (endDate)
  {
    v2 = MEMORY[0x277D82BE0](endDate);
  }

  else
  {
    builder = [(NLSessionActivityBuilderAccumulator *)self builder];
    v9 = 1;
    nl_currentActivityStartDate = [(HKLiveWorkoutBuilder *)builder nl_currentActivityStartDate];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](nl_currentActivityStartDate);
  }

  v12 = v2;
  if (v7)
  {
    MEMORY[0x277D82BD8](nl_currentActivityStartDate);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](builder);
  }

  MEMORY[0x277D82BD8](endDate);
  MEMORY[0x277D82BD8](dateInterval);
  MEMORY[0x277D82BD8](lastObject);

  return v12;
}

- (id)endDateForSplit:(BOOL)split distanceSinceLastSplit:(double)lastSplit
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32 = a2;
  splitCopy = split;
  lastSplitCopy = lastSplit;
  if (split)
  {
    endDate = [(HKStatistics *)selfCopy->_lastSeenStatistics endDate];
    builder = [(NLSessionActivityBuilderAccumulator *)selfCopy builder];
    endDate2 = [(HKLiveWorkoutBuilder *)builder endDate];
    *&v4 = MEMORY[0x277D82BD8](builder).n128_u64[0];
    if (endDate2 && ([endDate2 hk_isBeforeOrEqualToDate:{endDate, v4}] & 1) != 0)
    {
      _HKInitializeLogging();
      location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v35, endDate2, endDate);
        _os_log_impl(&dword_20AEA4000, location, v26, "Returning builder end date because it (%@) is before or equal to stats end date (%@)", v35, 0x16u);
      }

      objc_storeStrong(&location, 0);
      v34 = MEMORY[0x277D82BE0](endDate2);
      v25 = 1;
    }

    else
    {
      v34 = MEMORY[0x277D82BE0](endDate);
      v25 = 1;
    }

    objc_storeStrong(&endDate2, 0);
    objc_storeStrong(&endDate, 0);
  }

  else
  {
    mostRecentQuantity = [(HKStatistics *)selfCopy->_lastSeenStatistics mostRecentQuantity];
    mostRecentQuantityDateInterval = [(HKStatistics *)selfCopy->_lastSeenStatistics mostRecentQuantityDateInterval];
    v11 = MEMORY[0x277CCD800];
    expectedQuantityType = selfCopy->_expectedQuantityType;
    v10 = mostRecentQuantity;
    startDate = [(NSDateInterval *)mostRecentQuantityDateInterval startDate];
    endDate3 = [(NSDateInterval *)mostRecentQuantityDateInterval endDate];
    v22 = [v11 quantitySampleWithType:expectedQuantityType quantity:v10 startDate:startDate endDate:?];
    MEMORY[0x277D82BD8](endDate3);
    *&v5 = MEMORY[0x277D82BD8](startDate).n128_u64[0];
    v14 = MEMORY[0x277CCD7E8];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v21 = [v14 quantityWithUnit:lastSplitCopy doubleValue:?];
    *&v6 = MEMORY[0x277D82BD8](meterUnit).n128_u64[0];
    v16 = MEMORY[0x277CCD7E8];
    meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
    v20 = [v16 quantityWithUnit:selfCopy->_definedDistance doubleValue:?];
    MEMORY[0x277D82BD8](meterUnit2);
    v19 = FIThresholdDateInsideSample();
    v34 = MEMORY[0x277D82BE0](v19);
    v25 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&mostRecentQuantityDateInterval, 0);
    objc_storeStrong(&mostRecentQuantity, 0);
  }

  *MEMORY[0x277D85DE8];
  v7 = v34;

  return v7;
}

- (double)surplusTimeForLastSampleInSplit:(BOOL)split distanceSinceLastSplit:(double)lastSplit
{
  if (split)
  {
    return 0.0;
  }

  mostRecentQuantity = [(HKStatistics *)self->_lastSeenStatistics mostRecentQuantity];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [(HKQuantity *)mostRecentQuantity doubleValueForUnit:?];
  v9 = v4;
  MEMORY[0x277D82BD8](meterUnit);
  MEMORY[0x277D82BD8](mostRecentQuantity);
  v12 = (v9 - (lastSplit - self->_definedDistance)) / v9;
  mostRecentQuantityDateInterval = [(HKStatistics *)self->_lastSeenStatistics mostRecentQuantityDateInterval];
  [(NSDateInterval *)mostRecentQuantityDateInterval duration];
  v11 = v5;
  MEMORY[0x277D82BD8](mostRecentQuantityDateInterval);
  return v11 - v12 * v11;
}

- (id)_updateGeneratingPartialSplits:(BOOL)splits
{
  v91 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v83 = a2;
  splitsCopy = splits;
  if (self->_lastSeenStatistics)
  {
    sumQuantity = [(HKStatistics *)selfCopy->_lastSeenStatistics sumQuantity];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    [(HKQuantity *)sumQuantity doubleValueForUnit:?];
    v46 = v3;
    MEMORY[0x277D82BD8](meterUnit);
    MEMORY[0x277D82BD8](sumQuantity);
    v78 = v46;
    v77 = v46 - selfCopy->_lastDistanceInMeters;
    v76 = selfCopy->_lastDistanceInMeters + selfCopy->_definedDistance;
    if (selfCopy->_lastSeenElapsedTime > 2.22044605e-16 && v78 >= 2.22044605e-16)
    {
      if (splitsCopy)
      {
        v43 = [(NSMutableArray *)selfCopy->_splitEvents count]!= 0;
      }

      else
      {
        v43 = v77 >= selfCopy->_definedDistance;
      }

      v75 = v43;
      if (v43)
      {
        v4 = v77 < selfCopy->_definedDistance;
        v74 = v4;
        if (v4)
        {
          definedDistance = v77;
        }

        else
        {
          definedDistance = selfCopy->_definedDistance;
        }

        v73 = definedDistance;
        v71 = v78;
        v70 = v76;
        if (v78 >= v76)
        {
          v41 = v70;
        }

        else
        {
          v41 = v71;
        }

        v69 = v41;
        v72 = v41;
        [(NLSessionActivitySplitsAccumulator *)selfCopy surplusTimeForLastSampleInSplit:v74 distanceSinceLastSplit:v77];
        v68 = v5;
        v67 = selfCopy->_lastSeenElapsedTime - selfCopy->_lastElapsedTime - v5;
        v66 = [(NLSessionActivitySplitsAccumulator *)selfCopy endDateForSplit:v74 distanceSinceLastSplit:v77];
        splitStartDate = [(NLSessionActivitySplitsAccumulator *)selfCopy splitStartDate];
        if (splitStartDate)
        {
          if ([v66 hk_isBeforeOrEqualToDate:splitStartDate])
          {
            _HKInitializeLogging();
            v60 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
            v59 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_64_8_64(v90, splitStartDate, v66);
              _os_log_error_impl(&dword_20AEA4000, v60, v59, "[workoutsplits] Split date interval is zero! startDate=%@ endDate=%@", v90, 0x16u);
            }

            objc_storeStrong(&v60, 0);
            v85 = 0;
            v61 = 1;
          }

          else
          {
            v58 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:splitStartDate endDate:v66];
            isCustomSplit = [(NLSessionActivitySplitsAccumulator *)selfCopy isCustomSplit];
            v7 = 3;
            if (!isCustomSplit)
            {
              v7 = 1;
            }

            v57[1] = v7;
            v88[0] = *MEMORY[0x277D0A738];
            v38 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
            v89[0] = v38;
            v88[1] = *MEMORY[0x277D0A768];
            v37 = [MEMORY[0x277CCABB0] numberWithInteger:selfCopy->_measurementSystem];
            v89[1] = v37;
            v88[2] = *MEMORY[0x277D0A760];
            v26 = MEMORY[0x277CCD7E8];
            meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
            v35 = [v26 quantityWithUnit:v73 doubleValue:?];
            v89[2] = v35;
            v88[3] = *MEMORY[0x277D0A770];
            v27 = MEMORY[0x277CCD7E8];
            meterUnit3 = [MEMORY[0x277CCDAB0] meterUnit];
            v33 = [v27 quantityWithUnit:v72 doubleValue:?];
            v89[3] = v33;
            v88[4] = *MEMORY[0x277D0A708];
            v32 = [MEMORY[0x277CCABB0] numberWithBool:v74];
            v89[4] = v32;
            v88[5] = *MEMORY[0x277D0A750];
            v28 = MEMORY[0x277CCD7E8];
            secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
            v30 = [v28 quantityWithUnit:v67 doubleValue:?];
            v89[5] = v30;
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:6];
            v57[0] = [v29 mutableCopy];
            MEMORY[0x277D82BD8](v29);
            MEMORY[0x277D82BD8](v30);
            MEMORY[0x277D82BD8](secondUnit);
            MEMORY[0x277D82BD8](v32);
            MEMORY[0x277D82BD8](v33);
            MEMORY[0x277D82BD8](meterUnit3);
            MEMORY[0x277D82BD8](v35);
            MEMORY[0x277D82BD8](meterUnit2);
            MEMORY[0x277D82BD8](v37);
            *&v8 = MEMORY[0x277D82BD8](v38).n128_u64[0];
            if (selfCopy->_averagePowerAccumulator)
            {
              averagePower = [(WOAveragePowerAccumulator *)selfCopy->_averagePowerAccumulator averagePower];
              [v57[0] setObject:averagePower forKeyedSubscript:*MEMORY[0x277D0A758]];
              objc_storeStrong(&averagePower, 0);
            }

            v55 = [MEMORY[0x277CCDC68] workoutEventWithType:7 dateInterval:v58 metadata:{v57[0], v8}];
            _HKInitializeLogging();
            v54 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
            v53 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v54;
              v21 = v53;
              metadata = [v55 metadata];
              v24 = [metadata objectForKeyedSubscript:*MEMORY[0x277D0A768]];
              v23 = MEMORY[0x20F2E8470]([v24 integerValue]);
              v19 = MEMORY[0x277D82BE0](v23);
              v52 = v19;
              v22 = [v55 debugDescription];
              __os_log_helper_16_2_2_8_64_8_64(v87, v19, v22);
              _os_log_impl(&dword_20AEA4000, v20, v21, "[workoutsplits] Created workout split. measurementSystem=%@, event=%@", v87, 0x16u);
              MEMORY[0x277D82BD8](v22);
              MEMORY[0x277D82BD8](v23);
              MEMORY[0x277D82BD8](v24);
              MEMORY[0x277D82BD8](metadata);
              objc_storeStrong(&v52, 0);
            }

            objc_storeStrong(&v54, 0);
            [(NSMutableArray *)selfCopy->_splitEvents addObject:v55];
            v9 = objc_alloc(MEMORY[0x277D0A830]);
            v51 = [v9 initWithEvent:v55];
            [(NSMutableArray *)selfCopy->_completedSplits addObject:v51];
            selfCopy->_lastDistanceInMeters = selfCopy->_lastDistanceInMeters + selfCopy->_definedDistance;
            selfCopy->_lastElapsedTime = selfCopy->_lastElapsedTime + v67;
            [(WOAveragePowerAccumulator *)selfCopy->_averagePowerAccumulator resetWith:v66];
            memset(__b, 0, sizeof(__b));
            obj = MEMORY[0x277D82BE0](selfCopy->_observers);
            v18 = [obj countByEnumeratingWithState:__b objects:v86 count:16];
            if (v18)
            {
              v14 = *__b[2];
              v15 = 0;
              v16 = v18;
              while (1)
              {
                v13 = v15;
                if (*__b[2] != v14)
                {
                  objc_enumerationMutation(obj);
                }

                v50 = *(__b[1] + 8 * v15);
                [v50 splitComplete:v51 currentSplitEvents:selfCopy->_splitEvents];
                ++v15;
                if (v13 + 1 >= v16)
                {
                  v15 = 0;
                  v16 = [obj countByEnumeratingWithState:__b objects:v86 count:16];
                  if (!v16)
                  {
                    break;
                  }
                }
              }
            }

            *&v10 = MEMORY[0x277D82BD8](obj).n128_u64[0];
            [(NLSessionActivityBuilderAccumulator *)selfCopy update];
            v85 = MEMORY[0x277D82BE0](v55);
            v61 = 1;
            objc_storeStrong(&v51, 0);
            objc_storeStrong(&v55, 0);
            objc_storeStrong(v57, 0);
            objc_storeStrong(&v58, 0);
          }
        }

        else
        {
          _HKInitializeLogging();
          v64 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
          v63 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v39 = v64;
            v40 = v63;
            __os_log_helper_16_0_0(v62);
            _os_log_error_impl(&dword_20AEA4000, v39, v40, "[workoutsplits] Tried to generate split but start date is nil.", v62, 2u);
          }

          objc_storeStrong(&v64, 0);
          v85 = 0;
          v61 = 1;
        }

        objc_storeStrong(&splitStartDate, 0);
        objc_storeStrong(&v66, 0);
      }

      else
      {
        v85 = 0;
      }
    }

    else
    {
      v85 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v48 = type;
      __os_log_helper_16_0_0(v79);
      _os_log_impl(&dword_20AEA4000, log, v48, "Splits Accumulator has no statistics to generate splits.", v79, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v85 = 0;
  }

  *MEMORY[0x277D85DE8];
  v11 = v85;

  return v11;
}

- (void)_generateSplitsEventsIncludingPartials:(BOOL)partials
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  partialsCopy = partials;
  array = [MEMORY[0x277CBEB18] array];
  location = 0;
  while (1)
  {
    v8 = [(NLSessionActivitySplitsAccumulator *)selfCopy _updateGeneratingPartialSplits:partialsCopy];
    v3 = location;
    location = v8;
    *&v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
    if (!v8)
    {
      break;
    }

    [array addObject:{location, v4}];
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        if (partialsCopy)
        {
          v5 = "yes";
        }

        else
        {
          v5 = "no";
        }

        __os_log_helper_16_2_1_8_32(v15, v5);
        _os_log_impl(&dword_20AEA4000, log, OS_LOG_TYPE_INFO, "Rerunning split generation with partials: %s.", v15, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  eventPersistenceDelegate = [(NLSessionActivitySplitsAccumulator *)selfCopy eventPersistenceDelegate];
  [(NLWorkoutEventPersistenceDelegate *)eventPersistenceDelegate addWorkoutEvents:array];
  MEMORY[0x277D82BD8](eventPersistenceDelegate);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&array, 0);
  *MEMORY[0x277D85DE8];
}

- (void)updateWithStatistics:(id)statistics elapsedTime:(double)time
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  quantityType = [location[0] quantityType];
  v6 = [quantityType isEqual:selfCopy->_expectedQuantityType];
  MEMORY[0x277D82BD8](quantityType);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_lastSeenStatistics, location[0]);
    selfCopy->_lastSeenElapsedTime = time;
    [(NLSessionActivitySplitsAccumulator *)selfCopy _generateSplitsEventsIncludingPartials:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_finishLastSplitWithActivity:(id)activity elapsedTime:(double)time
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  timeCopy = time;
  if (location[0])
  {
    v12 = [location[0] statisticsForType:selfCopy->_expectedQuantityType];
    if (v12)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
      {
        v11 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        v10 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v16, v12);
          _os_log_impl(&dword_20AEA4000, v11, v10, "Using last statistics from builder for the activity to generate splits: %@", v16, 0xCu);
        }

        objc_storeStrong(&v11, 0);
      }

      objc_storeStrong(&selfCopy->_lastSeenStatistics, v12);
      selfCopy->_lastSeenElapsedTime = timeCopy;
    }

    else
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v8 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = oslog;
        v5 = v8;
        __os_log_helper_16_0_0(v7);
        _os_log_impl(&dword_20AEA4000, v4, v5, "Could not retrieve statistics for our distance expected distance type. Possible there was no distance.", v7, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  [(NLSessionActivitySplitsAccumulator *)selfCopy _generateSplitsEventsIncludingPartials:1, v4];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)stopAccumulatingWithActivity:(id)activity elapsedTime:(double)time
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  timeCopy = time;
  if ([(NLSessionActivityDataAccumulator *)selfCopy isAccumulating])
  {
    [(NLSessionActivitySplitsAccumulator *)selfCopy _finishLastSplitWithActivity:location[0] elapsedTime:timeCopy];
  }

  v5.receiver = selfCopy;
  v5.super_class = NLSessionActivitySplitsAccumulator;
  [(NLSessionActivityDataAccumulator *)&v5 stopAccumulating];
  objc_storeStrong(location, 0);
}

- (void)recoverFrom:(id)from
{
  v65 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  if ([(NLSessionActivitySplitsAccumulator *)selfCopy isCustomSplit])
  {
    v39 = MEMORY[0x20F2E82E0](location[0]);
    v3 = [v39 mutableCopy];
    splitEvents = selfCopy->_splitEvents;
    selfCopy->_splitEvents = v3;
    MEMORY[0x277D82BD8](splitEvents);
    v5 = MEMORY[0x277D82BD8](v39).n128_u64[0];
  }

  else
  {
    v38 = MEMORY[0x20F2E8440](location[0], selfCopy->_measurementSystem);
    v6 = [v38 mutableCopy];
    v7 = selfCopy->_splitEvents;
    selfCopy->_splitEvents = v6;
    MEMORY[0x277D82BD8](v7);
    v5 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  }

  [(NSMutableArray *)selfCopy->_splitEvents sortUsingComparator:&__block_literal_global_14, *&v5];
  builder = [(NLSessionActivityBuilderAccumulator *)selfCopy builder];
  nl_currentActivityStartDate = [(HKLiveWorkoutBuilder *)builder nl_currentActivityStartDate];
  MEMORY[0x277D82BD8](builder);
  if (nl_currentActivityStartDate)
  {
    v30 = selfCopy->_splitEvents;
    v50 = MEMORY[0x277D85DD0];
    v51 = -1073741824;
    v52 = 0;
    v53 = __50__NLSessionActivitySplitsAccumulator_recoverFrom___block_invoke_310;
    v54 = &unk_277D89458;
    v55 = MEMORY[0x277D82BE0](nl_currentActivityStartDate);
    [(NSMutableArray *)v30 hk_removeObjectsPassingTest:&v50];
    v31 = MEMORY[0x277CCD7E8];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v49 = [v31 quantityWithUnit:? doubleValue:?];
    MEMORY[0x277D82BD8](meterUnit);
    v48 = 0.0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](selfCopy->_splitEvents);
    v34 = [obj countByEnumeratingWithState:__b objects:v64 count:16];
    if (v34)
    {
      v27 = *__b[2];
      v28 = 0;
      v29 = v34;
      while (1)
      {
        v26 = v28;
        if (*__b[2] != v27)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(__b[1] + 8 * v28);
        fiui_splitDistance = [v47 fiui_splitDistance];
        if (fiui_splitDistance)
        {
          v8 = [v49 _quantityByAddingQuantity:fiui_splitDistance];
          v9 = v49;
          v49 = v8;
          *&v10 = MEMORY[0x277D82BD8](v9).n128_u64[0];
          [v47 fiui_splitActiveDuration];
          v44 = v11;
          v48 = v48 + v11;
          v23 = objc_alloc(MEMORY[0x277D0A830]);
          v20 = fiui_splitDistance;
          meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
          [v20 doubleValueForUnit:?];
          v21 = v12;
          v22 = v44;
          dateInterval = [v47 dateInterval];
          v43 = [v23 initWithDistance:v21 duration:v22 dateInterval:?];
          MEMORY[0x277D82BD8](dateInterval);
          *&v13 = MEMORY[0x277D82BD8](meterUnit2).n128_u64[0];
          [(NSMutableArray *)selfCopy->_completedSplits addObject:v43, v13];
          objc_storeStrong(&v43, 0);
        }

        objc_storeStrong(&fiui_splitDistance, 0);
        ++v28;
        if (v26 + 1 >= v29)
        {
          v28 = 0;
          v29 = [obj countByEnumeratingWithState:__b objects:v64 count:16];
          if (!v29)
          {
            break;
          }
        }
      }
    }

    *&v14 = MEMORY[0x277D82BD8](obj).n128_u64[0];
    v18 = v49;
    meterUnit3 = [MEMORY[0x277CCDAB0] meterUnit];
    [v18 doubleValueForUnit:?];
    selfCopy->_lastDistanceInMeters = v15;
    MEMORY[0x277D82BD8](meterUnit3);
    selfCopy->_lastElapsedTime = v48;
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NSMutableArray *)selfCopy->_splitEvents count];
      v40 = 0;
      if ([(NLSessionActivitySplitsAccumulator *)selfCopy isCustomSplit])
      {
        v16 = @"Custom";
      }

      else
      {
        v41 = MEMORY[0x20F2E8470](selfCopy->_measurementSystem);
        v40 = 1;
        v16 = v41;
      }

      __os_log_helper_16_2_4_8_0_8_64_8_0_8_0(v63, v17, v16, *&selfCopy->_lastDistanceInMeters, *&selfCopy->_lastElapsedTime);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[workoutsplits] Recovered %ld %@ Splits with lastDistance=%f lastElapsedTime=%f", v63, 0x2Au);
      if (v40)
      {
        MEMORY[0x277D82BD8](v41);
      }
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v55, 0);
    v56 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v59 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v58 = 16;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      log = v59;
      type = v58;
      __os_log_helper_16_0_0(v57);
      _os_log_error_impl(&dword_20AEA4000, log, type, "[workoutsplits] Tried to recover splits, but the builder hasn't started collection yet. Returning early.", v57, 2u);
    }

    objc_storeStrong(&v59, 0);
    v56 = 1;
  }

  objc_storeStrong(&nl_currentActivityStartDate, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __50__NLSessionActivitySplitsAccumulator_recoverFrom___block_invoke(void *a1, void *a2, void *a3)
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

BOOL __50__NLSessionActivitySplitsAccumulator_recoverFrom___block_invoke_310(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] dateInterval];
  v5 = [v3 endDate];
  v9 = 0;
  v7 = 0;
  v6 = 1;
  if ([v5 compare:a1[4]] != -1)
  {
    v10 = [location[0] dateInterval];
    v9 = 1;
    v8 = [v10 startDate];
    v7 = 1;
    v6 = [v8 compare:a1[4]] == -1;
  }

  v12 = v6;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v12;
}

- (void)addSplitObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_observers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeSplitObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_observers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (id)removeAllSplitObservers
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [(NSHashTable *)self->_observers allObjects];
  [(NSHashTable *)selfCopy->_observers removeAllObjects];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (NLWorkoutEventPersistenceDelegate)eventPersistenceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventPersistenceDelegate);

  return WeakRetained;
}

@end