@interface RTVisitPipelineModuleSmoother
+ (BOOL)hasRawLocationsNeededToComputeSmoothedLocationAtDate:(id)date workingVisitExit:(id)exit rawLocations:(id)locations kernelWidth:(double)width smallestSignificantWeightExponent:(double)exponent;
+ (double)getMaxDeltaForSmoothedLocationDate:(id)date rawLocations:(id)locations kernelWidth:(double)width;
+ (double)getTimeDeltaSignificanceThresholdForSmoothedLocationDate:(id)date rawLocations:(id)locations kernelWidth:(double)width smallestSignificantaWeightExponent:(double)exponent;
+ (id)computeSmoothedPointForDate:(id)date rawLocations:(id)locations kernelWidth:(double)width smallestSignificantWeightExponent:(double)exponent;
+ (id)createNewOutputClusterForSmoothedPoints:(id)points workingVisit:(id)visit exit:(id)exit;
+ (id)getEndOfGapAtDate:(id)date rawLocations:(id)locations maxGapWithinVisit:(double)visit;
+ (id)getNextDateToProcessForDate:(id)date firstDateToProcessForVisit:(id)visit timeIntervalBetweenSmoothedPoints:(double)points;
+ (unint64_t)findIndexOfLocationInArray:(id)array inRange:(_NSRange)range afterDate:(id)date;
+ (void)disposeObsoleteRawLocations:(id)locations currentDateToProcess:(id)process halfTimeProcessWindow:(double)window;
- (RTVisitPipelineModuleSmoother)initWithTimeIntervalBetweenSmoothedPoints:(double)points kernelWidth:(double)width smallestSignificantWeightExponent:(double)exponent maxGapWithinVisit:(double)visit;
- (id)computeSmoothedPointForDate:(id)date;
- (id)createNewOutputClusterForSmoothedPoints:(id)points exit:(id)exit;
- (id)getEndOfGapAtDate:(id)date;
- (id)getNextDateToProcessForDate:(id)date;
- (id)process:(id)process;
- (id)processCachedPoints;
- (void)disposeObsoleteRawLocationsForCurrentDateToProcess:(id)process halfTimeProcessWindow:(double)window;
- (void)resetState;
- (void)updateStateWithNewCluster:(id)cluster;
@end

@implementation RTVisitPipelineModuleSmoother

- (RTVisitPipelineModuleSmoother)initWithTimeIntervalBetweenSmoothedPoints:(double)points kernelWidth:(double)width smallestSignificantWeightExponent:(double)exponent maxGapWithinVisit:(double)visit
{
  selfCopy = self;
  if (points <= 0.0)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v17 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: timeIntervalBetweenSmoothedPoints > 0";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_9;
  }

  if (width <= 0.0)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: kernelWidth > 0";
    goto LABEL_12;
  }

  v21.receiver = self;
  v21.super_class = RTVisitPipelineModuleSmoother;
  v11 = [(RTVisitPipelineModuleSmoother *)&v21 init];
  v12 = v11;
  if (v11)
  {
    workingVisit = v11->_workingVisit;
    v11->_workingVisit = 0;

    previousProcessedDate = v12->_previousProcessedDate;
    v12->_previousProcessedDate = 0;

    nextDateToProcess = v12->_nextDateToProcess;
    v12->_nextDateToProcess = 0;

    firstDateToProcessForVisit = v12->_firstDateToProcessForVisit;
    v12->_firstDateToProcessForVisit = 0;

    v12->_timeIntervalBetweenSmoothedPoints = points;
    v12->_kernelWidth = width;
    v12->_smallestSignificantWeightExponent = exponent;
    v12->_maxGapInVisit = visit;
  }

  selfCopy = v12;
  v17 = selfCopy;
LABEL_10:

  return v17;
}

+ (unint64_t)findIndexOfLocationInArray:(id)array inRange:(_NSRange)range afterDate:(id)date
{
  length = range.length;
  location = range.location;
  v8 = MEMORY[0x277D01160];
  dateCopy = date;
  arrayCopy = array;
  v11 = [[v8 alloc] initWithLatitude:dateCopy longitude:0.0 horizontalUncertainty:0.0 date:0.0];

  v12 = [arrayCopy indexOfObject:v11 inSortedRange:location options:length usingComparator:{1024, &__block_literal_global_57}];
  return v12;
}

