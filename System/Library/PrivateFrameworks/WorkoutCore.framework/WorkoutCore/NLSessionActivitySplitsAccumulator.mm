@interface NLSessionActivitySplitsAccumulator
- (NLSessionActivitySplitsAccumulator)initWithBuilder:(id)a3 activityType:(id)a4 unit:(id)a5 distancePerUnit:(double)a6 measurementSystem:(int64_t)a7 isCustomSplit:(BOOL)a8 powerAccumulator:(id)a9;
- (NLWorkoutEventPersistenceDelegate)eventPersistenceDelegate;
- (NSDate)splitStartDate;
- (double)surplusTimeForLastSampleInSplit:(BOOL)a3 distanceSinceLastSplit:(double)a4;
- (id)_updateGeneratingPartialSplits:(BOOL)a3;
- (id)endDateForSplit:(BOOL)a3 distanceSinceLastSplit:(double)a4;
- (id)removeAllSplitObservers;
- (void)_finishLastSplitWithActivity:(id)a3 elapsedTime:(double)a4;
- (void)_generateSplitsEventsIncludingPartials:(BOOL)a3;
- (void)addSplitObserver:(id)a3;
- (void)recoverFrom:(id)a3;
- (void)removeSplitObserver:(id)a3;
- (void)stopAccumulatingWithActivity:(id)a3 elapsedTime:(double)a4;
- (void)updateWithStatistics:(id)a3 elapsedTime:(double)a4;
@end

@implementation NLSessionActivitySplitsAccumulator

- (NLSessionActivitySplitsAccumulator)initWithBuilder:(id)a3 activityType:(id)a4 unit:(id)a5 distancePerUnit:(double)a6 measurementSystem:(int64_t)a7 isCustomSplit:(BOOL)a8 powerAccumulator:(id)a9
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v38 = a6;
  v37 = a7;
  v36 = a8;
  v35 = 0;
  objc_storeStrong(&v35, a9);
  v9 = v42;
  v42 = 0;
  v34.receiver = v9;
  v34.super_class = NLSessionActivitySplitsAccumulator;
  v33 = [(NLSessionActivityBuilderAccumulator *)&v34 initWithBuilder:location[0]];
  v42 = v33;
  objc_storeStrong(&v42, v33);
  if (v33)
  {
    [v40 effectiveTypeIdentifier];
    v10 = _HKWorkoutDistanceTypeForActivityType();
    expectedQuantityType = v42->_expectedQuantityType;
    v42->_expectedQuantityType = v10;
    MEMORY[0x277D82BD8](expectedQuantityType);
    objc_storeStrong(&v42->_unit, v39);
    v26 = [MEMORY[0x277CCD7E8] quantityWithUnit:v39 doubleValue:v38];
    v25 = [MEMORY[0x277CCDAB0] meterUnit];
    [v26 doubleValueForUnit:?];
    v42->_definedDistance = v12;
    MEMORY[0x277D82BD8](v25);
    v13 = [MEMORY[0x277CBEB18] array];
    splitEvents = v42->_splitEvents;
    v42->_splitEvents = v13;
    v15 = [MEMORY[0x277CBEB18] array];
    completedSplits = v42->_completedSplits;
    v42->_completedSplits = v15;
    *&v17 = MEMORY[0x277D82BD8](completedSplits).n128_u64[0];
    v42->_measurementSystem = v37;
    v42->_isCustomSplit = v36;
    v18 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v42->_observers;
    v42->_observers = v18;
    MEMORY[0x277D82BD8](observers);
    if (v35)
    {
      v20 = [WOAveragePowerAccumulator alloc];
      v21 = [(WOAveragePowerAccumulator *)v20 initWithPowerAccumulator:v35];
      averagePowerAccumulator = v42->_averagePowerAccumulator;
      v42->_averagePowerAccumulator = v21;
      MEMORY[0x277D82BD8](averagePowerAccumulator);
    }
  }

  v24 = MEMORY[0x277D82BE0](v42);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v42, 0);
  return v24;
}

