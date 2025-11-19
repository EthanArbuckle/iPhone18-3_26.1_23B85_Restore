@interface RTDistanceCalculator
+ (id)distanceMetricToString:(int64_t)a3;
- (BOOL)checkFractionAreaOverlapBetweenLocation:(id)a3 otherLocation:(id)a4 largerThanThreshold:(double)a5 error:(id *)a6;
- (CGRect)cgrectFromCoordinates:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 error:(id *)a5;
- (CLLocationCoordinate2D)_reduce_by_half:(CLLocationCoordinate2D *)a3 count:(unint64_t)a4 outputCount:(unint64_t *)a5 error:(id *)a6;
- (CLLocationCoordinate2D)computeCentroid:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 error:(id *)a5;
- (CLLocationCoordinate2D)rectVerticesFromCoordinates:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 ignoreNFirstAndLastLocations:(unint64_t)a5 error:(id *)a6;
- (RTLocationShifter)locationShifter;
- (double)_centroidDistanceFromLocations:(CLLocationCoordinate2D *)a3 countOfFromLocations:(unint64_t)a4 toLocations:(CLLocationCoordinate2D *)a5 countOfToLocations:(unint64_t)a6 error:(id *)a7;
- (double)_dtwDistanceEuclideanBetweenX:(CLLocationCoordinate2D *)a3 y:(CLLocationCoordinate2D *)a4 error:(id *)a5;
- (double)_dtwDistanceFirstNormBetweenX:(CLLocationCoordinate2D *)a3 y:(CLLocationCoordinate2D *)a4 error:(id *)a5;
- (double)_dtwDistanceFromLocations:(CLLocationCoordinate2D *)a3 countOfFromLocations:(unint64_t)a4 toLocations:(CLLocationCoordinate2D *)a5 countOfToLocations:(unint64_t)a6 distanceMetric:(int64_t)a7 threshold:(double)a8 error:(id *)a9;
- (double)computeBoundingBoxArea:(CGRect)a3 locationsCount:(unint64_t)a4 error:(id *)a5;
- (double)computeCircleIntersectionAreaWithDistance:(double)a3 firstRadius:(double)a4 secondRadius:(double)a5;
- (double)computeCircleIntersectionPercentageOfMinRadiusCircleWithDistance:(double)a3 firstRadius:(double)a4 secondRadius:(double)a5;
- (double)computeIntersectionOverUnionUsingBoundingBoxBetweenLocations:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 otherLocations:(CLLocationCoordinate2D *)a5 otherLocationsCount:(unint64_t)a6 error:(id *)a7;
- (double)distanceFromLocation:(id)a3 toLocation:(id)a4 error:(id *)a5;
- (double)distanceFromLocationCoordinate:(CLLocationCoordinate2D *)a3 toLocationCoordinate:(CLLocationCoordinate2D *)a4 error:(id *)a5;
- (double)distanceFromLocations:(CLLocationCoordinate2D *)a3 countOfFromLocations:(unint64_t)a4 toLocations:(CLLocationCoordinate2D *)a5 countOfToLocations:(unint64_t)a6 distanceMetric:(int64_t)a7 threshold:(double)a8 error:(id *)a9;
- (double)fractionOfUncertaintyAreaOverlapOfTheSmalestUncertaintyAreaBetweenLocation:(id)a3 otherLocation:(id)a4 error:(id *)a5;
- (id)_convertToRTPairsFromLocations:(id)a3 error:(id *)a4;
- (id)_dtwForX:(CLLocationCoordinate2D *)a3 xCount:(unint64_t)a4 y:(CLLocationCoordinate2D *)a5 yCount:(unint64_t)a6 window:(id)a7 distanceMetric:(int64_t)a8 threshold:(double)a9 error:(id *)a10;
- (id)_expand_windowWithPath:(id)a3 len_x:(signed __int16)a4 len_y:(signed __int16)a5 radius:(signed __int16)a6 error:(id *)a7;
- (id)_fastDTWForX:(CLLocationCoordinate2D *)a3 xCount:(unint64_t)a4 y:(CLLocationCoordinate2D *)a5 yCount:(unint64_t)a6 radius:(double)a7 distanceMetric:(int64_t)a8 threshold:(double)a9 error:(id *)a10;
- (void)_shutdownWithHandler:(id)a3;
@end

@implementation RTDistanceCalculator

- (RTLocationShifter)locationShifter
{
  locationShifter = self->_locationShifter;
  if (!locationShifter)
  {
    v4 = objc_opt_new();
    v5 = self->_locationShifter;
    self->_locationShifter = v4;

    locationShifter = self->_locationShifter;
  }

  return locationShifter;
}

+ (id)distanceMetricToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Centroid";
  }

  else
  {
    return off_2788CB0D8[a3];
  }
}

- (void)_shutdownWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (double)distanceFromLocation:(id)a3 toLocation:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0x7FEFFFFFFFFFFFFFLL;
  v11 = 1.79769313e308;
  if (!v8 || !v9)
  {
    goto LABEL_16;
  }

  v35 = a5;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__78;
  v47 = __Block_byref_object_dispose__78;
  v48 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTDistanceCalculator_distanceFromLocation_toLocation_error___block_invoke;
  block[3] = &unk_2788CB0B8;
  v37 = v10;
  v38 = v8;
  v39 = self;
  v41 = &v43;
  v42 = &v49;
  v14 = v12;
  v40 = v14;
  dispatch_async(v13, block);

  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v15, v17))
  {
    v29 = 0;
LABEL_9:
    v31 = 1;
    goto LABEL_10;
  }

  v18 = [MEMORY[0x277CBEAA8] now];
  [v18 timeIntervalSinceDate:v16];
  v20 = v19;
  v21 = objc_opt_new();
  v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_61];
  v23 = [MEMORY[0x277CCACC8] callStackSymbols];
  v24 = [v23 filteredArrayUsingPredicate:v22];
  v25 = [v24 firstObject];

  [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
  v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v27 = MEMORY[0x277CCA9B8];
  v53 = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v53 count:1];
  v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

  if (!v29)
  {
    goto LABEL_9;
  }

  v30 = v29;

  v31 = 0;
LABEL_10:

  v32 = v29;
  if ((v31 & 1) == 0)
  {
    objc_storeStrong(v44 + 5, v29);
  }

  if (v35)
  {
    v33 = v44[5];
    if (v33)
    {
      *v35 = v33;
    }
  }

  v11 = v50[3];

  _Block_object_dispose(&v43, 8);
LABEL_16:
  _Block_object_dispose(&v49, 8);

  return v11;
}

void __62__RTDistanceCalculator_distanceFromLocation_toLocation_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) locationShifter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTDistanceCalculator_distanceFromLocation_toLocation_error___block_invoke_2;
  v7[3] = &unk_2788CB090;
  v9 = *(a1 + 72);
  v6 = *(a1 + 56);
  v5 = v6;
  v8 = v6;
  [v2 distanceFromLocation:v3 locationShifter:v4 handler:v7];
}

