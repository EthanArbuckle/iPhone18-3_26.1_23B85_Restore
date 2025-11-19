@interface RTVisitPipelineModuleSmoother
+ (BOOL)hasRawLocationsNeededToComputeSmoothedLocationAtDate:(id)a3 workingVisitExit:(id)a4 rawLocations:(id)a5 kernelWidth:(double)a6 smallestSignificantWeightExponent:(double)a7;
+ (double)getMaxDeltaForSmoothedLocationDate:(id)a3 rawLocations:(id)a4 kernelWidth:(double)a5;
+ (double)getTimeDeltaSignificanceThresholdForSmoothedLocationDate:(id)a3 rawLocations:(id)a4 kernelWidth:(double)a5 smallestSignificantaWeightExponent:(double)a6;
+ (id)computeSmoothedPointForDate:(id)a3 rawLocations:(id)a4 kernelWidth:(double)a5 smallestSignificantWeightExponent:(double)a6;
+ (id)createNewOutputClusterForSmoothedPoints:(id)a3 workingVisit:(id)a4 exit:(id)a5;
+ (id)getEndOfGapAtDate:(id)a3 rawLocations:(id)a4 maxGapWithinVisit:(double)a5;
+ (id)getNextDateToProcessForDate:(id)a3 firstDateToProcessForVisit:(id)a4 timeIntervalBetweenSmoothedPoints:(double)a5;
+ (unint64_t)findIndexOfLocationInArray:(id)a3 inRange:(_NSRange)a4 afterDate:(id)a5;
+ (void)disposeObsoleteRawLocations:(id)a3 currentDateToProcess:(id)a4 halfTimeProcessWindow:(double)a5;
- (RTVisitPipelineModuleSmoother)initWithTimeIntervalBetweenSmoothedPoints:(double)a3 kernelWidth:(double)a4 smallestSignificantWeightExponent:(double)a5 maxGapWithinVisit:(double)a6;
- (id)computeSmoothedPointForDate:(id)a3;
- (id)createNewOutputClusterForSmoothedPoints:(id)a3 exit:(id)a4;
- (id)getEndOfGapAtDate:(id)a3;
- (id)getNextDateToProcessForDate:(id)a3;
- (id)process:(id)a3;
- (id)processCachedPoints;
- (void)disposeObsoleteRawLocationsForCurrentDateToProcess:(id)a3 halfTimeProcessWindow:(double)a4;
- (void)resetState;
- (void)updateStateWithNewCluster:(id)a3;
@end

@implementation RTVisitPipelineModuleSmoother

- (RTVisitPipelineModuleSmoother)initWithTimeIntervalBetweenSmoothedPoints:(double)a3 kernelWidth:(double)a4 smallestSignificantWeightExponent:(double)a5 maxGapWithinVisit:(double)a6
{
  v6 = self;
  if (a3 <= 0.0)
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

  if (a4 <= 0.0)
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

    v12->_timeIntervalBetweenSmoothedPoints = a3;
    v12->_kernelWidth = a4;
    v12->_smallestSignificantWeightExponent = a5;
    v12->_maxGapInVisit = a6;
  }

  v6 = v12;
  v17 = v6;
LABEL_10:

  return v17;
}

+ (unint64_t)findIndexOfLocationInArray:(id)a3 inRange:(_NSRange)a4 afterDate:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = MEMORY[0x277D01160];
  v9 = a5;
  v10 = a3;
  v11 = [[v8 alloc] initWithLatitude:v9 longitude:0.0 horizontalUncertainty:0.0 date:0.0];

  v12 = [v10 indexOfObject:v11 inSortedRange:location options:length usingComparator:{1024, &__block_literal_global_57}];
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

