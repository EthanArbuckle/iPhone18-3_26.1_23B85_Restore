@interface RTLearnedPlaceTypeInferenceGenerator
+ (id)getCandidateGenerationParameters;
+ (id)modelTypeToString:(unint64_t)string;
+ (id)placeTypeClassificationSourceToString:(unint64_t)string;
+ (id)placeTypeClassifierModelTargetClass:(unint64_t)class;
+ (id)placeTypeClassifierModelThresholdForPlatform:(id)platform placeType:(unint64_t)type;
+ (id)sortPlaceStats:(id)stats;
- (BOOL)supportsModel;
- (RTLearnedPlaceTypeInferenceGenerator)initWithBiomeManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator learnedLocationStore:(id)store placeTypeClassifierMetricsCalculator:(id)metricsCalculator platform:(id)platform;
- (id)_getCandidatePlaceStatsFromPlaceStats:(id)stats;
- (id)_getFullLocationHistoryDateInterval;
- (id)_inferPlaceTypesFromMultiClassModelForPlaceType:(unint64_t)type placeStats:(id)stats metricsData:(id)data;
- (id)_inferPlaceTypesFromRankerModelForPlaceType:(unint64_t)type placeStats:(id)stats metricsData:(id)data;
- (id)filterPlaceStats:(id)stats referenceLearnedPlace:(id)place minDistanceThreshold:(id)threshold maxDistanceThreshold:(id)distanceThreshold;
- (id)filteredPlaceStatsByWeeklyVisitThreshold:(double)threshold placeStats:(id)stats;
- (id)fuseInferences:(id)inferences;
- (id)inferPlaceTypes;
- (id)inferPlaceTypesFromDailyPatternsWithPlaceStats:(id)stats dateInterval:(id)interval;
- (id)inferPlaceTypesFromFallbackWithPlaceStats:(id)stats dateInterval:(id)interval;
- (id)inferPlaceTypesFromModelForModelType:(unint64_t)type placeType:(unint64_t)placeType placeStats:(id)stats metricsData:(id)data;
- (id)inferPlaceTypesFromModelWithCandidateSelection:(BOOL)selection homeModelType:(unint64_t)type workModelType:(unint64_t)modelType placeStats:(id)stats dateInterval:(id)interval;
- (id)inferPlaceTypesFromModelWithPlaceStats:(id)stats dateInterval:(id)interval;
- (id)inferPlaceTypesFromRuleEngineWithPlaceStats:(id)stats dateInterval:(id)interval;
- (id)inferPlaceTypesFromTopMedianDwellTimeWithPlaceStats:(id)stats dateInterval:(id)interval;
- (id)inferWorkFromHistoryAndPlaceStats:(id)stats;
- (id)placeCandidateStatsForType:(unint64_t)type placeStats:(id)stats dateInterval:(id)interval excludingPlaces:(id)places parameters:(id)parameters distanceThreshold:(double)threshold;
- (id)placeCandidatesFromDailyPatternsForType:(unint64_t)type placeStats:(id)stats parameters:(id)parameters;
- (id)placeCandidatesFromTopMedianDwellTimeForType:(unint64_t)type placeStats:(id)stats parameters:(id)parameters;
- (void)_prepareMLFeaturesWithPlaceStats:(id)stats;
- (void)_storeMetricsForNonFallbackPlacesWithHome:(id)home homeSource:(unint64_t)source work:(id)work workSource:(unint64_t)workSource;
- (void)log;
- (void)submitVisits:(id)visits place:(id)place;
- (void)updateTopCandidates:(id)candidates withPlaceStat:(id)stat predictedProbability:(id)probability placeType:(unint64_t)type;
@end

@implementation RTLearnedPlaceTypeInferenceGenerator

- (RTLearnedPlaceTypeInferenceGenerator)initWithBiomeManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator learnedLocationStore:(id)store placeTypeClassifierMetricsCalculator:(id)metricsCalculator platform:(id)platform
{
  managerCopy = manager;
  defaultsManagerCopy = defaultsManager;
  calculatorCopy = calculator;
  storeCopy = store;
  metricsCalculatorCopy = metricsCalculator;
  platformCopy = platform;
  v29 = platformCopy;
  if (!managerCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: biomeManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_20;
  }

  if (!defaultsManagerCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_19;
  }

  if (!calculatorCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_19;
  }

  if (!metricsCalculatorCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: placeTypeClassifierMetricsCalculator";
    goto LABEL_19;
  }

  if (!platformCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: platform";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v32.receiver = self;
  v32.super_class = RTLearnedPlaceTypeInferenceGenerator;
  v19 = [(RTLearnedPlaceTypeInferenceGenerator *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_biomeManager, manager);
    objc_storeStrong(&v20->_defaultsManager, defaultsManager);
    objc_storeStrong(&v20->_distanceCalculator, calculator);
    objc_storeStrong(&v20->_learnedLocationStore, store);
    objc_storeStrong(&v20->_placeTypeClassifierMetricsCalculator, metricsCalculator);
    objc_storeStrong(&v20->_platform, platform);
    array = [MEMORY[0x277CBEB18] array];
    placeStats = v20->_placeStats;
    v20->_placeStats = array;

    v23 = objc_opt_new();
    placeStatsUUIDStringsToMLFeaturesMap = v20->_placeStatsUUIDStringsToMLFeaturesMap;
    v20->_placeStatsUUIDStringsToMLFeaturesMap = v23;
  }

  self = v20;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

+ (id)placeTypeClassificationSourceToString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D2C50[string - 1];
  }
}

+ (id)modelTypeToString:(unint64_t)string
{
  v3 = @"Unknown";
  if (string == 2)
  {
    v3 = @"Ranker";
  }

  if (string == 1)
  {
    return @"MultiClass";
  }

  else
  {
    return v3;
  }
}

+ (id)placeTypeClassifierModelThresholdForPlatform:(id)platform placeType:(unint64_t)type
{
  platformCopy = platform;
  v6 = platformCopy;
  if (type != 1)
  {
    if (type == 2)
    {
      if ([platformCopy iPhonePlatform])
      {
        [v6 iPhoneDevice];
LABEL_7:
        v7 = &unk_2845A2308;
        goto LABEL_9;
      }

      if ([v6 watchPlatform])
      {
        goto LABEL_7;
      }
    }

    v7 = &unk_2845A2318;
    goto LABEL_9;
  }

  v7 = &unk_2845A22F8;
LABEL_9:

  return v7;
}

+ (id)placeTypeClassifierModelTargetClass:(unint64_t)class
{
  v3 = &unk_2845A0590;
  if (class == 2)
  {
    v3 = &unk_2845A0578;
  }

  if (class == 1)
  {
    return &unk_2845A0560;
  }

  else
  {
    return v3;
  }
}

- (void)submitVisits:(id)visits place:(id)place
{
  visitsCopy = visits;
  placeCopy = place;
  identifier = [placeCopy identifier];

  if (identifier && [visitsCopy count])
  {
    v8 = [RTLearnedPlaceTypeInferencePlaceStats alloc];
    learnedLocationStore = [(RTLearnedPlaceTypeInferenceGenerator *)self learnedLocationStore];
    v47 = placeCopy;
    v10 = [(RTLearnedPlaceTypeInferencePlaceStats *)v8 initWithLearnedLocationStore:learnedLocationStore place:placeCopy visits:visitsCopy];

    v11 = [RTLearnedPlace alloc];
    place = [(RTLearnedPlaceTypeInferencePlaceStats *)v10 place];
    identifier2 = [place identifier];
    place2 = [(RTLearnedPlaceTypeInferencePlaceStats *)v10 place];
    mapItem = [place2 mapItem];
    place3 = [(RTLearnedPlaceTypeInferencePlaceStats *)v10 place];
    [place3 customLabel];
    v15 = v46 = self;
    place4 = [(RTLearnedPlaceTypeInferencePlaceStats *)v10 place];
    creationDate = [place4 creationDate];
    place5 = [(RTLearnedPlaceTypeInferencePlaceStats *)v10 place];
    expirationDate = [place5 expirationDate];
    v20 = v11;
    v21 = identifier2;
    v22 = [(RTLearnedPlace *)v20 initWithIdentifier:identifier2 type:1 typeSource:1 mapItem:mapItem customLabel:v15 creationDate:creationDate expirationDate:expirationDate];

    v45 = v22;
    if (v22)
    {
      placeStats = [(RTLearnedPlaceTypeInferenceGenerator *)v46 placeStats];
      v24 = v10;
      [placeStats addObject:v10];

      firstObject = [visitsCopy firstObject];
      entryDate = [firstObject entryDate];
      firstVisit = [(RTLearnedPlaceTypeInferenceGenerator *)v46 firstVisit];
      entryDate2 = [firstVisit entryDate];
      v29 = [entryDate earlierDate:entryDate2];
      firstObject2 = [visitsCopy firstObject];
      entryDate3 = [firstObject2 entryDate];
      v32 = [v29 isEqualToDate:entryDate3];

      if (v32)
      {
        firstObject3 = [visitsCopy firstObject];
        [(RTLearnedPlaceTypeInferenceGenerator *)v46 setFirstVisit:firstObject3];
      }

      lastObject = [visitsCopy lastObject];
      exitDate = [lastObject exitDate];
      lastVisit = [(RTLearnedPlaceTypeInferenceGenerator *)v46 lastVisit];
      exitDate2 = [lastVisit exitDate];
      v38 = [exitDate laterDate:exitDate2];
      lastObject2 = [visitsCopy lastObject];
      exitDate3 = [lastObject2 exitDate];
      v41 = [v38 isEqualToDate:exitDate3];

      v10 = v24;
      if (v41)
      {
        lastObject3 = [visitsCopy lastObject];
        [(RTLearnedPlaceTypeInferenceGenerator *)v46 setLastVisit:lastObject3];
      }
    }

    placeCopy = v47;
  }
}

- (id)inferPlaceTypesFromDailyPatternsWithPlaceStats:(id)stats dateInterval:(id)interval
{
  v100[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  statsCopy = stats;
  v7 = [v5 stringWithFormat:@"%@.%@", @"stats", @"weeklyDaysWithNonZeroDwellTimeAverage"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyAggregateDwellTimeBetweenDateRangeAverage"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyTotalDailyVisitCountAverage"];
  v10 = MEMORY[0x277CCA920];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", v8, &unk_2845A2328];
  v100[0] = v11;
  v83 = v9;
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", v9, &unk_2845A2338];
  v100[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];

  v84 = v7;
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v7 ascending:0];
  v99[0] = v15;
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v8 ascending:0];
  v99[1] = v16;
  v17 = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:2];

  v19 = [(RTLearnedPlaceTypeInferenceGenerator *)self filteredPlaceStatsByWeeklyVisitThreshold:statsCopy placeStats:0.6];

  v20 = [v19 filteredArrayUsingPredicate:v14];
  v21 = [v20 sortedArrayUsingDescriptors:v18];

  if ([v21 count])
  {
    v22 = [v21 objectAtIndex:0];
  }

  else
  {
    v22 = 0;
  }

  if ([v21 count] < 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = [v21 objectAtIndex:1];
  }

  array = [MEMORY[0x277CBEB18] array];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      NSStringFromClass(v26);
      v77 = v8;
      v27 = array;
      v28 = v18;
      selfCopy = self;
      v31 = v30 = v23;
      v32 = NSStringFromSelector(a2);
      *buf = 138413827;
      v86 = v31;
      v87 = 2112;
      v88 = v32;
      v89 = 2117;
      v90 = v22;
      v91 = 2048;
      v92 = 0x4014000000000000;
      v93 = 2048;
      v94 = 0x401C000000000000;
      v95 = 2048;
      v96 = 0x40D5180000000000;
      v97 = 2048;
      v98 = 0x4014000000000000;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, theoreticalHome places stats, %{sensitive}@, required minDaysNonZeroDwellTime, %.2f, maxDaysNonZeroDwellTime, %.2f, minWeeklyAggregateDwellTimeBetweenDateRangeAverage, %.2f, totalWeeklyVisitCount, %.2f", buf, 0x48u);

      v23 = v30;
      self = selfCopy;
      v18 = v28;
      array = v27;
      v8 = v77;
    }
  }

  stats = [v22 stats];
  [(RTLearnedPlace *)stats weeklyDaysWithNonZeroDwellTimeAverage];
  if (v34 < 5.0)
  {
    goto LABEL_26;
  }

  stats2 = [v22 stats];
  [(RTLearnedPlace *)stats2 weeklyDaysWithNonZeroDwellTimeAverage];
  if (v36 > 7.0)
  {
    goto LABEL_25;
  }

  v79 = v23;
  stats3 = [v22 stats];
  [stats3 weeklyAggregateDwellTimeBetweenDateRangeAverage];
  if (v38 <= 21600.0)
  {

    goto LABEL_24;
  }

  [v22 stats];
  v39 = v78 = v17;
  [v39 weeklyTotalDailyVisitCountAverage];
  v41 = v40;

  v17 = v78;
  v23 = v79;
  if (v41 < 5.0)
  {
    goto LABEL_27;
  }

  v64 = [RTLearnedPlace alloc];
  place = [v22 place];
  identifier = [place identifier];
  place2 = [v22 place];
  mapItem = [place2 mapItem];
  place3 = [v22 place];
  customLabel = [place3 customLabel];
  place4 = [v22 place];
  creationDate = [place4 creationDate];
  place5 = [v22 place];
  expirationDate = [place5 expirationDate];
  stats = [(RTLearnedPlace *)v64 initWithIdentifier:identifier type:1 typeSource:1 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

  if (!stats)
  {
    goto LABEL_32;
  }

  [array addObject:stats];
  v17 = v78;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v75 = NSStringFromClass(v46);
      v47 = NSStringFromSelector(a2);
      *buf = 138413827;
      v86 = v75;
      v87 = 2112;
      v88 = v47;
      v48 = v47;
      v89 = 2117;
      v90 = v79;
      v91 = 2048;
      v92 = 0x400C000000000000;
      v93 = 2048;
      v94 = 0x4018000000000000;
      v95 = 2048;
      v96 = 0x40CFA40000000000;
      v97 = 2048;
      v98 = 0x4010000000000000;
      _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@, %@, theoreticalWork places stats, %{sensitive}@, required minDaysNonZeroDwellTime, %.2f, maxDaysNonZeroDwellTime, %.2f, minWeeklyAggregateDwellTimeBetweenDateRangeAverage, %.2f, totalWeeklyVisitCount, %.2f", buf, 0x48u);
    }
  }

  v23 = v79;
  stats2 = [v79 stats];
  [(RTLearnedPlace *)stats2 weeklyDaysWithNonZeroDwellTimeAverage];
  if (v49 < 3.5)
  {
    goto LABEL_25;
  }

  aSelectora = [v79 stats];
  [aSelectora weeklyDaysWithNonZeroDwellTimeAverage];
  if (v50 <= 6.0)
  {
    stats4 = [v79 stats];
    [stats4 weeklyAggregateDwellTimeBetweenDateRangeAverage];
    if (v54 <= 16200.0)
    {
    }

    else
    {
      stats5 = [v79 stats];
      [stats5 weeklyTotalDailyVisitCountAverage];
      v57 = v56;

      if (v57 < 4.0)
      {
LABEL_32:
        v17 = v78;
        v23 = v79;
        goto LABEL_26;
      }

      v67 = [RTLearnedPlace alloc];
      place6 = [v79 place];
      aSelectorb = [place6 identifier];
      place7 = [v79 place];
      mapItem2 = [place7 mapItem];
      place8 = [v79 place];
      customLabel2 = [place8 customLabel];
      place9 = [v79 place];
      creationDate2 = [place9 creationDate];
      place10 = [v79 place];
      expirationDate2 = [place10 expirationDate];
      stats2 = [(RTLearnedPlace *)v67 initWithIdentifier:aSelectorb type:2 typeSource:1 mapItem:mapItem2 customLabel:customLabel2 creationDate:creationDate2 expirationDate:expirationDate2];

      if (stats2)
      {
        [array addObject:stats2];
      }

      v17 = v78;
    }

LABEL_24:
    v23 = v79;
    goto LABEL_25;
  }

LABEL_25:
LABEL_26:

LABEL_27:
  placeTypeClassifierMetricsCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
  [placeTypeClassifierMetricsCalculator storeMetricsData:array source:12];

  return array;
}

- (id)inferPlaceTypesFromTopMedianDwellTimeWithPlaceStats:(id)stats dateInterval:(id)interval
{
  v51[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB18];
  statsCopy = stats;
  array = [v6 array];
  v9 = [(RTLearnedPlaceTypeInferenceGenerator *)self filteredPlaceStatsByWeeklyVisitThreshold:statsCopy placeStats:0.6];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"stats.topMedianDwellTime" ascending:0];
  v51[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  v12 = [v9 sortedArrayUsingDescriptors:v11];

  firstObject = [v12 firstObject];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138413571;
      v40 = v16;
      v41 = 2112;
      v42 = v17;
      v43 = 2117;
      v44 = firstObject;
      v45 = 2048;
      v46 = 0x4014000000000000;
      v47 = 2048;
      v48 = 0x4014000000000000;
      v49 = 2048;
      v50 = 0x40E5180000000000;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, theoreticalHome places stats, %{sensitive}@, required minDaysNonZeroDwellTime, %.2f, totalWeeklyVisitCount, %.2f, minTopMedianDwellTime, %.2f", buf, 0x3Eu);
    }
  }

  stats = [firstObject stats];
  [(RTLearnedPlace *)stats weeklyDaysWithNonZeroDwellTimeAverage];
  if (v19 >= 5.0)
  {
    stats2 = [firstObject stats];
    [stats2 weeklyTotalDailyVisitCountAverage];
    if (v21 >= 5.0)
    {
      stats3 = [firstObject stats];
      [stats3 topMedianDwellTime];
      v24 = v23;

      if (v24 <= 43200.0)
      {
        goto LABEL_12;
      }

      v34 = [RTLearnedPlace alloc];
      place = [firstObject place];
      identifier = [place identifier];
      place2 = [firstObject place];
      mapItem = [place2 mapItem];
      place3 = [firstObject place];
      customLabel = [place3 customLabel];
      place4 = [firstObject place];
      creationDate = [place4 creationDate];
      place5 = [firstObject place];
      expirationDate = [place5 expirationDate];
      v30 = customLabel;
      stats = [(RTLearnedPlace *)v34 initWithIdentifier:identifier type:1 typeSource:1 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

      if (stats)
      {
        [array addObject:stats];
      }
    }

    else
    {
    }
  }

LABEL_12:
  placeTypeClassifierMetricsCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
  [placeTypeClassifierMetricsCalculator storeMetricsData:array source:13];

  return array;
}