void __62__RTDistanceCalculator_distanceFromLocation_toLocation_error___block_invoke_2(uint64_t a1, void *a2, double a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (double)distanceFromLocationCoordinate:(CLLocationCoordinate2D *)a3 toLocationCoordinate:(CLLocationCoordinate2D *)a4 error:(id *)a5
{
  if (!a3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      return 1.79769313e308;
    }

    v10 = 0;
    v7 = "Invalid parameter not satisfying: fromLocationCoordinate";
    v8 = &v10;
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_9;
  }

  if (!a4)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = 0;
    v7 = "Invalid parameter not satisfying: toLocationCoordinate";
    v8 = &v9;
    goto LABEL_11;
  }

  RTCommonCalculateDistanceHighPrecision();
  return result;
}

- (double)fractionOfUncertaintyAreaOverlapOfTheSmalestUncertaintyAreaBetweenLocation:(id)a3 otherLocation:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v15 = 0.0;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v26 = 0;
    v17 = "Invalid parameter not satisfying: location";
    v18 = &v26;
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    goto LABEL_12;
  }

  if (!v9)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v15 = 0.0;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: otherLocation";
    v18 = buf;
    goto LABEL_10;
  }

  v24 = 0;
  [(RTDistanceCalculator *)self distanceFromLocation:v8 toLocation:v9 error:&v24];
  v12 = v11;
  v13 = v24;
  v14 = v13;
  if (v13)
  {
    v15 = 0.0;
    if (a5)
    {
      v16 = v13;
      *a5 = v14;
    }
  }

  else
  {
    [v8 horizontalUncertainty];
    v20 = v19;
    [v10 horizontalUncertainty];
    [(RTDistanceCalculator *)self computeCircleIntersectionPercentageOfMinRadiusCircleWithDistance:v12 firstRadius:v20 secondRadius:v21];
    v15 = v22;
  }

LABEL_12:

  return v15;
}

- (BOOL)checkFractionAreaOverlapBetweenLocation:(id)a3 otherLocation:(id)a4 largerThanThreshold:(double)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v20 = 0;
  [(RTDistanceCalculator *)self fractionOfUncertaintyAreaOverlapOfTheSmalestUncertaintyAreaBetweenLocation:v10 otherLocation:v11 error:&v20];
  v13 = v12;
  v14 = v20;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(RTDistanceCalculator *)self distanceFromLocation:v10 toLocation:v11 error:0];
      *buf = 138740995;
      v22 = v10;
      v23 = 2117;
      v24 = v11;
      v25 = 2048;
      v26 = v19;
      v27 = 2048;
      v28 = v13;
      v29 = 2048;
      v30 = a5;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "check uncertainty overlap for reference location, %{sensitive}@, other location, %{sensitive}@, distance between locations, %f, overlap percentage, %f, overlap treshold, %f", buf, 0x34u);
    }
  }

  if (v14)
  {
    if (a6)
    {
      v16 = v14;
      v17 = 0;
      *a6 = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = v13 > a5;
  }

  return v17;
}

- (double)computeCircleIntersectionAreaWithDistance:(double)a3 firstRadius:(double)a4 secondRadius:(double)a5
{
  v5 = a4;
  result = 0.0;
  if (a4 + a5 > a3)
  {
    if (a4 >= a5)
    {
      a4 = a5;
    }

    if (a4 != 0.0)
    {
      if (v5 >= a5)
      {
        v9 = v5;
      }

      else
      {
        v9 = a5;
      }

      if (a4 + a3 <= v9)
      {
        return a4 * (a4 * 3.14159265);
      }

      else
      {
        v10 = v5 * v5 * acos((a3 * a3 + v5 * v5 - a5 * a5) / (a3 + a3) / v5);
        return v10 + a5 * a5 * acos((a3 * a3 - v5 * v5 + a5 * a5) / (a3 + a3) / a5) + sqrt((a3 + v5 + a5) * ((a3 + v5 - a5) * ((v5 - a3 + a5) * (a3 - v5 + a5)))) * -0.5;
      }
    }
  }

  return result;
}

- (double)computeCircleIntersectionPercentageOfMinRadiusCircleWithDistance:(double)a3 firstRadius:(double)a4 secondRadius:(double)a5
{
  if (a4 >= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = a4;
  }

  if (v5 == 0.0)
  {
    if (a4 < a5)
    {
      a4 = a5;
    }

    v6 = a4 < a3;
    result = 1.0;
    if (v6)
    {
      return 0.0;
    }
  }

  else
  {
    [RTDistanceCalculator computeCircleIntersectionAreaWithDistance:"computeCircleIntersectionAreaWithDistance:firstRadius:secondRadius:" firstRadius:a3 secondRadius:?];
    return v8 / (v5 * (v5 * 3.14159265));
  }

  return result;
}

- (double)distanceFromLocations:(CLLocationCoordinate2D *)a3 countOfFromLocations:(unint64_t)a4 toLocations:(CLLocationCoordinate2D *)a5 countOfToLocations:(unint64_t)a6 distanceMetric:(int64_t)a7 threshold:(double)a8 error:(id *)a9
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromLocations", v22, 2u);
    }

    if (!a9)
    {
      return 1.79769313e308;
    }

    v12 = @"fromLocations";
LABEL_17:
    *a9 = _RTErrorInvalidParameterCreate(v12);
    return 1.79769313e308;
  }

  if (!a5)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: toLocations", v22, 2u);
    }

    if (!a9)
    {
      return 1.79769313e308;
    }

    v12 = @"toLocations";
    goto LABEL_17;
  }

  if (!a4 || !a6)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"locations count is zero";
    v16 = MEMORY[0x277CBEAC0];
    v17 = v26;
    v18 = &v25;
LABEL_19:
    v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:{1, a6, a7, a8}];
    v20 = [v14 errorWithDomain:v15 code:7 userInfo:v19];

    if (a9)
    {
      v21 = v20;
      *a9 = v20;
    }

    return 1.79769313e308;
  }

  if (a7 == 1)
  {

    [RTDistanceCalculator _centroidDistanceFromLocations:"_centroidDistanceFromLocations:countOfFromLocations:toLocations:countOfToLocations:error:" countOfFromLocations:a8 toLocations:? countOfToLocations:? error:?];
    return result;
  }

  if ((a7 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"invalid distance metric";
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v24;
    v18 = &v23;
    goto LABEL_19;
  }

  [RTDistanceCalculator _dtwDistanceFromLocations:"_dtwDistanceFromLocations:countOfFromLocations:toLocations:countOfToLocations:distanceMetric:threshold:error:" countOfFromLocations:a8 toLocations:? countOfToLocations:? distanceMetric:? threshold:? error:?];
  return result;
}