+ (double)getMaxDeltaForSmoothedLocationDate:(id)a3 rawLocations:(id)a4 kernelWidth:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() findIndexOfLocationInArray:v8 inRange:0 afterDate:{objc_msgSend(v8, "count"), v7}];
  if (v9 >= [v8 count])
  {
    --v9;
  }

  else if (v9)
  {
    v10 = [v8 objectAtIndexedSubscript:v9];
    v11 = [v10 date];
    [v7 timeIntervalSinceDate:v11];
    v13 = fabs(v12);
    v14 = [v8 objectAtIndexedSubscript:v9 - 1];
    v15 = [v14 date];
    [v7 timeIntervalSinceDate:v15];
    v17 = fabs(v16);

    if (v13 >= v17)
    {
      --v9;
    }
  }

  v18 = objc_opt_class();
  v19 = [v8 objectAtIndexedSubscript:v9];
  v20 = [v19 date];
  [v18 getWeightExponentForSmoothedLocationDate:v7 rawLocationDate:v20 kernelWidth:a5 maxDelta:0.0];
  v22 = v21;

  return v22;
}

+ (double)getTimeDeltaSignificanceThresholdForSmoothedLocationDate:(id)a3 rawLocations:(id)a4 kernelWidth:(double)a5 smallestSignificantaWeightExponent:(double)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (a6 > 0.0)
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

  [objc_opt_class() getMaxDeltaForSmoothedLocationDate:v9 rawLocations:v10 kernelWidth:a5];
  v13 = v12;

  return sqrt((v13 + a6) * -2.0) * a5;
}

- (id)computeSmoothedPointForDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() computeSmoothedPointForDate:v4 rawLocations:self->_rawLocations kernelWidth:self->_kernelWidth smallestSignificantWeightExponent:self->_smallestSignificantWeightExponent];

  return v5;
}

+ (id)computeSmoothedPointForDate:(id)a3 rawLocations:(id)a4 kernelWidth:(double)a5 smallestSignificantWeightExponent:(double)a6
{
  v9 = a3;
  v10 = a4;
  if (![v10 count])
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

  [objc_opt_class() getMaxDeltaForSmoothedLocationDate:v9 rawLocations:v10 kernelWidth:a5];
  v12 = v11;
  [objc_opt_class() getTimeDeltaSignificanceThresholdForSmoothedLocationDate:v9 rawLocations:v10 kernelWidth:a5 smallestSignificantaWeightExponent:a6];
  v14 = v13;
  v15 = objc_opt_class();
  v16 = [v10 count];
  v17 = [v9 dateByAddingTimeInterval:v14];
  v18 = [v15 findIndexOfLocationInArray:v10 inRange:0 afterDate:{v16, v17}];

  v19 = objc_opt_class();
  v20 = [v10 count];
  v21 = [v9 dateByAddingTimeInterval:-v14];
  v22 = [v19 findIndexOfLocationInArray:v10 inRange:0 afterDate:{v20, v21}];

  if (v22 == v18)
  {
    if (v18 + 1 >= [v10 count])
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
    v27 = [v10 objectAtIndexedSubscript:v22];
    v28 = [v27 date];
    [v26 getWeightExponentForSmoothedLocationDate:v9 rawLocationDate:v28 kernelWidth:a5 maxDelta:v12];
    v30 = v29;

    if (v30 > a6)
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

      v32 = [v10 objectAtIndexedSubscript:v22];
      [v32 latitude];
      v34 = v33;

      v35 = [v10 objectAtIndexedSubscript:v22];
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
    v42 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:v9 longitude:v24 / v25 horizontalUncertainty:v45 date:0.0];
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

+ (id)getNextDateToProcessForDate:(id)a3 firstDateToProcessForVisit:(id)a4 timeIntervalBetweenSmoothedPoints:(double)a5
{
  v7 = a4;
  v8 = v7;
  if (a3)
  {
    v9 = [a3 dateByAddingTimeInterval:a5];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

- (id)getNextDateToProcessForDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() getNextDateToProcessForDate:v4 firstDateToProcessForVisit:self->_firstDateToProcessForVisit timeIntervalBetweenSmoothedPoints:self->_timeIntervalBetweenSmoothedPoints];

  return v5;
}

+ (void)disposeObsoleteRawLocations:(id)a3 currentDateToProcess:(id)a4 halfTimeProcessWindow:(double)a5
{
  v12 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v12 count];
  v10 = [v7 dateByAddingTimeInterval:-a5];

  v11 = [v8 findIndexOfLocationInArray:v12 inRange:0 afterDate:{v9, v10}];
  if (v11)
  {
    [v12 removeObjectsInRange:{0, v11}];
  }
}