uint64_t __78__RTVisitPipelineModuleSmoother_findIndexOfLocationInArray_inRange_afterDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

+ (double)getMaxDeltaForSmoothedLocationDate:(id)date rawLocations:(id)locations kernelWidth:(double)width
{
  dateCopy = date;
  locationsCopy = locations;
  v9 = [objc_opt_class() findIndexOfLocationInArray:locationsCopy inRange:0 afterDate:{objc_msgSend(locationsCopy, "count"), dateCopy}];
  if (v9 >= [locationsCopy count])
  {
    --v9;
  }

  else if (v9)
  {
    v10 = [locationsCopy objectAtIndexedSubscript:v9];
    date = [v10 date];
    [dateCopy timeIntervalSinceDate:date];
    v13 = fabs(v12);
    v14 = [locationsCopy objectAtIndexedSubscript:v9 - 1];
    date2 = [v14 date];
    [dateCopy timeIntervalSinceDate:date2];
    v17 = fabs(v16);

    if (v13 >= v17)
    {
      --v9;
    }
  }

  v18 = objc_opt_class();
  v19 = [locationsCopy objectAtIndexedSubscript:v9];
  date3 = [v19 date];
  [v18 getWeightExponentForSmoothedLocationDate:dateCopy rawLocationDate:date3 kernelWidth:width maxDelta:0.0];
  v22 = v21;

  return v22;
}

+ (double)getTimeDeltaSignificanceThresholdForSmoothedLocationDate:(id)date rawLocations:(id)locations kernelWidth:(double)width smallestSignificantaWeightExponent:(double)exponent
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  locationsCopy = locations;
  if (exponent > 0.0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "+[RTVisitPipelineModuleSmoother getTimeDeltaSignificanceThresholdForSmoothedLocationDate:rawLocations:kernelWidth:smallestSignificantaWeightExponent:]";
      v17 = 1024;
      v18 = 98;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "smallestSignificantWeightExponent must be non-positive (in %s:%d)", &v15, 0x12u);
    }
  }

  [objc_opt_class() getMaxDeltaForSmoothedLocationDate:dateCopy rawLocations:locationsCopy kernelWidth:width];
  v13 = v12;

  return sqrt((v13 + exponent) * -2.0) * width;
}

- (id)computeSmoothedPointForDate:(id)date
{
  dateCopy = date;
  v5 = [objc_opt_class() computeSmoothedPointForDate:dateCopy rawLocations:self->_rawLocations kernelWidth:self->_kernelWidth smallestSignificantWeightExponent:self->_smallestSignificantWeightExponent];

  return v5;
}