- (double)_dtwDistanceFromLocations:(CLLocationCoordinate2D *)a3 countOfFromLocations:(unint64_t)a4 toLocations:(CLLocationCoordinate2D *)a5 countOfToLocations:(unint64_t)a6 distanceMetric:(int64_t)a7 threshold:(double)a8 error:(id *)a9
{
  v65[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromLocations", buf, 2u);
    }

    if (!a9)
    {
      return 1.79769313e308;
    }

    v28 = @"fromLocations";
    goto LABEL_21;
  }

  if (!a5)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: toLocations", buf, 2u);
    }

    if (!a9)
    {
      return 1.79769313e308;
    }

    v28 = @"toLocations";
LABEL_21:
    *a9 = _RTErrorInvalidParameterCreate(v28);
    return 1.79769313e308;
  }

  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = v18;
  if (a4 && a6)
  {
    v46 = v18;
    v20 = objc_autoreleasePoolPush();
    v47 = 0;
    v21 = [(RTDistanceCalculator *)self _fastDTWForX:a3 xCount:a4 y:a5 yCount:a6 radius:a7 distanceMetric:&v47 threshold:1.0 error:a8];
    v22 = v47;
    v23 = 1.79769313e308;
    if (!v22 && v21)
    {
      [v21 distance];
      v23 = v24;

      v21 = 0;
    }

    objc_autoreleasePoolPop(v20);
    if (a9 && v22)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      v19 = v46;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        *buf = 138412802;
        v49 = v44;
        v50 = 2112;
        v51 = v45;
        v52 = 2112;
        v53 = v22;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v26 = v22;
      *a9 = v22;
    }

    else
    {
      v19 = v46;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = NSStringFromSelector(a2);
          v39 = [MEMORY[0x277CBEAA8] date];
          [v39 timeIntervalSinceDate:v46];
          v41 = v40;
          +[RTRuntime footprint];
          *buf = 138414082;
          v49 = v37;
          v50 = 2112;
          v51 = v38;
          v52 = 2048;
          v53 = a4;
          v54 = 2048;
          v55 = a6;
          v56 = 2048;
          v57 = a8;
          v58 = 2048;
          v59 = v23;
          v60 = 2048;
          v61 = v41;
          v62 = 2048;
          v63 = v42;
          _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, %@, fromLocations count, %lu, toLocations count, %lu, dtw threshold, %.5f, dtw distance, %.5f, latency, %.4f sec, footprint, %.4f MB", buf, 0x52u);

          v19 = v46;
        }
      }
    }
  }

  else
  {
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277D01448];
    v64 = *MEMORY[0x277CCA450];
    v65[0] = @"locations count is zero";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    v22 = [v30 errorWithDomain:v31 code:7 userInfo:v32];

    if (a9)
    {
      v33 = v22;
      *a9 = v22;
    }

    v23 = 1.79769313e308;
  }

  return v23;
}

- (id)_convertToRTPairsFromLocations:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = objc_alloc(MEMORY[0x277D011C0]);
          v14 = MEMORY[0x277CCABB0];
          [v11 latitude];
          v15 = [v14 numberWithDouble:?];
          v16 = MEMORY[0x277CCABB0];
          [v11 longitude];
          v17 = [v16 numberWithDouble:?];
          v18 = [v13 initWithFirstObject:v15 secondObject:v17];

          [v6 addObject:v18];
          objc_autoreleasePoolPop(v12);
        }

        v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    v5 = v21;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"locations");
    }

    v6 = [MEMORY[0x277CBEA60] array];
  }

  return v6;
}

- (id)_fastDTWForX:(CLLocationCoordinate2D *)a3 xCount:(unint64_t)a4 y:(CLLocationCoordinate2D *)a5 yCount:(unint64_t)a6 radius:(double)a7 distanceMetric:(int64_t)a8 threshold:(double)a9 error:(id *)a10
{
  v62 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: x", buf, 2u);
    }

    if (a10)
    {
      v30 = @"x";
LABEL_19:
      _RTErrorInvalidParameterCreate(v30);
      *a10 = v32 = 0;
      goto LABEL_50;
    }

LABEL_20:
    v32 = 0;
    goto LABEL_50;
  }

  if (!a5)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: y", buf, 2u);
    }

    if (a10)
    {
      v30 = @"y";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v20 = a7 + 2.0;
  if (v20 > a4 || v20 > a6)
  {
    v22 = [MEMORY[0x277CBEA60] array];
    v56 = 0;
    v23 = [(RTDistanceCalculator *)self _dtwForX:a3 xCount:a4 y:a5 yCount:a6 window:v22 distanceMetric:a8 threshold:a9 error:&v56];
    v24 = v56;

    if (a10 && v24)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v27;
        v58 = 2112;
        v59 = v28;
        v60 = 2112;
        v61 = v24;
LABEL_37:
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

        goto LABEL_27;
      }

      goto LABEL_27;
    }

LABEL_48:
    v23 = v23;
    v32 = v23;
    goto LABEL_49;
  }

  v33 = objc_autoreleasePoolPush();
  *buf = 0;
  v55 = 0;
  v34 = [(RTDistanceCalculator *)self _reduce_by_half:a3 count:a4 outputCount:buf error:&v55];
  v35 = v55;
  if (v35 || (v47 = v34, v53 = 0, v54 = 0, v36 = [(RTDistanceCalculator *)self _reduce_by_half:a5 count:a6 outputCount:&v54 error:&v53], (v35 = v53) != 0))
  {
    v24 = v35;
    v23 = 0;
LABEL_24:
    v37 = a2;
    goto LABEL_25;
  }

  context = v33;
  v52 = 0;
  v32 = [(RTDistanceCalculator *)self _fastDTWForX:v47 xCount:*buf y:v36 yCount:v54 radius:a8 distanceMetric:&v52 threshold:a7 error:a9];
  v39 = v52;
  if (v39)
  {
    v24 = v39;

    v23 = 0;
    v33 = context;
    goto LABEL_24;
  }

  v40 = v36;
  [v32 distance];
  if (v41 > a9)
  {
    if (v47)
    {
      free(v47);
    }

    if (v36)
    {
      free(v36);
    }

    objc_autoreleasePoolPop(context);
    v23 = 0;
    v24 = 0;
    goto LABEL_49;
  }

  if (v47)
  {
    free(v47);
  }

  v37 = a2;
  if (v40)
  {
    free(v40);
  }

  v45 = [v32 cellIndices];
  v51 = 0;
  v48 = [(RTDistanceCalculator *)self _expand_windowWithPath:v45 len_x:a4 len_y:a6 radius:a7 error:&v51];
  v24 = v51;

  if (v24)
  {
    v23 = 0;
    v43 = v48;
  }

  else
  {

    v50 = 0;
    v23 = [(RTDistanceCalculator *)self _dtwForX:a3 xCount:a4 y:a5 yCount:a6 window:v48 distanceMetric:a8 threshold:a9 error:&v50];
    v24 = v50;
    v43 = v48;
    if (!v24)
    {

      objc_autoreleasePoolPop(context);
      goto LABEL_48;
    }

    v32 = 0;
  }

  v33 = context;