- (BOOL)supportsModel
{
  platform = [(RTLearnedPlaceTypeInferenceGenerator *)self platform];
  if ([platform iPhonePlatform])
  {
    watchPlatform = 1;
  }

  else
  {
    platform2 = [(RTLearnedPlaceTypeInferenceGenerator *)self platform];
    watchPlatform = [platform2 watchPlatform];
  }

  return watchPlatform;
}

+ (id)sortPlaceStats:(id)stats
{
  v17[5] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if ([statsCopy count])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"topMedianDwellTime"];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyDaysWithNonZeroDwellTimeAverage"];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyAggregateDwellTimeBetweenDateRangeAverage"];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyTotalDailyVisitCountAverage"];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"place", @"creationDate"];
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v16 ascending:0];
    v17[0] = v7;
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v15 ascending:0];
    v17[1] = v8;
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v4 ascending:0];
    v17[2] = v9;
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v5 ascending:0];
    v17[3] = v10;
    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v6 ascending:0];
    v17[4] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

    v13 = [statsCopy sortedArrayUsingDescriptors:v12];
  }

  else
  {
    v13 = statsCopy;
  }

  return v13;
}

- (id)_inferPlaceTypesFromRankerModelForPlaceType:(unint64_t)type placeStats:(id)stats metricsData:(id)data
{
  v107 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  dataCopy = data;
  if (![(RTLearnedPlaceTypeInferenceGenerator *)self supportsModel])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, feature not supported", buf, 0x16u);
      }

      goto LABEL_35;
    }

    goto LABEL_37;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v23;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, feature not enabled", buf, 0x16u);
      }

      goto LABEL_35;
    }

    goto LABEL_37;
  }

  defaultsManager = [(RTLearnedPlaceTypeInferenceGenerator *)self defaultsManager];
  v12 = [defaultsManager objectForKey:@"RTDefaultsLearnedPlaceTypeInferenceGeneratorDisableModel"];
  bOOLValue = [v12 BOOLValue];

  v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (bOOLValue)
  {
    if (v14)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, Model disabled by defaults", buf, 0x16u);
      }

LABEL_35:
      v59 = 0;
LABEL_36:

      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v14)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      v29 = [statsCopy count];
      v30 = [RTLearnedPlace placeTypeToString:type];
      *buf = 138413058;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      *&buf[22] = 2048;
      v105 = v29;
      LOWORD(v106) = 2112;
      *(&v106 + 2) = v30;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, placeStats count, %lu, placeType, %@", buf, 0x2Au);
    }
  }

  if (type != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = NSStringFromSelector(a2);
        v58 = [RTLearnedPlace placeTypeToString:type];
        *buf = 138412802;
        *&buf[4] = v56;
        *&buf[12] = 2112;
        *&buf[14] = v57;
        *&buf[22] = 2112;
        v105 = v58;
        _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, %@, invalid placeType, %@", buf, 0x20u);
      }

      goto LABEL_35;
    }

    goto LABEL_37;
  }

  if ([statsCopy count])
  {
    [(RTLearnedPlaceTypeInferenceGenerator *)self _prepareMLFeaturesWithPlaceStats:statsCopy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v105 = __Block_byref_object_copy__190;
    *&v106 = __Block_byref_object_dispose__190;
    *(&v106 + 1) = 0;
    v94[0] = 0;
    v94[1] = v94;
    v94[2] = 0x3032000000;
    v94[3] = __Block_byref_object_copy__190;
    v94[4] = __Block_byref_object_dispose__190;
    v95 = &unk_2845A05A8;
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__190;
    v92 = __Block_byref_object_dispose__190;
    v93 = 0;
    context = objc_autoreleasePoolPush();
    frameworkBundle = [MEMORY[0x277CCAA00] frameworkBundle];
    v77 = [frameworkBundle pathForResource:@"RTPlaceTypeClassifierModelRanker" ofType:@"mlmodelc"];

    v32 = [MEMORY[0x277CBEBC0] fileURLWithPath:v77];
    v33 = [RTPlaceTypeClassifierModelRanker alloc];
    v34 = (v89 + 5);
    obj = v89[5];
    v78 = [(RTPlaceTypeClassifierModelRanker *)v33 initWithContentsOfURL:v32 error:&obj];
    v75 = v32;
    objc_storeStrong(v34, obj);
    if (v78)
    {
      model = [(RTPlaceTypeClassifierModelRanker *)v78 model];
      modelDescription = [model modelDescription];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = NSStringFromSelector(a2);
          metadata = [modelDescription metadata];
          v41 = [metadata objectForKeyedSubscript:@"MLModelCreatorDefinedKey"];
          v42 = [v41 objectForKeyedSubscript:@"mldb_token"];
          *v96 = 138412802;
          v97 = v38;
          v98 = 2112;
          v99 = v39;
          v100 = 2112;
          v101 = v42;
          _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, %@, mldb token, %@", v96, 0x20u);
        }
      }

      v74 = [objc_opt_class() sortPlaceStats:statsCopy];

      [dataCopy setObject:&unk_2845A0560 forKeyedSubscript:&unk_2845A05C0];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __107__RTLearnedPlaceTypeInferenceGenerator__inferPlaceTypesFromRankerModelForPlaceType_placeStats_metricsData___block_invoke;
      v79[3] = &unk_2788D2B50;
      v79[4] = self;
      v85 = a2;
      v86 = 1;
      v80 = v78;
      v82 = &v88;
      v83 = v94;
      v84 = buf;
      v81 = dataCopy;
      [v74 enumerateObjectsUsingBlock:v79];
      if (*(*&buf[8] + 40))
      {
        v43 = [RTLearnedPlace alloc];
        place = [*(*&buf[8] + 40) place];
        identifier = [place identifier];
        place2 = [*(*&buf[8] + 40) place];
        mapItem = [place2 mapItem];
        place3 = [*(*&buf[8] + 40) place];
        customLabel = [place3 customLabel];
        place4 = [*(*&buf[8] + 40) place];
        creationDate = [place4 creationDate];
        place5 = [*(*&buf[8] + 40) place];
        expirationDate = [place5 expirationDate];
        v15 = [(RTLearnedPlace *)v43 initWithIdentifier:identifier type:1 typeSource:1 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v50 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = NSStringFromSelector(a2);
            v54 = [RTLearnedPlace placeTypeToString:1];
            *v96 = 138413059;
            v97 = v52;
            v98 = 2112;
            v99 = v53;
            v100 = 2112;
            v101 = v54;
            v102 = 2117;
            v103 = v15;
            _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, placeType, %@, inferred place, %{sensitive}@", v96, 0x2Au);
          }
        }
      }

      else
      {
        v15 = 0;
      }

      v61 = modelDescription;
      statsCopy = v74;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        goto LABEL_48;
      }

      v61 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        v64 = NSStringFromSelector(a2);
        v65 = v89[5];
        *v96 = 138413058;
        v97 = v63;
        v98 = 2112;
        v99 = v64;
        v100 = 2112;
        v101 = v77;
        v102 = 2112;
        v103 = v65;
        _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%@, %@, failed to load model, %@, error, %@", v96, 0x2Au);
      }

      v15 = 0;
    }

LABEL_48:
    objc_autoreleasePoolPop(context);
    if (v78)
    {
      v59 = v15;
    }

    else
    {
      v59 = 0;
    }

    _Block_object_dispose(&v88, 8);

    _Block_object_dispose(v94, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      v68 = NSStringFromSelector(a2);
      *buf = 138412803;
      *&buf[4] = v67;
      *&buf[12] = 2112;
      *&buf[14] = v68;
      *&buf[22] = 2117;
      v105 = statsCopy;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, %@, invalid placeStats, %{sensitive}@", buf, 0x20u);
    }

    goto LABEL_35;
  }

LABEL_37:
  v59 = 0;
LABEL_38:

  return v59;
}

void __107__RTLearnedPlaceTypeInferenceGenerator__inferPlaceTypesFromRankerModelForPlaceType_placeStats_metricsData___block_invoke(uint64_t a1, void *a2)
{
  v163 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 mlFeatures];

  if (v5)
  {
    v102 = a2;
    v143 = [RTPlaceTypeClassifierModelRankerInput alloc];
    v142 = [v4 mlFeatures];
    v141 = [v142 objectForKeyedSubscript:@"mean_daily_longest_charging_duration_bucketed"];
    [v141 doubleValue];
    v128 = v6;
    v140 = [v4 mlFeatures];
    v139 = [v140 objectForKeyedSubscript:@"mean_daily_longest_screen_lock_duration_bucketed"];
    [v139 doubleValue];
    v126 = v7;
    v138 = [v4 mlFeatures];
    v137 = [v138 objectForKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"];
    [v137 doubleValue];
    v123 = v8;
    v136 = [v4 mlFeatures];
    v135 = [v136 objectForKeyedSubscript:@"mean_daily_total_charging_duration_bucketed"];
    [v135 doubleValue];
    v121 = v9;
    v134 = [v4 mlFeatures];
    v133 = [v134 objectForKeyedSubscript:@"mean_daily_total_screen_lock_duration_bucketed"];
    [v133 doubleValue];
    v119 = v10;
    v132 = [v4 mlFeatures];
    v131 = [v132 objectForKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed"];
    [v131 doubleValue];
    v116 = v11;
    v130 = [v4 mlFeatures];
    v129 = [v130 objectForKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed"];
    [v129 doubleValue];
    v114 = v12;
    v127 = [v4 mlFeatures];
    v125 = [v127 objectForKeyedSubscript:@"median_daily_longest_charging_duration_bucketed"];
    [v125 doubleValue];
    v112 = v13;
    v124 = [v4 mlFeatures];
    v122 = [v124 objectForKeyedSubscript:@"median_daily_longest_screen_lock_duration_bucketed"];
    [v122 doubleValue];
    v108 = v14;
    v120 = [v4 mlFeatures];
    v118 = [v120 objectForKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"];
    [v118 doubleValue];
    v106 = v15;
    v117 = [v4 mlFeatures];
    v115 = [v117 objectForKeyedSubscript:@"median_daily_total_charging_duration_bucketed"];
    [v115 doubleValue];
    v17 = v16;
    v113 = [v4 mlFeatures];
    v111 = [v113 objectForKeyedSubscript:@"median_daily_total_screen_lock_duration_bucketed"];
    [v111 doubleValue];
    v19 = v18;
    v110 = [v4 mlFeatures];
    v109 = [v110 objectForKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_bucketed"];
    [v109 doubleValue];
    v21 = v20;
    v107 = [v4 mlFeatures];
    v105 = [v107 objectForKeyedSubscript:@"percentage_of_days_with_charging_bucketed"];
    [v105 doubleValue];
    v23 = v22;
    v104 = [v4 mlFeatures];
    v103 = [v104 objectForKeyedSubscript:@"percentage_of_days_with_screenLock_bucketed"];
    [v103 doubleValue];
    v25 = v24;
    v26 = [v4 mlFeatures];
    v27 = [v26 objectForKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_bucketed"];
    [v27 doubleValue];
    v29 = v28;
    v30 = MEMORY[0x277CCABB0];
    v31 = [*(a1 + 32) platform];
    v32 = [v30 numberWithBool:{objc_msgSend(v31, "iPhoneDevice")}];
    [v32 doubleValue];
    v34 = v33;
    v35 = MEMORY[0x277CCABB0];
    v36 = [*(a1 + 32) platform];
    v37 = [v36 iPhoneDevice];
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v101 = [*(a1 + 32) platform];
      v38 = [v101 iPhonePlatform];
    }

    v39 = [v35 numberWithBool:v38];
    [v39 doubleValue];
    v41 = v40;
    v42 = MEMORY[0x277CCABB0];
    v145 = a1;
    v43 = [*(a1 + 32) platform];
    v44 = [v42 numberWithBool:{objc_msgSend(v43, "watchPlatform")}];
    [v44 doubleValue];
    v144 = [(RTPlaceTypeClassifierModelRankerInput *)v143 initWithMean_daily_longest_charging_duration_bucketed:v128 mean_daily_longest_screen_lock_duration_bucketed:v126 mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:v123 mean_daily_total_charging_duration_bucketed:v121 mean_daily_total_screen_lock_duration_bucketed:v119 mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:v116 mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:v114 median_daily_longest_charging_duration_bucketed:v112 median_daily_longest_screen_lock_duration_bucketed:v108 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:v106 median_daily_total_charging_duration_bucketed:v17 median_daily_total_screen_lock_duration_bucketed:v19 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:v21 percentage_of_days_with_charging_bucketed:v23 percentage_of_days_with_screen_lock_bucketed:v25 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:v29 is_iPhone:v34 is_iPad:v41 is_Watch:v45];

    if ((v37 & 1) == 0)
    {
    }

    [(RTPlaceTypeClassifierModelRankerInput *)v144 mean_daily_longest_screen_lock_duration_bucketed];
    if (v46 <= 1.0 || ([(RTPlaceTypeClassifierModelRankerInput *)v144 mean_daily_total_screen_lock_duration_bucketed], v47 <= 1.0) || ([(RTPlaceTypeClassifierModelRankerInput *)v144 median_daily_longest_screen_lock_duration_bucketed], v48 <= 1.0) || ([(RTPlaceTypeClassifierModelRankerInput *)v144 median_daily_total_screen_lock_duration_bucketed], v49 <= 1.0) || ([(RTPlaceTypeClassifierModelRankerInput *)v144 percentage_of_days_with_screen_lock_bucketed], v50 <= 1.0) || ([(RTPlaceTypeClassifierModelRankerInput *)v144 mean_daily_longest_charging_duration_bucketed], v51 <= 1.0) || ([(RTPlaceTypeClassifierModelRankerInput *)v144 mean_daily_total_charging_duration_bucketed], v52 <= 1.0) || ([(RTPlaceTypeClassifierModelRankerInput *)v144 median_daily_longest_charging_duration_bucketed], v53 <= 1.0) || ([(RTPlaceTypeClassifierModelRankerInput *)v144 median_daily_total_charging_duration_bucketed], v54 <= 1.0) || ([(RTPlaceTypeClassifierModelRankerInput *)v144 percentage_of_days_with_charging_bucketed], v55 <= 1.0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_28:

        goto LABEL_29;
      }

      v59 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v82 = objc_opt_class();
        v83 = NSStringFromClass(v82);
        v84 = NSStringFromSelector(*(v145 + 80));
        v85 = [RTLearnedPlace placeTypeToString:*(v145 + 88)];
        v86 = [v4 visitIntervals];
        v87 = [v86 valueForKeyPath:@"@sum.duration"];
        v88 = [RTRuntime objToString:v144 filterProperties:&unk_2845A1778];
        *buf = 138413571;
        v148 = v83;
        v149 = 2112;
        v150 = v84;
        v151 = 2112;
        v152 = v85;
        v153 = 2117;
        v154 = v4;
        v155 = 2112;
        v156 = v87;
        v157 = 2112;
        v158 = v88;
        _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "%@, %@, inferring for placeType, %@, placeStat, %{sensitive}@, total dwell time, %@, mlFeatures, %@, \n\nSkipping place inference in Ranker model because all the longest Biome stream bucketed values are <= 1. It means the stream doesn't exist or the values are less than 10 mins each.", buf, 0x3Eu);
      }
    }

    else
    {
      v56 = v145;
      v57 = *(v145 + 40);
      v58 = *(*(v145 + 56) + 8);
      obj = *(v58 + 40);
      v59 = [v57 predictionFromFeatures:v144 error:&obj];
      objc_storeStrong((v58 + 40), obj);
      v60 = 0x277CCA000;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v61 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          v64 = NSStringFromSelector(*(v145 + 80));
          v65 = [RTLearnedPlace placeTypeToString:*(v145 + 88)];
          v66 = [v4 visitIntervals];
          v67 = [v66 valueForKeyPath:@"@sum.duration"];
          v68 = [RTRuntime objToString:v144 filterProperties:&unk_2845A1790];
          [v59 target];
          v69 = *(*(*(v145 + 56) + 8) + 40);
          *buf = 138414083;
          v148 = v63;
          v149 = 2112;
          v150 = v64;
          v151 = 2112;
          v152 = v65;
          v153 = 2117;
          v154 = v4;
          v155 = 2112;
          v156 = v67;
          v157 = 2112;
          v158 = v68;
          v159 = 2048;
          v160 = v70;
          v161 = 2112;
          v162 = v69;
          _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%@, %@, inferring for placeType, %@, placeStat, %{sensitive}@, total dwell time, %@, mlFeatures, %@, \n\noutput target score, %lf, error, %@", buf, 0x52u);

          v56 = v145;
          v60 = 0x277CCA000uLL;
        }
      }

      [v59 target];
      v72 = v71;
      [*(*(*(v56 + 64) + 8) + 40) doubleValue];
      if (v72 <= v73 || ([v59 target], v74 <= 0.0))
      {
        v89 = [*(v56 + 48) objectForKeyedSubscript:&unk_2845A0620];
        if (!v89 || (v90 = v89, [*(v56 + 48) objectForKeyedSubscript:&unk_2845A0620], v91 = objc_claimAutoreleasedReturnValue(), v92 = objc_msgSend(v91, "unsignedIntValue"), -[NSObject target](v59, "target"), v94 = v93, v91, v90, v94 > v92))
        {
          v95 = [RTRuntime objToDictionary:v144 filterProperties:&unk_2845A17C0];
          [*(v56 + 48) setObject:v95 forKeyedSubscript:&unk_2845A05F0];

          v96 = *(v60 + 2992);
          [v59 target];
          v97 = [v96 numberWithDouble:?];
          [*(v56 + 48) setObject:v97 forKeyedSubscript:&unk_2845A0620];
        }
      }

      else
      {
        objc_storeStrong((*(*(v56 + 72) + 8) + 40), v102);
        v75 = *(v60 + 2992);
        [v59 target];
        v76 = [v75 numberWithDouble:?];
        v77 = *(*(v56 + 64) + 8);
        v78 = *(v77 + 40);
        *(v77 + 40) = v76;

        v79 = [*(v56 + 48) objectForKeyedSubscript:&unk_2845A05D8];
        [*(v56 + 48) setObject:v79 forKeyedSubscript:&unk_2845A05F0];

        v80 = [RTRuntime objToDictionary:v144 filterProperties:&unk_2845A17A8];
        [*(v56 + 48) setObject:v80 forKeyedSubscript:&unk_2845A05D8];

        v81 = [*(v56 + 48) objectForKeyedSubscript:&unk_2845A0608];
        [*(v56 + 48) setObject:v81 forKeyedSubscript:&unk_2845A0620];

        [*(v56 + 48) setObject:*(*(*(v56 + 64) + 8) + 40) forKeyedSubscript:&unk_2845A0608];
      }

      v98 = *(v60 + 2992);
      v99 = [*(v56 + 48) objectForKeyedSubscript:&unk_2845A05C0];
      v100 = [v98 numberWithUnsignedInt:{objc_msgSend(v99, "unsignedIntValue") + 1}];
      [*(v56 + 48) setObject:v100 forKeyedSubscript:&unk_2845A05C0];
    }

    goto LABEL_28;
  }

LABEL_29:
}