+ (id)computeSmoothedPointForDate:(id)date rawLocations:(id)locations kernelWidth:(double)width smallestSignificantWeightExponent:(double)exponent
{
  dateCopy = date;
  locationsCopy = locations;
  if (![locationsCopy count])
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v53 = 0;
    v40 = "Invalid parameter not satisfying: rawLocations.count > 0";
    v41 = &v53;
LABEL_30:
    _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, v40, v41, 2u);
    goto LABEL_22;
  }

  [objc_opt_class() getMaxDeltaForSmoothedLocationDate:dateCopy rawLocations:locationsCopy kernelWidth:width];
  v12 = v11;
  [objc_opt_class() getTimeDeltaSignificanceThresholdForSmoothedLocationDate:dateCopy rawLocations:locationsCopy kernelWidth:width smallestSignificantaWeightExponent:exponent];
  v14 = v13;
  v15 = objc_opt_class();
  v16 = [locationsCopy count];
  v17 = [dateCopy dateByAddingTimeInterval:v14];
  v18 = [v15 findIndexOfLocationInArray:locationsCopy inRange:0 afterDate:{v16, v17}];

  v19 = objc_opt_class();
  v20 = [locationsCopy count];
  v21 = [dateCopy dateByAddingTimeInterval:-v14];
  v22 = [v19 findIndexOfLocationInArray:locationsCopy inRange:0 afterDate:{v20, v21}];

  if (v22 == v18)
  {
    if (v18 + 1 >= [locationsCopy count])
    {
      v23 = v18;
    }

    else
    {
      v23 = v18 + 1;
    }

    if (v18)
    {
      v22 = v18 - 1;
    }

    else
    {
      v22 = 0;
    }

    v18 = v23;
  }

  if (v22 >= v18)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v52 = 0;
    v40 = "Invalid parameter not satisfying: significantRawLocationsLowerBoundIncludedIndex < significantRawLocationsUpperBoundExcludedIndex";
    v41 = &v52;
    goto LABEL_30;
  }

  v24 = 0.0;
  v47 = 0uLL;
  v25 = 0.0;
  do
  {
    v26 = objc_opt_class();
    v27 = [locationsCopy objectAtIndexedSubscript:v22];
    date = [v27 date];
    [v26 getWeightExponentForSmoothedLocationDate:dateCopy rawLocationDate:date kernelWidth:width maxDelta:v12];
    v30 = v29;

    if (v30 > exponent)
    {
      v31 = pow(2.71828183, v30);
      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        *buf = 0;
        v40 = "Invalid parameter not satisfying: !isinf(weight) && !isnan(weight)";
        v41 = buf;
        goto LABEL_30;
      }

      v32 = [locationsCopy objectAtIndexedSubscript:v22];
      [v32 latitude];
      v34 = v33;

      v35 = [locationsCopy objectAtIndexedSubscript:v22];
      [v35 longitude];
      v37 = v36 * 3.14159265 / 180.0;
      v55.c[0] = v37 * 0.0;
      v55.c[1] = v37 + 0.0;
      v25 = v25 + v31;
      v24 = v24 + v31 * v34;
      v38 = cexp(v55);
      v47.c[0] = v47.c[0] + v31 * v38.c[0];
      v47.c[1] = v47.c[1] + v31 * v38.c[1];
    }

    ++v22;
  }

  while (v18 != v22);
  v44 = carg(v47);
  if (COERCE_UNSIGNED_INT64(fabs(v24 / v25)) >= 0x7FF0000000000000)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v50 = 0;
    v40 = "Invalid parameter not satisfying: !isinf(meanLat) && !isnan(meanLat)";
    v41 = &v50;
    goto LABEL_30;
  }

  v45 = v44 * 180.0 / 3.14159265;
  if (COERCE__INT64(fabs(v45)) >= 0x7FF0000000000000)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v49 = 0;
    v40 = "Invalid parameter not satisfying: !isinf(meanLong) && !isnan(meanLong)";
    v41 = &v49;
    goto LABEL_30;
  }

  RTCommonIsCoordinateValid();
  if (v46 != 0.0)
  {
    v42 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:dateCopy longitude:v24 / v25 horizontalUncertainty:v45 date:0.0];
    goto LABEL_23;
  }

  v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v48 = 0;
    v40 = "Invalid parameter not satisfying: RTCommonIsCoordinateValid(meanLat, meanLong)";
    v41 = &v48;
    goto LABEL_30;
  }

LABEL_22:

  v42 = 0;
LABEL_23:

  return v42;
}

+ (id)getNextDateToProcessForDate:(id)date firstDateToProcessForVisit:(id)visit timeIntervalBetweenSmoothedPoints:(double)points
{
  visitCopy = visit;
  v8 = visitCopy;
  if (date)
  {
    v9 = [date dateByAddingTimeInterval:points];
  }

  else
  {
    v9 = visitCopy;
  }

  v10 = v9;

  return v10;
}

- (id)getNextDateToProcessForDate:(id)date
{
  dateCopy = date;
  v5 = [objc_opt_class() getNextDateToProcessForDate:dateCopy firstDateToProcessForVisit:self->_firstDateToProcessForVisit timeIntervalBetweenSmoothedPoints:self->_timeIntervalBetweenSmoothedPoints];

  return v5;
}

+ (void)disposeObsoleteRawLocations:(id)locations currentDateToProcess:(id)process halfTimeProcessWindow:(double)window
{
  locationsCopy = locations;
  processCopy = process;
  v8 = objc_opt_class();
  v9 = [locationsCopy count];
  v10 = [processCopy dateByAddingTimeInterval:-window];

  v11 = [v8 findIndexOfLocationInArray:locationsCopy inRange:0 afterDate:{v9, v10}];
  if (v11)
  {
    [locationsCopy removeObjectsInRange:{0, v11}];
  }
}