LABEL_25:
  objc_autoreleasePoolPop(v33);
  if (!a10)
  {
    goto LABEL_48;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v42 = objc_opt_class();
    v27 = NSStringFromClass(v42);
    v28 = NSStringFromSelector(v37);
    *buf = 138412802;
    *&buf[4] = v27;
    v58 = 2112;
    v59 = v28;
    v60 = 2112;
    v61 = v24;
    goto LABEL_37;
  }

LABEL_27:

  v38 = v24;
  v32 = 0;
  *a10 = v24;
LABEL_49:

LABEL_50:

  return v32;
}

- (id)_dtwForX:(CLLocationCoordinate2D *)a3 xCount:(unint64_t)a4 y:(CLLocationCoordinate2D *)a5 yCount:(unint64_t)a6 window:(id)a7 distanceMetric:(int64_t)a8 threshold:(double)a9 error:(id *)a10
{
  v15 = a10;
  v181 = *MEMORY[0x277D85DE8];
  v16 = a7;
  v17 = v16;
  v142 = a3;
  if (!a3)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: x", buf, 2u);
    }

    if (!a10)
    {
      goto LABEL_88;
    }

    v21 = @"x";
    goto LABEL_14;
  }

  if (!a5)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: y", buf, 2u);
    }

    if (!a10)
    {
      goto LABEL_88;
    }

    v21 = @"y";
LABEL_14:
    v23 = _RTErrorInvalidParameterCreate(v21);
LABEL_15:
    v15 = 0;
    *a10 = v23;
    goto LABEL_88;
  }

  if (!v16)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: window", buf, 2u);
    }

    if (!a10)
    {
      goto LABEL_87;
    }

    v23 = _RTErrorInvalidParameterCreate(@"window");
    v17 = 0;
    goto LABEL_15;
  }

  v141 = a5;
  v149 = a8;
  aSelector = a2;
  v18 = 0x2788C1000;
  if ([v16 count])
  {
    v19 = v17;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v19 = objc_opt_new();
    if (a4)
    {
      v25 = 0;
      do
      {
        v26 = objc_autoreleasePoolPush();
        if (a6)
        {
          v27 = 0;
          do
          {
            v28 = objc_autoreleasePoolPush();
            v29 = [[RTCellIndex alloc] initWithX:v25 Y:v27];
            [v19 addObject:v29];

            objc_autoreleasePoolPop(v28);
            ++v27;
          }

          while (a6 > v27);
        }

        objc_autoreleasePoolPop(v26);
        ++v25;
      }

      while (a4 > v25);
    }

    objc_autoreleasePoolPop(context);
    v18 = 0x2788C1000uLL;
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v30 = v19;
  v31 = [v30 countByEnumeratingWithState:&v165 objects:v180 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v166;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v166 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v165 + 1) + 8 * i);
        v36 = objc_autoreleasePoolPush();
        [v35 setX:{(objc_msgSend(v35, "x") + 1)}];
        [v35 setY:{(objc_msgSend(v35, "y") + 1)}];
        objc_autoreleasePoolPop(v36);
      }

      v32 = [v30 countByEnumeratingWithState:&v165 objects:v180 count:16];
    }

    while (v32);
  }

  v140 = objc_autoreleasePoolPush();
  v37 = objc_opt_new();
  v38 = [RTCostMatrixCell alloc];
  v39 = [objc_alloc(*(v18 + 1200)) initWithX:0 Y:0];
  v40 = [(RTCostMatrixCell *)v38 initWithDistance:v39 cellIndex:0.0];
  v41 = [objc_alloc(*(v18 + 1200)) initWithX:0 Y:0];
  [v37 setObject:v40 forKeyedSubscript:v41];

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = v30;
  v148 = [obj countByEnumeratingWithState:&v161 objects:v179 count:16];
  if (!v148)
  {
    v155 = 0;
    goto LABEL_77;
  }

  v155 = 0;
  v147 = *v162;
  v145 = *MEMORY[0x277D01448];
  v144 = *MEMORY[0x277CCA450];
  while (2)
  {
    for (j = 0; j != v148; ++j)
    {
      v43 = v37;
      if (*v162 != v147)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(*(&v161 + 1) + 8 * j);
      contexta = objc_autoreleasePoolPush();
      v45 = [v44 x];
      v156 = v44;
      v46 = [v44 y];
      v47 = v45 - 1;
      v48 = [objc_alloc(*(v18 + 1200)) initWithX:v47 Y:v46];
      v150 = v46;
      v151 = v45;
      v49 = v46 - 1;
      v50 = [objc_alloc(*(v18 + 1200)) initWithX:v45 Y:v49];
      v153 = v49;
      v154 = v47;
      v51 = [objc_alloc(*(v18 + 1200)) initWithX:v47 Y:v49];
      if (v149 == 3)
      {
        if (v47 < a4 && v49 < a6)
        {
          v66 = &v142[v47];
          v63 = v155;
          v159 = v155;
          v64 = &v159;
          [(RTDistanceCalculator *)self _dtwDistanceEuclideanBetweenX:v66 y:&v141[v49] error:&v159];
          goto LABEL_55;
        }

        v54 = MEMORY[0x277CCA9B8];
        v175 = v144;
        v176 = @"index out of bounds";
        v55 = MEMORY[0x277CBEAC0];
        v56 = &v176;
        v57 = &v175;
LABEL_53:
        v59 = [v55 dictionaryWithObjects:v56 forKeys:v57 count:1];
        [v54 errorWithDomain:v145 code:7 userInfo:v59];
        v60 = 0;
        v155 = v61 = v155;
        v37 = v43;
        goto LABEL_71;
      }

      v52 = 0.0;
      if (v149 == 2)
      {
        if (v47 < a4 && v49 < a6)
        {
          v62 = &v142[v47];
          v63 = v155;
          v160 = v155;
          v64 = &v160;
          [(RTDistanceCalculator *)self _dtwDistanceFirstNormBetweenX:v62 y:&v141[v49] error:&v160];
LABEL_55:
          v52 = v65;
          v37 = v43;
          v67 = *v64;

          v155 = v67;
          goto LABEL_56;
        }

        v54 = MEMORY[0x277CCA9B8];
        v177 = v144;
        v178 = @"index out of bounds";
        v55 = MEMORY[0x277CBEAC0];
        v56 = &v178;
        v57 = &v177;
        goto LABEL_53;
      }

      v37 = v43;
LABEL_56:
      v68 = [v37 objectForKeyedSubscript:v48];

      if (!v68)
      {
        v69 = [RTCostMatrixCell alloc];
        v70 = [[RTCellIndex alloc] initWithX:0xFFFFFFFFLL Y:0xFFFFFFFFLL];
        v71 = [(RTCostMatrixCell *)v69 initWithDistance:v70 cellIndex:1.79769313e308];
        [v37 setObject:v71 forKeyedSubscript:v48];
      }

      v72 = [v37 objectForKeyedSubscript:v50];

      if (!v72)
      {
        v73 = [RTCostMatrixCell alloc];
        v74 = [[RTCellIndex alloc] initWithX:0xFFFFFFFFLL Y:0xFFFFFFFFLL];
        v75 = [(RTCostMatrixCell *)v73 initWithDistance:v74 cellIndex:1.79769313e308];
        [v37 setObject:v75 forKeyedSubscript:v50];
      }

      v76 = [v37 objectForKeyedSubscript:v51];

      if (!v76)
      {
        v77 = [RTCostMatrixCell alloc];
        v78 = [[RTCellIndex alloc] initWithX:0xFFFFFFFFLL Y:0xFFFFFFFFLL];
        v79 = [(RTCostMatrixCell *)v77 initWithDistance:v78 cellIndex:1.79769313e308];
        [v37 setObject:v79 forKeyedSubscript:v51];
      }

      v80 = [v37 objectForKeyedSubscript:v48];
      [v80 distance];
      v82 = v81;
      v83 = [v37 objectForKeyedSubscript:v50];
      [v83 distance];
      v85 = v84;

      if (v82 >= v85)
      {
        v99 = [v37 objectForKeyedSubscript:v50];
        [v99 distance];
        v101 = v100;
        v102 = [v37 objectForKeyedSubscript:v51];
        [v102 distance];
        v104 = v103;

        v105 = [RTCostMatrixCell alloc];
        if (v101 >= v104)
        {
          v59 = [v37 objectForKeyedSubscript:v51];
          [v59 distance];
          v107 = v52 + v112;
          v108 = [RTCellIndex alloc];
          v109 = v154;
        }

        else
        {
          v59 = [v37 objectForKeyedSubscript:v50];
          [v59 distance];
          v107 = v52 + v106;
          v108 = [RTCellIndex alloc];
          v109 = v151;
        }

        v61 = [(RTCellIndex *)v108 initWithX:v109 Y:v153];
        v113 = [(RTCostMatrixCell *)v105 initWithDistance:v61 cellIndex:v107];
        [v37 setObject:v113 forKeyedSubscript:v156];

        v60 = 1;
      }

      else
      {
        v86 = [v37 objectForKeyedSubscript:v48];
        [v86 distance];
        v88 = v87;
        [v37 objectForKeyedSubscript:v51];
        v90 = v89 = v51;
        [v90 distance];
        v92 = v91;

        v93 = [RTCostMatrixCell alloc];
        if (v88 >= v92)
        {
          v59 = [v37 objectForKeyedSubscript:v89];
          [v59 distance];
          v95 = v52 + v110;
          v96 = [RTCellIndex alloc];
          v98 = v153;
          v97 = v154;
        }

        else
        {
          v59 = [v37 objectForKeyedSubscript:v48];
          [v59 distance];
          v95 = v52 + v94;
          v96 = [RTCellIndex alloc];
          v97 = v154;
          v98 = v150;
        }

        v61 = [(RTCellIndex *)v96 initWithX:v97 Y:v98];
        v111 = [(RTCostMatrixCell *)v93 initWithDistance:v61 cellIndex:v95];
        [v37 setObject:v111 forKeyedSubscript:v156];

        v60 = 1;
        v51 = v89;
      }

LABEL_71:

      objc_autoreleasePoolPop(contexta);
      if (!v60)
      {
        v18 = 0x2788C1000;
        goto LABEL_77;
      }

      v18 = 0x2788C1000;
    }

    v148 = [obj countByEnumeratingWithState:&v161 objects:v179 count:16];
    if (v148)
    {
      continue;
    }

    break;
  }