- (id)_inferPlaceTypesFromMultiClassModelForPlaceType:(unint64_t)type placeStats:(id)stats metricsData:(id)data
{
  v139 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  dataCopy = data;
  if (![(RTLearnedPlaceTypeInferenceGenerator *)self supportsModel])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        *buf = 138412546;
        v128 = v17;
        v129 = 2112;
        v130 = v18;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, feature not supported", buf, 0x16u);
      }

      goto LABEL_42;
    }

    goto LABEL_44;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        *buf = 138412546;
        v128 = v20;
        v129 = 2112;
        v130 = v21;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, feature not enabled", buf, 0x16u);
      }

      goto LABEL_42;
    }

    goto LABEL_44;
  }

  typeCopy = type;
  defaultsManager = [(RTLearnedPlaceTypeInferenceGenerator *)self defaultsManager];
  v10 = [defaultsManager objectForKey:@"RTDefaultsLearnedPlaceTypeInferenceGeneratorDisableModel"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        *buf = 138412546;
        v128 = v14;
        v129 = 2112;
        v130 = v15;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, Model disabled by defaults", buf, 0x16u);
      }

LABEL_42:
      v74 = 0;
LABEL_43:

      goto LABEL_45;
    }

    goto LABEL_44;
  }

  [(RTLearnedPlaceTypeInferenceGenerator *)self _prepareMLFeaturesWithPlaceStats:statsCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      v26 = [statsCopy count];
      v27 = [RTLearnedPlace placeTypeToString:type];
      *buf = 138413058;
      v128 = v24;
      v129 = 2112;
      v130 = v25;
      v131 = 2048;
      v132 = v26;
      v133 = 2112;
      v134 = v27;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, placeStats count, %lu, placeType, %@", buf, 0x2Au);
    }
  }

  if (type - 3 > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (![statsCopy count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v81 = objc_opt_class();
          v82 = NSStringFromClass(v81);
          v83 = NSStringFromSelector(a2);
          *buf = 138412803;
          v128 = v82;
          v129 = 2112;
          v130 = v83;
          v131 = 2117;
          v132 = statsCopy;
          _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, %@, invalid placeStats, %{sensitive}@", buf, 0x20u);
        }

        goto LABEL_42;
      }

      goto LABEL_44;
    }

    v121 = 0;
    v122 = &v121;
    v123 = 0x3032000000;
    v124 = __Block_byref_object_copy__190;
    v125 = __Block_byref_object_dispose__190;
    v126 = 0;
    v119[0] = 0;
    v119[1] = v119;
    v119[2] = 0x3032000000;
    v119[3] = __Block_byref_object_copy__190;
    v119[4] = __Block_byref_object_dispose__190;
    v120 = 0;
    v117[0] = 0;
    v117[1] = v117;
    v117[2] = 0x3032000000;
    v117[3] = __Block_byref_object_copy__190;
    v117[4] = __Block_byref_object_dispose__190;
    v118 = 0;
    v111 = 0;
    v112 = &v111;
    v113 = 0x3032000000;
    v114 = __Block_byref_object_copy__190;
    v115 = __Block_byref_object_dispose__190;
    v116 = 0;
    context = objc_autoreleasePoolPush();
    frameworkBundle = [MEMORY[0x277CCAA00] frameworkBundle];
    v92 = [frameworkBundle pathForResource:@"RTPlaceTypeClassifierModelMultiClass" ofType:@"mlmodelc"];

    v33 = [MEMORY[0x277CBEBC0] fileURLWithPath:v92];
    v34 = [RTPlaceTypeClassifierModelMultiClass alloc];
    v35 = (v112 + 5);
    obj = v112[5];
    v93 = [(RTPlaceTypeClassifierModelMultiClass *)v34 initWithContentsOfURL:v33 error:&obj];
    v88 = v33;
    objc_storeStrong(v35, obj);
    v91 = [objc_opt_class() placeTypeClassifierModelTargetClass:typeCopy];
    v36 = objc_opt_class();
    platform = [(RTLearnedPlaceTypeInferenceGenerator *)self platform];
    v90 = [v36 placeTypeClassifierModelThresholdForPlatform:platform placeType:typeCopy];

    if (v93)
    {
      model = [(RTPlaceTypeClassifierModelMultiClass *)v93 model];
      modelDescription = [model modelDescription];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = NSStringFromSelector(a2);
          metadata = [modelDescription metadata];
          v44 = [metadata objectForKeyedSubscript:@"MLModelCreatorDefinedKey"];
          v45 = [v44 objectForKeyedSubscript:@"mldb_token"];
          *buf = 138412802;
          v128 = v41;
          v129 = 2112;
          v130 = v42;
          v131 = 2112;
          v132 = v45;
          _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, mldb token, %@", buf, 0x20u);
        }
      }

      v87 = [objc_opt_class() sortPlaceStats:statsCopy];

      [dataCopy setObject:&unk_2845A0560 forKeyedSubscript:&unk_2845A05C0];
      array = [MEMORY[0x277CBEB18] array];
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __111__RTLearnedPlaceTypeInferenceGenerator__inferPlaceTypesFromMultiClassModelForPlaceType_placeStats_metricsData___block_invoke;
      v98[3] = &unk_2788D2B78;
      v98[4] = self;
      v108 = a2;
      v109 = typeCopy;
      v99 = v93;
      v104 = &v111;
      v105 = v117;
      v100 = v90;
      v101 = v91;
      v106 = v119;
      v107 = &v121;
      v47 = dataCopy;
      v102 = v47;
      v48 = array;
      v103 = v48;
      [v87 enumerateObjectsUsingBlock:v98];
      [v47 setObject:v48 forKeyedSubscript:&unk_2845A0638];
      v49 = 0;
      v50 = MEMORY[0x277D86220];
      while (v49 < [v48 count])
      {
        v51 = [v48 objectAtIndexedSubscript:v49];
        firstObject = [v51 firstObject];
        [firstObject doubleValue];
        v54 = v53;

        secondObject = [v51 secondObject];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v56 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = objc_opt_class();
            v58 = NSStringFromClass(v57);
            v59 = NSStringFromSelector(a2);
            v60 = [v48 count];
            *buf = 138413571;
            v128 = v58;
            v129 = 2112;
            v130 = v59;
            v131 = 2048;
            v132 = v49 + 1;
            v133 = 2048;
            v134 = v60;
            v135 = 2048;
            v136 = v54;
            v137 = 2117;
            v138 = secondObject;
            _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%@, %@, top candidates, rank %lu / %lu, probability %.4f, place: %{sensitive}@", buf, 0x3Eu);
          }
        }

        ++v49;
      }

      if (v122[5])
      {
        v61 = [RTLearnedPlace alloc];
        place = [v122[5] place];
        identifier = [place identifier];
        place2 = [v122[5] place];
        mapItem = [place2 mapItem];
        place3 = [v122[5] place];
        customLabel = [place3 customLabel];
        place4 = [v122[5] place];
        creationDate = [place4 creationDate];
        place5 = [v122[5] place];
        expirationDate = [place5 expirationDate];
        v12 = [(RTLearnedPlace *)v61 initWithIdentifier:identifier type:typeCopy typeSource:1 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v69 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = objc_opt_class();
            v71 = NSStringFromClass(v70);
            v72 = NSStringFromSelector(a2);
            v73 = [RTLearnedPlace placeTypeToString:typeCopy];
            *buf = 138413059;
            v128 = v71;
            v129 = 2112;
            v130 = v72;
            v131 = 2112;
            v132 = v73;
            v133 = 2117;
            v134 = v12;
            _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_INFO, "%@, %@, placeType, %@, inferred place, %{sensitive}@", buf, 0x2Au);
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v76 = modelDescription;
      statsCopy = v87;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = 0;
        goto LABEL_55;
      }

      v76 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = objc_opt_class();
        v78 = NSStringFromClass(v77);
        v79 = NSStringFromSelector(a2);
        v80 = v112[5];
        *buf = 138413058;
        v128 = v78;
        v129 = 2112;
        v130 = v79;
        v131 = 2112;
        v132 = v92;
        v133 = 2112;
        v134 = v80;
        _os_log_impl(&dword_2304B3000, v76, OS_LOG_TYPE_INFO, "%@, %@, failed to load model, %@, error, %@", buf, 0x2Au);
      }

      v12 = 0;
    }

LABEL_55:
    objc_autoreleasePoolPop(context);
    if (v93)
    {
      v74 = v12;
    }

    else
    {
      v74 = 0;
    }

    _Block_object_dispose(&v111, 8);

    _Block_object_dispose(v117, 8);
    _Block_object_dispose(v119, 8);

    _Block_object_dispose(&v121, 8);
    goto LABEL_43;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      v31 = [RTLearnedPlace placeTypeToString:typeCopy];
      *buf = 138412802;
      v128 = v29;
      v129 = 2112;
      v130 = v30;
      v131 = 2112;
      v132 = v31;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, %@, invalid placeType, %@", buf, 0x20u);
    }

    goto LABEL_42;
  }

LABEL_44:
  v74 = 0;
LABEL_45:

  return v74;
}

void __111__RTLearnedPlaceTypeInferenceGenerator__inferPlaceTypesFromMultiClassModelForPlaceType_placeStats_metricsData___block_invoke(uint64_t a1, void *a2)
{
  v182 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 mlFeatures];

  if (v5)
  {
    v99 = a2;
    v152 = [RTPlaceTypeClassifierModelMultiClassInput alloc];
    v150 = [v4 mlFeatures];
    v148 = [v150 objectForKeyedSubscript:@"mean_daily_longest_charging_duration_bucketed"];
    [v148 doubleValue];
    v125 = v6;
    v146 = [v4 mlFeatures];
    v144 = [v146 objectForKeyedSubscript:@"mean_daily_longest_screen_lock_duration_bucketed"];
    [v144 doubleValue];
    v123 = v7;
    v142 = [v4 mlFeatures];
    v140 = [v142 objectForKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"];
    [v140 doubleValue];
    v120 = v8;
    v138 = [v4 mlFeatures];
    v136 = [v138 objectForKeyedSubscript:@"mean_daily_total_charging_duration_bucketed"];
    [v136 doubleValue];
    v118 = v9;
    v134 = [v4 mlFeatures];
    v132 = [v134 objectForKeyedSubscript:@"mean_daily_total_screen_lock_duration_bucketed"];
    [v132 doubleValue];
    v116 = v10;
    v130 = [v4 mlFeatures];
    v128 = [v130 objectForKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed"];
    [v128 doubleValue];
    v113 = v11;
    v127 = [v4 mlFeatures];
    v126 = [v127 objectForKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed"];
    [v126 doubleValue];
    v111 = v12;
    v124 = [v4 mlFeatures];
    v122 = [v124 objectForKeyedSubscript:@"median_daily_longest_charging_duration_bucketed"];
    [v122 doubleValue];
    v109 = v13;
    v121 = [v4 mlFeatures];
    v119 = [v121 objectForKeyedSubscript:@"median_daily_longest_screen_lock_duration_bucketed"];
    [v119 doubleValue];
    v105 = v14;
    v117 = [v4 mlFeatures];
    v115 = [v117 objectForKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"];
    [v115 doubleValue];
    v103 = v15;
    v114 = [v4 mlFeatures];
    v112 = [v114 objectForKeyedSubscript:@"median_daily_total_charging_duration_bucketed"];
    [v112 doubleValue];
    v17 = v16;
    v110 = [v4 mlFeatures];
    v108 = [v110 objectForKeyedSubscript:@"median_daily_total_screen_lock_duration_bucketed"];
    [v108 doubleValue];
    v19 = v18;
    v107 = [v4 mlFeatures];
    v106 = [v107 objectForKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_bucketed"];
    [v106 doubleValue];
    v21 = v20;
    v104 = [v4 mlFeatures];
    v102 = [v104 objectForKeyedSubscript:@"percentage_of_days_with_charging_bucketed"];
    [v102 doubleValue];
    v23 = v22;
    v101 = [v4 mlFeatures];
    v100 = [v101 objectForKeyedSubscript:@"percentage_of_days_with_screenLock_bucketed"];
    [v100 doubleValue];
    v25 = v24;
    v26 = [v4 mlFeatures];
    v27 = [v26 objectForKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_bucketed"];
    [v27 doubleValue];
    v29 = v28;
    v30 = MEMORY[0x277CCABB0];
    v31 = [*(a1 + 32) platform];
    v32 = [v30 numberWithBool:{objc_msgSend(v31, "iPhoneDevice")}];
    [v32 doubleValue];
    v34 = v33;
    v35 = MEMORY[0x277CCABB0];
    v36 = [*(a1 + 32) platform];
    v37 = [v36 iPhoneDevice];
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v98 = [*(a1 + 32) platform];
      v38 = [v98 iPhonePlatform];
    }

    v39 = [v35 numberWithBool:v38];
    [v39 doubleValue];
    v41 = v40;
    v42 = MEMORY[0x277CCABB0];
    v154 = a1;
    v43 = [*(a1 + 32) platform];
    v44 = [v42 numberWithBool:{objc_msgSend(v43, "watchPlatform")}];
    [v44 doubleValue];
    v153 = [(RTPlaceTypeClassifierModelMultiClassInput *)v152 initWithMean_daily_longest_charging_duration_bucketed:v125 mean_daily_longest_screen_lock_duration_bucketed:v123 mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:v120 mean_daily_total_charging_duration_bucketed:v118 mean_daily_total_screen_lock_duration_bucketed:v116 mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:v113 mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:v111 median_daily_longest_charging_duration_bucketed:v109 median_daily_longest_screen_lock_duration_bucketed:v105 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:v103 median_daily_total_charging_duration_bucketed:v17 median_daily_total_screen_lock_duration_bucketed:v19 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:v21 percentage_of_days_with_charging_bucketed:v23 percentage_of_days_with_screen_lock_bucketed:v25 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:v29 is_iPhone:v34 is_iPad:v41 is_Watch:v45];

    if ((v37 & 1) == 0)
    {
    }

    v46 = v153;
    [(RTPlaceTypeClassifierModelMultiClassInput *)v153 mean_daily_longest_screen_lock_duration_bucketed];
    if (v47 <= 1.0 || ([(RTPlaceTypeClassifierModelMultiClassInput *)v153 mean_daily_total_screen_lock_duration_bucketed], v48 <= 1.0) || ([(RTPlaceTypeClassifierModelMultiClassInput *)v153 median_daily_longest_screen_lock_duration_bucketed], v49 <= 1.0) || ([(RTPlaceTypeClassifierModelMultiClassInput *)v153 median_daily_total_screen_lock_duration_bucketed], v50 <= 1.0) || ([(RTPlaceTypeClassifierModelMultiClassInput *)v153 percentage_of_days_with_screen_lock_bucketed], v51 <= 1.0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_24:

        goto LABEL_25;
      }

      v55 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        v83 = NSStringFromSelector(*(v154 + 112));
        v84 = [RTLearnedPlace placeTypeToString:*(v154 + 120)];
        v85 = [v4 visitIntervals];
        v86 = [v85 valueForKeyPath:@"@sum.duration"];
        v87 = [RTRuntime objToString:v153 filterProperties:&unk_2845A17D8];
        *buf = 138413571;
        v157 = v82;
        v158 = 2112;
        v159 = v83;
        v160 = 2112;
        v161 = v84;
        v162 = 2117;
        v163 = v4;
        v164 = 2112;
        v165 = v86;
        v166 = 2112;
        v167 = v87;
        _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "%@, %@, inferring for placeType, %@, placeStat, %{sensitive}@, total dwell time, %@, mlFeatures, %@, \n\nSkipping place inference in multi class model because all the longest biome stream bucketed values are <= 1. It means the stream doesn't exist or the values are less than 10 mins each.", buf, 0x3Eu);
      }

LABEL_23:

      goto LABEL_24;
    }

    v52 = v154;
    v53 = *(v154 + 40);
    v54 = *(*(v154 + 80) + 8);
    obj = *(v54 + 40);
    v55 = [v53 predictionFromFeatures:v153 error:&obj];
    objc_storeStrong((v54 + 40), obj);
    v56 = [v55 classProbability];
    v57 = [objc_opt_class() placeTypeClassifierModelTargetClass:*(v154 + 120)];
    v58 = [v56 objectForKeyedSubscript:v57];
    v59 = v154 + 88;
    v60 = *(*(v154 + 88) + 8);
    v61 = *(v60 + 40);
    *(v60 + 40) = v58;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v62 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = objc_opt_class();
        v151 = NSStringFromClass(v63);
        v149 = NSStringFromSelector(*(v154 + 112));
        v147 = [RTLearnedPlace placeTypeToString:*(v154 + 120)];
        v143 = [v4 visitIntervals];
        v145 = [v143 valueForKeyPath:@"@sum.duration"];
        v64 = [RTRuntime objToString:v153 filterProperties:&unk_2845A17F0];
        v137 = [RTLearnedPlace placeTypeToString:1];
        v141 = [v55 classProbability];
        v139 = [objc_opt_class() placeTypeClassifierModelTargetClass:1];
        v133 = [v141 objectForKeyedSubscript:v139];
        v131 = [RTLearnedPlace placeTypeToString:2];
        v135 = [v55 classProbability];
        v65 = [objc_opt_class() placeTypeClassifierModelTargetClass:2];
        v66 = [v135 objectForKeyedSubscript:v65];
        v129 = [RTLearnedPlace placeTypeToString:*(v154 + 120)];
        v67 = *(v154 + 48);
        v68 = *(*(*(v154 + 80) + 8) + 40);
        *buf = 138415363;
        v157 = v151;
        v158 = 2112;
        v159 = v149;
        v160 = 2112;
        v161 = v147;
        v162 = 2117;
        v163 = v4;
        v164 = 2112;
        v165 = v145;
        v166 = 2112;
        v167 = v64;
        v168 = 2112;
        v169 = v137;
        v170 = 2112;
        v171 = v133;
        v172 = 2112;
        v173 = v131;
        v174 = 2112;
        v175 = v66;
        v176 = 2112;
        v177 = v129;
        v178 = 2112;
        v179 = v67;
        v180 = 2112;
        v181 = v68;
        _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "%@, %@, inferring for placeType, %@, placeStat, %{sensitive}@, total dwell time, %@,  mlFeatures, %@, \n\npredicted probability for %@, %@, predicted probability for %@, %@, probability threshold for %@, %@, error, %@", buf, 0x84u);

        v46 = v153;
        v52 = v154;
      }
    }

    v69 = [v55 target];
    if (v69 == [*(v52 + 56) intValue] && (objc_msgSend(*(*(*(v52 + 88) + 8) + 40), "doubleValue"), v71 = v70, objc_msgSend(*(v52 + 48), "doubleValue"), v71 >= v72) && (objc_msgSend(*(*(*(v52 + 88) + 8) + 40), "doubleValue"), v74 = v73, objc_msgSend(*(*(*(v52 + 96) + 8) + 40), "doubleValue"), v74 > v75))
    {
      objc_storeStrong((*(*(v52 + 104) + 8) + 40), v99);
      objc_storeStrong((*(*(v52 + 96) + 8) + 40), *(*(*(v52 + 88) + 8) + 40));
      v76 = (v52 + 64);
      v77 = [*(v52 + 64) objectForKeyedSubscript:&unk_2845A05D8];
      [*(v52 + 64) setObject:v77 forKeyedSubscript:&unk_2845A05F0];

      v78 = [RTRuntime objToDictionary:v46 filterProperties:&unk_2845A1808];
      [*(v52 + 64) setObject:v78 forKeyedSubscript:&unk_2845A05D8];

      v79 = &unk_2845A0608;
      v80 = [*(v52 + 64) objectForKeyedSubscript:&unk_2845A0608];
      [*(v52 + 64) setObject:v80 forKeyedSubscript:&unk_2845A0620];
      v59 = v52 + 96;
    }

    else
    {
      v76 = (v52 + 64);
      v88 = [*(v52 + 64) objectForKeyedSubscript:&unk_2845A0620];
      if (v88)
      {
        v89 = v88;
        v90 = [*v76 objectForKeyedSubscript:&unk_2845A0620];
        [v90 doubleValue];
        v92 = v91;
        [*(*(*v59 + 8) + 40) doubleValue];
        v94 = v93;

        if (v92 >= v94)
        {
          goto LABEL_30;
        }
      }

      v80 = [RTRuntime objToDictionary:v46 filterProperties:&unk_2845A1820];
      [*v76 setObject:v80 forKeyedSubscript:&unk_2845A05F0];
      v79 = &unk_2845A0620;
    }

    [*v76 setObject:*(*(*v59 + 8) + 40) forKeyedSubscript:v79];
LABEL_30:
    [*(v52 + 32) updateTopCandidates:*(v52 + 72) withPlaceStat:v4 predictedProbability:*(*(*(v52 + 88) + 8) + 40) placeType:*(v52 + 120)];
    v95 = MEMORY[0x277CCABB0];
    v96 = [*(v52 + 64) objectForKeyedSubscript:&unk_2845A05C0];
    v97 = [v95 numberWithUnsignedInt:{objc_msgSend(v96, "unsignedIntValue") + 1}];
    [*(v52 + 64) setObject:v97 forKeyedSubscript:&unk_2845A05C0];

    goto LABEL_23;
  }