- (void)disposeObsoleteRawLocationsForCurrentDateToProcess:(id)process halfTimeProcessWindow:(double)window
{
  processCopy = process;
  [objc_opt_class() disposeObsoleteRawLocations:self->_rawLocations currentDateToProcess:processCopy halfTimeProcessWindow:window];
}

- (id)createNewOutputClusterForSmoothedPoints:(id)points exit:(id)exit
{
  exitCopy = exit;
  pointsCopy = points;
  v8 = [objc_opt_class() createNewOutputClusterForSmoothedPoints:pointsCopy workingVisit:self->_workingVisit exit:exitCopy];

  [pointsCopy removeAllObjects];

  return v8;
}

+ (id)createNewOutputClusterForSmoothedPoints:(id)points workingVisit:(id)visit exit:(id)exit
{
  v7 = MEMORY[0x277D01428];
  exitCopy = exit;
  visitCopy = visit;
  pointsCopy = points;
  v11 = [v7 alloc];
  v12 = [MEMORY[0x277CBEAA8] now];
  if (exitCopy)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  location = [visitCopy location];
  entry = [visitCopy entry];

  v16 = [v11 initWithDate:v12 type:v13 location:location entry:entry exit:exitCopy dataPointCount:objc_msgSend(pointsCopy confidence:"count") placeInference:{1.0, 0}];
  v17 = [RTVisitCluster alloc];
  v18 = [[RTVisitLocationPoints alloc] initWithLocations:pointsCopy];

  v19 = [(RTVisitCluster *)v17 initWithPoints:v18 visit:v16];

  return v19;
}