LABEL_77:

  if (a10 && v155)
  {
    v114 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    v115 = v155;
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v136 = objc_opt_class();
      v137 = NSStringFromClass(v136);
      v138 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      v170 = v137;
      v171 = 2112;
      v172 = v138;
      v173 = 2112;
      v174 = v155;
      _os_log_error_impl(&dword_2304B3000, v114, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v116 = v155;
    v15 = 0;
    *a10 = v155;
  }

  else
  {
    v117 = objc_opt_new();
    v118 = a6;
    if (a6 | a4)
    {
      LOWORD(v119) = a6;
      LOWORD(v120) = a4;
      do
      {
        v121 = objc_autoreleasePoolPush();
        v122 = [objc_alloc(*(v18 + 1200)) initWithX:(v120 - 1) Y:(v119 - 1)];
        [v117 addObject:v122];

        v123 = [objc_alloc(*(v18 + 1200)) initWithX:v120 Y:v119];
        v124 = [v37 objectForKeyedSubscript:v123];
        v125 = [v124 cellIndex];
        v120 = [v125 x];

        v126 = [v37 objectForKeyedSubscript:v123];
        v127 = [v126 cellIndex];
        v119 = [v127 y];

        v18 = 0x2788C1000uLL;
        objc_autoreleasePoolPop(v121);
      }

      while (v119 | v120);
    }

    v128 = [objc_alloc(*(v18 + 1200)) initWithX:a4 Y:v118];
    v129 = [RTDTWResult alloc];
    v130 = [v37 objectForKeyedSubscript:v128];
    [v130 distance];
    v132 = v131;
    v133 = [v117 reverseObjectEnumerator];
    v134 = [v133 allObjects];
    v15 = [(RTDTWResult *)v129 initWithDistance:v134 cellIndices:v132];

    v37 = 0;
    v115 = v155;
  }

  objc_autoreleasePoolPop(v140);
LABEL_87:
  v17 = 0;
LABEL_88:

  return v15;
}

- (CLLocationCoordinate2D)_reduce_by_half:(CLLocationCoordinate2D *)a3 count:(unint64_t)a4 outputCount:(unint64_t *)a5 error:(id *)a6
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = malloc_type_malloc(((8 * a4) & 0xFFFFFFFFFFFFFFF0) + 16, 0x1000040451B5BE8uLL);
    v11 = v10;
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v30 = a5;
      v12 = 0;
      v13 = ((a4 & 0xFFFFFFFFFFFFFFFELL) - 1) >> 1;
      v14 = v10 + 8;
      v15 = a3 + 1;
      v16 = 1;
      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        if (v16 >= a4)
        {
          break;
        }

        latitude = v15[-1].latitude;
        longitude = v15[-1].longitude;
        v20 = v15->latitude;
        v21 = v15->longitude;
        v15 += 2;
        ++v12;
        *(v14 - 8) = CLLocationCoordinate2DMake((latitude + v20) * 0.5, (longitude + v21) * 0.5);
        objc_autoreleasePoolPop(v17);
        v16 += 2;
        v14 += 16;
        if (v13 + 1 == v12)
        {
          v22 = 0;
          LODWORD(v12) = v13 + 1;
          goto LABEL_13;
        }
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277D01448];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"index out of bounds";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v22 = [v25 errorWithDomain:v26 code:7 userInfo:v27];

      objc_autoreleasePoolPop(v17);