LABEL_25:
}

- (id)inferPlaceTypesFromModelForModelType:(unint64_t)type placeType:(unint64_t)placeType placeStats:(id)stats metricsData:(id)data
{
  statsCopy = stats;
  dataCopy = data;
  if (type == 1)
  {
    v12 = [(RTLearnedPlaceTypeInferenceGenerator *)self _inferPlaceTypesFromMultiClassModelForPlaceType:placeType placeStats:statsCopy metricsData:dataCopy];
    goto LABEL_5;
  }

  if (type == 2)
  {
    v12 = [(RTLearnedPlaceTypeInferenceGenerator *)self _inferPlaceTypesFromRankerModelForPlaceType:placeType placeStats:statsCopy metricsData:dataCopy];
LABEL_5:
    v13 = v12;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)inferPlaceTypesFromModelWithCandidateSelection:(BOOL)selection homeModelType:(unint64_t)type workModelType:(unint64_t)modelType placeStats:(id)stats dateInterval:(id)interval
{
  selectionCopy = selection;
  v112[1] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  intervalCopy = interval;
  if ([(RTLearnedPlaceTypeInferenceGenerator *)self supportsModel])
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v24 = objc_opt_class();
          v20 = NSStringFromClass(v24);
          v21 = NSStringFromSelector(a2);
          *buf = 138412546;
          v97 = v20;
          v98 = 2112;
          v99 = v21;
          v22 = "%@, %@, feature not enabled";
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      goto LABEL_15;
    }

    defaultsManager = [(RTLearnedPlaceTypeInferenceGenerator *)self defaultsManager];
    v16 = [defaultsManager objectForKey:@"RTDefaultsLearnedPlaceTypeInferenceGeneratorDisableModel"];
    bOOLValue = [v16 BOOLValue];

    if (bOOLValue)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = NSStringFromSelector(a2);
          *buf = 138412546;
          v97 = v20;
          v98 = 2112;
          v99 = v21;
          v22 = "%@, %@, Model disabled by defaults";
LABEL_13:
          _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, v22, buf, 0x16u);

          goto LABEL_14;
        }

        goto LABEL_14;
      }

LABEL_15:
      array = 0;
      goto LABEL_82;
    }

    v18 = objc_opt_new();
    v95 = objc_opt_new();
    array = [MEMORY[0x277CBEB18] array];
    v94 = +[RTLearnedPlaceTypeInferenceGenerator getCandidateGenerationParameters];
    v92 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeCandidateStatsForType:1 placeStats:statsCopy dateInterval:intervalCopy excludingPlaces:0 parameters:300.0 distanceThreshold:?];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v92, "count")}];
    [v18 setObject:v26 forKeyedSubscript:&unk_2845A0650];

    v93 = selectionCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v89 = NSStringFromClass(v28);
        v29 = NSStringFromSelector(a2);
        v30 = @"NO";
        if (selectionCopy)
        {
          v30 = @"YES";
        }

        v84 = v30;
        v87 = v29;
        v81 = [statsCopy count];
        aSelectorb = [objc_opt_class() modelTypeToString:type];
        v79 = [v92 count];
        [RTRuntime objToString:v94 filterProperties:0];
        *buf = 138413826;
        v97 = v89;
        v98 = 2112;
        v99 = v87;
        v100 = 2112;
        v101 = v84;
        v102 = 2048;
        v103 = v81;
        v104 = 2112;
        v105 = aSelectorb;
        v106 = 2048;
        v107 = v79;
        v109 = v108 = 2112;
        v31 = v109;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, useCandidateSelection, %@, placeStats count, %lu, home model type, %@, home candidates from candidateSelection, count, %lu, parameters, %@", buf, 0x48u);

        selectionCopy = v93;
      }
    }

    if (selectionCopy)
    {
      if ([v92 count])
      {
        v32 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromModelForModelType:type placeType:1 placeStats:v92 metricsData:v18];
        goto LABEL_30;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = objc_opt_class();
          v90 = NSStringFromClass(v34);
          v35 = NSStringFromSelector(a2);
          *buf = 138412546;
          v97 = v90;
          v98 = 2112;
          v99 = v35;
          v36 = v35;
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, %@, placeStatsCandidatesForHome count is 0. So running all placeStats through model.", buf, 0x16u);
        }
      }
    }

    placeStats = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStats];
    v32 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromModelForModelType:type placeType:1 placeStats:placeStats metricsData:v18];

LABEL_30:
    v88 = v32;
    modelTypeCopy = modelType;
    if (!v32)
    {
      v46 = v93;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v48 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = objc_opt_class();
          v83 = NSStringFromClass(v49);
          v50 = NSStringFromSelector(a2);
          if (v93)
          {
            v51 = @"YES";
          }

          else
          {
            v51 = @"NO";
          }

          placeStats2 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStats];
          v52 = [placeStats2 count];
          *buf = 138413058;
          v97 = v83;
          v98 = 2112;
          v99 = v50;
          v100 = 2112;
          v101 = v51;
          v46 = v93;
          v102 = 2048;
          v103 = v52;
          _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@, %@, skipping work inference from model since home is not inferred, useCandidateSelection, %@, placeStats count, %lu", buf, 0x2Au);
        }

        goto LABEL_55;
      }

LABEL_56:
      v60 = type == 2 && modelTypeCopy == 1;
      v61 = 9;
      v62 = modelTypeCopy == 1 && type == 1;
      v63 = 16;
      if (!v62)
      {
        v63 = 0;
      }

      if (!v60)
      {
        v61 = v63;
      }

      v64 = modelTypeCopy == 1 && type == 1;
      v65 = 15;
      if (!v64)
      {
        v65 = 0;
      }

      if (v60)
      {
        v66 = 8;
      }

      else
      {
        v66 = v65;
      }

      if (v46)
      {
        v67 = v66;
      }

      else
      {
        v67 = v61;
      }

      placeTypeClassifierMetricsCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
      [placeTypeClassifierMetricsCalculator storeMetricsData:v18 source:v67 placeType:1];

      placeTypeClassifierMetricsCalculator2 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
      [placeTypeClassifierMetricsCalculator2 storeMetricsData:v95 source:v67 placeType:2];

      placeTypeClassifierMetricsCalculator3 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
      [placeTypeClassifierMetricsCalculator3 storeMetricsData:array source:v67];

      goto LABEL_81;
    }

    v112[0] = v32;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:1];
    v80 = [RTLearnedPlaceTypeInferenceGenerator placeCandidateStatsForType:"placeCandidateStatsForType:placeStats:dateInterval:excludingPlaces:parameters:distanceThreshold:" placeStats:2 dateInterval:statsCopy excludingPlaces:intervalCopy parameters:300.0 distanceThreshold:?];
    v85 = [RTLearnedPlaceTypeInferenceGenerator filterPlaceStats:"filterPlaceStats:referenceLearnedPlace:minDistanceThreshold:maxDistanceThreshold:" referenceLearnedPlace:? minDistanceThreshold:? maxDistanceThreshold:?];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v85, "count")}];
    [v95 setObject:v38 forKeyedSubscript:&unk_2845A0650];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v75 = v41;
        aSelector = NSStringFromSelector(a2);
        v42 = @"NO";
        if (v93)
        {
          v42 = @"YES";
        }

        v74 = v42;
        v73 = [statsCopy count];
        v43 = [objc_opt_class() modelTypeToString:modelType];
        v72 = [v85 count];
        v44 = [RTRuntime objToString:v94 filterProperties:0];
        *buf = 138414082;
        v97 = v41;
        v98 = 2112;
        v99 = aSelector;
        v100 = 2112;
        v101 = v74;
        v102 = 2048;
        v103 = v73;
        v104 = 2112;
        v105 = v43;
        v106 = 2112;
        v107 = @"YES";
        v108 = 2048;
        v109 = v72;
        v110 = 2112;
        v111 = v44;
        v45 = v44;
        _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, useCandidateSelection, %@, placeStats count, %lu, work model type, %@, is home inferred, %@, work candidates from candidateSelection, count, %lu, parameters, %@", buf, 0x52u);
      }

      v32 = v88;
      modelType = modelTypeCopy;
    }

    v46 = v93;
    if (v93)
    {
      aSelectora = a2;
      v47 = v85;
      if ([v85 count])
      {
        v48 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromModelForModelType:modelType placeType:2 placeStats:v85 metricsData:v95];
        goto LABEL_53;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v55 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          v58 = NSStringFromSelector(aSelectora);
          *buf = 138412546;
          v97 = v57;
          v98 = 2112;
          v99 = v58;
          _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "%@, %@, placeStatsCandidatesForWorkExcludingPlacesNearHome count is 0. Skipping Work model inference", buf, 0x16u);

          v46 = v93;
        }
      }

      v48 = 0;
      v32 = v88;
    }

    else
    {
      placeStats3 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStats];
      v54 = [(RTLearnedPlaceTypeInferenceGenerator *)self filterPlaceStats:placeStats3 referenceLearnedPlace:v32 minDistanceThreshold:&unk_2845A2348 maxDistanceThreshold:&unk_2845A2358];

      v46 = 0;
      v48 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromModelForModelType:modelType placeType:2 placeStats:v54 metricsData:v95];
    }

    v47 = v85;
LABEL_53:

    [array addObject:v32];
    if (v48)
    {
      [array addObject:v48];
LABEL_55:

      goto LABEL_56;
    }

    goto LABEL_56;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v23 = objc_opt_class();
    v20 = NSStringFromClass(v23);
    v21 = NSStringFromSelector(a2);
    *buf = 138412546;
    v97 = v20;
    v98 = 2112;
    v99 = v21;
    v22 = "%@, %@, feature not supported";
    goto LABEL_13;
  }

LABEL_14:
  array = 0;
LABEL_81:

LABEL_82:

  return array;
}

- (id)inferPlaceTypesFromModelWithPlaceStats:(id)stats dateInterval:(id)interval
{
  v28 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  intervalCopy = interval;
  if (![(RTLearnedPlaceTypeInferenceGenerator *)self supportsModel])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v14 = NSStringFromClass(v17);
        v15 = NSStringFromSelector(a2);
        v24 = 138412546;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        v16 = "%@, %@, feature not supported";
        goto LABEL_13;
      }

LABEL_14:
    }

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v14 = NSStringFromClass(v18);
        v15 = NSStringFromSelector(a2);
        v24 = 138412546;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        v16 = "%@, %@, feature not enabled";
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  defaultsManager = [(RTLearnedPlaceTypeInferenceGenerator *)self defaultsManager];
  v10 = [defaultsManager objectForKey:@"RTDefaultsLearnedPlaceTypeInferenceGeneratorDisableModel"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        v24 = 138412546;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        v16 = "%@, %@, Model disabled by defaults";
LABEL_13:
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, v16, &v24, 0x16u);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v19 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromModelWithCandidateSelection:1 homeModelType:2 workModelType:1 placeStats:statsCopy dateInterval:intervalCopy];
  v21 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromModelWithCandidateSelection:1 homeModelType:1 workModelType:1 placeStats:statsCopy dateInterval:intervalCopy];
  v22 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromModelWithCandidateSelection:0 homeModelType:2 workModelType:1 placeStats:statsCopy dateInterval:intervalCopy];
  v23 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromModelWithCandidateSelection:0 homeModelType:1 workModelType:1 placeStats:statsCopy dateInterval:intervalCopy];
LABEL_16:

  return v19;
}

- (id)filteredPlaceStatsByWeeklyVisitThreshold:(double)threshold placeStats:(id)stats
{
  v4 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__RTLearnedPlaceTypeInferenceGenerator_filteredPlaceStatsByWeeklyVisitThreshold_placeStats___block_invoke;
  v9[3] = &__block_descriptor_40_e64_B24__0__RTLearnedPlaceTypeInferencePlaceStats_8__NSDictionary_16l;
  *&v9[4] = threshold;
  statsCopy = stats;
  v6 = [v4 predicateWithBlock:v9];
  v7 = [statsCopy filteredArrayUsingPredicate:v6];

  return v7;
}

BOOL __92__RTLearnedPlaceTypeInferenceGenerator_filteredPlaceStatsByWeeklyVisitThreshold_placeStats___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stats];
  v4 = [v3 weeksWithNonZeroDwellTime] / 5.0 > *(a1 + 32);

  return v4;
}

- (id)inferPlaceTypesFromRuleEngineWithPlaceStats:(id)stats dateInterval:(id)interval
{
  v80 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  intervalCopy = interval;
  v61 = intervalCopy;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = statsCopy;
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v15 = NSStringFromClass(v18);
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v77 = v15;
        v78 = 2112;
        v79 = v16;
        v17 = "%@, %@, feature not enabled";
        goto LABEL_9;
      }