- (void)disposeObsoleteRawLocationsForCurrentDateToProcess:(id)a3 halfTimeProcessWindow:(double)a4
{
  v6 = a3;
  [objc_opt_class() disposeObsoleteRawLocations:self->_rawLocations currentDateToProcess:v6 halfTimeProcessWindow:a4];
}

- (id)createNewOutputClusterForSmoothedPoints:(id)a3 exit:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() createNewOutputClusterForSmoothedPoints:v7 workingVisit:self->_workingVisit exit:v6];

  [v7 removeAllObjects];

  return v8;
}

+ (id)createNewOutputClusterForSmoothedPoints:(id)a3 workingVisit:(id)a4 exit:(id)a5
{
  v7 = MEMORY[0x277D01428];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 alloc];
  v12 = [MEMORY[0x277CBEAA8] now];
  if (v8)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v9 location];
  v15 = [v9 entry];

  v16 = [v11 initWithDate:v12 type:v13 location:v14 entry:v15 exit:v8 dataPointCount:objc_msgSend(v10 confidence:"count") placeInference:{1.0, 0}];
  v17 = [RTVisitCluster alloc];
  v18 = [[RTVisitLocationPoints alloc] initWithLocations:v10];

  v19 = [(RTVisitCluster *)v17 initWithPoints:v18 visit:v16];

  return v19;
}

+ (id)getEndOfGapAtDate:(id)a3 rawLocations:(id)a4 maxGapWithinVisit:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() findIndexOfLocationInArray:v8 inRange:0 afterDate:{objc_msgSend(v8, "count"), v7}];
  if (!v9)
  {
    if ([v8 count])
    {
      v14 = [v8 objectAtIndexedSubscript:0];
      v15 = [v14 date];
      [v15 timeIntervalSinceDate:v7];
      v17 = v16;

      if (v17 > a5)
      {
        v18 = v8;
        v19 = 0;
LABEL_11:
        v12 = [v18 objectAtIndexedSubscript:v19];
        v11 = [v12 date];
        goto LABEL_12;
      }
    }
  }

  v10 = [v8 count];
  v11 = 0;
  if (v9 && v9 < v10)
  {
    v12 = [v8 objectAtIndexedSubscript:v9];
    v13 = [v12 date];
    if ([v13 isEqualToDate:v7])
    {

      v11 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v20 = [v8 objectAtIndexedSubscript:v9];
    v21 = [v20 date];
    v22 = [v8 objectAtIndexedSubscript:v9 - 1];
    v23 = [v22 date];
    [v21 timeIntervalSinceDate:v23];
    v25 = v24;

    if (v25 > a5)
    {
      v18 = v8;
      v19 = v9;
      goto LABEL_11;
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (id)getEndOfGapAtDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() getEndOfGapAtDate:v4 rawLocations:self->_rawLocations maxGapWithinVisit:self->_maxGapInVisit];

  return v5;
}

+ (BOOL)hasRawLocationsNeededToComputeSmoothedLocationAtDate:(id)a3 workingVisitExit:(id)a4 rawLocations:(id)a5 kernelWidth:(double)a6 smallestSignificantWeightExponent:(double)a7
{
  v11 = a5;
  v12 = a3;
  v13 = v12;
  if (a4)
  {
    v14 = [v12 earlierDate:a4];
    v15 = [v14 isEqualToDate:v13];
  }

  else
  {
    [objc_opt_class() getTimeDeltaSignificanceThresholdForSmoothedLocationDate:v12 rawLocations:v11 kernelWidth:a6 smallestSignificantaWeightExponent:a7];
    v14 = [v13 dateByAddingTimeInterval:?];

    v13 = [v11 lastObject];
    v16 = [v13 date];
    v17 = [v14 earlierDate:v16];
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
    v7 = [(RTVisit *)self->_workingVisit exit];
    LODWORD(v6) = [v6 hasRawLocationsNeededToComputeSmoothedLocationAtDate:v5 workingVisitExit:v7 rawLocations:self->_rawLocations kernelWidth:self->_kernelWidth smallestSignificantWeightExponent:self->_smallestSignificantWeightExponent];

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
            v25 = [v35 lastObject];
            *buf = 138412290;
            v37 = v25;
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
        v24 = [(RTVisit *)self->_workingVisit entry];
        entryBeforeAnyGaps = self->_entryBeforeAnyGaps;
        self->_entryBeforeAnyGaps = v24;
        goto LABEL_18;
      }

      v16 = objc_alloc(MEMORY[0x277D01428]);
      v13 = [MEMORY[0x277CBEAA8] now];
      v17 = [(RTVisit *)self->_workingVisit type];
      v15 = [(RTVisit *)self->_workingVisit location];
      nextDateToProcess = self->_nextDateToProcess;
      v19 = [(RTVisit *)self->_workingVisit exit];
      v20 = [v16 initWithDate:v13 type:v17 location:v15 entry:nextDateToProcess exit:v19 dataPointCount:0 confidence:1.0 placeInference:0];
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
    v15 = self->_nextDateToProcess;
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
    v27 = [(RTVisit *)self->_workingVisit exit];
    v28 = [(RTVisitPipelineModuleSmoother *)self createNewOutputClusterForSmoothedPoints:v4 exit:v27];
    [v35 addObject:v28];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v34 = [v35 lastObject];
        *buf = 138739971;
        v37 = v34;
        _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "adding visit=%{sensitive}@", buf, 0xCu);
      }
    }
  }

  v30 = [(RTVisit *)self->_workingVisit exit];

  if (v30)
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