LABEL_13:
      a5 = v30;
    }

    else
    {
      LODWORD(v12) = 0;
      v22 = 0;
    }

    v24 = malloc_type_realloc(v11, 16 * v12, 0x1000040451B5BE8uLL);
    *a5 = v12;
    if (v22)
    {
      if (a6)
      {
        v28 = v22;
        *a6 = v22;
      }

      if (v24)
      {
        free(v24);
        v24 = 0;
      }
    }
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: x", buf, 2u);
    }

    if (a6)
    {
      _RTErrorInvalidParameterCreate(@"x");
      *a6 = v24 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v24;
}

- (id)_expand_windowWithPath:(id)a3 len_x:(signed __int16)a4 len_y:(signed __int16)a5 radius:(signed __int16)a6 error:(id *)a7
{
  v8 = a6;
  v40 = a4;
  v41 = a5;
  v60 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (v9)
  {
    v39 = objc_opt_new();
    v38 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CBEB58] setWithArray:v9];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v9;
    v44 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v44)
    {
      v43 = *v54;
      do
      {
        v11 = 0;
        do
        {
          if (*v54 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v46 = v11;
          v12 = *(*(&v53 + 1) + 8 * v11);
          context = objc_autoreleasePoolPush();
          if (-v8 <= v8)
          {
            LOWORD(v13) = -v8;
            do
            {
              v14 = objc_autoreleasePoolPush();
              LOWORD(v15) = -v8;
              do
              {
                v16 = objc_autoreleasePoolPush();
                v17 = -[RTCellIndex initWithX:Y:]([RTCellIndex alloc], "initWithX:Y:", ([v12 x] + v13), (objc_msgSend(v12, "y") + v15));
                [v10 addObject:v17];

                objc_autoreleasePoolPop(v16);
                v15 = (v15 + 1);
              }

              while (v15 <= v8);
              objc_autoreleasePoolPop(v14);
              v13 = (v13 + 1);
            }

            while (v13 <= v8);
          }

          objc_autoreleasePoolPop(context);
          v11 = v46 + 1;
        }

        while (v46 + 1 != v44);
        v44 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v44);
    }

    v18 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v48 = v10;
    v19 = [v48 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v50;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(v48);
          }

          v23 = *(*(&v49 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = -[RTCellIndex initWithX:Y:]([RTCellIndex alloc], "initWithX:Y:", (2 * [v23 x]), (2 * objc_msgSend(v23, "y")));
          [v18 addObject:v25];

          v26 = -[RTCellIndex initWithX:Y:]([RTCellIndex alloc], "initWithX:Y:", (2 * [v23 x]), ((2 * objc_msgSend(v23, "y")) | 1));
          [v18 addObject:v26];

          v27 = -[RTCellIndex initWithX:Y:]([RTCellIndex alloc], "initWithX:Y:", ((2 * [v23 x]) | 1), (2 * objc_msgSend(v23, "y")));
          [v18 addObject:v27];

          v28 = -[RTCellIndex initWithX:Y:]([RTCellIndex alloc], "initWithX:Y:", ((2 * [v23 x]) | 1), ((2 * objc_msgSend(v23, "y")) | 1));
          [v18 addObject:v28];

          objc_autoreleasePoolPop(v24);
        }

        v20 = [v48 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v20);
    }

    v29 = v39;
    if (v40 < 1)
    {
      goto LABEL_35;
    }

    LOWORD(v30) = 0;
    v31 = 0;
    while (1)
    {
      v47 = objc_autoreleasePoolPush();
      if (v41 <= v31)
      {
        v35 = 0xFFFF;
        goto LABEL_34;
      }

      v32 = 0xFFFF;
      while (1)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = [[RTCellIndex alloc] initWithX:v30 Y:v31];
        if ([v18 containsObject:v34])
        {
          [v39 addObject:v34];
          if (v32 == 0xFFFF)
          {
            v35 = v31;
          }

          else
          {
            v35 = v32;
          }

          goto LABEL_30;
        }

        v35 = 0xFFFF;
        if (v32 != 0xFFFF)
        {
          break;
        }

LABEL_30:

        objc_autoreleasePoolPop(v33);
        v31 = (v31 + 1);
        v32 = v35;
        if (v31 >= v41)
        {
          goto LABEL_34;
        }
      }

      objc_autoreleasePoolPop(v33);
      v35 = v32;
LABEL_34:
      objc_autoreleasePoolPop(v47);
      v30 = (v30 + 1);
      v31 = v35;
      if (v30 >= v40)
      {
LABEL_35:

        objc_autoreleasePoolPop(v38);
        goto LABEL_41;
      }
    }
  }

  v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: path", buf, 2u);
  }

  if (a7)
  {
    *a7 = _RTErrorInvalidParameterCreate(@"path");
  }

  v29 = [MEMORY[0x277CBEA60] array];
LABEL_41:

  return v29;
}

- (double)_dtwDistanceFirstNormBetweenX:(CLLocationCoordinate2D *)a3 y:(CLLocationCoordinate2D *)a4 error:(id *)a5
{
  if (!a3)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: x", buf, 2u);
    }

    if (!a5)
    {
      return 1.79769313e308;
    }

    v8 = @"x";
    goto LABEL_12;
  }

  if (a4)
  {
    return vaddvq_f64(vabdq_f64(*a3, *a4));
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: y", v10, 2u);
  }

  if (a5)
  {
    v8 = @"y";
LABEL_12:
    *a5 = _RTErrorInvalidParameterCreate(v8);
  }

  return 1.79769313e308;
}

- (double)_dtwDistanceEuclideanBetweenX:(CLLocationCoordinate2D *)a3 y:(CLLocationCoordinate2D *)a4 error:(id *)a5
{
  if (!a3)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: x", buf, 2u);
    }

    if (!a5)
    {
      return 1.79769313e308;
    }

    v9 = @"x";
    goto LABEL_12;
  }

  if (a4)
  {
    v6 = vsubq_f64(*a3, *a4);
    return sqrt(vaddvq_f64(vmulq_f64(v6, v6)));
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: y", v11, 2u);
  }

  if (a5)
  {
    v9 = @"y";
LABEL_12:
    *a5 = _RTErrorInvalidParameterCreate(v9);
  }

  return 1.79769313e308;
}

- (double)_centroidDistanceFromLocations:(CLLocationCoordinate2D *)a3 countOfFromLocations:(unint64_t)a4 toLocations:(CLLocationCoordinate2D *)a5 countOfToLocations:(unint64_t)a6 error:(id *)a7
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromLocations", buf, 2u);
    }

    if (!a7)
    {
      return 1.79769313e308;
    }

    v29 = @"fromLocations";
    goto LABEL_21;
  }

  if (!a5)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: toLocations", buf, 2u);
    }

    if (!a7)
    {
      return 1.79769313e308;
    }

    v29 = @"toLocations";