LABEL_10:
      array = 0;
LABEL_11:

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  defaultsManager = [(RTLearnedPlaceTypeInferenceGenerator *)self defaultsManager];
  v10 = [defaultsManager objectForKey:@"RTDefaultsLearnedPlaceTypeInferenceGeneratorDisableRuleEngine"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = statsCopy;
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v77 = v15;
        v78 = 2112;
        v79 = v16;
        v17 = "%@, %@, Rule Engine disabled by defaults";
LABEL_9:
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, v17, buf, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

LABEL_12:
    v12 = statsCopy;
LABEL_13:
    array = 0;
    goto LABEL_14;
  }

  [intervalCopy duration];
  v22 = *&v21;
  if (v21 < 1209600.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v77 = v22;
        v78 = 2048;
        v79 = 0x4132750000000000;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "cannot infer place types. data set interval, %.2f, does not exceed required minimum interval, %.2f", buf, 0x16u);
      }
    }

    v12 = statsCopy;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v24 = [&unk_2845A1838 countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v71;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v71 != v26)
          {
            objc_enumerationMutation(&unk_2845A1838);
          }

          v28 = *(*(&v70 + 1) + 8 * i);
          placeTypeClassifierMetricsCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
          v30 = objc_opt_new();
          [placeTypeClassifierMetricsCalculator storeMetricsData:v30 source:{objc_msgSend(v28, "unsignedIntValue")}];
        }

        v25 = [&unk_2845A1838 countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v25);
    }

    goto LABEL_13;
  }

  v31 = [(RTLearnedPlaceTypeInferenceGenerator *)self filteredPlaceStatsByWeeklyVisitThreshold:statsCopy placeStats:0.6];
  v32 = [v31 count];

  if (v32)
  {
    array = [MEMORY[0x277CBEB18] array];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array2 = [MEMORY[0x277CBEB18] array];
    [dictionary setObject:array2 forKeyedSubscript:&unk_2845A0680];

    array3 = [MEMORY[0x277CBEB18] array];
    [dictionary setObject:array3 forKeyedSubscript:&unk_2845A0698];

    v36 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromDailyPatternsWithPlaceStats:statsCopy dateInterval:intervalCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v77 = [v36 count];
        _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "inferred places from daily patterns, %lu", buf, 0xCu);
      }
    }

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __97__RTLearnedPlaceTypeInferenceGenerator_inferPlaceTypesFromRuleEngineWithPlaceStats_dateInterval___block_invoke;
    v64[3] = &unk_2788C8AE8;
    v38 = dictionary;
    v65 = v38;
    v60 = v36;
    [v36 enumerateObjectsUsingBlock:v64];
    v12 = statsCopy;
    v39 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferPlaceTypesFromTopMedianDwellTimeWithPlaceStats:statsCopy dateInterval:intervalCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v39 count];
        *buf = 134217984;
        v77 = v41;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "inferred places from top median dwell time, %lu", buf, 0xCu);
      }
    }

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __97__RTLearnedPlaceTypeInferenceGenerator_inferPlaceTypesFromRuleEngineWithPlaceStats_dateInterval___block_invoke_417;
    v62[3] = &unk_2788C8AE8;
    v13 = v38;
    v63 = v13;
    [v39 enumerateObjectsUsingBlock:v62];
    v42 = MEMORY[0x277CBEB98];
    v43 = [v13 objectForKeyedSubscript:&unk_2845A0680];
    v44 = [v42 setWithArray:v43];

    v45 = [v13 objectForKeyedSubscript:&unk_2845A0680];
    if ([v45 count] >= 2)
    {
      v46 = [v44 count];

      if (v46 != 1)
      {
LABEL_44:
        placeTypeClassifierMetricsCalculator2 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
        [placeTypeClassifierMetricsCalculator2 storeMetricsData:array source:11];

        goto LABEL_11;
      }

      anyObject = [v44 anyObject];
      [array addObject:anyObject];

      v48 = MEMORY[0x277CBEB98];
      v49 = [v13 objectForKeyedSubscript:&unk_2845A0698];
      v45 = [v48 setWithArray:v49];

      if ([v45 count] == 1)
      {
        anyObject2 = [v45 anyObject];
        [array addObject:anyObject2];
      }
    }

    goto LABEL_44;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, "cannot infer place types. at least 1 place is required", buf, 2u);
    }
  }

  v12 = statsCopy;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v53 = [&unk_2845A1850 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (!v53)
  {
    goto LABEL_13;
  }

  v54 = v53;
  v55 = *v67;
  do
  {
    for (j = 0; j != v54; ++j)
    {
      if (*v67 != v55)
      {
        objc_enumerationMutation(&unk_2845A1850);
      }

      v57 = *(*(&v66 + 1) + 8 * j);
      placeTypeClassifierMetricsCalculator3 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
      v59 = objc_opt_new();
      [placeTypeClassifierMetricsCalculator3 storeMetricsData:v59 source:{objc_msgSend(v57, "unsignedIntValue")}];
    }

    v54 = [&unk_2845A1850 countByEnumeratingWithState:&v66 objects:v74 count:16];
    array = 0;
  }

  while (v54);
LABEL_14:

  return array;
}

void __97__RTLearnedPlaceTypeInferenceGenerator_inferPlaceTypesFromRuleEngineWithPlaceStats_dateInterval___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 134218243;
      v11 = a3 + 1;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "inferred place from daily patterns %lu, %{sensitive}@", &v10, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
  v9 = [v7 objectForKeyedSubscript:v8];
  [v9 addObject:v5];
}

void __97__RTLearnedPlaceTypeInferenceGenerator_inferPlaceTypesFromRuleEngineWithPlaceStats_dateInterval___block_invoke_417(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 134218243;
      v11 = a3 + 1;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "inferred place from top median dwell time %lu, %{sensitive}@", &v10, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
  v9 = [v7 objectForKeyedSubscript:v8];
  [v9 addObject:v5];
}

- (id)fuseInferences:(id)inferences
{
  v98 = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__190;
  v88 = __Block_byref_object_dispose__190;
  v89 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__190;
  v82 = __Block_byref_object_dispose__190;
  v83 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__190;
  v76 = __Block_byref_object_dispose__190;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__190;
  v70 = __Block_byref_object_dispose__190;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__190;
  v64 = __Block_byref_object_dispose__190;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__190;
  v58 = __Block_byref_object_dispose__190;
  v59 = 0;
  array = [MEMORY[0x277CBEB18] array];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      v9 = [inferencesCopy objectForKeyedSubscript:&unk_2845A06B0];
      v10 = [v9 count];
      v11 = [objc_opt_class() placeTypeClassificationSourceToString:3];
      *buf = 138413058;
      v91 = v7;
      v92 = 2112;
      v93 = v8;
      v94 = 2048;
      v95 = v10;
      v96 = 2112;
      v97 = v11;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, classified %lu places from source, %@", buf, 0x2Au);
    }
  }

  v12 = [inferencesCopy objectForKeyedSubscript:{&unk_2845A06B0, array}];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __55__RTLearnedPlaceTypeInferenceGenerator_fuseInferences___block_invoke;
  v53[3] = &unk_2788D2BC0;
  v53[4] = self;
  v53[5] = &v84;
  v53[6] = &v78;
  v53[7] = a2;
  [v12 enumerateObjectsUsingBlock:v53];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = [inferencesCopy objectForKeyedSubscript:&unk_2845A0698];
      v18 = [v17 count];
      v19 = [objc_opt_class() placeTypeClassificationSourceToString:2];
      *buf = 138413058;
      v91 = v15;
      v92 = 2112;
      v93 = v16;
      v94 = 2048;
      v95 = v18;
      v96 = 2112;
      v97 = v19;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, classified %lu places from source, %@", buf, 0x2Au);
    }
  }

  v20 = [inferencesCopy objectForKeyedSubscript:&unk_2845A0698];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __55__RTLearnedPlaceTypeInferenceGenerator_fuseInferences___block_invoke_421;
  v52[3] = &unk_2788D2BC0;
  v52[4] = self;
  v52[5] = &v72;
  v52[6] = &v66;
  v52[7] = a2;
  [v20 enumerateObjectsUsingBlock:v52];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      v25 = [inferencesCopy objectForKeyedSubscript:&unk_2845A0680];
      v26 = [v25 count];
      v27 = [objc_opt_class() placeTypeClassificationSourceToString:1];
      *buf = 138413058;
      v91 = v23;
      v92 = 2112;
      v93 = v24;
      v94 = 2048;
      v95 = v26;
      v96 = 2112;
      v97 = v27;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, classified %lu places from source, %@", buf, 0x2Au);
    }
  }

  v28 = [inferencesCopy objectForKeyedSubscript:&unk_2845A0680];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __55__RTLearnedPlaceTypeInferenceGenerator_fuseInferences___block_invoke_422;
  v51[3] = &unk_2788D2BC0;
  v51[4] = self;
  v51[5] = &v60;
  v51[6] = &v54;
  v51[7] = a2;
  [v28 enumerateObjectsUsingBlock:v51];

  v29 = v85[5];
  if (v29)
  {
    v30 = v29;
    v31 = v79[5];
    if (v31)
    {
      v32 = 3;
      v33 = 3;
LABEL_25:
      v35 = v31;
      goto LABEL_26;
    }

    v31 = v67[5];
    if (v31)
    {
      v33 = 3;
      v32 = 2;
      goto LABEL_25;
    }

    v31 = v55[5];
    v33 = 3;
    if (!v31)
    {
      goto LABEL_40;
    }

    goto LABEL_24;
  }

  v34 = v73[5];
  if (v34)
  {
    v30 = v34;
    v31 = v67[5];
    if (v31)
    {
      v32 = 0;
      v33 = 2;
      goto LABEL_25;
    }

    v31 = v55[5];
    v33 = 2;
    if (!v31)
    {
LABEL_40:
      v32 = 0;
      v35 = 0;
LABEL_27:
      [v49 addObject:v30];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = NSStringFromSelector(a2);
          v41 = [objc_opt_class() placeTypeClassificationSourceToString:v33];
          *buf = 138413059;
          v91 = v39;
          v92 = 2112;
          v93 = v40;
          v94 = 2117;
          v95 = v30;
          v96 = 2112;
          v97 = v41;
          _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, %@, final inferred Home, %{sensitive}@, final Home source, %@", buf, 0x2Au);
        }
      }

      if (v35)
      {
        [v49 addObject:v35];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v42 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            v45 = NSStringFromSelector(a2);
            v46 = [objc_opt_class() placeTypeClassificationSourceToString:v32];
            *buf = 138413059;
            v91 = v44;
            v92 = 2112;
            v93 = v45;
            v94 = 2117;
            v95 = v35;
            v96 = 2112;
            v97 = v46;
            _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, %@, final inferred Work, %{sensitive}@, final Work source, %@", buf, 0x2Au);
          }

LABEL_35:

          goto LABEL_36;
        }
      }

      goto LABEL_36;
    }

LABEL_24:
    v32 = 1;
    goto LABEL_25;
  }

  v31 = v61[5];
  if (v31)
  {
    v32 = 0;
    v35 = 0;
    v33 = 1;
    v30 = v61[5];
LABEL_26:
    v36 = v31;
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "No places are inferred", buf, 2u);
    }

    v33 = 0;
    v35 = 0;
    v30 = 0;
    v32 = 0;
    goto LABEL_35;
  }

  v33 = 0;
  v35 = 0;
  v30 = 0;
  v32 = 0;
LABEL_36:
  [(RTLearnedPlaceTypeInferenceGenerator *)self _storeMetricsForNonFallbackPlacesWithHome:v30 homeSource:v33 work:v35 workSource:v32];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v84, 8);

  return v49;
}

void __55__RTLearnedPlaceTypeInferenceGenerator_fuseInferences___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = [objc_opt_class() placeTypeClassificationSourceToString:3];
      v14 = 138413315;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2048;
      v21 = a3 + 1;
      v22 = 2117;
      v23 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, place from source, %@, %lu, %{sensitive}@", &v14, 0x34u);
    }
  }

  v12 = [v6 type];
  if (v12 == 1)
  {
    v13 = 40;
    goto LABEL_9;
  }

  if (v12 == 2)
  {
    v13 = 48;
LABEL_9:
    objc_storeStrong((*(*(a1 + v13) + 8) + 40), a2);
  }
}

void __55__RTLearnedPlaceTypeInferenceGenerator_fuseInferences___block_invoke_421(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = [objc_opt_class() placeTypeClassificationSourceToString:2];
      v14 = 138413315;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2048;
      v21 = a3 + 1;
      v22 = 2117;
      v23 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, place from source, %@, %lu, %{sensitive}@", &v14, 0x34u);
    }
  }

  v12 = [v6 type];
  if (v12 == 1)
  {
    v13 = 40;
    goto LABEL_9;
  }

  if (v12 == 2)
  {
    v13 = 48;
LABEL_9:
    objc_storeStrong((*(*(a1 + v13) + 8) + 40), a2);
  }
}

void __55__RTLearnedPlaceTypeInferenceGenerator_fuseInferences___block_invoke_422(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = [objc_opt_class() placeTypeClassificationSourceToString:1];
      v14 = 138413315;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2048;
      v21 = a3 + 1;
      v22 = 2117;
      v23 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, place from source, %@ %lu, %{sensitive}@", &v14, 0x34u);
    }
  }

  v12 = [v6 type];
  if (v12 == 1)
  {
    v13 = 40;
    goto LABEL_9;
  }

  if (v12 == 2)
  {
    v13 = 48;
LABEL_9:
    objc_storeStrong((*(*(a1 + v13) + 8) + 40), a2);
  }
}

- (id)inferPlaceTypesFromFallbackWithPlaceStats:(id)stats dateInterval:(id)interval
{
  v59 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if (_os_feature_enabled_impl())
  {
    defaultsManager = [(RTLearnedPlaceTypeInferenceGenerator *)self defaultsManager];
    v8 = [defaultsManager objectForKey:@"RTDefaultsLearnedPlaceTypeInferenceGeneratorDisableFallback"];
    bOOLValue = [v8 BOOLValue];

    if (!bOOLValue)
    {
      array = [MEMORY[0x277CBEB18] array];
      v17 = objc_opt_class();
      placeStats = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStats];
      v19 = [v17 sortPlaceStats:placeStats];

      if ([v19 count])
      {
        v47 = a2;
        v48 = statsCopy;
        v46 = v19;
        firstObject = [v19 firstObject];
        v42 = [RTLearnedPlace alloc];
        place = [firstObject place];
        identifier = [place identifier];
        place2 = [firstObject place];
        mapItem = [place2 mapItem];
        place3 = [firstObject place];
        customLabel = [place3 customLabel];
        place4 = [firstObject place];
        creationDate = [place4 creationDate];
        v43 = firstObject;
        place5 = [firstObject place];
        expirationDate = [place5 expirationDate];
        v10 = [(RTLearnedPlace *)v42 initWithIdentifier:identifier type:1 typeSource:1 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

        if (v10)
        {
          [array addObject:v10];
          a2 = v47;
          statsCopy = v48;
          v19 = v46;
          v28 = v43;
        }

        else
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          a2 = v47;
          v28 = v43;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = NSStringFromSelector(v47);
            *buf = 138412803;
            v50 = v39;
            v51 = 2112;
            v52 = v40;
            v53 = 2117;
            v54 = v43;
            _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, %@, failed to create home from placeStats object, %{sensitive}@", buf, 0x20u);
          }

          statsCopy = v48;
          v19 = v46;
        }
      }

      else
      {
        v10 = 0;
      }

      v30 = [(RTLearnedPlaceTypeInferenceGenerator *)self inferWorkFromHistoryAndPlaceStats:statsCopy];
      [array addObjectsFromArray:v30];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = NSStringFromSelector(a2);
          v35 = [v19 count];
          *buf = 138413315;
          v50 = v33;
          v51 = 2112;
          v52 = v34;
          v53 = 2048;
          v54 = v35;
          v55 = 2117;
          v56 = v10;
          v57 = 2117;
          v58 = v30;
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, %@, placeStats count, %lu, inferred home from fallback, %{sensitive}@, inferred works from fallback, %{sensitive}@", buf, 0x34u);
        }
      }

      placeTypeClassifierMetricsCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
      [placeTypeClassifierMetricsCalculator storeMetricsData:array source:4];

      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v50 = v12;
        v51 = 2112;
        v52 = v13;
        v14 = "%@, %@, Fall Back disabled by defaults";
LABEL_9:
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, v14, buf, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

LABEL_11:
    array = 0;
    goto LABEL_26;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v12 = NSStringFromClass(v15);
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    v50 = v12;
    v51 = 2112;
    v52 = v13;
    v14 = "%@, %@, feature not enabled";
    goto LABEL_9;
  }

LABEL_10:
  array = 0;
LABEL_25:

LABEL_26:

  return array;
}

