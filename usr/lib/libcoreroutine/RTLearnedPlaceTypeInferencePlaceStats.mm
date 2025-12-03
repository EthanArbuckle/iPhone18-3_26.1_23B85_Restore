@interface RTLearnedPlaceTypeInferencePlaceStats
+ (double)extractTopMedianDwellTimeFromVisits:(id)visits;
+ (id)extractDailyStatsFromVisits:(id)visits;
+ (id)extractWeeklyStatsFromDailyStats:(id)stats;
+ (id)visitsWithDwellTimeBetweenDateRange:(id)range start:(id)start end:(id)end;
- (RTLearnedPlaceTypeInferencePlaceStats)initWithLearnedLocationStore:(id)store place:(id)place visits:(id)visits;
- (id)description;
- (id)getMlFeatures;
- (id)localDeviceVisitsForVisits:(id)visits;
- (id)visitIntervalsForVisits:(id)visits place:(id)place;
- (id)visitsPredatingCurrentDeviceFromVisits:(id)visits;
- (void)log;
@end

@implementation RTLearnedPlaceTypeInferencePlaceStats

+ (id)visitsWithDwellTimeBetweenDateRange:(id)range start:(id)start end:(id)end
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAC30];
  rangeCopy = range;
  v9 = [v7 predicateWithFormat:@"%K <= %@ and %@ <= %K", @"entryDate", end, start, @"exitDate"];
  v10 = [rangeCopy filteredArrayUsingPredicate:v9];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v10 sortedArrayUsingDescriptors:v12];

  return v13;
}

+ (double)extractTopMedianDwellTimeFromVisits:(id)visits
{
  v45 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar startOfDayForDate:date];

  v7 = objc_opt_new();
  [v7 setWeekOfYear:-5];
  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v37 = v7;
  v9 = [currentCalendar2 dateByAddingComponents:v7 toDate:v6 options:0];

  v10 = v6;
  v38 = visitsCopy;
  v36 = v9;
  v11 = [objc_opt_class() visitsWithDwellTimeBetweenDateRange:visitsCopy start:v9 end:v10];
  array = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = MEMORY[0x277CCABB0];
        exitDate = [v18 exitDate];
        entryDate = [v18 entryDate];
        [exitDate timeIntervalSinceDate:entryDate];
        v22 = [v19 numberWithDouble:?];
        [array addObject:v22];
      }

      v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v15);
  }

  v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
  v43 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  [array sortUsingDescriptors:v24];

  lastObject = [v13 lastObject];
  exitDate2 = [lastObject exitDate];
  firstObject = [v13 firstObject];
  entryDate2 = [firstObject entryDate];
  [exitDate2 timeIntervalSinceDate:entryDate2];
  v30 = v29 / 604800.0;

  v31 = vcvtmd_u64_f64(v30 * 0.5);
  v32 = 0.0;
  if ([array count] > v31)
  {
    if (v31 <= 1)
    {
      if ([array count] <= 2)
      {
        if ([array count])
        {
          v31 = [array count] - 1;
        }
      }

      else
      {
        v31 = 2;
      }
    }

    v33 = [array objectAtIndex:v31];
    [v33 doubleValue];
    v32 = v34;
  }

  return v32;
}