LABEL_21:
    *a7 = _RTErrorInvalidParameterCreate(v29);
    return 1.79769313e308;
  }

  v10 = 1.79769313e308;
  if (a4 && a6)
  {
    v15 = objc_autoreleasePoolPush();
    v39 = 0;
    [(RTDistanceCalculator *)self computeCentroid:a3 locationsCount:a4 error:&v39];
    v17 = v16;
    v19 = v18;
    v20 = v39;
    *buf = v17;
    *&buf[8] = v19;
    if (v20 || (v37 = 0, [(RTDistanceCalculator *)self computeCentroid:a5 locationsCount:a6 error:&v37], v22 = v21, v24 = v23, v20 = v37, *v38 = v22, *&v38[1] = v24, v20))
    {
      v25 = v20;
      v10 = 1.79769313e308;
      goto LABEL_8;
    }

    v44.latitude = v17;
    v44.longitude = v19;
    if (CLLocationCoordinate2DIsValid(v44) && (v45.latitude = v22, v45.longitude = v24, CLLocationCoordinate2DIsValid(v45)))
    {
      v36 = 0;
      [(RTDistanceCalculator *)self distanceFromLocationCoordinate:buf toLocationCoordinate:v38 error:&v36];
      v10 = v32;
      v25 = v36;
      if (v25)
      {
LABEL_8:
        objc_autoreleasePoolPop(v15);
        if (a7)
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            v35 = NSStringFromSelector(a2);
            *buf = 138412802;
            *&buf[4] = v34;
            *&buf[12] = 2112;
            *&buf[14] = v35;
            v41 = 2112;
            v42 = v25;
            _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v27 = v25;
          *a7 = v25;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = 1.79769313e308;
    }

    objc_autoreleasePoolPop(v15);
    v25 = 0;
LABEL_12:
  }

  return v10;
}

- (CLLocationCoordinate2D)computeCentroid:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations", buf, 2u);
    }

    if (a5)
    {
      *a5 = _RTErrorInvalidParameterCreate(@"locations");
    }

    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_10:
    latitude = *MEMORY[0x277CE4278];
    longitude = *(MEMORY[0x277CE4278] + 8);
    goto LABEL_11;
  }

  v7 = 0;
  v14 = 0u;
  do
  {
    v8 = objc_autoreleasePoolPush();
    v14 = vaddq_f64(v14, a3[v7]);
    objc_autoreleasePoolPop(v8);
    ++v7;
  }

  while (a4 != v7);
  v11 = CLLocationCoordinate2DMake(v14.f64[0] / a4, v14.f64[1] / a4);
  longitude = v11.longitude;
  latitude = v11.latitude;
LABEL_11:
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (double)computeBoundingBoxArea:(CGRect)a3 locationsCount:(unint64_t)a4 error:(id *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34 = *MEMORY[0x277D85DE8];
  [(RTDistanceCalculator *)self _computeAreaFromRect:a4, a5];
  v12 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v18 = 138414083;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2048;
      v23 = a4;
      v24 = 2053;
      v25 = x;
      v26 = 2053;
      v27 = y;
      v28 = 2053;
      v29 = width;
      v30 = 2053;
      v31 = height;
      v32 = 2053;
      v33 = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, locations count, %lu, rect x, %{sensitive}f, rect y, %{sensitive}f, rect width, %{sensitive}f, rect height, %{sensitive}f, rectArea, %{sensitive}f", &v18, 0x52u);
    }
  }

  return v12;
}

- (double)computeIntersectionOverUnionUsingBoundingBoxBetweenLocations:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 otherLocations:(CLLocationCoordinate2D *)a5 otherLocationsCount:(unint64_t)a6 error:(id *)a7
{
  v101[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: locations";
LABEL_14:
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    }

LABEL_23:
    v25 = 2.22507386e-308;
    goto LABEL_24;
  }

  if (!a5)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: otherLocations";
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (a4 < 4 || a6 <= 3)
  {
    v28 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277D01448];
    v100 = *MEMORY[0x277CCA450];
    v101[0] = @"less number of locations than required";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:&v100 count:{1, a6}];
    v26 = [v28 errorWithDomain:v29 code:7 userInfo:v30];

    if (!a7)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v67[1] = 0;
  [RTDistanceCalculator cgrectFromCoordinates:"cgrectFromCoordinates:locationsCount:error:" locationsCount:? error:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = 0;
  v22 = v21;
  if (a7 && v21)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(a2);
      *buf = 138412802;
      v69 = v58;
      v70 = 2112;
      v71 = v59;
      v72 = 2112;
      v73 = v22;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v24 = v22;
    *a7 = v22;
    v25 = 2.22507386e-308;
    v26 = v22;
    goto LABEL_24;
  }

  v67[0] = v21;
  [(RTDistanceCalculator *)self cgrectFromCoordinates:a5 locationsCount:a6 error:v67];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v26 = v67[0];

  if (a7 && v26)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = NSStringFromSelector(a2);
      *buf = 138412802;
      v69 = v61;
      v70 = 2112;
      v71 = v62;
      v72 = 2112;
      v73 = v26;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

LABEL_22:
    v40 = v26;
    *a7 = v26;
    goto LABEL_23;
  }

  v102.origin.x = v14;
  v102.origin.y = v16;
  v102.size.width = v18;
  v102.size.height = v20;
  v104.origin.x = v32;
  v104.origin.y = v34;
  v104.size.width = v36;
  v104.size.height = v38;
  v103 = CGRectIntersection(v102, v104);
  [(RTDistanceCalculator *)self _computeAreaFromRect:v103.origin.x, v103.origin.y, v103.size.width, v103.size.height];
  v42 = v20;
  v44 = v43;
  v63 = v42;
  [(RTDistanceCalculator *)self _computeAreaFromRect:v14, v16, v18];
  v64 = v36;
  v65 = v38;
  v45 = v38;
  v47 = v46;
  [(RTDistanceCalculator *)self _computeAreaFromRect:v32, v34, v36, v45];
  v49 = v48;
  v66 = v44;
  v50 = v47 + v48 - v44;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v51 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = NSStringFromSelector(a2);
      *buf = 138416131;
      v69 = v53;
      v70 = 2112;
      v71 = v54;
      v72 = 2048;
      v73 = a4;
      v74 = 2048;
      v75 = a6;
      v76 = 2053;
      v77 = v14;
      v78 = 2053;
      v79 = v16;
      v80 = 2053;
      v81 = v18;
      v82 = 2053;
      v83 = v63;
      v84 = 2053;
      v85 = v32;
      v86 = 2053;
      v87 = v34;
      v88 = 2053;
      v89 = v64;
      v90 = 2053;
      v91 = v65;
      v92 = 2053;
      v93 = v47;
      v94 = 2053;
      v95 = v49;
      v96 = 2053;
      v97 = v66;
      v98 = 2053;
      v99 = v50;
      _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, %@, locations count, %lu, otherLocations count, %lu, rect1 x, %{sensitive}f, rect1 y, %{sensitive}f, rect1 width, %{sensitive}f, rect1 height, %{sensitive}f, rect2 x, %{sensitive}f, rect2 y, %{sensitive}f, rect2 width, %{sensitive}f, rect2 height, %{sensitive}f, rect1Area, %{sensitive}f, rect2Area, %{sensitive}f, intersectionArea, %{sensitive}f, unionArea, %{sensitive}f,", buf, 0xA2u);
    }
  }

  if (v49 == 0.0 || v47 == 0.0 || v50 == 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v66 / v50;
  }