- (id)inferWorkFromHistoryAndPlaceStats:(id)stats
{
  v134[1] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = __Block_byref_object_copy__190;
  v114 = __Block_byref_object_dispose__190;
  v115 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__190;
  v108 = __Block_byref_object_dispose__190;
  v109 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  placeTypeClassifierMetricsCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __74__RTLearnedPlaceTypeInferenceGenerator_inferWorkFromHistoryAndPlaceStats___block_invoke;
  v100[3] = &unk_2788C4490;
  v102 = &v110;
  v103 = &v104;
  group = v4;
  v101 = group;
  [placeTypeClassifierMetricsCalculator fetchWorkInferenceStatsForLookbackDays:14 handler:v100];

  v6 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(group, v6))
  {
    v7 = MEMORY[0x277CCA9B8];
    v133 = *MEMORY[0x277CCA450];
    v134[0] = @"Timed out fetching historical work stats.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:&v133 count:1];
    v9 = [v7 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v8];
    v10 = v105[5];
    v105[5] = v9;
  }

  if (v105[5])
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      v77 = NSStringFromSelector(a2);
      v78 = v105[5];
      *buf = 138412802;
      v119 = v76;
      v120 = 2112;
      v121 = v77;
      v122 = 2112;
      v123 = v78;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, Failed to fetch historical work stats: %@", buf, 0x20u);
    }

    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_66;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = [v111[5] count];
      *buf = 138412802;
      v119 = v15;
      v120 = 2112;
      v121 = v16;
      v122 = 2048;
      v123 = v17;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, fetched historical stats for %lu places for fallback analysis", buf, 0x20u);
    }
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v18 = v111[5];
  v19 = [v18 countByEnumeratingWithState:&v96 objects:v132 count:16];
  if (!v19)
  {

    goto LABEL_49;
  }

  *&v90 = 0.0;
  v20 = *v97;
  v21 = -1.0;
  v84 = v18;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v97 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v96 + 1) + 8 * i);
      workInferences = [v23 workInferences];
      totalInferences = [v23 totalInferences];
      v26 = totalInferences;
      if (totalInferences)
      {
        v27 = workInferences / totalInferences;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v39 = objc_opt_class();
            v88 = NSStringFromClass(v39);
            v40 = NSStringFromSelector(a2);
            learnedPlaceIdentifier = [v23 learnedPlaceIdentifier];
            lastDateInferred = [v23 lastDateInferred];
            *buf = 138413826;
            v119 = v88;
            v120 = 2112;
            v121 = v40;
            v122 = 2112;
            v123 = learnedPlaceIdentifier;
            v124 = 2048;
            v125 = *&workInferences;
            v126 = 2048;
            v127 = v26;
            v128 = 2048;
            *&v129 = workInferences / v26;
            v130 = 2112;
            v131 = lastDateInferred;
            _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%@, %@, Processing history stats for identifier: %@, num inferences with yield: %lu, num total yield: %lu, ratio: %.3f, last inferred: %@", buf, 0x48u);

            v18 = v84;
          }
        }

        if (v27 >= 0.25)
        {
          if (v27 > v21)
          {
            learnedPlaceIdentifier2 = [v23 learnedPlaceIdentifier];

            lastDateInferred2 = [v23 lastDateInferred];
LABEL_31:
            v90 = learnedPlaceIdentifier2;

            distantPast = lastDateInferred2;
            v21 = v27;
            continue;
          }

          if (v27 == v21)
          {
            lastDateInferred3 = [v23 lastDateInferred];
            v32 = [lastDateInferred3 compare:distantPast] == 1;

            if (v32)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                {
                  v34 = objc_opt_class();
                  v35 = NSStringFromClass(v34);
                  v36 = NSStringFromSelector(a2);
                  learnedPlaceIdentifier3 = [v23 learnedPlaceIdentifier];
                  lastDateInferred4 = [v23 lastDateInferred];
                  *buf = 138413826;
                  v119 = v35;
                  v120 = 2112;
                  v121 = v36;
                  v122 = 2048;
                  v123 = *&v21;
                  v124 = 2112;
                  v125 = *&learnedPlaceIdentifier3;
                  v126 = 2112;
                  v127 = lastDateInferred4;
                  v128 = 2112;
                  v129 = v90;
                  v130 = 2112;
                  v131 = distantPast;
                  _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, %@, Tie detected in fallback ratio (%.2f). Selecting candidate %@ with more recent inference date %@ over existing candidate %@ with date %@", buf, 0x48u);
                }
              }

              learnedPlaceIdentifier2 = [v23 learnedPlaceIdentifier];

              lastDateInferred2 = [v23 lastDateInferred];
              v27 = v21;
              goto LABEL_31;
            }
          }
        }
      }
    }

    v19 = [v18 countByEnumeratingWithState:&v96 objects:v132 count:16];
  }

  while (v19);

  v43 = v90;
  if (*&v90 == 0.0)
  {
LABEL_49:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v55 = NSStringFromSelector(a2);
        *buf = 138412802;
        v119 = v54;
        v120 = 2112;
        v121 = v55;
        v122 = 2048;
        v123 = 0x3FD0000000000000;
        _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, %@, No fallback candidate met the required ratio threshold of %.2f.", buf, 0x20u);
      }

      *&v90 = 0.0;
      goto LABEL_53;
    }

    *&v90 = 0.0;
    goto LABEL_55;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v44 = statsCopy;
  v45 = [v44 countByEnumeratingWithState:&v92 objects:v117 count:16];
  if (!v45)
  {

    goto LABEL_70;
  }

  v46 = 0;
  v47 = *v93;
  while (2)
  {
    v48 = 0;
    while (2)
    {
      if (*v93 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v92 + 1) + 8 * v48);
      place = [v49 place];
      identifier = [place identifier];
      v52 = [identifier isEqual:v43];

      if (v52)
      {
        v43 = v90;
        if (!v46)
        {
          v46 = v49;
          goto LABEL_44;
        }

        v56 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v79 = objc_opt_class();
          v80 = NSStringFromClass(v79);
          v81 = NSStringFromSelector(a2);
          *buf = 138412802;
          v119 = v80;
          v120 = 2112;
          v121 = v81;
          v122 = 2112;
          v123 = v90;
          _os_log_error_impl(&dword_2304B3000, v56, OS_LOG_TYPE_ERROR, "%@, %@, Found multiple place stats for the same best identifier %@. Aborting fallback.", buf, 0x20u);
        }

LABEL_59:
        v85 = [RTLearnedPlace alloc];
        place2 = [v46 place];
        identifier2 = [place2 identifier];
        place3 = [v46 place];
        mapItem = [place3 mapItem];
        place4 = [v46 place];
        customLabel = [place4 customLabel];
        place5 = [v46 place];
        creationDate = [place5 creationDate];
        place6 = [v46 place];
        expirationDate = [place6 expirationDate];
        v86 = [(RTLearnedPlace *)v85 initWithIdentifier:identifier2 type:2 typeSource:1 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v66 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = objc_opt_class();
            v68 = NSStringFromClass(v67);
            v69 = NSStringFromSelector(a2);
            stringFromDate = [distantPast stringFromDate];
            *buf = 138413314;
            v119 = v68;
            v120 = 2112;
            v121 = v69;
            v122 = 2112;
            v123 = v90;
            v124 = 2048;
            v125 = v21;
            v126 = 2112;
            v127 = stringFromDate;
            _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_INFO, "%@, %@, Selected fallback work %@ with ratio %.2f and date %@", buf, 0x34u);
          }
        }

        v116 = v86;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];

        goto LABEL_64;
      }

      v43 = v90;
LABEL_44:
      if (v45 != ++v48)
      {
        continue;
      }

      break;
    }

    v45 = [v44 countByEnumeratingWithState:&v92 objects:v117 count:16];
    if (v45)
    {
      continue;
    }

    break;
  }

  if (v46)
  {
    goto LABEL_59;
  }

LABEL_70:
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
LABEL_55:
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_65;
  }

  v46 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    v74 = NSStringFromSelector(a2);
    *buf = 138412802;
    v119 = v73;
    v120 = 2112;
    v121 = v74;
    v122 = 2112;
    v123 = v90;
    _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, %@, A fallback candidate was identified from history (%@), but it was not found in the current set of place candidates. Aborting fallback.", buf, 0x20u);
  }

LABEL_53:
  v12 = MEMORY[0x277CBEBF8];
LABEL_64:

LABEL_65:
  v11 = v90;
LABEL_66:

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v110, 8);

  return v12;
}

void __74__RTLearnedPlaceTypeInferenceGenerator_inferWorkFromHistoryAndPlaceStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

- (id)_getCandidatePlaceStatsFromPlaceStats:(id)stats
{
  v3 = MEMORY[0x277CCAC30];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __78__RTLearnedPlaceTypeInferenceGenerator__getCandidatePlaceStatsFromPlaceStats___block_invoke;
  v11 = &unk_2788D2BE8;
  selfCopy = self;
  v13 = a2;
  statsCopy = stats;
  v5 = [v3 predicateWithBlock:&v8];
  v6 = [statsCopy filteredArrayUsingPredicate:{v5, v8, v9, v10, v11, selfCopy, v13}];

  return v6;
}

BOOL __78__RTLearnedPlaceTypeInferenceGenerator__getCandidatePlaceStatsFromPlaceStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v28 = a3;
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [MEMORY[0x277CBEAA8] distantPast];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = v4;
  v7 = [v4 visitIntervals];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 startDate];
        v15 = [v14 compare:v5];

        if (v15 == -1)
        {
          v16 = [v12 startDate];

          v5 = v16;
        }

        v17 = [v12 endDate];
        v18 = [v6 compare:v17];

        if (v18 == -1)
        {
          v19 = [v12 endDate];

          v6 = v19;
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v48 count:16];
    }

    while (v9);
  }

  [v6 timeIntervalSinceDate:v5];
  v21 = v20;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(*(a1 + 40));
      *buf = 138413827;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      v38 = 2048;
      v39 = v21;
      v40 = 2048;
      v41 = 0x4137BB0000000000;
      v42 = 2112;
      v43 = v5;
      v44 = 2112;
      v45 = v6;
      v46 = 2117;
      v47 = v29;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, time gap, %.3f, %.3f, earliest visit entry, %@, latest visit exit, %@, placeStat, %{sensitive}@", buf, 0x48u);
    }
  }

  return v21 >= 1555200.0;
}

- (id)_getFullLocationHistoryDateInterval
{
  firstVisit = [(RTLearnedPlaceTypeInferenceGenerator *)self firstVisit];
  entryDate = [firstVisit entryDate];
  if (entryDate)
  {
    entryDate3 = entryDate;
    lastVisit = [(RTLearnedPlaceTypeInferenceGenerator *)self lastVisit];
    exitDate = [lastVisit exitDate];
    if (exitDate)
    {
      v8 = exitDate;
      firstVisit2 = [(RTLearnedPlaceTypeInferenceGenerator *)self firstVisit];
      entryDate2 = [firstVisit2 entryDate];
      lastVisit2 = [(RTLearnedPlaceTypeInferenceGenerator *)self lastVisit];
      exitDate2 = [lastVisit2 exitDate];
      v13 = [entryDate2 compare:exitDate2];

      if (v13 != -1)
      {
        v14 = 0;
        goto LABEL_10;
      }

      v15 = objc_alloc(MEMORY[0x277CCA970]);
      firstVisit = [(RTLearnedPlaceTypeInferenceGenerator *)self firstVisit];
      entryDate3 = [firstVisit entryDate];
      lastVisit = [(RTLearnedPlaceTypeInferenceGenerator *)self lastVisit];
      exitDate3 = [lastVisit exitDate];
      v14 = [v15 initWithStartDate:entryDate3 endDate:exitDate3];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_10:

  return v14;
}

- (id)inferPlaceTypes
{
  selfCopy = self;
  v114 = *MEMORY[0x277D85DE8];
  [(RTLearnedPlaceTypeInferenceGenerator *)self log];
  placeStats = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy placeStats];
  v4 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy _getCandidatePlaceStatsFromPlaceStats:placeStats];

  _getFullLocationHistoryDateInterval = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy _getFullLocationHistoryDateInterval];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      placeStats2 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy placeStats];
      *buf = 138413314;
      v105 = v8;
      v106 = 2112;
      v107 = v9;
      v108 = 2048;
      v109 = [placeStats2 count];
      v110 = 2048;
      v111 = [v4 count];
      v112 = 2112;
      v113 = _getFullLocationHistoryDateInterval;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, placeStats count, %lu, candidate placeStats count, %lu, dateInterval, %@", buf, 0x34u);
    }
  }

  v84 = _getFullLocationHistoryDateInterval;
  v85 = v4;
  v89 = selfCopy;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v94 objects:v103 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v95;
      v15 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v95 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v94 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              v22 = NSStringFromSelector(a2);
              *buf = 138412802;
              v105 = v21;
              v106 = 2112;
              v107 = v22;
              v108 = 2112;
              v109 = v17;
              _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "%@, %@, candidate place stat, %@", buf, 0x20u);
            }
          }

          objc_autoreleasePoolPop(v18);
        }

        v13 = [v11 countByEnumeratingWithState:&v94 objects:v103 count:16];
      }

      while (v13);
    }

    _getFullLocationHistoryDateInterval = v84;
    v4 = v85;
    selfCopy = v89;
  }

  v23 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy inferPlaceTypesFromRuleEngineWithPlaceStats:v4 dateInterval:_getFullLocationHistoryDateInterval];
  aSelectora = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy inferPlaceTypesFromModelWithPlaceStats:v4 dateInterval:_getFullLocationHistoryDateInterval];
  if ([v23 count] || objc_msgSend(aSelectora, "count"))
  {
    v86 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy inferPlaceTypesFromFallbackWithPlaceStats:v4 dateInterval:_getFullLocationHistoryDateInterval];
  }

  else
  {
    placeStats3 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy placeStats];
    v86 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy inferPlaceTypesFromFallbackWithPlaceStats:placeStats3 dateInterval:_getFullLocationHistoryDateInterval];
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v90 objects:v102 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = 0;
    v29 = *v91;
    while (1)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v91 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v90 + 1) + 8 * j);
        type = [v31 type];
        if (type == 1)
        {
          v33 = v28;
          v28 = v31;
        }

        else
        {
          if (type != 2)
          {
            continue;
          }

          v33 = v27;
          v27 = v31;
        }

        v34 = v31;
      }

      v26 = [v24 countByEnumeratingWithState:&v90 objects:v102 count:16];
      if (!v26)
      {
        goto LABEL_35;
      }
    }
  }

  v27 = 0;
  v28 = 0;
LABEL_35:

  v35 = objc_opt_new();
  v36 = objc_opt_new();
  v81 = objc_opt_new();
  v80 = objc_opt_new();
  if (v28 && [(RTLearnedPlaceTypeInferenceGenerator *)v89 supportsModel]&& _os_feature_enabled_impl())
  {
    v82 = v36;
    v101 = v28;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
    v74 = +[RTLearnedPlaceTypeInferenceGenerator getCandidateGenerationParameters];
    v76 = v37;
    v73 = [(RTLearnedPlaceTypeInferenceGenerator *)v89 placeCandidateStatsForType:2 placeStats:v4 dateInterval:v84 excludingPlaces:v37 parameters:300.0 distanceThreshold:?];
    v38 = [RTLearnedPlaceTypeInferenceGenerator filterPlaceStats:v89 referenceLearnedPlace:"filterPlaceStats:referenceLearnedPlace:minDistanceThreshold:maxDistanceThreshold:" minDistanceThreshold:? maxDistanceThreshold:?];
    v39 = [(RTLearnedPlaceTypeInferenceGenerator *)v89 inferPlaceTypesFromModelForModelType:1 placeType:2 placeStats:v38 metricsData:v81];
    v40 = v39;
    if (v39)
    {
      v100 = v39;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];

      v78 = v41;
      if (!v27)
      {
        v99[0] = v28;
        v99[1] = v40;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:2];

        aSelectora = v42;
      }
    }

    else
    {
      v78 = v35;
    }

    v67 = [(RTLearnedPlaceTypeInferenceGenerator *)v89 filterPlaceStats:v85 referenceLearnedPlace:v28 minDistanceThreshold:&unk_2845A2348 maxDistanceThreshold:&unk_2845A2358];
    v68 = [(RTLearnedPlaceTypeInferenceGenerator *)v89 inferPlaceTypesFromModelForModelType:1 placeType:2 placeStats:v67 metricsData:v80];
    v69 = v68;
    if (v68)
    {
      v98 = v68;
      v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];

      v82 = v70;
    }

    v43 = v89;
    placeTypeClassifierMetricsCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)v89 placeTypeClassifierMetricsCalculator];
    [placeTypeClassifierMetricsCalculator storeMetricsData:v81 source:6 placeType:2];

    placeTypeClassifierMetricsCalculator2 = [(RTLearnedPlaceTypeInferenceGenerator *)v89 placeTypeClassifierMetricsCalculator];
    [placeTypeClassifierMetricsCalculator2 storeMetricsData:v80 source:7 placeType:2];

    v36 = v82;
    v35 = v78;
  }

  else
  {
    v43 = v89;
  }

  v44 = objc_opt_new();
  [v44 setObject:v24 forKeyedSubscript:&unk_2845A06B0];
  [v44 setObject:aSelectora forKeyedSubscript:&unk_2845A0698];
  [v44 setObject:v86 forKeyedSubscript:&unk_2845A0680];
  v45 = [(RTLearnedPlaceTypeInferenceGenerator *)v43 fuseInferences:v44];
  placeTypeClassifierMetricsCalculator3 = [(RTLearnedPlaceTypeInferenceGenerator *)v43 placeTypeClassifierMetricsCalculator];
  v79 = v35;
  [placeTypeClassifierMetricsCalculator3 storeMetricsData:v35 source:6];

  placeTypeClassifierMetricsCalculator4 = [(RTLearnedPlaceTypeInferenceGenerator *)v43 placeTypeClassifierMetricsCalculator];
  v83 = v36;
  [placeTypeClassifierMetricsCalculator4 storeMetricsData:v36 source:7];

  placeTypeClassifierMetricsCalculator5 = [(RTLearnedPlaceTypeInferenceGenerator *)v43 placeTypeClassifierMetricsCalculator];
  v77 = v45;
  [placeTypeClassifierMetricsCalculator5 storeMetricsData:v45 source:5];

  v49 = objc_opt_new();
  v50 = MEMORY[0x277CCABB0];
  placeStats4 = [(RTLearnedPlaceTypeInferenceGenerator *)v43 placeStats];
  v52 = [v50 numberWithUnsignedInteger:{objc_msgSend(placeStats4, "count")}];
  [v49 setObject:v52 forKeyedSubscript:&unk_2845A0698];

  firstVisit = [(RTLearnedPlaceTypeInferenceGenerator *)v43 firstVisit];
  entryDate = [firstVisit entryDate];
  if (entryDate)
  {
    v55 = entryDate;
    lastVisit = [(RTLearnedPlaceTypeInferenceGenerator *)v43 lastVisit];
    [lastVisit exitDate];
    v58 = v57 = v43;

    if (!v58)
    {
      goto LABEL_46;
    }

    firstVisit = [MEMORY[0x277CBEA80] currentCalendar];
    firstVisit2 = [(RTLearnedPlaceTypeInferenceGenerator *)v57 firstVisit];
    entryDate2 = [firstVisit2 entryDate];
    lastVisit2 = [(RTLearnedPlaceTypeInferenceGenerator *)v57 lastVisit];
    exitDate = [lastVisit2 exitDate];
    v75 = [firstVisit components:16 fromDate:entryDate2 toDate:exitDate options:0];

    v63 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v75, "day")}];
    [v49 setObject:v63 forKeyedSubscript:&unk_2845A06B0];
  }

  v57 = v89;