+ (id)extractDailyStatsFromVisits:(id)visits
{
  v45 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  date = [MEMORY[0x277CBEAA8] date];
  v4 = 0x277CBE000uLL;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v34 = date;
  v6 = [currentCalendar startOfDayForDate:date];

  v7 = objc_opt_new();
  [v7 setWeekOfYear:-5];
  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v33 = v7;
  v9 = [currentCalendar2 dateByAddingComponents:v7 toDate:v6 options:0];

  v10 = objc_opt_new();
  [v10 setDay:1];
  [v10 setSecond:-1];
  currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
  v32 = v10;
  v12 = [currentCalendar3 dateByAddingComponents:v10 toDate:v9 options:0];

  v36 = objc_opt_new();
  [v36 setDay:1];
  array = [MEMORY[0x277CBEB18] array];
  v37 = v6;
  if ([v12 compare:v6] == -1)
  {
    do
    {
      v15 = v4;
      context = objc_autoreleasePoolPush();
      v16 = [objc_opt_class() visitsWithDwellTimeBetweenDateRange:visitsCopy start:v9 end:v12];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v41;
        v20 = 0.0;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v41 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v40 + 1) + 8 * i);
            entryDate = [v22 entryDate];
            v24 = [entryDate laterDate:v9];

            exitDate = [v22 exitDate];
            v26 = [exitDate earlierDate:v12];

            [v26 timeIntervalSinceDate:v24];
            v20 = v20 + v27;
          }

          v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v18);
      }

      else
      {
        v20 = 0.0;
      }

      v28 = -[RTLearnedPlaceTypeInferenceDailyStats initWithStart:end:visitCount:aggregateDwellTimeBetweenDateRange:]([RTLearnedPlaceTypeInferenceDailyStats alloc], "initWithStart:end:visitCount:aggregateDwellTimeBetweenDateRange:", v9, v12, [v16 count], v20);
      if (v28)
      {
        [array addObject:v28];
      }

      v4 = v15;
      currentCalendar4 = [*(v15 + 2688) currentCalendar];
      v14 = [currentCalendar4 dateByAddingComponents:v36 toDate:v9 options:0];

      currentCalendar5 = [*(v15 + 2688) currentCalendar];
      v13 = [currentCalendar5 dateByAddingComponents:v36 toDate:v12 options:0];

      objc_autoreleasePoolPop(context);
      v9 = v14;
      v12 = v13;
    }

    while ([v13 compare:v37] == -1);
  }

  else
  {
    v13 = v12;
    v14 = v9;
  }

  return array;
}

+ (id)extractWeeklyStatsFromDailyStats:(id)stats
{
  statsCopy = stats;
  array = [MEMORY[0x277CBEB18] array];
  if ([statsCopy count] >= 7)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [RTLearnedPlaceTypeInferenceWeeklyStats alloc];
      v9 = [statsCopy subarrayWithRange:{v5, 7}];
      v10 = [(RTLearnedPlaceTypeInferenceWeeklyStats *)v8 initWithDailyStats:v9];

      if (v10)
      {
        [array addObject:v10];
      }

      objc_autoreleasePoolPop(v7);
      ++v6;
      v5 += 7;
    }

    while (v6 < [statsCopy count] / 7uLL);
  }

  return array;
}