+ (id)getEndOfGapAtDate:(id)date rawLocations:(id)locations maxGapWithinVisit:(double)visit
{
  dateCopy = date;
  locationsCopy = locations;
  v9 = [objc_opt_class() findIndexOfLocationInArray:locationsCopy inRange:0 afterDate:{objc_msgSend(locationsCopy, "count"), dateCopy}];
  if (!v9)
  {
    if ([locationsCopy count])
    {
      v14 = [locationsCopy objectAtIndexedSubscript:0];
      date = [v14 date];
      [date timeIntervalSinceDate:dateCopy];
      v17 = v16;

      if (v17 > visit)
      {
        v18 = locationsCopy;
        v19 = 0;
LABEL_11:
        v12 = [v18 objectAtIndexedSubscript:v19];
        date2 = [v12 date];
        goto LABEL_12;
      }
    }
  }

  v10 = [locationsCopy count];
  date2 = 0;
  if (v9 && v9 < v10)
  {
    v12 = [locationsCopy objectAtIndexedSubscript:v9];
    date3 = [v12 date];
    if ([date3 isEqualToDate:dateCopy])
    {

      date2 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v20 = [locationsCopy objectAtIndexedSubscript:v9];
    date4 = [v20 date];
    v22 = [locationsCopy objectAtIndexedSubscript:v9 - 1];
    date5 = [v22 date];
    [date4 timeIntervalSinceDate:date5];
    v25 = v24;

    if (v25 > visit)
    {
      v18 = locationsCopy;
      v19 = v9;
      goto LABEL_11;
    }

    date2 = 0;
  }

LABEL_13:

  return date2;
}

- (id)getEndOfGapAtDate:(id)date
{
  dateCopy = date;
  v5 = [objc_opt_class() getEndOfGapAtDate:dateCopy rawLocations:self->_rawLocations maxGapWithinVisit:self->_maxGapInVisit];

  return v5;
}

+ (BOOL)hasRawLocationsNeededToComputeSmoothedLocationAtDate:(id)date workingVisitExit:(id)exit rawLocations:(id)locations kernelWidth:(double)width smallestSignificantWeightExponent:(double)exponent
{
  locationsCopy = locations;
  dateCopy = date;
  lastObject = dateCopy;
  if (exit)
  {
    v14 = [dateCopy earlierDate:exit];
    v15 = [v14 isEqualToDate:lastObject];
  }

  else
  {
    [objc_opt_class() getTimeDeltaSignificanceThresholdForSmoothedLocationDate:dateCopy rawLocations:locationsCopy kernelWidth:width smallestSignificantaWeightExponent:exponent];
    v14 = [lastObject dateByAddingTimeInterval:?];

    lastObject = [locationsCopy lastObject];
    date = [lastObject date];
    v17 = [v14 earlierDate:date];
    v15 = [v17 isEqualToDate:v14];
  }

  return v15;
}

- (id)processCachedPoints
{
  v38 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "Begin processCachedPoints", buf, 2u);
    }
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(RTVisitPipelineModuleSmoother *)self getNextDateToProcessForDate:self->_previousProcessedDate];
  while (1)
  {
    v6 = objc_opt_class();
    exit = [(RTVisit *)self->_workingVisit exit];
    LODWORD(v6) = [v6 hasRawLocationsNeededToComputeSmoothedLocationAtDate:v5 workingVisitExit:exit rawLocations:self->_rawLocations kernelWidth:self->_kernelWidth smallestSignificantWeightExponent:self->_smallestSignificantWeightExponent];

    if (!v6)
    {
      break;
    }

    v8 = [(RTVisitPipelineModuleSmoother *)self getEndOfGapAtDate:v5];
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v8;
          _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "gap detected, endOfGap=%@", buf, 0xCu);
        }
      }

      objc_storeStrong(&self->_nextDateToProcess, v8);
      if ([v4 count])
      {
        v10 = [(RTVisitPipelineModuleSmoother *)self createNewOutputClusterForSmoothedPoints:v4 exit:self->_previousProcessedDate];
        [v35 addObject:v10];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            lastObject = [v35 lastObject];
            *buf = 138412290;
            v37 = lastObject;
            _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "adding visit=%@", buf, 0xCu);
          }
        }
      }

      entryBeforeAnyGaps = [(RTVisit *)self->_workingVisit exit];
      if (entryBeforeAnyGaps)
      {
LABEL_18:
      }

      else if (!self->_entryBeforeAnyGaps)
      {
        entry = [(RTVisit *)self->_workingVisit entry];
        entryBeforeAnyGaps = self->_entryBeforeAnyGaps;
        self->_entryBeforeAnyGaps = entry;
        goto LABEL_18;
      }

      v16 = objc_alloc(MEMORY[0x277D01428]);
      v13 = [MEMORY[0x277CBEAA8] now];
      type = [(RTVisit *)self->_workingVisit type];
      location = [(RTVisit *)self->_workingVisit location];
      nextDateToProcess = self->_nextDateToProcess;
      exit2 = [(RTVisit *)self->_workingVisit exit];
      v20 = [v16 initWithDate:v13 type:type location:location entry:nextDateToProcess exit:exit2 dataPointCount:0 confidence:1.0 placeInference:0];
      workingVisit = self->_workingVisit;
      self->_workingVisit = v20;

      goto LABEL_24;
    }

    v13 = [(RTVisitPipelineModuleSmoother *)self computeSmoothedPointForDate:v5];
    if (v13)
    {
      [v4 addObject:v13];
    }

    v14 = [(RTVisitPipelineModuleSmoother *)self getNextDateToProcessForDate:v5];
    location = self->_nextDateToProcess;
    self->_nextDateToProcess = v14;
LABEL_24:

    previousProcessedDate = self->_previousProcessedDate;
    self->_previousProcessedDate = v5;
    v23 = v5;

    v5 = self->_nextDateToProcess;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v4 count];
      *buf = 134217984;
      v37 = v33;
      _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "Finished generating %lu smoothed points.", buf, 0xCu);
    }
  }

  if ([v4 count])
  {
    exit3 = [(RTVisit *)self->_workingVisit exit];
    v28 = [(RTVisitPipelineModuleSmoother *)self createNewOutputClusterForSmoothedPoints:v4 exit:exit3];
    [v35 addObject:v28];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        lastObject2 = [v35 lastObject];
        *buf = 138739971;
        v37 = lastObject2;
        _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "adding visit=%{sensitive}@", buf, 0xCu);
      }
    }
  }

  exit4 = [(RTVisit *)self->_workingVisit exit];

  if (exit4)
  {
    [(RTVisitPipelineModuleSmoother *)self resetState];
  }

  else
  {
    [objc_opt_class() getTimeDeltaSignificanceThresholdForSmoothedLocationDate:v5 rawLocations:self->_rawLocations kernelWidth:self->_kernelWidth smallestSignificantaWeightExponent:self->_smallestSignificantWeightExponent];
    [(RTVisitPipelineModuleSmoother *)self disposeObsoleteRawLocationsForCurrentDateToProcess:v5 halfTimeProcessWindow:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "End processCachedPoints", buf, 2u);
    }
  }

  return v35;
}