- (void)updateStateWithNewCluster:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  workingVisit = self->_workingVisit;
  if (workingVisit)
  {
    v6 = [(RTVisit *)workingVisit entry];
    v7 = [v4 visit];
    v8 = [v7 entry];
    if ([v6 isEqualToDate:v8])
    {
    }

    else
    {
      entryBeforeAnyGaps = self->_entryBeforeAnyGaps;
      v20 = [v4 visit];
      v21 = [v20 entry];
      LOBYTE(entryBeforeAnyGaps) = [(NSDate *)entryBeforeAnyGaps isEqualToDate:v21];

      if (entryBeforeAnyGaps)
      {
LABEL_9:
        rawLocations = self->_rawLocations;
        v15 = [v4 points];
        v16 = [v15 locations];
        [(NSMutableArray *)rawLocations addObjectsFromArray:v16];
        goto LABEL_10;
      }

      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315394;
        v26 = "[RTVisitPipelineModuleSmoother updateStateWithNewCluster:]";
        v27 = 1024;
        v28 = 405;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Partial visit not closed before starting new visit. (in %s:%d)", &v25, 0x12u);
      }
    }

    goto LABEL_9;
  }

  v9 = [v4 points];
  v10 = [v9 locations];
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v11 date];
  firstDateToProcessForVisit = self->_firstDateToProcessForVisit;
  self->_firstDateToProcessForVisit = v12;

  v14 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = [v4 points];
  v16 = [v15 locations];
  v17 = [v14 initWithArray:v16 copyItems:0];
  v18 = self->_rawLocations;
  self->_rawLocations = v17;

LABEL_10:
  v23 = [v4 visit];
  v24 = self->_workingVisit;
  self->_workingVisit = v23;
}

- (id)process:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v7 = v4;
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
        v16 = [(RTVisitPipelineModuleSmoother *)self processCachedPoints];
        [v6 addObjectsFromArray:v16];

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