- (id)localDeviceVisitsForVisits:(id)visits
{
  v76 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  v48 = visitsCopy;
  if (visitsCopy && [visitsCopy count])
  {
    learnedLocationStore = [(RTLearnedPlaceTypeInferencePlaceStats *)self learnedLocationStore];
    oslog = [learnedLocationStore predicateForObjectsFromCurrentDevice];

    *v70 = 0;
    *&v70[8] = v70;
    *&v70[16] = 0x3032000000;
    v71 = __Block_byref_object_copy__190;
    v72 = __Block_byref_object_dispose__190;
    v73 = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v48;
    v5 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v52 = *v65;
      v50 = *MEMORY[0x277D01448];
      v51 = *MEMORY[0x277CCA450];
      do
      {
        v55 = v5;
        v9 = 0;
        v10 = v6;
        v11 = v7;
        v12 = v8;
        do
        {
          if (*v65 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v64 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          learnedLocationStore2 = [(RTLearnedPlaceTypeInferencePlaceStats *)self learnedLocationStore];
          location = [v13 location];
          v15Location = [location location];
          v58 = [learnedLocationStore2 predicateForVisitsWithinDistance:v15Location location:500.0];

          learnedLocationStore3 = [(RTLearnedPlaceTypeInferencePlaceStats *)self learnedLocationStore];
          entryDate = [v13 entryDate];
          v19 = [entryDate dateByAddingTimeInterval:-1800.0];
          exitDate = [v13 exitDate];
          v21 = [exitDate dateByAddingTimeInterval:1800.0];
          v57 = [learnedLocationStore3 predicateForVisitsFromEntryDate:v19 exitDate:v21];

          v22 = MEMORY[0x277CCA920];
          v68[0] = oslog;
          v68[1] = v58;
          v68[2] = v57;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
          v8 = [v22 andPredicateWithSubpredicates:v23];

          v24 = dispatch_semaphore_create(0);
          learnedLocationStore4 = [(RTLearnedPlaceTypeInferencePlaceStats *)self learnedLocationStore];
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __68__RTLearnedPlaceTypeInferencePlaceStats_localDeviceVisitsForVisits___block_invoke;
          v60[3] = &unk_2788D2B08;
          v62 = v70;
          v60[4] = self;
          v63 = a2;
          v26 = v24;
          v61 = v26;
          [learnedLocationStore4 fetchVisitsWithPredicate:v8 handler:v60];

          v27 = v26;
          v28 = [MEMORY[0x277CBEAA8] now];
          v29 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(v27, v29))
          {
            v30 = [MEMORY[0x277CBEAA8] now];
            [v30 timeIntervalSinceDate:v28];
            v32 = v31;
            v33 = objc_opt_new();
            v34 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_561];
            callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
            v36 = [callStackSymbols filteredArrayUsingPredicate:v34];
            firstObject = [v36 firstObject];

            [v33 submitToCoreAnalytics:firstObject type:1 duration:v32];
            v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v38, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v39 = MEMORY[0x277CCA9B8];
            v74 = v51;
            *buf = @"semaphore wait timeout";
            v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v74 count:1];
            v41 = [v39 errorWithDomain:v50 code:15 userInfo:v40];

            if (v41)
            {
              v42 = v41;
            }
          }

          objc_autoreleasePoolPop(context);
          ++v9;
          v7 = v57;
          v6 = v58;
          v10 = v58;
          v11 = v57;
          v12 = v8;
        }

        while (v55 != v9);
        v5 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v5);
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    v46 = *(*&v70[8] + 40);
    _Block_object_dispose(v70, 8);
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v46 = MEMORY[0x277CBEBF8];
      goto LABEL_24;
    }

    oslog = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      *v70 = 138412546;
      *&v70[4] = v44;
      *&v70[12] = 2112;
      *&v70[14] = v45;
      _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_INFO, "%@, %@, no input visits provided, returning early", v70, 0x16u);
    }

    v46 = MEMORY[0x277CBEBF8];
  }

LABEL_24:

  return v46;
}