- (NSDate)splitStartDate
{
  v4 = [(NSMutableArray *)self->_splitEvents lastObject];
  v5 = [v4 dateInterval];
  v6 = [v5 endDate];
  v9 = 0;
  v7 = 0;
  if (v6)
  {
    v2 = MEMORY[0x277D82BE0](v6);
  }

  else
  {
    v10 = [(NLSessionActivityBuilderAccumulator *)self builder];
    v9 = 1;
    v8 = [(HKLiveWorkoutBuilder *)v10 nl_currentActivityStartDate];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](v8);
  }

  v12 = v2;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);

  return v12;
}

- (id)endDateForSplit:(BOOL)a3 distanceSinceLastSplit:(double)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = self;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  if (a3)
  {
    v29 = [(HKStatistics *)v33->_lastSeenStatistics endDate];
    v18 = [(NLSessionActivityBuilderAccumulator *)v33 builder];
    v28 = [(HKLiveWorkoutBuilder *)v18 endDate];
    *&v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    if (v28 && ([v28 hk_isBeforeOrEqualToDate:{v29, v4}] & 1) != 0)
    {
      _HKInitializeLogging();
      location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v35, v28, v29);
        _os_log_impl(&dword_20AEA4000, location, v26, "Returning builder end date because it (%@) is before or equal to stats end date (%@)", v35, 0x16u);
      }

      objc_storeStrong(&location, 0);
      v34 = MEMORY[0x277D82BE0](v28);
      v25 = 1;
    }

    else
    {
      v34 = MEMORY[0x277D82BE0](v29);
      v25 = 1;
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v24 = [(HKStatistics *)v33->_lastSeenStatistics mostRecentQuantity];
    v23 = [(HKStatistics *)v33->_lastSeenStatistics mostRecentQuantityDateInterval];
    v11 = MEMORY[0x277CCD800];
    expectedQuantityType = v33->_expectedQuantityType;
    v10 = v24;
    v13 = [(NSDateInterval *)v23 startDate];
    v12 = [(NSDateInterval *)v23 endDate];
    v22 = [v11 quantitySampleWithType:expectedQuantityType quantity:v10 startDate:v13 endDate:?];
    MEMORY[0x277D82BD8](v12);
    *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v14 = MEMORY[0x277CCD7E8];
    v15 = [MEMORY[0x277CCDAB0] meterUnit];
    v21 = [v14 quantityWithUnit:v30 doubleValue:?];
    *&v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    v16 = MEMORY[0x277CCD7E8];
    v17 = [MEMORY[0x277CCDAB0] meterUnit];
    v20 = [v16 quantityWithUnit:v33->_definedDistance doubleValue:?];
    MEMORY[0x277D82BD8](v17);
    v19 = FIThresholdDateInsideSample();
    v34 = MEMORY[0x277D82BE0](v19);
    v25 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  *MEMORY[0x277D85DE8];
  v7 = v34;

  return v7;
}

- (double)surplusTimeForLastSampleInSplit:(BOOL)a3 distanceSinceLastSplit:(double)a4
{
  if (a3)
  {
    return 0.0;
  }

  v8 = [(HKStatistics *)self->_lastSeenStatistics mostRecentQuantity];
  v7 = [MEMORY[0x277CCDAB0] meterUnit];
  [(HKQuantity *)v8 doubleValueForUnit:?];
  v9 = v4;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v12 = (v9 - (a4 - self->_definedDistance)) / v9;
  v10 = [(HKStatistics *)self->_lastSeenStatistics mostRecentQuantityDateInterval];
  [(NSDateInterval *)v10 duration];
  v11 = v5;
  MEMORY[0x277D82BD8](v10);
  return v11 - v12 * v11;
}