LABEL_46:
  placeTypeClassifierMetricsCalculator6 = [(RTLearnedPlaceTypeInferenceGenerator *)v57 placeTypeClassifierMetricsCalculator];
  [placeTypeClassifierMetricsCalculator6 storeMetricsData:v49 source:0 placeType:0];

  return v77;
}

- (void)log
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      placeStats = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStats];
      v7 = [placeStats count];
      lastVisit = [(RTLearnedPlaceTypeInferenceGenerator *)self lastVisit];
      exitDate = [lastVisit exitDate];
      firstVisit = [(RTLearnedPlaceTypeInferenceGenerator *)self firstVisit];
      entryDate = [firstVisit entryDate];
      [exitDate timeIntervalSinceDate:entryDate];
      v14 = 138412802;
      v15 = v5;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v12;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, place stats, %lu, dataSetTimeInterval, %.2f", &v14, 0x20u);
    }
  }

  placeStats2 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStats];
  [placeStats2 enumerateObjectsUsingBlock:&__block_literal_global_432];
}

void __43__RTLearnedPlaceTypeInferenceGenerator_log__block_invoke(uint64_t a1, void *a2, uint64_t a3)
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
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "place stat, %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (id)placeCandidatesFromDailyPatternsForType:(unint64_t)type placeStats:(id)stats parameters:(id)parameters
{
  v82[4] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  parametersCopy = parameters;
  v11 = parametersCopy;
  if (type == 1)
  {
    selfCopy2 = self;
    v62 = statsCopy;
    v56 = @"home";
    aSelector = a2;
    v12 = @"sHomeTotalWeeklyVisitCountPlaceCandidates";
    v13 = @"sHomeMinWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates";
    v14 = @"sHomeMaxDaysNonZeroDwellTimePlaceCandidates";
    v15 = @"sHomeMinDaysNonZeroDwellTimePlaceCandidates";
  }

  else
  {
    if (type != 2)
    {
      v50 = 0;
      goto LABEL_11;
    }

    selfCopy2 = self;
    v62 = statsCopy;
    v56 = @"work";
    aSelector = a2;
    v12 = @"sWorkTotalWeeklyVisitCountPlaceCandidates";
    v13 = @"sWorkMinWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates";
    v14 = @"sWorkMaxDaysNonZeroDwellTimePlaceCandidates";
    v15 = @"sWorkMinDaysNonZeroDwellTimePlaceCandidates";
  }

  [parametersCopy objectForKeyedSubscript:v15];
  v16 = v64 = v11;
  [v16 doubleValue];
  v18 = v17;

  v19 = [v64 objectForKeyedSubscript:v14];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v64 objectForKeyedSubscript:v13];
  [v22 doubleValue];
  v24 = v23;

  v25 = [v64 objectForKeyedSubscript:v12];
  [v25 doubleValue];
  v27 = v26;

  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyDaysWithNonZeroDwellTimeAverage"];
  v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyAggregateDwellTimeBetweenDateRangeAverage"];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyTotalDailyVisitCountAverage"];
  v58 = MEMORY[0x277CCA920];
  v30 = MEMORY[0x277CCAC30];
  v59 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v31 = [v30 predicateWithFormat:@"%K >= %@", v28, v59];
  v82[0] = v31;
  v32 = MEMORY[0x277CCAC30];
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  v34 = [v32 predicateWithFormat:@"%K <= %@", v28, v33];
  v82[1] = v34;
  v35 = MEMORY[0x277CCAC30];
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  v37 = [v35 predicateWithFormat:@"%K > %@", v63, v36];
  v82[2] = v37;
  v38 = MEMORY[0x277CCAC30];
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v60 = v29;
  v40 = [v38 predicateWithFormat:@"%K >= %@", v29, v39];
  v82[3] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
  v42 = [v58 andPredicateWithSubpredicates:v41];

  v11 = v64;
  v43 = v28;

  v44 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v28 ascending:0];
  v81[0] = v44;
  v45 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v63 ascending:0];
  v81[1] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];

  v47 = [v64 objectForKeyedSubscript:@"sWeeklyVisitThresholdPlaceCandidates"];
  [v47 doubleValue];
  statsCopy = v62;
  v48 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy2 filteredPlaceStatsByWeeklyVisitThreshold:v62 placeStats:?];
  v49 = [v48 filteredArrayUsingPredicate:v42];
  v50 = [v49 sortedArrayUsingDescriptors:v46];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v51 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = NSStringFromSelector(aSelector);
      *buf = 138414083;
      v66 = v53;
      v67 = 2112;
      v68 = v54;
      v69 = 2112;
      v70 = v56;
      v71 = 2048;
      v72 = v18;
      v73 = 2048;
      v74 = v21;
      v75 = 2048;
      v76 = v24;
      v77 = 2048;
      v78 = v27;
      v79 = 2117;
      v80 = v50;
      _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, %@, candidate %@ places from daily patterns requiring minDaysNonZeroDwellTimePlaceCandidates, %.2f, maxDaysNonZeroDwellTimePlaceCandidates, %.2f, minWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates, %.2f, totalWeeklyVisitCountPlaceCandidates, %.2f: %{sensitive}@", buf, 0x52u);
    }
  }

LABEL_11:

  return v50;
}

- (id)placeCandidatesFromTopMedianDwellTimeForType:(unint64_t)type placeStats:(id)stats parameters:(id)parameters
{
  v75[3] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  parametersCopy = parameters;
  v11 = parametersCopy;
  if (type == 1)
  {
    selfCopy2 = self;
    v59 = statsCopy;
    v51 = @"home";
    aSelector = a2;
    v12 = @"sHomeMinTopMedianDwellTimePlaceCandidates";
    v13 = @"sHomeTotalWeeklyVisitCountPlaceCandidates";
    v14 = @"sHomeMinDaysNonZeroDwellTimePlaceCandidates";
  }

  else
  {
    if (type != 2)
    {
      v44 = 0;
      goto LABEL_11;
    }

    selfCopy2 = self;
    v59 = statsCopy;
    v51 = @"work";
    aSelector = a2;
    v12 = @"sWorkMinTopMedianDwellTimePlaceCandidates";
    v13 = @"sWorkTotalWeeklyVisitCountPlaceCandidates";
    v14 = @"sWorkMinDaysNonZeroDwellTimePlaceCandidates";
  }

  v15 = [parametersCopy objectForKeyedSubscript:v14];
  [v15 doubleValue];
  v17 = v16;

  v18 = [v11 objectForKeyedSubscript:v13];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v11 objectForKeyedSubscript:v12];
  [v21 doubleValue];
  v23 = v22;

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyDaysWithNonZeroDwellTimeAverage"];
  [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"weeklyTotalDailyVisitCountAverage"];
  v26 = v25 = v11;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"stats", @"topMedianDwellTime"];
  v53 = MEMORY[0x277CCA920];
  v28 = MEMORY[0x277CCAC30];
  v54 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  v57 = v24;
  v29 = [v28 predicateWithFormat:@"%K >= %@", v24, v54];
  v75[0] = v29;
  v30 = MEMORY[0x277CCAC30];
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
  v50 = v26;
  v56 = v26;
  v11 = v25;
  v32 = [v30 predicateWithFormat:@"%K >= %@", v50, v31];
  v75[1] = v32;
  v33 = MEMORY[0x277CCAC30];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  v55 = v27;
  v35 = [v33 predicateWithFormat:@"%K > %@", v27, v34];
  v75[2] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
  v37 = [v53 andPredicateWithSubpredicates:v36];

  v38 = v37;
  v39 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"stats.topMedianDwellTime" ascending:0];
  v74 = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];

  v41 = [v25 objectForKeyedSubscript:@"sWeeklyVisitThresholdPlaceCandidates"];
  [v41 doubleValue];
  statsCopy = v59;
  v42 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy2 filteredPlaceStatsByWeeklyVisitThreshold:v59 placeStats:?];
  v43 = [v42 filteredArrayUsingPredicate:v38];
  v44 = [v43 sortedArrayUsingDescriptors:v40];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(aSelector);
      *buf = 138413827;
      v61 = v47;
      v62 = 2112;
      v63 = v48;
      v64 = 2112;
      v65 = v51;
      v66 = 2048;
      v67 = v17;
      v68 = 2048;
      v69 = v20;
      v70 = 2048;
      v71 = v23;
      v72 = 2117;
      v73 = v44;
      _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@, %@, candidate %@ places from dwell time stats requiring minDaysNonZeroDwellTimePlaceCandidates, %.2f, totalWeeklyVisitCountPlaceCandidates, %.2f, minTopMedianDwellTimePlaceCandidates, %.2f: %{sensitive}@", buf, 0x48u);
    }
  }

LABEL_11:

  return v44;
}

- (id)filterPlaceStats:(id)stats referenceLearnedPlace:(id)place minDistanceThreshold:(id)threshold maxDistanceThreshold:(id)distanceThreshold
{
  v65 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  placeCopy = place;
  thresholdCopy = threshold;
  distanceThresholdCopy = distanceThreshold;
  if (placeCopy && thresholdCopy && distanceThresholdCopy)
  {
    aSelector = a2;
    v41 = statsCopy;
    v42 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = statsCopy;
    v12 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v12)
    {
      v13 = v12;
      v46 = *v49;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v49 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v48 + 1) + 8 * i);
          distanceCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)self distanceCalculator];
          place = [v15 place];
          mapItem = [place mapItem];
          location = [mapItem location];
          mapItem2 = [placeCopy mapItem];
          location2 = [mapItem2 location];
          [distanceCalculator distanceFromLocation:location toLocation:location2 error:0];
          v23 = v22;

          place2 = [v15 place];
          identifier = [place2 identifier];
          identifier2 = [placeCopy identifier];
          if (([identifier isEqual:identifier2] & 1) != 0 || (objc_msgSend(thresholdCopy, "doubleValue"), v23 <= v27))
          {
          }

          else
          {
            [distanceThresholdCopy doubleValue];
            v29 = v28;

            if (v23 < v29)
            {
              [v42 addObject:v15];
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v13);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(aSelector);
        v34 = [obj count];
        v35 = [v42 count];
        [thresholdCopy doubleValue];
        v37 = v36;
        [distanceThresholdCopy doubleValue];
        *buf = 138413570;
        v53 = v32;
        v54 = 2112;
        v55 = v33;
        v56 = 2048;
        v57 = v34;
        v58 = 2048;
        v59 = v35;
        v60 = 2048;
        v61 = v37;
        v62 = 2048;
        v63 = v38;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, %@, input placeStats count, %lu, filterPlaceStats count, %lu, minDistanceThreshold, %.2f, maxDistanceThreshold, %.2f", buf, 0x3Eu);
      }
    }

    statsCopy = v41;
  }

  else
  {
    v42 = statsCopy;
  }

  return v42;
}

- (id)placeCandidateStatsForType:(unint64_t)type placeStats:(id)stats dateInterval:(id)interval excludingPlaces:(id)places parameters:(id)parameters distanceThreshold:(double)threshold
{
  v169[12] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  intervalCopy = interval;
  placesCopy = places;
  parametersCopy = parameters;
  selfCopy = self;
  v134 = statsCopy;
  v16 = statsCopy;
  v17 = parametersCopy;
  [(RTLearnedPlaceTypeInferenceGenerator *)self _prepareMLFeaturesWithPlaceStats:v16];
  v18 = MEMORY[0x277CBEB98];
  v169[0] = @"sWeeklyVisitThresholdPlaceCandidates";
  v169[1] = @"sMinimumDataSetIntervalForPlaceCandidates";
  v169[2] = @"sHomeMinTopMedianDwellTimePlaceCandidates";
  v169[3] = @"sHomeTotalWeeklyVisitCountPlaceCandidates";
  v169[4] = @"sHomeMinWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates";
  v169[5] = @"sHomeMinDaysNonZeroDwellTimePlaceCandidates";
  v169[6] = @"sHomeMaxDaysNonZeroDwellTimePlaceCandidates";
  v169[7] = @"sWorkMinTopMedianDwellTimePlaceCandidates";
  v169[8] = @"sWorkTotalWeeklyVisitCountPlaceCandidates";
  v169[9] = @"sWorkMinWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates";
  v169[10] = @"sWorkMinDaysNonZeroDwellTimePlaceCandidates";
  v169[11] = @"sWorkMaxDaysNonZeroDwellTimePlaceCandidates";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:12];
  v20 = [v18 setWithArray:v19];

  v21 = MEMORY[0x277CBEB98];
  allKeys = [v17 allKeys];
  v23 = [v21 setWithArray:allKeys];

  v129 = v23;
  v130 = v20;
  if (([v23 isEqualToSet:v20] & 1) == 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v152 = "[RTLearnedPlaceTypeInferenceGenerator placeCandidateStatsForType:placeStats:dateInterval:excludingPlaces:parameters:distanceThreshold:]";
      v153 = 1024;
      LODWORD(v154) = 2502;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [parametersKeys isEqualToSet:expectedKeys] (in %s:%d)", buf, 0x12u);
    }
  }

  v25 = intervalCopy;
  [intervalCopy duration];
  v27 = v26;
  v28 = [v17 objectForKeyedSubscript:@"sMinimumDataSetIntervalForPlaceCandidates"];
  [v28 doubleValue];
  v30 = v29;

  v133 = v17;
  if (v27 >= v30)
  {
    v37 = [v17 objectForKeyedSubscript:@"sWeeklyVisitThresholdPlaceCandidates"];
    [v37 doubleValue];
    v38 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy filteredPlaceStatsByWeeklyVisitThreshold:v134 placeStats:?];
    v39 = [v38 count];

    if (v39)
    {
      if (type == 1)
      {
        v122 = @"home";
        v40 = @"sHomeMinTopMedianDwellTimePlaceCandidates";
        v41 = @"sHomeTotalWeeklyVisitCountPlaceCandidates";
        v42 = @"sHomeMinWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates";
        v43 = @"sHomeMaxDaysNonZeroDwellTimePlaceCandidates";
        v44 = @"sHomeMinDaysNonZeroDwellTimePlaceCandidates";
        goto LABEL_22;
      }

      if (type == 2)
      {
        v122 = @"work";
        v40 = @"sWorkMinTopMedianDwellTimePlaceCandidates";
        v41 = @"sWorkTotalWeeklyVisitCountPlaceCandidates";
        v42 = @"sWorkMinWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates";
        v43 = @"sWorkMaxDaysNonZeroDwellTimePlaceCandidates";
        v44 = @"sWorkMinDaysNonZeroDwellTimePlaceCandidates";
LABEL_22:
        v46 = [v133 objectForKeyedSubscript:v44];
        [v46 doubleValue];
        v48 = v47;

        v49 = [v133 objectForKeyedSubscript:v43];
        [v49 doubleValue];
        v51 = v50;

        v52 = [v133 objectForKeyedSubscript:v42];
        [v52 doubleValue];
        v54 = v53;

        v55 = [v133 objectForKeyedSubscript:v41];
        [v55 doubleValue];
        v57 = v56;

        v58 = [v133 objectForKeyedSubscript:v40];
        [v58 doubleValue];
        v60 = v59;

        v61 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy placeCandidatesFromDailyPatternsForType:type placeStats:v134 parameters:v133];
        v31 = placesCopy;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v62 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = [v61 count];
            *buf = 138412546;
            v152 = v122;
            v153 = 2048;
            v154 = v63;
            _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "number of candidate places from daily patterns for %@: %lu", buf, 0x16u);
          }
        }

        v64 = [(RTLearnedPlaceTypeInferenceGenerator *)selfCopy placeCandidatesFromTopMedianDwellTimeForType:type placeStats:v134 parameters:v133];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v65 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = [v64 count];
            *buf = 138412546;
            v152 = v122;
            v153 = 2048;
            v154 = v66;
            _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "number of candidate places from top median dwell time for %@: %lu", buf, 0x16u);
          }
        }

        v123 = v61;
        v67 = [MEMORY[0x277CBEB58] setWithArray:v61];
        v121 = v64;
        v119 = [MEMORY[0x277CBEB98] setWithArray:v64];
        [v67 intersectSet:?];
        v68 = MEMORY[0x277CBEB18];
        v120 = v67;
        allObjects = [v67 allObjects];
        v70 = [v68 arrayWithArray:allObjects];

        v71 = [objc_opt_class() sortPlaceStats:v70];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v72 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v73 = objc_opt_class();
            v74 = NSStringFromClass(v73);
            v75 = NSStringFromSelector(a2);
            *buf = 138414339;
            v152 = v74;
            v153 = 2112;
            v154 = v75;
            v155 = 2112;
            v156 = v122;
            v157 = 2048;
            v158 = v48;
            v159 = 2048;
            v160 = v51;
            v161 = 2048;
            v162 = v54;
            v163 = 2048;
            v164 = v57;
            v165 = 2048;
            v166 = v60;
            v167 = 2117;
            v168 = v71;
            _os_log_impl(&dword_2304B3000, v72, OS_LOG_TYPE_INFO, "%@, %@, candidate %@ places from dwell time and daily patterns before pruning requiring minDaysNonZeroDwellTimePlaceCandidates, %.2f, maxDaysNonZeroDwellTimePlaceCandidates, %.2f, minWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates, %.2f, totalWeeklyVisitCountPlaceCandidates, %.2f, minTopMedianDwellTimePlaceCandidates, %.2f: %{sensitive}@", buf, 0x5Cu);
          }
        }

        array = [MEMORY[0x277CBEB18] array];
        v139 = objc_opt_new();
        if (![v71 count])
        {
LABEL_58:
          v110 = MEMORY[0x277CCAC30];
          v143[0] = MEMORY[0x277D85DD0];
          v143[1] = 3221225472;
          v143[2] = __136__RTLearnedPlaceTypeInferenceGenerator_placeCandidateStatsForType_placeStats_dateInterval_excludingPlaces_parameters_distanceThreshold___block_invoke;
          v143[3] = &unk_2788D2C30;
          v144 = array;
          v111 = array;
          v112 = [v110 predicateWithBlock:v143];
          v113 = [v134 filteredArrayUsingPredicate:v112];

          v36 = [objc_opt_class() sortPlaceStats:v113];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v114 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
            {
              v115 = objc_opt_class();
              v116 = NSStringFromClass(v115);
              v117 = NSStringFromSelector(a2);
              *buf = 138413059;
              v152 = v116;
              v153 = 2112;
              v154 = v117;
              v155 = 2112;
              v156 = v122;
              v157 = 2117;
              v158 = v36;
              _os_log_impl(&dword_2304B3000, v114, OS_LOG_TYPE_INFO, "%@, %@, candidate %@ places from dwell time and daily patterns after pruning: %{sensitive}@", buf, 0x2Au);

              v31 = placesCopy;
            }
          }

          v25 = intervalCopy;
          v33 = v130;
          goto LABEL_63;
        }

        v76 = 0;
        v135 = v71;
        while (1)
        {
          v138 = v76;
          v142 = [v71 objectAtIndexedSubscript:v76];
          if ([v31 count])
          {
            v77 = 0;
            do
            {
              v78 = [v31 objectAtIndexedSubscript:v77];
              place = [v142 place];
              identifier = [place identifier];
              identifier2 = [v78 identifier];
              v82 = [identifier isEqual:identifier2];

              if (v82)
              {
                break;
              }

              ++v77;
            }

            while ([v31 count] > v77);
          }

          else
          {
            LOBYTE(v82) = 0;
          }

          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v83 = array;
          v84 = [v83 countByEnumeratingWithState:&v146 objects:v150 count:16];
          if (v84)
          {
            break;
          }

LABEL_54:

          v31 = placesCopy;
          v71 = v135;
          if ((v82 & 1) == 0)
          {
            obja = v83;
            v126 = [RTLearnedPlace alloc];
            place2 = [v142 place];
            identifier3 = [place2 identifier];
            place3 = [v142 place];
            mapItem = [place3 mapItem];
            place4 = [v142 place];
            customLabel = [place4 customLabel];
            place5 = [v142 place];
            creationDate = [place5 creationDate];
            place6 = [v142 place];
            expirationDate = [place6 expirationDate];
            v109 = [(RTLearnedPlace *)v126 initWithIdentifier:identifier3 type:0 typeSource:0 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

            [obja addObject:v109];
          }

LABEL_57:

          v76 = v138 + 1;
          if ([v71 count] <= (v138 + 1))
          {
            goto LABEL_58;
          }
        }

        v85 = v84;
        v86 = *v147;
        obj = v83;
LABEL_44:
        v87 = 0;
        while (1)
        {
          if (*v147 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v88 = *(*(&v146 + 1) + 8 * v87);
          mapItem2 = [v88 mapItem];
          location = [mapItem2 location];
          if (!location)
          {
            goto LABEL_51;
          }

          v91 = location;
          place7 = [v142 place];
          mapItem3 = [place7 mapItem];
          location2 = [mapItem3 location];

          if (location2)
          {
            break;
          }

LABEL_52:
          if (v85 == ++v87)
          {
            v83 = obj;
            v85 = [obj countByEnumeratingWithState:&v146 objects:v150 count:16];
            if (v85)
            {
              goto LABEL_44;
            }

            goto LABEL_54;
          }
        }

        place8 = [v142 place];
        mapItem4 = [place8 mapItem];
        location3 = [mapItem4 location];
        mapItem5 = [v88 mapItem];
        location4 = [mapItem5 location];
        v145 = 0;
        [v139 distanceFromLocation:location3 toLocation:location4 error:&v145];
        v101 = v100;
        mapItem2 = v145;

        if (!mapItem2 && v101 <= threshold)
        {
          v31 = placesCopy;
          v71 = v135;

          goto LABEL_57;
        }

LABEL_51:

        goto LABEL_52;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      v31 = placesCopy;
      v33 = v20;
      v123 = v45;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "cannot generate place candidates. at least 1 place is required", buf, 2u);
      }

      v36 = 0;
      v25 = intervalCopy;
      goto LABEL_63;
    }

    v36 = 0;
    v25 = intervalCopy;
    v31 = placesCopy;
    goto LABEL_20;
  }

  v31 = placesCopy;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v36 = 0;