void __68__RTLearnedPlaceTypeInferencePlaceStats_localDeviceVisitsForVisits___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:a2];
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, error was issued while fetching local device visits from store, error: %@", &v10, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)visitsPredatingCurrentDeviceFromVisits:(id)visits
{
  v75[1] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  v6 = visitsCopy;
  if (visitsCopy && [visitsCopy count])
  {
    aSelector = a2;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v72 = __Block_byref_object_copy__190;
    v73 = __Block_byref_object_dispose__190;
    v74 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__190;
    v64 = __Block_byref_object_dispose__190;
    v65 = 0;
    v7 = dispatch_semaphore_create(0);
    learnedLocationStore = [(RTLearnedPlaceTypeInferencePlaceStats *)self learnedLocationStore];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __80__RTLearnedPlaceTypeInferencePlaceStats_visitsPredatingCurrentDeviceFromVisits___block_invoke;
    v56[3] = &unk_2788C4490;
    v58 = buf;
    v59 = &v60;
    v9 = v7;
    v57 = v9;
    [learnedLocationStore fetchCurrentDeviceWithHandler:v56];

    v10 = v9;
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v10, v12))
    {
      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_561];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
      firstObject = [v19 firstObject];

      [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *v66 = 0;
        _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v66, 2u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v75[0] = *MEMORY[0x277CCA450];
      *v66 = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v75 count:1];
      v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

      if (v24)
      {
        v25 = v24;
      }
    }

    else
    {
      v24 = 0;
    }

    v31 = v24;
    if (v31)
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(aSelector);
        *v66 = 138412802;
        *&v66[4] = v34;
        v67 = 2112;
        v68 = v35;
        v69 = 2112;
        v70 = v31;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, semaphore error while fetching current device from store, error: %@", v66, 0x20u);
      }
    }

    else if (v61[5])
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(aSelector);
        v39 = v61[5];
        *v66 = 138412802;
        *&v66[4] = v37;
        v67 = 2112;
        v68 = v38;
        v69 = 2112;
        v70 = v39;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, error was issued while fetching current device from store, error: %@", v66, 0x20u);
      }
    }

    else
    {
      v40 = *(*&buf[8] + 40);
      if (v40)
      {
        creationDate = [v40 creationDate];
        v42 = creationDate == 0;

        if (!v42)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v43 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = objc_opt_class();
              v45 = NSStringFromClass(v44);
              v46 = NSStringFromSelector(aSelector);
              creationDate2 = [*(*&buf[8] + 40) creationDate];
              stringFromDate = [creationDate2 stringFromDate];
              *v66 = 138412802;
              *&v66[4] = v45;
              v67 = 2112;
              v68 = v46;
              v69 = 2112;
              v70 = stringFromDate;
              _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, %@, filtering for remote device visits predating device creation date on %@", v66, 0x20u);
            }
          }

          v49 = MEMORY[0x277CCAC30];
          creationDate3 = [*(*&buf[8] + 40) creationDate];
          v32 = [v49 predicateWithFormat:@"%K < %@", @"exitDate", creationDate3];

          v30 = [v6 filteredArrayUsingPredicate:v32];
          goto LABEL_30;
        }
      }

      v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = NSStringFromSelector(aSelector);
        *v66 = 138412546;
        *&v66[4] = v53;
        v67 = 2112;
        v68 = v54;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, no valid creation date for current device, returning early", v66, 0x16u);
      }
    }

    v30 = MEMORY[0x277CBEBF8];
LABEL_30:

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, no input visits provided, returning early", buf, 0x16u);
    }
  }

  v30 = MEMORY[0x277CBEBF8];
LABEL_31:

  return v30;
}