- (void)resetState
{
  workingVisit = self->_workingVisit;
  self->_workingVisit = 0;

  entryBeforeAnyGaps = self->_entryBeforeAnyGaps;
  self->_entryBeforeAnyGaps = 0;

  rawLocations = self->_rawLocations;
  self->_rawLocations = 0;

  v6 = self->_workingVisit;
  self->_workingVisit = 0;

  firstDateToProcessForVisit = self->_firstDateToProcessForVisit;
  self->_firstDateToProcessForVisit = 0;

  previousProcessedDate = self->_previousProcessedDate;
  self->_previousProcessedDate = 0;
}

- (void)updateStateWithNewCluster:(id)cluster
{
  v29 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  workingVisit = self->_workingVisit;
  if (workingVisit)
  {
    entry = [(RTVisit *)workingVisit entry];
    visit = [clusterCopy visit];
    entry2 = [visit entry];
    if ([entry isEqualToDate:entry2])
    {
    }

    else
    {
      entryBeforeAnyGaps = self->_entryBeforeAnyGaps;
      visit2 = [clusterCopy visit];
      entry3 = [visit2 entry];
      LOBYTE(entryBeforeAnyGaps) = [(NSDate *)entryBeforeAnyGaps isEqualToDate:entry3];

      if (entryBeforeAnyGaps)
      {
LABEL_9:
        rawLocations = self->_rawLocations;
        points = [clusterCopy points];
        locations = [points locations];
        [(NSMutableArray *)rawLocations addObjectsFromArray:locations];
        goto LABEL_10;
      }

      entry = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(entry, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315394;
        v26 = "[RTVisitPipelineModuleSmoother updateStateWithNewCluster:]";
        v27 = 1024;
        v28 = 405;
        _os_log_error_impl(&dword_2304B3000, entry, OS_LOG_TYPE_ERROR, "Partial visit not closed before starting new visit. (in %s:%d)", &v25, 0x12u);
      }
    }

    goto LABEL_9;
  }

  points2 = [clusterCopy points];
  locations2 = [points2 locations];
  v11 = [locations2 objectAtIndexedSubscript:0];
  date = [v11 date];
  firstDateToProcessForVisit = self->_firstDateToProcessForVisit;
  self->_firstDateToProcessForVisit = date;

  v14 = objc_alloc(MEMORY[0x277CBEB18]);
  points = [clusterCopy points];
  locations = [points locations];
  v17 = [v14 initWithArray:locations copyItems:0];
  v18 = self->_rawLocations;
  self->_rawLocations = v17;

LABEL_10:
  visit3 = [clusterCopy visit];
  v24 = self->_workingVisit;
  self->_workingVisit = visit3;
}

- (id)process:(id)process
{
  v27 = *MEMORY[0x277D85DE8];
  processCopy = process;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "Begin smoothing", buf, 2u);
    }
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = processCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    v12 = MEMORY[0x277D86220];
    *&v9 = 138739971;
    v19 = v9;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v19;
            v25 = v14;
            _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "working on cluster=%{sensitive}@", buf, 0xCu);
          }
        }

        [(RTVisitPipelineModuleSmoother *)self updateStateWithNewCluster:v14, v19, v20];
        processCachedPoints = [(RTVisitPipelineModuleSmoother *)self processCachedPoints];
        [v6 addObjectsFromArray:processCachedPoints];

        ++v13;
      }

      while (v10 != v13);
      v10 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "End smoothing", buf, 2u);
    }
  }

  return v6;
}

@end