- (id)_updateGeneratingPartialSplits:(BOOL)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v84 = self;
  v83 = a2;
  v82 = a3;
  if (self->_lastSeenStatistics)
  {
    v45 = [(HKStatistics *)v84->_lastSeenStatistics sumQuantity];
    v44 = [MEMORY[0x277CCDAB0] meterUnit];
    [(HKQuantity *)v45 doubleValueForUnit:?];
    v46 = v3;
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    v78 = v46;
    v77 = v46 - v84->_lastDistanceInMeters;
    v76 = v84->_lastDistanceInMeters + v84->_definedDistance;
    if (v84->_lastSeenElapsedTime > 2.22044605e-16 && v78 >= 2.22044605e-16)
    {
      if (v82)
      {
        v43 = [(NSMutableArray *)v84->_splitEvents count]!= 0;
      }

      else
      {
        v43 = v77 >= v84->_definedDistance;
      }

      v75 = v43;
      if (v43)
      {
        v4 = v77 < v84->_definedDistance;
        v74 = v4;
        if (v4)
        {
          definedDistance = v77;
        }

        else
        {
          definedDistance = v84->_definedDistance;
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
        [(NLSessionActivitySplitsAccumulator *)v84 surplusTimeForLastSampleInSplit:v74 distanceSinceLastSplit:v77];
        v68 = v5;
        v67 = v84->_lastSeenElapsedTime - v84->_lastElapsedTime - v5;
        v66 = [(NLSessionActivitySplitsAccumulator *)v84 endDateForSplit:v74 distanceSinceLastSplit:v77];
        v65 = [(NLSessionActivitySplitsAccumulator *)v84 splitStartDate];
        if (v65)
        {
          if ([v66 hk_isBeforeOrEqualToDate:v65])
          {
            _HKInitializeLogging();
            v60 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
            v59 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_64_8_64(v90, v65, v66);
              _os_log_error_impl(&dword_20AEA4000, v60, v59, "[workoutsplits] Split date interval is zero! startDate=%@ endDate=%@", v90, 0x16u);
            }

            objc_storeStrong(&v60, 0);
            v85 = 0;
            v61 = 1;
          }

          else
          {
            v58 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v65 endDate:v66];
            v6 = [(NLSessionActivitySplitsAccumulator *)v84 isCustomSplit];
            v7 = 3;
            if (!v6)
            {
              v7 = 1;
            }

            v57[1] = v7;
            v88[0] = *MEMORY[0x277D0A738];
            v38 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
            v89[0] = v38;
            v88[1] = *MEMORY[0x277D0A768];
            v37 = [MEMORY[0x277CCABB0] numberWithInteger:v84->_measurementSystem];
            v89[1] = v37;
            v88[2] = *MEMORY[0x277D0A760];
            v26 = MEMORY[0x277CCD7E8];
            v36 = [MEMORY[0x277CCDAB0] meterUnit];
            v35 = [v26 quantityWithUnit:v73 doubleValue:?];
            v89[2] = v35;
            v88[3] = *MEMORY[0x277D0A770];
            v27 = MEMORY[0x277CCD7E8];
            v34 = [MEMORY[0x277CCDAB0] meterUnit];
            v33 = [v27 quantityWithUnit:v72 doubleValue:?];
            v89[3] = v33;
            v88[4] = *MEMORY[0x277D0A708];
            v32 = [MEMORY[0x277CCABB0] numberWithBool:v74];
            v89[4] = v32;
            v88[5] = *MEMORY[0x277D0A750];
            v28 = MEMORY[0x277CCD7E8];
            v31 = [MEMORY[0x277CCDAB0] secondUnit];
            v30 = [v28 quantityWithUnit:v67 doubleValue:?];
            v89[5] = v30;
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:6];
            v57[0] = [v29 mutableCopy];
            MEMORY[0x277D82BD8](v29);
            MEMORY[0x277D82BD8](v30);
            MEMORY[0x277D82BD8](v31);
            MEMORY[0x277D82BD8](v32);
            MEMORY[0x277D82BD8](v33);
            MEMORY[0x277D82BD8](v34);
            MEMORY[0x277D82BD8](v35);
            MEMORY[0x277D82BD8](v36);
            MEMORY[0x277D82BD8](v37);
            *&v8 = MEMORY[0x277D82BD8](v38).n128_u64[0];
            if (v84->_averagePowerAccumulator)
            {
              v56 = [(WOAveragePowerAccumulator *)v84->_averagePowerAccumulator averagePower];
              [v57[0] setObject:v56 forKeyedSubscript:*MEMORY[0x277D0A758]];
              objc_storeStrong(&v56, 0);
            }

            v55 = [MEMORY[0x277CCDC68] workoutEventWithType:7 dateInterval:v58 metadata:{v57[0], v8}];
            _HKInitializeLogging();
            v54 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
            v53 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v54;
              v21 = v53;
              v25 = [v55 metadata];
              v24 = [v25 objectForKeyedSubscript:*MEMORY[0x277D0A768]];
              v23 = MEMORY[0x20F2E8470]([v24 integerValue]);
              v19 = MEMORY[0x277D82BE0](v23);
              v52 = v19;
              v22 = [v55 debugDescription];
              __os_log_helper_16_2_2_8_64_8_64(v87, v19, v22);
              _os_log_impl(&dword_20AEA4000, v20, v21, "[workoutsplits] Created workout split. measurementSystem=%@, event=%@", v87, 0x16u);
              MEMORY[0x277D82BD8](v22);
              MEMORY[0x277D82BD8](v23);
              MEMORY[0x277D82BD8](v24);
              MEMORY[0x277D82BD8](v25);
              objc_storeStrong(&v52, 0);
            }

            objc_storeStrong(&v54, 0);
            [(NSMutableArray *)v84->_splitEvents addObject:v55];
            v9 = objc_alloc(MEMORY[0x277D0A830]);
            v51 = [v9 initWithEvent:v55];
            [(NSMutableArray *)v84->_completedSplits addObject:v51];
            v84->_lastDistanceInMeters = v84->_lastDistanceInMeters + v84->_definedDistance;
            v84->_lastElapsedTime = v84->_lastElapsedTime + v67;
            [(WOAveragePowerAccumulator *)v84->_averagePowerAccumulator resetWith:v66];
            memset(__b, 0, sizeof(__b));
            obj = MEMORY[0x277D82BE0](v84->_observers);
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
                [v50 splitComplete:v51 currentSplitEvents:v84->_splitEvents];
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
            [(NLSessionActivityBuilderAccumulator *)v84 update];
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

        objc_storeStrong(&v65, 0);
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

- (void)_generateSplitsEventsIncludingPartials:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = [MEMORY[0x277CBEB18] array];
  location = 0;
  while (1)
  {
    v8 = [(NLSessionActivitySplitsAccumulator *)v14 _updateGeneratingPartialSplits:v12];
    v3 = location;
    location = v8;
    *&v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
    if (!v8)
    {
      break;
    }

    [v11 addObject:{location, v4}];
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        if (v12)
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

  v6 = [(NLSessionActivitySplitsAccumulator *)v14 eventPersistenceDelegate];
  [(NLWorkoutEventPersistenceDelegate *)v6 addWorkoutEvents:v11];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v11, 0);
  *MEMORY[0x277D85DE8];
}

- (void)updateWithStatistics:(id)a3 elapsedTime:(double)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] quantityType];
  v6 = [v5 isEqual:v8->_expectedQuantityType];
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    objc_storeStrong(&v8->_lastSeenStatistics, location[0]);
    v8->_lastSeenElapsedTime = a4;
    [(NLSessionActivitySplitsAccumulator *)v8 _generateSplitsEventsIncludingPartials:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_finishLastSplitWithActivity:(id)a3 elapsedTime:(double)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  if (location[0])
  {
    v12 = [location[0] statisticsForType:v15->_expectedQuantityType];
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

      objc_storeStrong(&v15->_lastSeenStatistics, v12);
      v15->_lastSeenElapsedTime = v13;
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

  [(NLSessionActivitySplitsAccumulator *)v15 _generateSplitsEventsIncludingPartials:1, v4];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)stopAccumulatingWithActivity:(id)a3 elapsedTime:(double)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  if ([(NLSessionActivityDataAccumulator *)v8 isAccumulating])
  {
    [(NLSessionActivitySplitsAccumulator *)v8 _finishLastSplitWithActivity:location[0] elapsedTime:v6];
  }

  v5.receiver = v8;
  v5.super_class = NLSessionActivitySplitsAccumulator;
  [(NLSessionActivityDataAccumulator *)&v5 stopAccumulating];
  objc_storeStrong(location, 0);
}