void __80__RTLearnedPlaceTypeInferencePlaceStats_visitsPredatingCurrentDeviceFromVisits___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)visitIntervalsForVisits:(id)visits place:(id)place
{
  v99 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  placeCopy = place;
  if (visitsCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    log = [MEMORY[0x277CBEAA8] date];
    v56 = [log dateByAddingTimeInterval:-3628800.0];
    v58 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v47 = visitsCopy;
    obj = visitsCopy;
    v64 = [obj countByEnumeratingWithState:&v68 objects:v98 count:16];
    if (!v64)
    {
      v61 = 0;
      v6 = 0;
      goto LABEL_35;
    }

    v61 = 0;
    v6 = 0;
    v7 = *v69;
    v54 = *v69;
    while (1)
    {
      for (i = 0; i != v64; ++i)
      {
        v9 = v6;
        if (*v69 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v68 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v11 = objc_alloc(MEMORY[0x277CCA970]);
        entryDate = [v10 entryDate];
        exitDate = [v10 exitDate];
        v67 = 0;
        v6 = [v11 rt_initWithStartDate:entryDate endDate:exitDate error:&v67];
        v14 = v67;

        if (!v14)
        {
          location = [v10 location];
          v23Location = [location location];
          mapItem = [placeCopy mapItem];
          location2 = [mapItem location];
          v66 = v61;
          [v58 distanceFromLocation:v23Location toLocation:location2 error:&v66];
          v28 = v27;
          v63 = v66;

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = objc_opt_class();
              v62 = NSStringFromClass(v30);
              v55 = NSStringFromSelector(a2);
              identifier = [placeCopy identifier];
              mapItem2 = [placeCopy mapItem];
              name = [mapItem2 name];
              mapItem3 = [placeCopy mapItem];
              location3 = [mapItem3 location];
              location4 = [v10 location];
              v51Location = [location4 location];
              startDate = [v6 startDate];
              endDate = [v6 endDate];
              [v6 duration];
              *buf = 138415363;
              v73 = v62;
              v74 = 2112;
              v75 = v55;
              v76 = 2112;
              v77 = identifier;
              v78 = 2117;
              v79 = name;
              v80 = 2117;
              v81 = location3;
              v82 = 2117;
              v83 = v51Location;
              v84 = 2048;
              v85 = v28;
              v86 = 2112;
              v87 = startDate;
              v88 = 2112;
              v89 = endDate;
              v90 = 2048;
              v91 = v36;
              v92 = 2112;
              v93 = v56;
              v94 = 2112;
              v95 = log;
              v96 = 2112;
              v97 = v63;
              _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, place details, identifier, %@, name, %{sensitive}@, location, %{sensitive}@, visit location, %{sensitive}@, distance from place to visit location, %.3f, visit interval start date, %@, visit interval end date, %@, visit interval duration, %.2f, earliestStartDate, %@, latestEndDate, %@, error, %@", buf, 0x84u);

              v7 = v54;
            }
          }

          if (v28 <= 300.0)
          {
            endDate2 = [v6 endDate];
            v44 = [endDate2 compare:v56];

            if (v44 == -1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  v45 = objc_opt_class();
                  v39 = NSStringFromClass(v45);
                  v40 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v73 = v39;
                  v74 = 2112;
                  v75 = v40;
                  v41 = v37;
                  v42 = "%@, %@, visit interval end date exceeded earliest start date. Skipping visit interval.";
LABEL_25:
                  _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, v42, buf, 0x16u);
                }

LABEL_26:
              }
            }

            else
            {
              [array addObject:v6];
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              v40 = NSStringFromSelector(a2);
              *buf = 138412546;
              v73 = v39;
              v74 = 2112;
              v75 = v40;
              v41 = v37;
              v42 = "%@, %@, distance from place to visit location exceeded threshold. Skipping visit interval.";
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          v61 = v63;
          goto LABEL_28;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            v18 = NSStringFromSelector(a2);
            entryDate2 = [v10 entryDate];
            stringFromDate = [entryDate2 stringFromDate];
            exitDate2 = [v10 exitDate];
            stringFromDate2 = [exitDate2 stringFromDate];
            *buf = 138413314;
            v73 = v17;
            v74 = 2112;
            v75 = v18;
            v76 = 2112;
            v77 = stringFromDate;
            v78 = 2112;
            v79 = stringFromDate2;
            v80 = 2112;
            v81 = v14;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, error occurred while initializing visit date interval with start date %@ and end date %@, error, %@. Skipping visit interval.", buf, 0x34u);

            v7 = v54;
          }
        }

LABEL_28:

        objc_autoreleasePoolPop(context);
      }

      v64 = [obj countByEnumeratingWithState:&v68 objects:v98 count:16];
      if (!v64)
      {
LABEL_35:

        visitsCopy = v47;
        goto LABEL_36;
      }
    }
  }

  log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visits", buf, 2u);
  }

  array = 0;
LABEL_36:

  return array;
}