LABEL_20:
    v33 = v20;
    goto LABEL_64;
  }

  v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  v33 = v20;
  v123 = v32;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v34 = [v133 objectForKeyedSubscript:@"sMinimumDataSetIntervalForPlaceCandidates"];
    [v34 doubleValue];
    *buf = 134218240;
    v152 = *&v27;
    v153 = 2048;
    v154 = v35;
    _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "cannot generate place candidates. data set interval, %.2f, does not exceed required minimum interval, %.2f", buf, 0x16u);
  }

  v36 = 0;
LABEL_63:

LABEL_64:

  return v36;
}

uint64_t __136__RTLearnedPlaceTypeInferenceGenerator_placeCandidateStatsForType_placeStats_dateInterval_excludingPlaces_parameters_distanceThreshold___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mlFeatures];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = *v27;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v3 place];
        v10 = [v9 identifier];
        v11 = [v8 identifier];
        if ([v10 isEqual:v11])
        {
          v12 = [v4 objectForKeyedSubscript:@"mean_daily_longest_charging_duration_bucketed"];
          [v12 doubleValue];
          if (v13 > 1.0)
          {
            goto LABEL_16;
          }

          v14 = [v4 objectForKeyedSubscript:@"mean_daily_longest_screen_lock_duration_bucketed"];
          [v14 doubleValue];
          if (v15 > 1.0)
          {

LABEL_16:
LABEL_17:
            v5 = 1;
            goto LABEL_18;
          }

          [v4 objectForKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"];
          v25 = v9;
          v16 = v5;
          v17 = v4;
          v18 = v6;
          v20 = v19 = v3;
          [v20 doubleValue];
          v22 = v21;

          v3 = v19;
          v6 = v18;
          v4 = v17;
          v5 = v16;

          if (v22 > 1.0)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v5;
}

+ (id)getCandidateGenerationParameters
{
  v5[12] = *MEMORY[0x277D85DE8];
  v4[0] = @"sWeeklyVisitThresholdPlaceCandidates";
  v4[1] = @"sMinimumDataSetIntervalForPlaceCandidates";
  v5[0] = &unk_2845A2368;
  v5[1] = &unk_2845A2378;
  v4[2] = @"sHomeMinTopMedianDwellTimePlaceCandidates";
  v4[3] = @"sHomeTotalWeeklyVisitCountPlaceCandidates";
  v5[2] = &unk_2845A2388;
  v5[3] = &unk_2845A06C8;
  v4[4] = @"sHomeMinWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates";
  v4[5] = @"sHomeMinDaysNonZeroDwellTimePlaceCandidates";
  v5[4] = &unk_2845A2398;
  v5[5] = &unk_2845A06C8;
  v4[6] = @"sHomeMaxDaysNonZeroDwellTimePlaceCandidates";
  v4[7] = @"sWorkMinTopMedianDwellTimePlaceCandidates";
  v5[6] = &unk_2845A06E0;
  v5[7] = &unk_2845A23A8;
  v4[8] = @"sWorkTotalWeeklyVisitCountPlaceCandidates";
  v4[9] = @"sWorkMinWeeklyAggregateDwellTimeBetweenDateRangeAveragePlaceCandidates";
  v5[8] = &unk_2845A06F8;
  v5[9] = &unk_2845A2398;
  v4[10] = @"sWorkMinDaysNonZeroDwellTimePlaceCandidates";
  v4[11] = @"sWorkMaxDaysNonZeroDwellTimePlaceCandidates";
  v5[10] = &unk_2845A06F8;
  v5[11] = &unk_2845A06E0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:12];

  return v2;
}

- (void)updateTopCandidates:(id)candidates withPlaceStat:(id)stat predictedProbability:(id)probability placeType:(unint64_t)type
{
  candidatesCopy = candidates;
  probabilityCopy = probability;
  statCopy = stat;
  v9 = [RTLearnedPlace alloc];
  place = [statCopy place];
  identifier = [place identifier];
  place2 = [statCopy place];
  mapItem = [place2 mapItem];
  place3 = [statCopy place];
  customLabel = [place3 customLabel];
  place4 = [statCopy place];
  creationDate = [place4 creationDate];
  place5 = [statCopy place];

  expirationDate = [place5 expirationDate];
  v19 = [(RTLearnedPlace *)v9 initWithIdentifier:identifier type:type typeSource:1 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

  v20 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:probabilityCopy secondObject:v19];
  if ([candidatesCopy count] < 5 || (objc_msgSend(probabilityCopy, "doubleValue"), v22 = v21, objc_msgSend(candidatesCopy, "lastObject"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "firstObject"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "doubleValue"), v26 = v25, v24, v23, v22 > v26))
  {
    [candidatesCopy insertObject:v20 atIndex:{objc_msgSend(candidatesCopy, "indexOfObject:inSortedRange:options:usingComparator:", v20, 0, objc_msgSend(candidatesCopy, "count"), 1024, &__block_literal_global_456)}];
    if ([candidatesCopy count] >= 6)
    {
      [candidatesCopy removeLastObject];
    }
  }
}

uint64_t __105__RTLearnedPlaceTypeInferenceGenerator_updateTopCandidates_withPlaceStat_predictedProbability_placeType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 firstObject];
  v6 = [v4 firstObject];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_prepareMLFeaturesWithPlaceStats:(id)stats
{
  v103 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if ([(RTLearnedPlaceTypeInferenceGenerator *)self supportsModel])
  {
    if (_os_feature_enabled_impl())
    {
      placeStatsUUIDStringsToMLFeaturesMap = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStatsUUIDStringsToMLFeaturesMap];
      v7 = [placeStatsUUIDStringsToMLFeaturesMap count];

      if (!v7)
      {
        date = [MEMORY[0x277CBEAA8] date];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = NSStringFromSelector(a2);
            *buf = 138412546;
            v94 = v18;
            v95 = 2112;
            v96 = v19;
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "--------->%@, %@, started, <---------", buf, 0x16u);
          }
        }

        aSelector = a2;
        v76 = date;
        v82 = objc_opt_new();
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v75 = statsCopy;
        v20 = statsCopy;
        v21 = [v20 countByEnumeratingWithState:&v89 objects:v102 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v90;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v90 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v89 + 1) + 8 * i);
              v26 = objc_autoreleasePoolPush();
              visitIntervals = [v25 visitIntervals];
              v28 = [visitIntervals count];

              if (v28)
              {
                visitIntervals2 = [v25 visitIntervals];
                place = [v25 place];
                identifier = [place identifier];
                uUIDString = [identifier UUIDString];
                [v82 setObject:visitIntervals2 forKeyedSubscript:uUIDString];
              }

              objc_autoreleasePoolPop(v26);
            }

            v22 = [v20 countByEnumeratingWithState:&v89 objects:v102 count:16];
          }

          while (v22);
        }

        v33 = v82;
        if ([v82 count])
        {
          date2 = [MEMORY[0x277CBEAA8] date];
          v35 = [date2 dateByAddingTimeInterval:-3628800.0];
          biomeManager = [(RTLearnedPlaceTypeInferenceGenerator *)self biomeManager];
          v73 = v35;
          v74 = date2;
          v37 = [RTPlaceDataMetrics calculateMLFeaturesUsingBiomeManager:biomeManager intervalDictionary:v82 startDate:v35 endDate:date2 createBucketedFeatures:1];
          [(RTLearnedPlaceTypeInferenceGenerator *)self setPlaceStatsUUIDStringsToMLFeaturesMap:v37];

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          obj = v20;
          v83 = [obj countByEnumeratingWithState:&v85 objects:v101 count:16];
          if (v83)
          {
            v84 = 0;
            v81 = *v86;
            do
            {
              for (j = 0; j != v83; ++j)
              {
                if (*v86 != v81)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v85 + 1) + 8 * j);
                v40 = objc_autoreleasePoolPush();
                placeStatsUUIDStringsToMLFeaturesMap2 = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStatsUUIDStringsToMLFeaturesMap];
                place2 = [v39 place];
                identifier2 = [place2 identifier];
                [identifier2 UUIDString];
                v45 = v44 = self;
                v46 = [placeStatsUUIDStringsToMLFeaturesMap2 objectForKeyedSubscript:v45];

                if (v46)
                {
                  v47 = v44;
                  placeStatsUUIDStringsToMLFeaturesMap3 = [(RTLearnedPlaceTypeInferenceGenerator *)v44 placeStatsUUIDStringsToMLFeaturesMap];
                  place3 = [v39 place];
                  identifier3 = [place3 identifier];
                  uUIDString2 = [identifier3 UUIDString];
                  v52 = [placeStatsUUIDStringsToMLFeaturesMap3 objectForKeyedSubscript:uUIDString2];
                  [v39 setMlFeatures:v52];

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                  {
                    v53 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                    {
                      v55 = objc_opt_class();
                      v56 = NSStringFromClass(v55);
                      v57 = NSStringFromSelector(aSelector);
                      placeStatsUUIDStringsToMLFeaturesMap4 = [(RTLearnedPlaceTypeInferenceGenerator *)v47 placeStatsUUIDStringsToMLFeaturesMap];
                      place4 = [v39 place];
                      identifier4 = [place4 identifier];
                      uUIDString3 = [identifier4 UUIDString];
                      v60 = [placeStatsUUIDStringsToMLFeaturesMap4 objectForKeyedSubscript:uUIDString3];
                      *buf = 138413059;
                      v94 = v56;
                      v95 = 2112;
                      v96 = v57;
                      v97 = 2117;
                      v98 = v39;
                      v99 = 2112;
                      v100 = v60;
                      _os_log_debug_impl(&dword_2304B3000, v53, OS_LOG_TYPE_DEBUG, "%@, %@, setting mlFeatures for placeStat, %{sensitive}@, ML Features, %@", buf, 0x2Au);
                    }
                  }

                  ++v84;
                  self = v47;
                }

                else
                {
                  v54 = objc_opt_new();
                  [v39 setMlFeatures:v54];

                  self = v44;
                }

                objc_autoreleasePoolPop(v40);
              }

              v83 = [obj countByEnumeratingWithState:&v85 objects:v101 count:16];
            }

            while (v83);
          }

          else
          {
            v84 = 0;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v61 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v62 = objc_opt_class();
              v63 = NSStringFromClass(v62);
              v64 = NSStringFromSelector(aSelector);
              placeStats = [(RTLearnedPlaceTypeInferenceGenerator *)self placeStats];
              v66 = [placeStats count];
              *buf = 138413058;
              v94 = v63;
              v95 = 2112;
              v96 = v64;
              v97 = 2048;
              v98 = v84;
              v99 = 2048;
              v100 = v66;
              _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%@, %@, number of placeStats set with ML Features, %lu, total placeStats count, %lu", buf, 0x2Au);
            }
          }

          v33 = v82;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v67 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v68 = objc_opt_class();
              v69 = NSStringFromClass(v68);
              v70 = NSStringFromSelector(aSelector);
              date3 = [MEMORY[0x277CBEAA8] date];
              [date3 timeIntervalSinceDate:v76];
              *buf = 138412802;
              v94 = v69;
              v95 = 2112;
              v96 = v70;
              v97 = 2048;
              v98 = v72;
              _os_log_impl(&dword_2304B3000, v67, OS_LOG_TYPE_INFO, "--------->%@, %@, finished, latency, %.2f<---------", buf, 0x20u);

              v33 = v82;
            }
          }
        }

        statsCopy = v75;
        v8 = v76;
        goto LABEL_54;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = NSStringFromSelector(a2);
          *buf = 138412546;
          v94 = v10;
          v95 = 2112;
          v96 = v11;
          v12 = "%@, %@, mlFeatures are already set";
LABEL_13:
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, v12, buf, 0x16u);

          goto LABEL_54;
        }

        goto LABEL_54;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v10 = NSStringFromClass(v14);
        v11 = NSStringFromSelector(a2);
        *buf = 138412546;
        v94 = v10;
        v95 = 2112;
        v96 = v11;
        v12 = "%@, %@, mlFeature are not set because PlaceTypeClassificationModel feature flag is not enabled";
        goto LABEL_13;
      }

      goto LABEL_54;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v10 = NSStringFromClass(v13);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v94 = v10;
      v95 = 2112;
      v96 = v11;
      v12 = "%@, %@, mlFeature are not set because device is not supported";
      goto LABEL_13;
    }

LABEL_54:
  }
}

- (void)_storeMetricsForNonFallbackPlacesWithHome:(id)home homeSource:(unint64_t)source work:(id)work workSource:(unint64_t)workSource
{
  homeCopy = home;
  workCopy = work;
  array = [MEMORY[0x277CBEB18] array];
  if (homeCopy && source != 1)
  {
    [array addObject:homeCopy];
  }

  if (workCopy && workSource != 1)
  {
    [array addObject:workCopy];
  }

  placeTypeClassifierMetricsCalculator = [(RTLearnedPlaceTypeInferenceGenerator *)self placeTypeClassifierMetricsCalculator];
  [placeTypeClassifierMetricsCalculator storeMetricsData:array source:20];
}

@end