LABEL_24:

  return v25;
}

- (CGRect)cgrectFromCoordinates:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 error:(id *)a5
{
  v58[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a4;
    if (a4 >= 4)
    {
      v15 = a3;
      v42 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      latitudea = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      do
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *v15++;
        latitudea = vbslq_s8(vcgtq_f64(latitudea, v19), v19, latitudea);
        v42 = vbslq_s8(vcgtq_f64(v19, v42), v19, v42);
        objc_autoreleasePoolPop(v18);
        --v6;
      }

      while (v6);
      v50 = CLLocationCoordinate2DMake(latitudea.f64[0], latitudea.f64[1]);
      v49 = CLLocationCoordinate2DMake(latitudea.f64[0], v42.f64[1]);
      v48 = CLLocationCoordinate2DMake(v42.f64[0], v42.f64[1]);
      v47 = 0;
      [(RTDistanceCalculator *)self distanceFromLocationCoordinate:&v50 toLocationCoordinate:&v49 error:&v47];
      v43 = v20;
      v21 = v47;
      v22 = v21;
      if (a5 && v21)
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromSelector(a2);
          *buf = 138412802;
          v52 = v35;
          v53 = 2112;
          v54 = v36;
          v55 = 2112;
          v56 = v22;
          _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v24 = v22;
        *a5 = v22;
        v25 = *MEMORY[0x277CBF398];
        v26 = *(MEMORY[0x277CBF398] + 16);
        v10 = v22;
      }

      else
      {
        v46 = v21;
        [(RTDistanceCalculator *)self distanceFromLocationCoordinate:&v49 toLocationCoordinate:&v48 error:&v46];
        v40 = v27;
        v10 = v46;

        if (a5 && v10)
        {
          v28 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            v39 = NSStringFromSelector(a2);
            *buf = 138412802;
            v52 = v38;
            v53 = 2112;
            v54 = v39;
            v55 = 2112;
            v56 = v10;
            _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v29 = v10;
          *a5 = v10;
          v25 = *MEMORY[0x277CBF398];
          v26 = *(MEMORY[0x277CBF398] + 16);
        }

        else
        {
          v30.f64[0] = v43;
          v30.f64[1] = v40;
          v31 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
          v26 = vbslq_s8(vcgtq_f64(v31, v30), v31, v30);
          v25 = latitudea;
        }
      }

      *v41 = v26;
      *latitude = v25;
    }

    else
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D01448];
      v57 = *MEMORY[0x277CCA450];
      v58[0] = @"less number of locations than required";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      v10 = [v7 errorWithDomain:v8 code:7 userInfo:v9];

      if (a5)
      {
        v11 = v10;
        *a5 = v10;
      }

      *v41 = *(MEMORY[0x277CBF398] + 16);
      *latitude = *MEMORY[0x277CBF398];
    }

    v14 = *v41;
    v13 = *latitude;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations", buf, 2u);
    }

    v13 = *MEMORY[0x277CBF398];
    v14 = *(MEMORY[0x277CBF398] + 16);
  }

  v32 = *(&v13 + 1);
  v33 = *(&v14 + 1);
  result.size.width = *&v14;
  result.origin.x = *&v13;
  result.size.height = v33;
  result.origin.y = v32;
  return result;
}

- (CLLocationCoordinate2D)rectVerticesFromCoordinates:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 ignoreNFirstAndLastLocations:(unint64_t)a5 error:(id *)a6
{
  v57[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations", &v36, 2u);
    }

    goto LABEL_7;
  }

  if (2 * a5 + 4 > a4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D01448];
    v56 = *MEMORY[0x277CCA450];
    v57[0] = @"less number of locations than required";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v10 = [v7 errorWithDomain:v8 code:7 userInfo:v9];

    if (a6)
    {
      v11 = v10;
      v12 = 0;
      *a6 = v10;
      goto LABEL_26;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_26;
  }

  if (a4 - a5 <= a5)
  {
    v18 = 1.79769313e308;
    v19 = -1.79769313e308;
    v16 = -1.79769313e308;
    v17 = 1.79769313e308;
  }

  else
  {
    v14 = a4 - 2 * a5;
    p_longitude = &a3[a5].longitude;
    v16 = -1.79769313e308;
    v17 = 1.79769313e308;
    v18 = 1.79769313e308;
    v19 = -1.79769313e308;
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(p_longitude - 1);
      v22 = *p_longitude;
      if (v21 < v17)
      {
        v17 = *(p_longitude - 1);
      }

      if (v21 > v16)
      {
        v16 = *(p_longitude - 1);
      }

      if (v22 < v18)
      {
        v18 = *p_longitude;
      }

      if (v22 > v19)
      {
        v19 = *p_longitude;
      }

      objc_autoreleasePoolPop(v20);
      p_longitude += 2;
      --v14;
    }

    while (v14);
  }

  v12 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
  *v12 = CLLocationCoordinate2DMake(v17, v18);
  v12[1] = CLLocationCoordinate2DMake(v17, v19);
  v12[2] = CLLocationCoordinate2DMake(v16, v18);
  v12[3] = CLLocationCoordinate2DMake(v16, v19);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      latitude = v12->latitude;
      longitude = v12->longitude;
      v30 = v12[1].latitude;
      v31 = v12[1].longitude;
      v32 = v12[2].latitude;
      v33 = v12[2].longitude;
      v34 = v12[3].latitude;
      v35 = v12[3].longitude;
      v36 = 138414595;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      v40 = 2053;
      v41 = latitude;
      v42 = 2053;
      v43 = longitude;
      v44 = 2053;
      v45 = v30;
      v46 = 2053;
      v47 = v31;
      v48 = 2053;
      v49 = v32;
      v50 = 2053;
      v51 = v33;
      v52 = 2053;
      v53 = v34;
      v54 = 2053;
      v55 = v35;
      _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "%@, %@, rect vertices, 0, lat, %{sensitive}f, lon, %{sensitive}f, 1, lat, %{sensitive}f, lon, %{sensitive}f, 2, lat, %{sensitive}f, lon, %{sensitive}f, 3, lat, %{sensitive}f, lon, %{sensitive}f, ", &v36, 0x66u);
    }
  }

  v10 = 0;
LABEL_26:

  return v12;
}

@end