- (RTLearnedPlaceTypeInferencePlaceStats)initWithLearnedLocationStore:(id)store place:(id)place visits:(id)visits
{
  v56 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  placeCopy = place;
  visitsCopy = visits;
  if (placeCopy)
  {
    v41.receiver = self;
    v41.super_class = RTLearnedPlaceTypeInferencePlaceStats;
    v13 = [(RTLearnedPlaceTypeInferencePlaceStats *)&v41 init];
    v14 = v13;
    if (v13)
    {
      aSelector = a2;
      objc_storeStrong(&v13->_learnedLocationStore, store);
      objc_storeStrong(&v14->_place, place);
      v14->_visitsCount = [visitsCopy count];
      mlFeatures = v14->_mlFeatures;
      v14->_mlFeatures = 0;

      v16 = [objc_opt_class() extractDailyStatsFromVisits:visitsCopy];
      v17 = [objc_opt_class() extractWeeklyStatsFromDailyStats:v16];
      [objc_opt_class() extractTopMedianDwellTimeFromVisits:visitsCopy];
      v40 = v17;
      v19 = [[RTLearnedPlaceTypeInferenceStats alloc] initWithWeeklyStats:v17 topMedianDwellTime:v18];
      stats = v14->_stats;
      v14->_stats = v19;

      v21 = [(RTLearnedPlaceTypeInferencePlaceStats *)v14 localDeviceVisitsForVisits:visitsCopy];
      v22 = [MEMORY[0x277CBEB18] arrayWithArray:visitsCopy];
      [v22 removeObjectsInArray:v21];
      v23 = [(RTLearnedPlaceTypeInferencePlaceStats *)v14 visitsPredatingCurrentDeviceFromVisits:v22];
      v24 = [v21 arrayByAddingObjectsFromArray:v23];
      v25 = [(RTLearnedPlaceTypeInferencePlaceStats *)v14 visitIntervalsForVisits:v24 place:placeCopy];
      visitIntervals = v14->_visitIntervals;
      v14->_visitIntervals = v25;

      v27 = [(NSArray *)v14->_visitIntervals valueForKeyPath:@"@sum.duration"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v37 = v16;
        v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = objc_opt_class();
          v36 = NSStringFromClass(v29);
          aSelectora = NSStringFromSelector(aSelector);
          v35 = [visitsCopy count];
          v34 = [v21 count];
          v30 = [v23 count];
          *buf = 138413827;
          v43 = v36;
          v44 = 2112;
          v45 = aSelectora;
          v46 = 2048;
          v47 = v35;
          v48 = 2048;
          v49 = v34;
          v50 = 2048;
          v51 = v30;
          v52 = 2112;
          v53 = v27;
          v54 = 2117;
          v55 = placeCopy;
          _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, %@, overall visits count, %lu, local device visits count, %lu, earlier remote device visits count, %lu, total considered dwell time, %@, place, %{sensitive}@", buf, 0x48u);
        }

        v16 = v37;
      }
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "[RTLearnedPlaceTypeInferencePlaceStats initWithLearnedLocationStore:place:visits:]";
      v44 = 1024;
      LODWORD(v45) = 554;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place (in %s:%d)", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)getMlFeatures
{
  v10 = *MEMORY[0x277D85DE8];
  mlFeatures = self->_mlFeatures;
  if (!mlFeatures)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[RTLearnedPlaceTypeInferencePlaceStats getMlFeatures]";
      v8 = 1024;
      v9 = 599;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "accessing mlFeatures before being set (in %s:%d)", &v6, 0x12u);
    }

    mlFeatures = self->_mlFeatures;
  }

  return mlFeatures;
}

- (void)log
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 138739971;
      selfCopy = self;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%{sensitive}@", &v6, 0xCu);
    }
  }

  stats = [(RTLearnedPlaceTypeInferencePlaceStats *)self stats];
  weeklyStats = [stats weeklyStats];
  [weeklyStats enumerateObjectsUsingBlock:&__block_literal_global_150];
}

void __44__RTLearnedPlaceTypeInferencePlaceStats_log__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "weekly stat %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  place = [(RTLearnedPlaceTypeInferencePlaceStats *)self place];
  visitsCount = [(RTLearnedPlaceTypeInferencePlaceStats *)self visitsCount];
  stats = [(RTLearnedPlaceTypeInferencePlaceStats *)self stats];
  v7 = [v3 stringWithFormat:@"place, %@, visits, %lu, stats, %@", place, visitsCount, stats];

  return v7;
}

@end