- (void)recoverFrom:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v62 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(NLSessionActivitySplitsAccumulator *)v62 isCustomSplit])
  {
    v39 = MEMORY[0x20F2E82E0](location[0]);
    v3 = [v39 mutableCopy];
    splitEvents = v62->_splitEvents;
    v62->_splitEvents = v3;
    MEMORY[0x277D82BD8](splitEvents);
    v5 = MEMORY[0x277D82BD8](v39).n128_u64[0];
  }

  else
  {
    v38 = MEMORY[0x20F2E8440](location[0], v62->_measurementSystem);
    v6 = [v38 mutableCopy];
    v7 = v62->_splitEvents;
    v62->_splitEvents = v6;
    MEMORY[0x277D82BD8](v7);
    v5 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  }

  [(NSMutableArray *)v62->_splitEvents sortUsingComparator:&__block_literal_global_14, *&v5];
  v37 = [(NLSessionActivityBuilderAccumulator *)v62 builder];
  v60 = [(HKLiveWorkoutBuilder *)v37 nl_currentActivityStartDate];
  MEMORY[0x277D82BD8](v37);
  if (v60)
  {
    v30 = v62->_splitEvents;
    v50 = MEMORY[0x277D85DD0];
    v51 = -1073741824;
    v52 = 0;
    v53 = __50__NLSessionActivitySplitsAccumulator_recoverFrom___block_invoke_310;
    v54 = &unk_277D89458;
    v55 = MEMORY[0x277D82BE0](v60);
    [(NSMutableArray *)v30 hk_removeObjectsPassingTest:&v50];
    v31 = MEMORY[0x277CCD7E8];
    v32 = [MEMORY[0x277CCDAB0] meterUnit];
    v49 = [v31 quantityWithUnit:? doubleValue:?];
    MEMORY[0x277D82BD8](v32);
    v48 = 0.0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v62->_splitEvents);
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
        v45 = [v47 fiui_splitDistance];
        if (v45)
        {
          v8 = [v49 _quantityByAddingQuantity:v45];
          v9 = v49;
          v49 = v8;
          *&v10 = MEMORY[0x277D82BD8](v9).n128_u64[0];
          [v47 fiui_splitActiveDuration];
          v44 = v11;
          v48 = v48 + v11;
          v23 = objc_alloc(MEMORY[0x277D0A830]);
          v20 = v45;
          v25 = [MEMORY[0x277CCDAB0] meterUnit];
          [v20 doubleValueForUnit:?];
          v21 = v12;
          v22 = v44;
          v24 = [v47 dateInterval];
          v43 = [v23 initWithDistance:v21 duration:v22 dateInterval:?];
          MEMORY[0x277D82BD8](v24);
          *&v13 = MEMORY[0x277D82BD8](v25).n128_u64[0];
          [(NSMutableArray *)v62->_completedSplits addObject:v43, v13];
          objc_storeStrong(&v43, 0);
        }

        objc_storeStrong(&v45, 0);
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
    v19 = [MEMORY[0x277CCDAB0] meterUnit];
    [v18 doubleValueForUnit:?];
    v62->_lastDistanceInMeters = v15;
    MEMORY[0x277D82BD8](v19);
    v62->_lastElapsedTime = v48;
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NSMutableArray *)v62->_splitEvents count];
      v40 = 0;
      if ([(NLSessionActivitySplitsAccumulator *)v62 isCustomSplit])
      {
        v16 = @"Custom";
      }

      else
      {
        v41 = MEMORY[0x20F2E8470](v62->_measurementSystem);
        v40 = 1;
        v16 = v41;
      }

      __os_log_helper_16_2_4_8_0_8_64_8_0_8_0(v63, v17, v16, *&v62->_lastDistanceInMeters, *&v62->_lastElapsedTime);
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

  objc_storeStrong(&v60, 0);
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

- (void)addSplitObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_observers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeSplitObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_observers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (id)removeAllSplitObservers
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [(NSHashTable *)self->_observers allObjects];
  [(NSHashTable *)v5->_observers removeAllObjects];
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