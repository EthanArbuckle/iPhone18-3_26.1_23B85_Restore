@interface RTTripClusterProcessor
+ (double)calculateDTWDistanceBetweenTrip1:(id)a3 trip2:(id)a4 windowSize:(unint64_t)a5;
+ (double)getCourseBetweenLat1:(double)a3 lon1:(double)a4 lat2:(double)a5 lon2:(double)a6;
+ (double)haversineDistanceBetweenPoints_km:(double)a3 lon1:(double)a4 lat2:(double)a5 lon2:(double)a6;
+ (id)getCLTripSegmentRoadDataFromArrayOfRTTripClusterRoute:(id)a3;
+ (id)getWaypointIDFromClusterID:(id)a3;
- (BOOL)getSimulatedLocationOnRoute:(id)a3 convertedRoutes:(id)a4 cluster:(id)a5;
- (BOOL)isTripSegmentValidForClustering:(id)a3 locationsArray:(id)a4;
- (BOOL)updateClusterRoadTransitionsForClusterID:(id)a3 usingTripSegment:(id)a4 withTransitions:(id)a5 tripClusterRoadTransitionsStore:(id)a6 tripClusterRouteStore:(id)a7 tripClusterStore:(id)a8 tripClusterWaypointStore:(id)a9 startLat:(double)a10 startLon:(double)a11 endLat:(double)a12 endLon:(double)a13 traversalCount:(int)a14;
- (BOOL)updateClusterRouteUsingClusterRoadTransitionsWithClusterID:(id)a3 tripClusterStore:(id)a4 tripClusterRouteStore:(id)a5 tripClusterWaypointStore:(id)a6 tripClusterRouteTransitionsStore:(id)a7 startLat:(double)a8 startLon:(double)a9 endLat:(double)a10 endLon:(double)a11 traversalCount:(int)a12;
- (BOOL)updateClusterRouteUsingWaypointsWithClusterID:(id)a3 tripClusterStore:(id)a4 tripClusterRouteStore:(id)a5 tripClusterWaypointStore:(id)a6;
- (RTTripClusterProcessor)initWithOptions:(id)a3 defaultsManager:(id)a4;
- (double)getDistanceToRoadFromLatitude:(double)a3 longitude:(double)a4 roadStart:(id)a5 roadEnd:(id)a6;
- (id)getCLTripSegmentProcessorOptions;
- (void)_collectClusterMetric:(id)a3 cluster:(id)a4 dtwForUnmatchedTripAvg:(double)a5 dtwForMatchedTripAvg:(double)a6 tripClusterStore:(id)a7 tripSegment:(id)a8 tripClusterRoute:(id)a9 clusterStartTime:(id)a10;
- (void)_updateWalkAndBikeClustersForCommuteID:(id)a3 fetchedClusters:(id)a4 walkAndBikeTripStats:(id)a5 startLatitude:(double)a6 startLongitude:(double)a7 endLatitude:(double)a8 endLongitude:(double)a9 lastTimeTaken:(id)a10 tripClusterStore:(id)a11;
- (void)createAndStoreNewClusterForTripSegment:(id)a3 tripDuration:(double)a4 tripDistance:(double)a5 tripClusterStore:(id)a6 tripClusterRecencyStore:(id)a7 tripClusterRouteStore:(id)a8 tripClusterWaypointStore:(id)a9 tripClusterRouteTransitionsStore:(id)a10 tripClusterScheduleStore:(id)a11 withRoadTransitions:(id)a12 tripClusterCommuteID:(id)a13;
- (void)deferClusterProcessing:(BOOL)a3;
- (void)deleteWaypointsForClustersWithDuplicateWaypoints:(id)a3 tripClusterWaypointStore:(id)a4 tripClusterRouteStore:(id)a5 tripClusterRouteTransitionsStore:(id)a6 minimumTraversalCountForLearnedRoutes:(int)a7;
- (void)fillInRouteLocationsForClustersInStore:(id)a3 tripClusterRouteStore:(id)a4 tripClusterWaypointStore:(id)a5 tripClusterRoadTransitionsStore:(id)a6 minimumTraversalCountForLearnedRoutes:(int)a7;
- (void)getTripClusterRouteAsArrayOfRoadStartAndStopCoordinates:(id)a3 decimatedTripClusterRoute:(id *)a4;
- (void)processTripSegment:(id)a3 locationsArray:(id)a4 tripClusterStore:(id)a5 tripClusterRouteStore:(id)a6 tripClusterWaypointStore:(id)a7 tripClusterRouteRoadTransitionsStore:(id)a8 tripClusterRecencyStore:(id)a9 tripClusterScheduleStore:(id)a10 tripSegmentRoadTransitionsStore:(id)a11 walkAndBikeTripStats:(id)a12 tripSegmentRoadTransitions:(id)a13 tripDuration:(double)a14;
- (void)processTripSegmentStatsWithNoDrive:(id)a3 tripClusterStore:(id)a4 tripClusterRouteStore:(id)a5 originLatitude:(double)a6 originLongitude:(double)a7 destLatitude:(double)a8 destLongitude:(double)a9 lastTimeTaken:(id)a10;
@end

@implementation RTTripClusterProcessor

- (RTTripClusterProcessor)initWithOptions:(id)a3 defaultsManager:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = RTTripClusterProcessor;
  v8 = [(RTTripClusterProcessor *)&v18 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [[RTTripClusterProcessorOptions alloc] initWithDefaultsManager:v7];
    }

    options = v8->_options;
    v8->_options = v9;

    if ([(RTTripClusterProcessorOptions *)v8->_options recordDebuggingDataInFile])
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
      debuggingData = v8->_debuggingData;
      v8->_debuggingData = v11;
    }

    objc_storeStrong(&v8->_defaultsManager, a4);
    v8->_shouldDeferClusterProcessing = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = v8->_options;
        *buf = 138412546;
        v20 = v15;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@,TripClusteringOptions,%@", buf, 0x16u);
      }
    }
  }

  return v8;
}

+ (double)haversineDistanceBetweenPoints_km:(double)a3 lon1:(double)a4 lat2:(double)a5 lon2:(double)a6
{
  v31 = *MEMORY[0x277D85DE8];
  RTCommonIsCoordinateValid();
  if (v10 == 0.0)
  {
    v19 = -1.0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return v19;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = 138412803;
      v26 = v22;
      v27 = 2053;
      v28 = a3;
      v29 = 2053;
      v30 = a4;
LABEL_10:
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@,Error, first coordinate,%{sensitive}.7lf,%{sensitive}.7lf,out-of-range", &v25, 0x20u);
    }

LABEL_11:

    return v19;
  }

  RTCommonIsCoordinateValid();
  if (v11 == 0.0)
  {
    v19 = -1.0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return v19;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      v25 = 138412803;
      v26 = v22;
      v27 = 2053;
      v28 = a5;
      v29 = 2053;
      v30 = a6;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v12 = a5 * 0.0174532925;
  v13 = (a6 - a4) * 0.0174532925;
  v14 = sin((v12 - a3 * 0.0174532925) * 0.5);
  v15 = sin(v13 * 0.5);
  v16 = cos(a3 * 0.0174532925);
  v17 = v15 * (v16 * cos(v12) * v15) + v14 * v14;
  v18 = atan2(sqrt(v17), sqrt(1.0 - v17));
  return (v18 + v18) * 6371.0;
}

+ (double)calculateDTWDistanceBetweenTrip1:(id)a3 trip2:(id)a4 windowSize:(unint64_t)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v43 = a4;
  if (!v7 || !v43 || ![v7 count] || !objc_msgSend(v43, "count"))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138412290;
        v46 = v34;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@,One or both trip locations are invalid or empty", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v41 = v7;
  v40 = [v7 count];
  v44 = [v43 count];
  v8 = malloc_type_malloc(8 * v44 + 8, 0x100004000313F17uLL);
  v9 = malloc_type_malloc(8 * v44 + 8, 0x100004000313F17uLL);
  v10 = v9;
  if (!v8 || !v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138412290;
        v46 = v39;
        _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@,Memory allocation failed for DTW computation", buf, 0xCu);
      }
    }

    if (v8)
    {
      free(v8);
    }

    if (v10)
    {
      free(v10);
    }

LABEL_29:
    v35 = 1.79769313e308;
    goto LABEL_30;
  }

  *v8 = 0;
  if (v44)
  {
    for (i = 1; i <= v44; ++i)
    {
      v8[i] = 0x7FEFFFFFFFFFFFFFLL;
    }
  }

  if (v40)
  {
    v42 = 1;
    v12 = MEMORY[0x277D86220];
    do
    {
      v13 = v8;
      *v10 = 1.79769313e308;
      if (v44)
      {
        v14 = 0;
        do
        {
          v15 = [v7 objectAtIndexedSubscript:v42 - 1];
          v16 = [v43 objectAtIndexedSubscript:v14];
          v17 = v16;
          if (v15 && v16)
          {
            [v15 latitude];
            v19 = v18;
            [v15 longitude];
            v21 = v20;
            [v17 latitude];
            v23 = v22;
            [v17 longitude];
            [a1 haversineDistanceBetweenPoints_km:v19 lon1:v21 lat2:v23 lon2:v24];
            v26 = v25 + fmin(v13[v14 + 1], fmin(v10[v14], v13[v14]));
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v27 = v13;
            v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = objc_opt_class();
              v30 = NSStringFromClass(v29);
              *buf = 138412802;
              v46 = v30;
              v47 = 2048;
              v48 = v42;
              v49 = 2048;
              v50 = v14 + 1;
              v12 = MEMORY[0x277D86220];
              _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@,Invalid points encountered at i,%lu, j,%lu", buf, 0x20u);

              v7 = v41;
            }

            v26 = 1.79769313e308;
            v13 = v27;
          }

          else
          {
            v26 = 1.79769313e308;
          }

          v10[v14 + 1] = v26;

          v31 = v14 + 2;
          ++v14;
        }

        while (v31 <= v44);
      }

      v8 = v10;
      v10 = v13;
      ++v42;
    }

    while (v42 <= v40);
  }

  else
  {
    v13 = v9;
  }

  v35 = *&v8[v44];
  free(v8);
  free(v13);
LABEL_30:

  return v35;
}

+ (double)getCourseBetweenLat1:(double)a3 lon1:(double)a4 lat2:(double)a5 lon2:(double)a6
{
  v36 = *MEMORY[0x277D85DE8];
  RTCommonIsCoordinateValid();
  if (v10 == 0.0)
  {
    v12 = -1.0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return v12;
    }

    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v19 = objc_opt_class();
    v15 = NSStringFromClass(v19);
    v26 = 138412803;
    v27 = v15;
    v28 = 2053;
    v29 = a3;
    v30 = 2053;
    v31 = a4;
    v16 = "%@,Error, first coordinate,%{sensitive}.7lf,%{sensitive}.7lf,out-of-range";
LABEL_17:
    v17 = v13;
    v18 = 32;
    goto LABEL_18;
  }

  RTCommonIsCoordinateValid();
  if (v11 == 0.0)
  {
    v12 = -1.0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return v12;
    }

    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v24 = objc_opt_class();
    v15 = NSStringFromClass(v24);
    v26 = 138412803;
    v27 = v15;
    v28 = 2053;
    v29 = a5;
    v30 = 2053;
    v31 = a6;
    v16 = "%@,Error, first coordinate,%{sensitive}.7lf,%{sensitive}.7lf,out-of-range";
    goto LABEL_17;
  }

  if (vabdd_f64(a3, a5) >= 0.0000001 || vabdd_f64(a4, a6) >= 0.0000001)
  {
    v20 = __sincos_stret((a6 - a4) * 0.0174532925);
    v21 = __sincos_stret(a5 * 0.0174532925);
    v22 = __sincos_stret(a3 * 0.0174532925);
    v23 = atan2(v21.__cosval * v20.__sinval, -(v22.__sinval * v21.__cosval) * v20.__cosval + v22.__cosval * v21.__sinval) * 57.2957795;
    if (v23 >= 0.0)
    {
      return v23;
    }

    else
    {
      return v23 + 360.0;
    }
  }

  else
  {
    v12 = -1.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v26 = 138413315;
        v27 = v15;
        v28 = 2053;
        v29 = a3;
        v30 = 2053;
        v31 = a4;
        v32 = 2053;
        v33 = a5;
        v34 = 2053;
        v35 = a6;
        v16 = "%@,Error,first,%{sensitive}.7lf,%{sensitive}.7lf,and second,%{sensitive}.7lf,%{sensitive}.7lf,coordinates are same";
        v17 = v13;
        v18 = 52;
LABEL_18:
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, v16, &v26, v18);
      }

LABEL_19:
    }
  }

  return v12;
}

uint64_t __75__RTTripClusterProcessor_sortRoadTransitionStoreBySequenceNumberAscending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 roadSequenceNumber];
  if (v6 >= [v5 roadSequenceNumber])
  {
    v8 = [v4 roadSequenceNumber];
    v7 = v8 > [v5 roadSequenceNumber];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)getTripClusterRouteAsArrayOfRoadStartAndStopCoordinates:(id)a3 decimatedTripClusterRoute:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v34;
    v31 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v6 lastObject];

        if ([v12 clRoadID] != v9 || v12 == v13)
        {
          if (v12 == v13)
          {
            [v5 addObject:v12];
          }

          if ([v5 count])
          {
            v15 = objc_alloc(MEMORY[0x277CBFC00]);
            v16 = [v5 firstObject];
            [v16 latitude];
            v18 = v17;
            [v5 firstObject];
            v19 = v8;
            v21 = v20 = v10;
            [v21 longitude];
            v23 = [v15 initWithLatitude:v18 longitude:v22];

            [*a4 addObject:v23];
            v24 = objc_alloc(MEMORY[0x277CBFC00]);
            v25 = [v5 lastObject];
            [v25 latitude];
            v27 = v26;
            v28 = [v5 lastObject];
            [v28 longitude];
            v30 = [v24 initWithLatitude:v27 longitude:v29];

            v10 = v20;
            v8 = v19;
            v6 = v31;
            [*a4 addObject:v30];
          }

          v9 = [v12 clRoadID];
          [v5 removeAllObjects];
        }

        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }
}

- (BOOL)isTripSegmentValidForClustering:(id)a3 locationsArray:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if ([v5 modeOfTransportation] == 2)
  {
    v9 = [v5 dateInterval];
    v10 = [v9 startDate];

    v11 = [v5 dateInterval];
    v12 = [v11 endDate];

    if ([v5 modeOfTransportation] == 2)
    {
      v13 = 90.0;
    }

    else
    {
      v13 = 30.0;
    }

    if (!v6 || !v10 || !v12 || ![v6 count] || (objc_msgSend(v5, "dateInterval"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "duration"), v16 = v15, v14, v16 < v13))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v6 count];
          v19 = [v5 identifier];
          v20 = [v19 UUIDString];
          v42 = 138412802;
          v43 = v8;
          v44 = 1024;
          *v45 = v18;
          *&v45[4] = 2112;
          *&v45[6] = v20;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@,Trip startDate, endDate, or locationCount,%d,invalid for clustering,skipping trip,%@", &v42, 0x1Cu);
        }

        goto LABEL_13;
      }

LABEL_14:
      v21 = 0;
LABEL_15:

      goto LABEL_20;
    }

    [v5 originLatitude];
    [v5 originLongitude];
    RTCommonIsCoordinateValid();
    if (v25 == 0.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      [v5 originLatitude];
      v30 = v29;
      [v5 originLongitude];
      v32 = v31;
      v33 = [v5 identifier];
      v34 = [v33 UUIDString];
      v42 = 138413059;
      v43 = v8;
      v44 = 2053;
      *v45 = v30;
      *&v45[8] = 2053;
      *&v45[10] = v32;
      v46 = 2112;
      v47 = v34;
      v35 = "%@,Error,origin coordinates,%{sensitive}.7lf,%{sensitive}.7lf,out-of-range,skipping trip,%@";
    }

    else
    {
      [v5 destinationLatitude];
      [v5 destinationLongitude];
      RTCommonIsCoordinateValid();
      if (v26 == 0.0)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          goto LABEL_13;
        }

        [v5 destinationLatitude];
        v37 = v36;
        [v5 destinationLongitude];
        v39 = v38;
        v33 = [v5 identifier];
        v34 = [v33 UUIDString];
        v42 = 138413059;
        v43 = v8;
        v44 = 2053;
        *v45 = v37;
        *&v45[8] = 2053;
        *&v45[10] = v39;
        v46 = 2112;
        v47 = v34;
        v35 = "%@,Error,destination coordinates,%{sensitive}.7lf,%{sensitive}.7lf,out-of-range,skipping trip,%@";
      }

      else
      {
        if ([v5 modeOfTransportation] == 2)
        {
          v27 = 300.0;
        }

        else
        {
          v27 = 100.0;
        }

        [v5 tripDistance];
        if (v28 > v27)
        {
          v21 = 1;
          goto LABEL_15;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
LABEL_13:

          goto LABEL_14;
        }

        [v5 tripDistance];
        v41 = v40;
        v33 = [v5 identifier];
        v34 = [v33 UUIDString];
        v42 = 138413058;
        v43 = v8;
        v44 = 2048;
        *v45 = v41;
        *&v45[8] = 2048;
        *&v45[10] = v27;
        v46 = 2112;
        v47 = v34;
        v35 = "%@,Invalid tripDistance,%.2lf,threshold,%.2lf,skipping trip,%@";
      }
    }

    _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, v35, &v42, 0x2Au);

    goto LABEL_13;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = 0;
    goto LABEL_22;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v22 = [v5 identifier];
    v23 = [v22 UUIDString];
    v42 = 138412546;
    v43 = v8;
    v44 = 2112;
    *v45 = v23;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,Skipping non-driving trip segment with ID,%@", &v42, 0x16u);
  }

  v21 = 0;
LABEL_20:

LABEL_22:
  return v21;
}

- (void)processTripSegmentStatsWithNoDrive:(id)a3 tripClusterStore:(id)a4 tripClusterRouteStore:(id)a5 originLatitude:(double)a6 originLongitude:(double)a7 destLatitude:(double)a8 destLongitude:(double)a9 lastTimeTaken:(id)a10
{
  v127 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v110 = a5;
  v112 = v15;
  v113 = a10;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v122 = "[RTTripClusterProcessor processTripSegmentStatsWithNoDrive:tripClusterStore:tripClusterRouteStore:originLatitude:originLongitude:destLatitude:destLongitude:lastTimeTaken:]";
    v123 = 1024;
    LODWORD(v124) = 325;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: walkAndBikeTripStats (in %s:%d)", buf, 0x12u);
  }

  if (!v16)
  {
LABEL_7:
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v122 = "[RTTripClusterProcessor processTripSegmentStatsWithNoDrive:tripClusterStore:tripClusterRouteStore:originLatitude:originLongitude:destLatitude:destLongitude:lastTimeTaken:]";
      v123 = 1024;
      LODWORD(v124) = 326;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusterStore (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (!v113)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v122 = "[RTTripClusterProcessor processTripSegmentStatsWithNoDrive:tripClusterStore:tripClusterRouteStore:originLatitude:originLongitude:destLatitude:destLongitude:lastTimeTaken:]";
      v123 = 1024;
      LODWORD(v124) = 327;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lastTimeTaken (in %s:%d)", buf, 0x12u);
    }
  }

  if ([(RTTripClusterProcessorOptions *)self->_options enableWalkBikeClustering])
  {
    if ([v15 hasValidData])
    {
      RTCommonIsCoordinateValid();
      if (v20 == 0.0)
      {
        v73 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        v78 = objc_opt_class();
        v75 = NSStringFromClass(v78);
        *buf = 138412803;
        v122 = v75;
        v123 = 2053;
        v124 = a6;
        v125 = 2053;
        v126 = a7;
        v79 = "%@,Error,origin latitude,%{sensitive}.7lf or longitude,%{sensitive}.7lf out-of-range,skipping non-driving trip";
        goto LABEL_53;
      }

      RTCommonIsCoordinateValid();
      if (v21 != 0.0)
      {
        *&v22 = COERCE_DOUBLE([objc_alloc(MEMORY[0x277D01368]) initWithStartVisitLatitude:a6 startVisitLongitude:a7 endVisitLatitude:a8 endVisitLongitude:a9]);
        v23 = [v16 getTripClustersWithOptions:v22];
        v108 = [v112 transportModeNoDrive];
        v100 = v23;
        v101 = v22;
        if (v23)
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v115 objects:v120 count:16];
          if (v25)
          {
            v26 = v25;
            v99 = a9;
            v27 = 0;
            v28 = 0.0;
            v29 = *v116;
            v106 = v24;
            v107 = v16;
            v105 = *v116;
            do
            {
              v30 = 0;
              v109 = v26;
              do
              {
                if (*v116 != v29)
                {
                  objc_enumerationMutation(v24);
                }

                v31 = *(*(&v115 + 1) + 8 * v30);
                if ([v31 clusterOrder] == 3)
                {
                  v114 = [MEMORY[0x277CBEAA8] now];
                  LODWORD(v32) = [v31 countOfBikeTraversal];
                  v33 = [v31 countOfWalkTraversal];
                  if (v108 == 3)
                  {
                    v34 = v32 + 1;
                  }

                  else
                  {
                    v34 = v32;
                  }

                  if (v108 == 1)
                  {
                    v32 = v32;
                  }

                  else
                  {
                    v32 = v34;
                  }

                  if (v108 == 1)
                  {
                    v35 = v33 + 1;
                  }

                  else
                  {
                    v35 = v33;
                  }

                  if (v32 <= v35)
                  {
                    v36 = 1;
                  }

                  else
                  {
                    v36 = 3;
                  }

                  [v112 walkTimeDurationBeforeDrive_sec];
                  v37 = a8;
                  v39 = v38;
                  [v31 avgWalkTime];
                  v41 = v40 * 0.5 + v39 * 0.5;
                  [v112 walkDistanceBeforeDrive_m];
                  v43 = v42;
                  [v31 avgWalkDistance];
                  v45 = v44 * 0.5 + v43 * 0.5;
                  [v112 bikeTimeDurationBeforeDrive_sec];
                  v47 = v46;
                  [v31 avgBikeTime];
                  v49 = v48 * 0.5 + v47 * 0.5;
                  [v112 bikeDistanceBeforeDrive_m];
                  v51 = v50;
                  [v31 avgBikeDistance];
                  v53 = v52 * 0.5 + v51 * 0.5;
                  [v31 lastTimeTaken];
                  v55 = v54 = v28;
                  v56 = [v113 laterDate:v55];

                  v57 = [v31 clusterID];
                  v58 = [v31 commuteID];
                  [v31 startLatitude];
                  v60 = v59;
                  [v31 startLongitude];
                  v62 = v61;
                  [v31 endLatitude];
                  v64 = v63;
                  [v31 endLongitude];
                  LOWORD(v98) = 3;
                  v65 = v41;
                  a8 = v37;
                  v66 = v36;
                  v16 = v107;
                  [RTTripCluster createWithClusterID:v57 commuteID:v58 startLatitude:v66 startLongitude:v56 endLatitude:v32 endLongitude:v35 modeOfTransport:v60 lastTimeTaken:v62 avgBikeDistance:v64 avgBikeTime:v67 avgWalkTime:v53 avgWalkDistance:v49 countOfBikeTraversal:v65 countOfWalkTraversal:v45 clusterOrder:v98];
                  *&v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

                  v69 = objc_alloc(MEMORY[0x277D013A8]);
                  v70 = [v31 clusterID];
                  v71 = [v69 initWithClusterID:v70];

                  v72 = [v110 getTripClusterRouteWithOptions:v71];
                  [(RTTripClusterProcessor *)self _collectClusterMetric:v31 cluster:v31 dtwForUnmatchedTripAvg:v107 dtwForMatchedTripAvg:0 tripClusterStore:v72 tripSegment:v114 tripClusterRoute:-1.0 clusterStartTime:-1.0];

                  v26 = v109;
                  v29 = v105;

                  v27 = 1;
                  v28 = *&v68;
                  v24 = v106;
                }

                ++v30;
              }

              while (v26 != v30);
              v26 = [v24 countByEnumeratingWithState:&v115 objects:v120 count:16];
            }

            while (v26);

            a9 = v99;
            if (v27)
            {
              goto LABEL_61;
            }

            goto LABEL_56;
          }
        }

        v28 = 0.0;
LABEL_56:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v81 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            NSStringFromSelector(a2);
            v84 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v122 = v83;
            v123 = 2112;
            v124 = v84;
            v125 = 2112;
            v126 = *&v101;
            _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_INFO, "%@:%@,No clusters found for options,%@", buf, 0x20u);
          }
        }

        v85 = objc_opt_new();
        v86 = objc_opt_new();
        [v112 bikeDistanceBeforeDrive_m];
        v88 = v87;
        [v112 bikeTimeDurationBeforeDrive_sec];
        v90 = v89;
        [v112 walkTimeDurationBeforeDrive_sec];
        v92 = v91;
        [v112 walkDistanceBeforeDrive_m];
        LOWORD(v98) = 3;
        [RTTripCluster createWithClusterID:v85 commuteID:v86 startLatitude:v108 startLongitude:v113 endLatitude:v108 == 3 endLongitude:v108 != 3 modeOfTransport:a6 lastTimeTaken:a7 avgBikeDistance:a8 avgBikeTime:a9 avgWalkTime:v88 avgWalkDistance:v90 countOfBikeTraversal:v92 countOfWalkTraversal:v93 clusterOrder:v98];
        *&v94 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

        v28 = *&v94;
LABEL_61:
        if (v28 != 0.0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v95 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
            {
              v96 = NSStringFromSelector(a2);
              *buf = 138412546;
              v122 = v96;
              v123 = 2112;
              v124 = v28;
              _os_log_impl(&dword_2304B3000, v95, OS_LOG_TYPE_INFO, "%@,%@", buf, 0x16u);
            }
          }

          v119 = v28;
          v97 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
          [v16 storeTripClusters:v97];
        }

        v73 = v101;
        goto LABEL_68;
      }

      v73 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v80 = objc_opt_class();
        v75 = NSStringFromClass(v80);
        *buf = 138412803;
        v122 = v75;
        v123 = 2053;
        v124 = a8;
        v125 = 2053;
        v126 = a9;
        v79 = "%@,Error,destination latitude,%{sensitive}.7lf or longitude,%{sensitive}.7lf out-of-range,skipping non-driving trip";
LABEL_53:
        _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, v79, buf, 0x20u);
        goto LABEL_48;
      }

LABEL_68:

      goto LABEL_69;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v73 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        goto LABEL_68;
      }

      v77 = objc_opt_class();
      v75 = NSStringFromClass(v77);
      *buf = 138412290;
      v122 = v75;
      _os_log_impl(&dword_2304B3000, v73, OS_LOG_TYPE_INFO, "%@,Skipping non-driving trip segment walkAndBikeTripStats with no data", buf, 0xCu);
      goto LABEL_48;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v73 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_68;
    }

    v74 = objc_opt_class();
    v75 = NSStringFromClass(v74);
    NSStringFromSelector(a2);
    v76 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412546;
    v122 = v75;
    v123 = 2112;
    v124 = v76;
    _os_log_debug_impl(&dword_2304B3000, v73, OS_LOG_TYPE_DEBUG, "%@,%@,walk and bike clusters disabled", buf, 0x16u);

LABEL_48:
    goto LABEL_68;
  }

LABEL_69:
}

- (void)_collectClusterMetric:(id)a3 cluster:(id)a4 dtwForUnmatchedTripAvg:(double)a5 dtwForMatchedTripAvg:(double)a6 tripClusterStore:(id)a7 tripSegment:(id)a8 tripClusterRoute:(id)a9 clusterStartTime:(id)a10
{
  v86 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a7;
  v21 = a8;
  v76 = a9;
  v75 = a10;
  context = objc_autoreleasePoolPush();
  v22 = objc_alloc_init(RTLearnedRouteClusterStatisticsMetrics);
  v24 = v22;
  if (v22)
  {
    *&v23 = a6;
    [(RTLearnedRouteClusterStatisticsMetrics *)v22 setDtwForMatchedTripAvg:v23];
    *&v25 = a5;
    [(RTLearnedRouteClusterStatisticsMetrics *)v24 setDtwForUnmatchedTripAvg:v25];
    v26 = 0.0;
    v27 = v76;
    if ([v19 countOfTraversal] == 2)
    {
      v72 = v24;
      v28 = objc_alloc(MEMORY[0x277D01368]);
      [v18 startLatitude];
      v30 = v29;
      [v18 startLongitude];
      v32 = v31;
      [v18 endLatitude];
      v34 = v33;
      [v18 endLongitude];
      v36 = [v28 initWithStartAndEndVisitLatitude:v30 startLongitude:v32 endLatitude:v34 endLongitude:v35];
      v37 = [v20 getTripClustersWithOptions:v36];
      v38 = v37;
      v26 = 0.0;
      if (v37)
      {
        v24 = v72;
        if ([v37 count])
        {
          v68 = v36;
          v69 = v21;
          v70 = v20;
          v71 = v18;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v67 = v38;
          v39 = v38;
          v40 = [v39 countByEnumeratingWithState:&v77 objects:v81 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = 0;
            v43 = *v78;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v78 != v43)
                {
                  objc_enumerationMutation(v39);
                }

                v45 = *(*(&v77 + 1) + 8 * i);
                v46 = [v45 clusterID];
                v47 = [v19 clusterID];
                if ([v46 isEqual:v47])
                {
                }

                else
                {
                  v48 = [v45 countOfTraversal];

                  if (v48 > 2)
                  {
                    goto LABEL_19;
                  }
                }

                v42 += [v45 countOfTraversal];
              }

              v41 = [v39 countByEnumeratingWithState:&v77 objects:v81 count:16];
            }

            while (v41);
          }

          else
          {
LABEL_19:
            v42 = 0;
          }

          v24 = v72;
          [(RTLearnedRouteClusterStatisticsMetrics *)v72 setTripsToFormLearnedRouteMax:fmax([(RTLearnedRouteClusterStatisticsMetrics *)v72 tripsToFormLearnedRouteMax], v42)];
          v26 = v42;
          v20 = v70;
          v18 = v71;
          v36 = v68;
          v21 = v69;
          v27 = v76;
          v38 = v67;
        }
      }

      else
      {
        v24 = v72;
      }
    }

    if (v21)
    {
      [v21 tripDistance];
      v51 = v50;
    }

    else
    {
      v51 = 0.0;
    }

    [v19 avgTripDistance];
    v53 = v51 + v52 * [v19 countOfTraversal];
    v54 = v53 / ([v19 countOfTraversal] + 1);
    *&v54 = v54;
    [(RTLearnedRouteClusterStatisticsMetrics *)v24 setRouteLengthAvg:v54];
    [v19 maxTripDistance];
    if (v55 < v51)
    {
      v55 = v51;
    }

    *&v55 = v55;
    [(RTLearnedRouteClusterStatisticsMetrics *)v24 setRouteLengthMax:v55];
    *&v56 = [v27 count];
    [(RTLearnedRouteClusterStatisticsMetrics *)v24 setWaypointCountAvg:v56];
    *&v57 = [v27 count];
    [(RTLearnedRouteClusterStatisticsMetrics *)v24 setWaypointCountMax:v57];
    v58 = v24;
    *&v59 = v26;
    [(RTLearnedRouteClusterStatisticsMetrics *)v24 setTripsToFormLearnedRouteAvg:v59];
    v60 = [(RTTripClusterProcessor *)self defaultsManager];
    v49 = [RTClusterLearnedRouteMetrics sharedInstance:v60];

    if (v49)
    {
      v61 = [v49 clusterStatisticsArray];

      if (!v61)
      {
        v62 = [MEMORY[0x277CBEB18] array];
        [v49 setClusterStatisticsArray:v62];
      }

      v63 = [v49 clusterStatisticsArray];
      v24 = v58;
      [v63 addObject:v58];
    }

    else
    {
      v24 = v58;
    }
  }

  else
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = NSStringFromSelector(a2);
      *buf = 138412546;
      v83 = v65;
      v84 = 2112;
      v85 = v66;
      _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@:%@,Cluster metric allocation failed", buf, 0x16u);

      v24 = 0;
    }

    v27 = v76;
  }

  objc_autoreleasePoolPop(context);
}

- (void)processTripSegment:(id)a3 locationsArray:(id)a4 tripClusterStore:(id)a5 tripClusterRouteStore:(id)a6 tripClusterWaypointStore:(id)a7 tripClusterRouteRoadTransitionsStore:(id)a8 tripClusterRecencyStore:(id)a9 tripClusterScheduleStore:(id)a10 tripSegmentRoadTransitionsStore:(id)a11 walkAndBikeTripStats:(id)a12 tripSegmentRoadTransitions:(id)a13 tripDuration:(double)a14
{
  v297 = *MEMORY[0x277D85DE8];
  v262 = a3;
  v257 = a4;
  v263 = a5;
  v259 = a6;
  v261 = a7;
  v260 = a8;
  v256 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v267 = self;
  v25 = objc_opt_class();
  v266 = NSStringFromClass(v25);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v262 identifier];
      v28 = [v27 UUIDString];
      *buf = 138412546;
      v286 = v266;
      v287 = 2112;
      v288 = v28;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@,Processing tripSegment data,tripID,%@", buf, 0x16u);
    }
  }

  v29 = v262;
  v30 = v257;
  if ([(RTTripClusterProcessorOptions *)self->_options recordDebuggingDataInFile])
  {
    [(NSMutableDictionary *)self->_debuggingData removeAllObjects];
    debuggingData = self->_debuggingData;
    v32 = [v262 identifier];
    [(NSMutableDictionary *)debuggingData setValue:v32 forKey:@"tripID"];

    [(NSMutableDictionary *)self->_debuggingData setValue:v257 forKey:@"tripLocations"];
  }

  v33 = v259;
  v34 = v260;
  if ([(RTTripClusterProcessor *)v267 isTripSegmentValidForClustering:v262 locationsArray:v257])
  {
    if ([v24 count])
    {
      v255 = v23;
      v246 = v22;
      v281 = v24;
      [RTTripClusterProcessor sortRoadTransitionStoreBySequenceNumberAscending:&v281];
      v35 = v281;

      v36 = [(RTTripClusterProcessor *)v267 options];
      v37 = [v36 useRoadCoordinatesForDTW];

      v253 = v35;
      if (v37)
      {
        v247 = v21;
        v38 = [MEMORY[0x277CBEB18] array];
        v277 = 0u;
        v278 = 0u;
        v279 = 0u;
        v280 = 0u;
        v39 = v35;
        v40 = [v39 countByEnumeratingWithState:&v277 objects:v296 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v278;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v278 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v277 + 1) + 8 * i);
              v45 = objc_alloc(MEMORY[0x277CBFC00]);
              [v44 fromStartLatitude];
              v47 = v46;
              [v44 fromStartLongitude];
              v49 = [v45 initWithLatitude:v47 longitude:v48];
              [v38 addObject:v49];
              v50 = objc_alloc(MEMORY[0x277CBFC00]);
              [v44 fromEndLatitude];
              v52 = v51;
              [v44 fromEndLongitude];
              v54 = [v50 initWithLatitude:v52 longitude:v53];
              [v38 addObject:v54];
            }

            v41 = [v39 countByEnumeratingWithState:&v277 objects:v296 count:16];
          }

          while (v41);
        }

        v30 = v257;
        v33 = v259;
        v34 = v260;
        v21 = v247;
      }

      else
      {
        v38 = 0;
      }

      v57 = objc_alloc(MEMORY[0x277D01368]);
      [v262 originLatitude];
      v59 = v58;
      [v262 originLongitude];
      v61 = v60;
      [v262 destinationLatitude];
      v63 = v62;
      [v262 destinationLongitude];
      v245 = [v57 initWithStartVisitLatitude:v59 startVisitLongitude:v61 endVisitLatitude:v63 endVisitLongitude:v64];
      v65 = [v263 getTripClustersWithOptions:?];
      v244 = v65;
      if (!v65)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_120;
        }

        v211 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v211, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v286 = v266;
          v287 = 2112;
          v288 = v245;
          _os_log_impl(&dword_2304B3000, v211, OS_LOG_TYPE_INFO, "%@,No clusters fetched for options,%@", buf, 0x16u);
        }

        goto LABEL_119;
      }

      v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v66 = v65;
      v265 = [v66 countByEnumeratingWithState:&v273 objects:v295 count:16];
      if (!v265)
      {

        goto LABEL_115;
      }

      obj = v66;
      v248 = v21;
      v249 = 0;
      v264 = *v274;
      v232 = a14;
LABEL_25:
      v67 = 0;
      while (1)
      {
        if (*v274 != v264)
        {
          objc_enumerationMutation(obj);
        }

        v68 = *(*(&v273 + 1) + 8 * v67);
        context = objc_autoreleasePoolPush();
        v271 = [MEMORY[0x277CBEAA8] now];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v69 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = [v68 clusterID];
            v71 = [v70 UUIDString];
            v72 = [v68 modeOfTransport];
            *buf = 138412802;
            v286 = v266;
            v287 = 2112;
            v288 = v71;
            v289 = 1024;
            LODWORD(v290) = v72;
            _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_INFO, "%@,Fetched cluster with clusterID,%@,transport mode,%d", buf, 0x1Cu);
          }
        }

        v73 = [v68 clusterID];
        v74 = [v34 getRoadTransitionsWithID:v73];

        v75 = [v74 count];
        v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (v75)
        {
          break;
        }

        if (v76)
        {
          v102 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
          {
            v103 = [v68 clusterID];
            v104 = [v103 UUIDString];
            *buf = 138412546;
            v286 = v266;
            v287 = 2112;
            v288 = v104;
            _os_log_impl(&dword_2304B3000, v102, OS_LOG_TYPE_INFO, "%@, Road transitions not found in the local for clusterID,%@,skipping this cluster for DTW attempt", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(context);
LABEL_107:
        if (v265 == ++v67)
        {
          v265 = [obj countByEnumeratingWithState:&v273 objects:v295 count:16];
          if (!v265)
          {
LABEL_109:

            v30 = v257;
            v21 = v248;
            if (v249)
            {
LABEL_120:

              v24 = v253;
              goto LABEL_121;
            }

LABEL_115:
            v211 = objc_opt_new();
            [v262 tripDistance];
            [(RTTripClusterProcessor *)v267 createAndStoreNewClusterForTripSegment:v262 tripDuration:v263 tripDistance:v256 tripClusterStore:v33 tripClusterRecencyStore:v261 tripClusterRouteStore:v34 tripClusterWaypointStore:a14 tripClusterRouteTransitionsStore:v212 tripClusterScheduleStore:v21 withRoadTransitions:v253 tripClusterCommuteID:v211];
            [v262 originLatitude];
            v214 = v213;
            [v262 originLongitude];
            v216 = v215;
            [v262 destinationLatitude];
            v218 = v217;
            [v262 destinationLongitude];
            v220 = v219;
            v221 = [v262 dateInterval];
            v222 = [v221 endDate];
            [(RTTripClusterProcessor *)v267 _updateWalkAndBikeClustersForCommuteID:v211 fetchedClusters:0 walkAndBikeTripStats:v255 startLatitude:v222 startLongitude:v263 endLatitude:v214 endLongitude:v216 lastTimeTaken:v218 tripClusterStore:v220];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v223 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v223, OS_LOG_TYPE_INFO))
              {
                v224 = [v211 UUIDString];
                *buf = 138412546;
                v286 = v266;
                v287 = 2112;
                v288 = v224;
                _os_log_impl(&dword_2304B3000, v223, OS_LOG_TYPE_INFO, "%@,Created new cluster with commuteID,%@", buf, 0x16u);
              }
            }

LABEL_119:

            goto LABEL_120;
          }

          goto LABEL_25;
        }
      }

      v268 = v74;
      if (v76)
      {
        v77 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          v78 = [v68 clusterID];
          v79 = [v78 UUIDString];
          *buf = 138412546;
          v286 = v266;
          v287 = 2112;
          v288 = v79;
          _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@, Road transitions exist in the local for clusterID,%@,continuing with DTW attempt", buf, 0x16u);
        }
      }

      v80 = objc_alloc(MEMORY[0x277D013A8]);
      v81 = [v68 clusterID];
      v82 = [v80 initWithClusterID:v81];

      v269 = v82;
      v83 = [v33 getTripClusterRouteWithOptions:v82];
      v84 = v83;
      if (v83 && [v83 count])
      {
        v85 = v267;
      }

      else
      {
        v86 = [v68 clusterID];
        [v68 startLatitude];
        v88 = v87;
        [v68 startLongitude];
        v90 = v89;
        [v68 endLatitude];
        v92 = v91;
        [v68 endLongitude];
        v85 = v267;
        -[RTTripClusterProcessor updateClusterRouteUsingClusterRoadTransitionsWithClusterID:tripClusterStore:tripClusterRouteStore:tripClusterWaypointStore:tripClusterRouteTransitionsStore:startLat:startLon:endLat:endLon:traversalCount:](v267, "updateClusterRouteUsingClusterRoadTransitionsWithClusterID:tripClusterStore:tripClusterRouteStore:tripClusterWaypointStore:tripClusterRouteTransitionsStore:startLat:startLon:endLat:endLon:traversalCount:", v86, v263, v33, v261, v34, [v68 countOfTraversal], v88, v90, v92, v93);

        v94 = [v33 getTripClusterRouteWithOptions:v269];

        v84 = v94;
        if (!v94)
        {
          goto LABEL_51;
        }
      }

      if ([v84 count])
      {
        v95 = [MEMORY[0x277CBEB18] array];
        v96 = [(RTTripClusterProcessor *)v85 options];
        v97 = [v96 useRoadCoordinatesForDTW];

        if (v97)
        {
          v272 = v95;
          [(RTTripClusterProcessor *)v85 getTripClusterRouteAsArrayOfRoadStartAndStopCoordinates:v84 decimatedTripClusterRoute:&v272];
          v98 = v272;

          if (![v38 count]|| ![v98 count])
          {
            v118 = v98;
            v105 = 1;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v119 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              v33 = v259;
              if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
              {
                v120 = [v68 clusterID];
                v121 = [v120 UUIDString];
                *buf = 138412546;
                v286 = v266;
                v287 = 2112;
                v288 = v121;
                _os_log_impl(&dword_2304B3000, v119, OS_LOG_TYPE_INFO, "%@,failed to get tripRoadCoordinatesArray or fetchedRoutes for clusterID,%@", buf, 0x16u);
              }
            }

            else
            {
              v33 = v259;
            }

            v34 = v260;
            v106 = v268;
            v95 = v118;
            goto LABEL_105;
          }

          v99 = [(RTTripClusterProcessor *)v85 options];
          v254 = v98;
          +[RTTripClusterProcessor calculateDTWDistanceBetweenTrip1:trip2:windowSize:](RTTripClusterProcessor, "calculateDTWDistanceBetweenTrip1:trip2:windowSize:", v38, v98, [v99 windowSize]);
          v101 = v100;
          goto LABEL_58;
        }

        if ([(RTTripClusterProcessor *)v85 getSimulatedLocationOnRoute:v84 convertedRoutes:v95 cluster:v68])
        {
          v34 = v260;
          if ([v257 count] && -[NSObject count](v95, "count"))
          {
            v99 = [(RTTripClusterProcessor *)v85 options];
            +[RTTripClusterProcessor calculateDTWDistanceBetweenTrip1:trip2:windowSize:](RTTripClusterProcessor, "calculateDTWDistanceBetweenTrip1:trip2:windowSize:", v257, v95, [v99 windowSize]);
            v101 = v109;
            v254 = v95;
LABEL_58:

            v110 = [(RTTripClusterProcessor *)v85 options];
            [v110 distanceThreshold_m];
            v112 = v111;

            v113 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
            v33 = v259;
            if (v101 <= v112)
            {
              if (v113)
              {
                v127 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
                {
                  v250 = [v262 identifier];
                  v128 = [v250 UUIDString];
                  v129 = [v68 clusterID];
                  v130 = [v129 UUIDString];
                  v242 = [v68 commuteID];
                  v131 = [v242 UUIDString];
                  *buf = 138413314;
                  v286 = v266;
                  v287 = 2112;
                  v288 = v128;
                  v289 = 2112;
                  v290 = v130;
                  v291 = 2048;
                  v292 = v101;
                  v293 = 2112;
                  v294 = v131;
                  _os_log_impl(&dword_2304B3000, v127, OS_LOG_TYPE_INFO, "%@,tripID,%@ matched clusterID,%@,based on DTW distance,%.4lf,commuteID,%@", buf, 0x34u);
                }
              }

              v132 = [v262 dateInterval];
              v133 = [v132 endDate];
              v134 = [v68 lastTimeTaken];
              v135 = [v133 laterDate:v134];

              v251 = [RTTripCluster alloc];
              v136 = [v68 clusterID];
              [v68 startLatitude];
              v239 = v137;
              [v68 startLongitude];
              v237 = v138;
              [v68 endLatitude];
              v235 = v139;
              [v68 endLongitude];
              v243 = v101;
              v141 = v140;
              log = [v262 modeOfTransportation];
              v142 = [v68 countOfTraversal];
              v143 = [(RTTripClusterProcessor *)v267 options];
              v144 = [v143 maxClusterTraversalCount];

              if (v142 + 1 < v144)
              {
                v145 = (v142 + 1);
              }

              else
              {
                v145 = v144;
              }

              [v68 minTripTime];
              if (v146 >= a14)
              {
                v147 = a14;
              }

              else
              {
                v147 = v146;
              }

              [v68 maxTripTime];
              if (v148 >= a14)
              {
                v149 = v148;
              }

              else
              {
                v149 = a14;
              }

              [v68 avgTripTime];
              v151 = a14 + v150 * [v68 countOfTraversal];
              v152 = v151 / ([v68 countOfTraversal] + 1);
              [v68 minTripDistance];
              v154 = v153;
              [v262 tripDistance];
              if (v154 >= v155)
              {
                v154 = v155;
              }

              [v68 maxTripDistance];
              v157 = v156;
              [v262 tripDistance];
              if (v157 >= v158)
              {
                v159 = v157;
              }

              else
              {
                v159 = v158;
              }

              [v68 avgTripDistance];
              v161 = v160;
              v162 = [v68 countOfTraversal];
              [v262 tripDistance];
              v164 = (v163 + v161 * v162) / ([v68 countOfTraversal] + 1);
              v165 = [v68 commuteID];
              LOWORD(v226) = 0;
              v166 = v239;
              v240 = v135;
              v252 = [(RTTripCluster *)v251 initWithClusterID:v136 startLatitude:log startLongitude:v135 endLatitude:v145 endLongitude:v165 modeOfTransport:1 lastTimeTaken:v166 countOfTraversal:v237 minTripTime:v235 maxTripTime:v141 avgTripTime:v147 minTripDistance:v149 maxTripDistance:v152 avgTripDistance:v154 commuteID:*&v159 isLocked:*&v164 avgBikeDistance:0 avgBikeTime:0 avgWalkDistance:0 avgWalkTime:0 countOfBikeTraversal:0 countOfWalkTraversal:v226 clusterOrder:?];

              v284 = v252;
              v167 = [MEMORY[0x277CBEA60] arrayWithObjects:&v284 count:1];
              [v263 storeTripClusters:v167];

              v168 = [RTTripClusterRecency alloc];
              v169 = [v68 clusterID];
              v170 = [v262 dateInterval];
              v171 = [v170 startDate];
              v172 = [v262 dateInterval];
              v173 = [v172 endDate];
              v174 = [(RTTripClusterRecency *)v168 initWithClusterID:v169 startTime:v171 endTime:v173];

              v238 = v174;
              v283 = v174;
              v175 = [MEMORY[0x277CBEA60] arrayWithObjects:&v283 count:1];
              [v256 storeTripClusterRecency:v175];

              v176 = [RTTripClusterSchedule alloc];
              v177 = [v68 clusterID];
              v178 = [v262 dateInterval];
              v179 = [v178 startDate];
              v180 = [(RTTripClusterSchedule *)v176 initWithTimeAndClusterID:v177 time:v179];

              v236 = v180;
              v282 = v180;
              v181 = [MEMORY[0x277CBEA60] arrayWithObjects:&v282 count:1];
              [v248 storeTripClusterSchedule:v181];

              if ([(RTTripClusterProcessorOptions *)v267->_options recordDebuggingDataInFile])
              {
                v182 = v267->_debuggingData;
                v183 = [v68 clusterID];
                [(NSMutableDictionary *)v182 setValue:v183 forKey:@"routeID"];

                [(NSMutableDictionary *)v267->_debuggingData setValue:v254 forKey:@"clusterRoutePrior"];
                v184 = v267->_debuggingData;
                v185 = [MEMORY[0x277CCABB0] numberWithDouble:v243];
                [(NSMutableDictionary *)v184 setValue:v185 forKey:@"dtwDistance"];

                v186 = v267->_debuggingData;
                v187 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTTripCluster countOfTraversal](v252, "countOfTraversal")}];
                [(NSMutableDictionary *)v186 setValue:v187 forKey:@"taversalCount"];
              }

              v188 = [v68 clusterID];
              [v68 startLatitude];
              v190 = v189;
              [v68 startLongitude];
              v192 = v191;
              [v68 endLatitude];
              v194 = v193;
              [v68 endLongitude];
              v196 = v195;
              LODWORD(v225) = [v68 countOfTraversal] + 1;
              v33 = v259;
              v34 = v260;
              [(RTTripClusterProcessor *)v267 updateClusterRoadTransitionsForClusterID:v188 usingTripSegment:v262 withTransitions:v253 tripClusterRoadTransitionsStore:v260 tripClusterRouteStore:v259 tripClusterStore:v263 tripClusterWaypointStore:v190 startLat:v192 startLon:v194 endLat:v196 endLon:v261 traversalCount:v225];

              v197 = [(RTTripCluster *)v252 commuteID];
              [(RTTripCluster *)v252 startLatitude];
              v199 = v198;
              [(RTTripCluster *)v252 startLongitude];
              v201 = v200;
              [(RTTripCluster *)v252 endLatitude];
              v203 = v202;
              [(RTTripCluster *)v252 endLongitude];
              v205 = v204;
              v206 = [(RTTripCluster *)v252 lastTimeTaken];
              [(RTTripClusterProcessor *)v267 _updateWalkAndBikeClustersForCommuteID:v197 fetchedClusters:obj walkAndBikeTripStats:v255 startLatitude:v206 startLongitude:v263 endLatitude:v199 endLongitude:v201 lastTimeTaken:v203 tripClusterStore:v205];

              a14 = v232;
              v106 = v268;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v207 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
                {
                  v231 = [v68 clusterID];
                  v228 = [v231 UUIDString];
                  v230 = [v68 commuteID];
                  v208 = [v230 UUIDString];
                  v229 = [(RTTripCluster *)v252 commuteID];
                  [v229 UUIDString];
                  loga = v207;
                  v209 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v227 = [v262 identifier];
                  v210 = [v227 UUIDString];
                  *buf = 138413314;
                  v286 = v266;
                  v287 = 2112;
                  v288 = v228;
                  v289 = 2112;
                  v290 = v208;
                  v291 = 2112;
                  v292 = v209;
                  v293 = 2112;
                  v294 = v210;
                  _os_log_impl(&dword_2304B3000, loga, OS_LOG_TYPE_INFO, "%@,Updated road transitions for clusterID,%@,commuteID,%@,updated cluster commuteID,%@,using tripSegmentID,%@", buf, 0x34u);

                  v106 = v268;
                  v207 = loga;
                }
              }

              [(RTTripClusterProcessor *)v267 _collectClusterMetric:v252 cluster:v68 dtwForUnmatchedTripAvg:v263 dtwForMatchedTripAvg:v262 tripClusterStore:v84 tripSegment:v271 tripClusterRoute:-1.0 clusterStartTime:v243];

              v105 = 0;
              v249 = 1;
            }

            else
            {
              v34 = v260;
              if (v113)
              {
                v114 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                {
                  v115 = [v262 identifier];
                  v116 = [v115 UUIDString];
                  v241 = [v68 clusterID];
                  v117 = [v241 UUIDString];
                  *buf = 138413058;
                  v286 = v266;
                  v287 = 2112;
                  v288 = v116;
                  v289 = 2112;
                  v290 = v117;
                  v291 = 2048;
                  v292 = v101;
                  _os_log_impl(&dword_2304B3000, v114, OS_LOG_TYPE_INFO, "%@,Trip segment ID,%@,did not match cluster ID,%@,based on DTW distance,%f", buf, 0x2Au);

                  v34 = v260;
                }
              }

              [(RTTripClusterProcessor *)v85 _collectClusterMetric:v68 cluster:v68 dtwForUnmatchedTripAvg:v263 dtwForMatchedTripAvg:0 tripClusterStore:v84 tripSegment:v271 tripClusterRoute:v101 clusterStartTime:-1.0];
              v105 = 1;
              v106 = v268;
            }

            v95 = v254;
            goto LABEL_105;
          }

          v105 = 1;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_76;
          }

          v122 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
          {
            goto LABEL_75;
          }

          v123 = [v68 clusterID];
          v124 = [v123 UUIDString];
          *buf = 138412546;
          v286 = v266;
          v287 = 2112;
          v288 = v124;
          v125 = v122;
          v126 = "%@,failed to get locationsArray or convertedTripClusterRoute for clusterID,%@";
        }

        else
        {
          v105 = 1;
          v34 = v260;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_76:
            v33 = v259;
            v106 = v268;
            goto LABEL_105;
          }

          v122 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
          {
LABEL_75:

            goto LABEL_76;
          }

          v123 = [v68 clusterID];
          v124 = [v123 UUIDString];
          *buf = 138412546;
          v286 = v266;
          v287 = 2112;
          v288 = v124;
          v125 = v122;
          v126 = "%@,failed to get simulated route for clusterID,%@";
        }

        _os_log_impl(&dword_2304B3000, v125, OS_LOG_TYPE_INFO, v126, buf, 0x16u);

        v34 = v260;
        goto LABEL_75;
      }

LABEL_51:
      v105 = 1;
      v106 = v268;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_106;
      }

      v95 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        v107 = [v68 clusterID];
        v108 = [v107 UUIDString];
        *buf = 138412546;
        v286 = v266;
        v287 = 2112;
        v288 = v108;
        _os_log_impl(&dword_2304B3000, v95, OS_LOG_TYPE_INFO, "%@,No fetched routes for cluster with clusterID,%@", buf, 0x16u);

        v106 = v268;
      }

LABEL_105:

LABEL_106:
      objc_autoreleasePoolPop(context);
      if (!v105)
      {
        goto LABEL_109;
      }

      goto LABEL_107;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v255 = v23;
      v246 = v22;
      v38 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v55 = [v262 identifier];
        v56 = [v55 UUIDString];
        *buf = 138412546;
        v286 = v266;
        v287 = 2112;
        v288 = v56;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@,road transitions not available,skipping trip,%@", buf, 0x16u);
      }

LABEL_121:

      v22 = v246;
      v23 = v255;
      v29 = v262;
    }
  }
}

- (void)_updateWalkAndBikeClustersForCommuteID:(id)a3 fetchedClusters:(id)a4 walkAndBikeTripStats:(id)a5 startLatitude:(double)a6 startLongitude:(double)a7 endLatitude:(double)a8 endLongitude:(double)a9 lastTimeTaken:(id)a10 tripClusterStore:(id)a11
{
  v109 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a10;
  v24 = a11;
  if (!v24)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v106 = "[RTTripClusterProcessor _updateWalkAndBikeClustersForCommuteID:fetchedClusters:walkAndBikeTripStats:startLatitude:startLongitude:endLatitude:endLongitude:lastTimeTaken:tripClusterStore:]";
      v107 = 1024;
      LODWORD(v108) = 858;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusterStore (in %s:%d)", buf, 0x12u);
    }
  }

  v26 = v22;
  if (v22)
  {
    if (v23)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v106 = "[RTTripClusterProcessor _updateWalkAndBikeClustersForCommuteID:fetchedClusters:walkAndBikeTripStats:startLatitude:startLongitude:endLatitude:endLongitude:lastTimeTaken:tripClusterStore:]";
    v107 = 1024;
    LODWORD(v108) = 859;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: walkAndBikeTripStats (in %s:%d)", buf, 0x12u);
  }

  if (!v23)
  {
LABEL_11:
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v106 = "[RTTripClusterProcessor _updateWalkAndBikeClustersForCommuteID:fetchedClusters:walkAndBikeTripStats:startLatitude:startLongitude:endLatitude:endLongitude:lastTimeTaken:tripClusterStore:]";
      v107 = 1024;
      LODWORD(v108) = 860;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lastTimeTaken (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  if ([(RTTripClusterProcessorOptions *)self->_options enableWalkBikeClustering])
  {
    if ([v22 hasValidData])
    {
      v92 = v23;
      v94 = v24;
      v90 = a8;
      v91 = a9;
      v88 = a6;
      v89 = a7;
      if (v21)
      {
        v86 = v22;
        v87 = v21;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v29 = v21;
        v30 = [v29 countByEnumeratingWithState:&v98 objects:v104 count:16];
        if (v30)
        {
          v31 = v30;
          v95 = 0;
          v96 = 0;
          v32 = 0;
          v33 = 0;
          v97 = 0;
          v34 = 0.0;
          v35 = 0.0;
          v36 = *v99;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 0.0;
          v41 = 0.0;
          v42 = 0.0;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v99 != v36)
              {
                objc_enumerationMutation(v29);
              }

              v44 = *(*(&v98 + 1) + 8 * i);
              v45 = [v44 commuteID];
              v46 = [v20 isEqual:v45];

              if (v46)
              {
                if ([v44 clusterOrder] == 1)
                {
                  v47 = [v44 clusterID];

                  [v44 avgWalkDistance];
                  v42 = v48;
                  [v44 avgWalkTime];
                  v41 = v49;
                  [v44 avgBikeDistance];
                  v40 = v50;
                  [v44 avgBikeTime];
                  v39 = v51;
                  v97 = [v44 countOfWalkTraversal];
                  v33 = [v44 countOfBikeTraversal];
                  v32 = v47;
                }

                else if ([v44 clusterOrder] == 2)
                {
                  v52 = [v44 clusterID];

                  [v44 avgWalkDistance];
                  v38 = v53;
                  [v44 avgWalkTime];
                  v37 = v54;
                  [v44 avgBikeDistance];
                  v35 = v55;
                  [v44 avgBikeTime];
                  v34 = v56;
                  WORD2(v95) = [v44 countOfWalkTraversal];
                  LOWORD(v95) = [v44 countOfBikeTraversal];
                  v96 = v52;
                }
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v98 objects:v104 count:16];
          }

          while (v31);
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v32 = 0;
          v33 = 0;
          v97 = 0;
          v34 = 0.0;
          v35 = 0.0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 0.0;
          v41 = 0.0;
          v42 = 0.0;
        }

        v26 = v86;
        v21 = v87;
      }

      else
      {
        v95 = 0;
        v96 = 0;
        v32 = 0;
        v33 = 0;
        v97 = 0;
        v34 = 0.0;
        v35 = 0.0;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v40 = 0.0;
        v41 = 0.0;
        v42 = 0.0;
      }

      if (([v26 isBikeSegmentBeforeDrivePresent] & 1) != 0 || objc_msgSend(v26, "isWalkSegmentBeforeDrivePresent"))
      {
        if ([v26 isWalkSegmentBeforeDrivePresent])
        {
          [v26 walkDistanceBeforeDrive_m];
          v42 = v42 * 0.5 + v60 * 0.5;
          [v26 walkTimeDurationBeforeDrive_sec];
          v41 = v41 * 0.5 + v61 * 0.5;
          ++v97;
        }

        if ([v26 isBikeSegmentBeforeDrivePresent])
        {
          [v26 bikeDistanceBeforeDrive_m];
          v40 = v40 * 0.5 + v62 * 0.5;
          [v26 bikeTimeDurationBeforeDrive_sec];
          v39 = v39 * 0.5 + v63 * 0.5;
          ++v33;
        }

        if (!v32)
        {
          v32 = objc_opt_new();
        }

        if (v33 <= v97)
        {
          v64 = 1;
        }

        else
        {
          v64 = 3;
        }

        LOWORD(v85) = 1;
        v65 = [RTTripCluster createWithClusterID:"createWithClusterID:commuteID:startLatitude:startLongitude:endLatitude:endLongitude:modeOfTransport:lastTimeTaken:avgBikeDistance:avgBikeTime:avgWalkTime:avgWalkDistance:countOfBikeTraversal:countOfWalkTraversal:clusterOrder:" commuteID:v32 startLatitude:v20 startLongitude:v64 endLatitude:v92 endLongitude:v88 modeOfTransport:v89 lastTimeTaken:v90 avgBikeDistance:v91 avgBikeTime:v40 avgWalkTime:v39 avgWalkDistance:v41 countOfBikeTraversal:v42 countOfWalkTraversal:v85 clusterOrder:?];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            NSStringFromSelector(a2);
            v68 = v67 = v26;
            *buf = 138412546;
            v106 = v68;
            v107 = 2112;
            v108 = v65;
            _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_INFO, "%@,%@", buf, 0x16u);

            v26 = v67;
          }
        }

        v103 = v65;
        v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
        [v94 storeTripClusters:v69];
      }

      v58 = v96;
      if (([v26 isBikeSegmentAfterDrivePresent] & 1) != 0 || objc_msgSend(v26, "isWalkSegmentAfterDrivePresent"))
      {
        if ([v26 isWalkSegmentAfterDrivePresent])
        {
          [v26 walkDistanceAfterDrive_m];
          v38 = v38 * 0.5 + v70 * 0.5;
          [v26 walkTimeDurationAfterDrive_sec];
          v37 = v37 * 0.5 + v71 * 0.5;
          ++WORD2(v95);
        }

        if ([v26 isBikeSegmentAfterDrivePresent])
        {
          [v26 bikeDistanceAfterDrive_m];
          v35 = v35 * 0.5 + v72 * 0.5;
          [v26 bikeTimeDurationAfterDrive_sec];
          v34 = v34 * 0.5 + v73 * 0.5;
          v74 = v95 + 1;
          v75 = v91;
          if (!v96)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v75 = v91;
          v74 = v95;
          if (!v96)
          {
LABEL_60:
            v76 = v74;
            v77 = objc_opt_new();
            v74 = v76;
            v58 = v77;
          }
        }

        if (v74 <= SWORD2(v95))
        {
          v78 = 1;
        }

        else
        {
          v78 = 3;
        }

        LOWORD(v85) = 2;
        v79 = v58;
        v23 = v92;
        v80 = [RTTripCluster createWithClusterID:"createWithClusterID:commuteID:startLatitude:startLongitude:endLatitude:endLongitude:modeOfTransport:lastTimeTaken:avgBikeDistance:avgBikeTime:avgWalkTime:avgWalkDistance:countOfBikeTraversal:countOfWalkTraversal:clusterOrder:" commuteID:v58 startLatitude:v20 startLongitude:v78 endLatitude:v92 endLongitude:v88 modeOfTransport:v89 lastTimeTaken:v90 avgBikeDistance:v75 avgBikeTime:v35 avgWalkTime:v34 avgWalkDistance:v37 countOfBikeTraversal:v38 countOfWalkTraversal:v85 clusterOrder:?];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v81 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            NSStringFromSelector(a2);
            v83 = v82 = v26;
            *buf = 138412546;
            v106 = v83;
            v107 = 2112;
            v108 = v80;
            _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_INFO, "%@,%@", buf, 0x16u);

            v26 = v82;
            v23 = v92;
          }
        }

        v102 = v80;
        v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
        [v94 storeTripClusters:v84];

        v58 = v79;
        goto LABEL_70;
      }

      v23 = v92;
LABEL_70:

      goto LABEL_71;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v94 = v24;
    v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
LABEL_71:

      v24 = v94;
      goto LABEL_72;
    }

    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    v59 = NSStringFromSelector(a2);
    *buf = 138412546;
    v106 = v58;
    v107 = 2112;
    v108 = v59;
    _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, "%@,%@,walk and bike clusters disabled", buf, 0x16u);

    goto LABEL_70;
  }

LABEL_72:
}

- (id)getCLTripSegmentProcessorOptions
{
  v2 = objc_alloc_init(MEMORY[0x277CBFCB0]);

  return v2;
}

- (BOOL)getSimulatedLocationOnRoute:(id)a3 convertedRoutes:(id)a4 cluster:(id)a5
{
  v86[1] = *MEMORY[0x277D85DE8];
  v58 = a4;
  v53 = a5;
  v7 = [a3 sortedArrayUsingComparator:&__block_literal_global_254];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v11)
  {
    v12 = *v77;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v76 + 1) + 8 * i);
        if ([v9 count])
        {
          v15 = [v14 clRoadID];
          v16 = [v9 lastObject];
          LOBYTE(v15) = v15 == [v16 clRoadID];

          if ((v15 & 1) == 0)
          {
            v17 = [RTTripClusterProcessor getCLTripSegmentRoadDataFromArrayOfRTTripClusterRoute:v9];
            [v8 addObject:v17];

            [v9 removeAllObjects];
          }
        }

        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v11);
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__73;
  v74 = __Block_byref_object_dispose__73;
  v75 = 0;
  v60 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__73;
  v68 = __Block_byref_object_dispose__73;
  v69 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__RTTripClusterProcessor_getSimulatedLocationOnRoute_convertedRoutes_cluster___block_invoke_255;
  aBlock[3] = &unk_2788CAB30;
  v52 = v58;
  v63 = v52;
  v56 = _Block_copy(aBlock);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __78__RTTripClusterProcessor_getSimulatedLocationOnRoute_convertedRoutes_cluster___block_invoke_2;
  v61[3] = &unk_2788CAB58;
  v61[4] = &v70;
  v61[5] = &v64;
  v55 = _Block_copy(v61);
  v59 = [(RTTripClusterProcessor *)self getCLTripSegmentProcessorOptions];
  v57 = objc_alloc_init(MEMORY[0x277CBFCA8]);
  [v57 simulateLocationOnRouteID:v60 withOptions:v59 usingRoadData:v8 modeOfTransport:1 constantSpeed:v56 outputHandler:v55 completionHandler:10.0];
  v18 = v65[5];
  v19 = [MEMORY[0x277CBEAA8] now];
  v20 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v18, v20))
  {
    v51 = [MEMORY[0x277CBEAA8] now];
    [v51 timeIntervalSinceDate:v19];
    v22 = v21;
    v23 = objc_opt_new();
    v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_381];
    v25 = [MEMORY[0x277CCACC8] callStackSymbols];
    v26 = [v25 filteredArrayUsingPredicate:v24];
    v27 = [v26 firstObject];

    [v23 submitToCoreAnalytics:v27 type:1 duration:v22];
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v29 = MEMORY[0x277CCA9B8];
    v86[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v86 count:1];
    v31 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v30];

    if (v31)
    {
      v32 = v31;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = v31;
  if (v33)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = [v60 UUIDString];
      v50 = [v33 localizedDescription];
      *buf = 138412802;
      *&buf[4] = v48;
      v81 = 2112;
      v82 = v49;
      v83 = 2112;
      v84 = v50;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@,Semaphore error when calling simulateLocationOnRouteID,%@,error,%@", buf, 0x20u);
    }
  }

  else
  {
    v37 = v71[5];
    v38 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!v37)
    {
      if (!v38)
      {
        v35 = 1;
        goto LABEL_22;
      }

      v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      v35 = 1;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = [v53 clusterID];
        v46 = [v45 UUIDString];
        *buf = 138412546;
        *&buf[4] = v44;
        v81 = 2112;
        v82 = v46;
        _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@,runSimulationWithRoadsData,success,clusterID,%@", buf, 0x16u);

        v35 = 1;
      }

      goto LABEL_21;
    }

    if (!v38)
    {
      v35 = 0;
      goto LABEL_22;
    }

    v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v53 clusterID];
      v42 = [v41 UUIDString];
      *buf = 138412546;
      *&buf[4] = v40;
      v81 = 2112;
      v82 = v42;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@,runSimulationWithRoadsData,failed,clusterID,%@", buf, 0x16u);
    }
  }

  v35 = 0;
LABEL_21:

LABEL_22:
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
  return v35;
}

uint64_t __78__RTTripClusterProcessor_getSimulatedLocationOnRoute_convertedRoutes_cluster___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sequence];
  if (v6 >= [v5 sequence])
  {
    v8 = [v4 sequence];
    v7 = v8 > [v5 sequence];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __78__RTTripClusterProcessor_getSimulatedLocationOnRoute_convertedRoutes_cluster___block_invoke_255(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 tripLocations];

  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v3;
    v5 = [v3 tripLocations];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          [v10 latitude];
          if (v12 != 0.0)
          {
            [v10 longitude];
            if (v13 != 0.0)
            {
              v14 = *(a1 + 32);
              v15 = objc_alloc(MEMORY[0x277CBFC00]);
              [v10 latitude];
              v17 = v16;
              [v10 longitude];
              v19 = [v15 initWithLatitude:v17 longitude:v18];
              [v14 addObject:v19];
            }
          }

          objc_autoreleasePoolPop(v11);
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    v3 = v20;
  }
}

void __78__RTTripClusterProcessor_getSimulatedLocationOnRoute_convertedRoutes_cluster___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

+ (id)getCLTripSegmentRoadDataFromArrayOfRTTripClusterRoute:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_260];
  v4 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CBFC00]);
        [v10 latitude];
        v13 = v12;
        [v10 longitude];
        v15 = [v11 initWithLatitude:v13 longitude:v14];
        [v4 addObject:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v16 = objc_alloc(MEMORY[0x277CBFCB8]);
  v17 = [v5 firstObject];
  v18 = [v16 initWithRoadID:0 clRoadID:objc_msgSend(v17 roadClass:"clRoadID") formOfWay:0 coordinates:{0, v4}];

  return v18;
}

uint64_t __80__RTTripClusterProcessor_getCLTripSegmentRoadDataFromArrayOfRTTripClusterRoute___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sequence];
  if (v6 >= [v5 sequence])
  {
    v8 = [v4 sequence];
    v7 = v8 > [v5 sequence];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)createAndStoreNewClusterForTripSegment:(id)a3 tripDuration:(double)a4 tripDistance:(double)a5 tripClusterStore:(id)a6 tripClusterRecencyStore:(id)a7 tripClusterRouteStore:(id)a8 tripClusterWaypointStore:(id)a9 tripClusterRouteTransitionsStore:(id)a10 tripClusterScheduleStore:(id)a11 withRoadTransitions:(id)a12 tripClusterCommuteID:(id)a13
{
  v136[1] = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a6;
  v111 = a7;
  v110 = a8;
  v109 = a9;
  v108 = a10;
  v22 = a11;
  v119 = a12;
  v23 = a13;
  v24 = [MEMORY[0x277CCAD78] UUID];
  v25 = [RTTripCluster alloc];
  [v20 originLatitude];
  v27 = v26;
  [v20 originLongitude];
  v29 = v28;
  [v20 destinationLatitude];
  v31 = v30;
  [v20 destinationLongitude];
  v33 = v32;
  v34 = [v20 modeOfTransportation];
  v35 = [v20 dateInterval];
  v36 = [v35 endDate];
  LOWORD(v102) = 0;
  v105 = v23;
  v37 = [(RTTripCluster *)v25 initWithClusterID:v24 startLatitude:v34 startLongitude:v36 endLatitude:1 endLongitude:v23 modeOfTransport:1 lastTimeTaken:v27 countOfTraversal:v29 minTripTime:v31 maxTripTime:v33 avgTripTime:a4 minTripDistance:a4 maxTripDistance:a4 avgTripDistance:a5 commuteID:*&a5 isLocked:*&a5 avgBikeDistance:0 avgBikeTime:0 avgWalkDistance:0 avgWalkTime:0 countOfBikeTraversal:0 countOfWalkTraversal:v102 clusterOrder:?];

  v107 = v37;
  v136[0] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:1];
  v112 = v21;
  [v21 storeTripClusters:v38];

  v39 = [RTTripClusterRecency alloc];
  v40 = [v20 dateInterval];
  v41 = [v40 startDate];
  v42 = [v20 dateInterval];
  v43 = [v42 endDate];
  v44 = [(RTTripClusterRecency *)v39 initWithClusterID:v24 startTime:v41 endTime:v43];

  v104 = v44;
  v135 = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
  [v111 storeTripClusterRecency:v45];

  v46 = [RTTripClusterSchedule alloc];
  v113 = v20;
  v47 = [v20 dateInterval];
  v48 = [v47 startDate];
  v49 = [(RTTripClusterSchedule *)v46 initWithTimeAndClusterID:v24 time:v48];

  v103 = v49;
  v134 = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
  v106 = v22;
  [v22 storeTripClusterSchedule:v50];

  if ([(RTTripClusterProcessorOptions *)self->_options recordDebuggingDataInFile])
  {
    [(NSMutableDictionary *)self->_debuggingData setValue:v24 forKey:@"routeID"];
    debuggingData = self->_debuggingData;
    v52 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [(NSMutableDictionary *)debuggingData setValue:v52 forKey:@"taversalCount"];
  }

  v118 = v24;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v53 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = [v107 clusterID];
      v57 = [v56 UUIDString];
      v58 = [v107 commuteID];
      v59 = [v58 UUIDString];
      v60 = [v20 identifier];
      v61 = [v60 UUIDString];
      *buf = 138413058;
      v127 = v55;
      v128 = 2112;
      v129 = v57;
      v130 = 2112;
      v131 = v59;
      v132 = 2112;
      v133 = v61;
      _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@,New clusterID,%@,commuteID,%@,using tripSegmentID,%@", buf, 0x2Au);

      v24 = v118;
    }
  }

  [v20 originLatitude];
  v63 = v62;
  [v20 originLongitude];
  v65 = v64;
  [v20 destinationLatitude];
  v67 = v66;
  [v20 destinationLongitude];
  LODWORD(v101) = 1;
  [(RTTripClusterProcessor *)self updateClusterRoadTransitionsForClusterID:v24 usingTripSegment:v20 withTransitions:v119 tripClusterRoadTransitionsStore:v108 tripClusterRouteStore:v110 tripClusterStore:v112 tripClusterWaypointStore:v63 startLat:v65 startLon:v67 endLat:v68 endLon:v109 traversalCount:v101];
  v69 = [MEMORY[0x277CBEB18] array];
  v114 = [MEMORY[0x277CBEB18] array];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v119;
  v120 = [obj countByEnumeratingWithState:&v121 objects:v125 count:16];
  if (v120)
  {
    v70 = 1;
    v117 = *v122;
    v71 = 1;
    do
    {
      for (i = 0; i != v120; ++i)
      {
        if (*v122 != v117)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*(&v121 + 1) + 8 * i);
        v74 = [RTTripClusterRoute alloc];
        v75 = [v73 clRoadIDFrom];
        [v73 fromStartLatitude];
        v77 = v76;
        [v73 fromStartLongitude];
        v79 = [(RTTripClusterRoute *)v74 initWithClusterID:v118 clRoadID:v75 latitude:v71 longitude:0 course:v77 sequence:v78 followedByUTurn:-1.0];
        v80 = [RTTripClusterRoute alloc];
        v81 = [v73 clRoadIDFrom];
        [v73 fromEndLatitude];
        v83 = v82;
        [v73 fromEndLongitude];
        v85 = [(RTTripClusterRoute *)v80 initWithClusterID:v118 clRoadID:v81 latitude:(v71 + 1) longitude:0 course:v83 sequence:v84 followedByUTurn:-1.0];
        [v69 addObject:v79];
        [v69 addObject:v85];
        if ((((v71 + 1) << 15) | ((-4369 * (v71 + 1)) >> 1)) <= 0x888u)
        {
          [v73 fromStartLatitude];
          v87 = v86;
          [v73 fromStartLongitude];
          v89 = v88;
          [v73 fromEndLatitude];
          v91 = v90;
          [v73 fromEndLongitude];
          [RTTripClusterProcessor getCourseBetweenLat1:v87 lon1:v89 lat2:v91 lon2:v92];
          v94 = v93;
          v95 = [RTTripClusterWaypoint alloc];
          v96 = [v73 clRoadIDFrom];
          [v73 fromStartLatitude];
          v98 = v97;
          [v73 fromStartLongitude];
          v100 = [(RTTripClusterWaypoint *)v95 initWithClusterID:v118 clRoadID:v96 latitude:v70 longitude:0 course:v98 sequence:v99 followedByUTurn:v94];
          [v114 addObject:v100];

          ++v70;
        }

        v71 += 2;
      }

      v120 = [obj countByEnumeratingWithState:&v121 objects:v125 count:16];
    }

    while (v120);
  }

  [v109 storeTripClusterWaypoint:v114];
  [v110 storeTripClusterRoute:v69];
  [v112 updateLockStatusForClusterId:v118 isLocked:0];
}

- (BOOL)updateClusterRoadTransitionsForClusterID:(id)a3 usingTripSegment:(id)a4 withTransitions:(id)a5 tripClusterRoadTransitionsStore:(id)a6 tripClusterRouteStore:(id)a7 tripClusterStore:(id)a8 tripClusterWaypointStore:(id)a9 startLat:(double)a10 startLon:(double)a11 endLat:(double)a12 endLon:(double)a13 traversalCount:(int)a14
{
  v158 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v120 = a8;
  v121 = a9;
  if (v21)
  {
    v113 = v23;
    v115 = v22;
    v24 = [v22 getRoadTransitionsWithID:v19];
    v25 = [v21 sortedArrayUsingComparator:&__block_literal_global_265];

    v26 = [v25 lastObject];
    v27 = [v26 roadSequenceNumber];

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v28 = [v25 reverseObjectEnumerator];
    v29 = [v28 countByEnumeratingWithState:&v145 objects:v153 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v146;
      v32 = 0.0;
      while (2)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v146 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v145 + 1) + 8 * i);
          [v34 fromStartLatitude];
          [v34 fromStartLongitude];
          [v34 fromEndLatitude];
          [v34 fromEndLongitude];
          RTCommonCalculateDistanceHighPrecision();
          v32 = v32 + v35;
          v36 = [v34 roadSequenceNumber];
          v37 = v36;
          if (v32 > 200.0)
          {
            v27 = v36;
            goto LABEL_12;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v145 objects:v153 count:16];
        v27 = v37;
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v38 = v25;
    v39 = [v38 countByEnumeratingWithState:&v141 objects:v152 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v142;
      v42 = 0.0;
LABEL_14:
      v43 = 0;
      while (1)
      {
        if (*v142 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v44 = *(*(&v141 + 1) + 8 * v43);
        [v44 fromStartLatitude];
        [v44 fromStartLongitude];
        [v44 fromEndLatitude];
        [v44 fromEndLongitude];
        RTCommonCalculateDistanceHighPrecision();
        v42 = v42 + v45;
        v127 = [v44 roadSequenceNumber];
        if (v42 > 200.0)
        {
          break;
        }

        if (v40 == ++v43)
        {
          v40 = [v38 countByEnumeratingWithState:&v141 objects:v152 count:16];
          if (v40)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    else
    {
      v127 = 1;
    }

    v112 = v21;
    v114 = v20;

    v54 = [(RTTripClusterProcessor *)self options];
    [v54 familiarityDecayFactor];
    v56 = v55;

    v57 = [MEMORY[0x277CBEB18] arrayWithArray:v24];
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v58 = v24;
    v59 = [v58 countByEnumeratingWithState:&v137 objects:v151 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v138;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v138 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v137 + 1) + 8 * j);
          [v57 removeObject:v63];
          [v63 familiarityMetric];
          [v63 setFamiliarityMetric:v56 * v64];
          [v57 addObject:v63];
        }

        v60 = [v58 countByEnumeratingWithState:&v137 objects:v151 count:16];
      }

      while (v60);
    }

    v111 = v58;

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    obj = v38;
    v128 = [obj countByEnumeratingWithState:&v133 objects:v150 count:16];
    if (v128)
    {
      v126 = *v134;
      do
      {
        for (k = 0; k != v128; ++k)
        {
          if (*v134 != v126)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v133 + 1) + 8 * k);
          v67 = [v57 copy];
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v68 = v67;
          v69 = [(RTTripClusterRoadTransitions *)v68 countByEnumeratingWithState:&v129 objects:v149 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v130;
            while (2)
            {
              for (m = 0; m != v70; ++m)
              {
                if (*v130 != v71)
                {
                  objc_enumerationMutation(v68);
                }

                v73 = *(*(&v129 + 1) + 8 * m);
                if ([v66 isSameFromAndToStartandEndCoordinates:v73])
                {
                  [v57 removeObject:v73];
                  [(RTTripClusterRoadTransitions *)v73 incrementCountBy:1];
                  -[RTTripClusterRoadTransitions updateCLRoadIDFromField:](v73, "updateCLRoadIDFromField:", [v66 clRoadIDFrom]);
                  -[RTTripClusterRoadTransitions updateCLRoadIDToField:](v73, "updateCLRoadIDToField:", [v66 clRoadIDTo]);
                  if ([v66 roadSequenceNumber] <= v127)
                  {
                    [(RTTripClusterRoadTransitions *)v73 setStartRoadCount:[(RTTripClusterRoadTransitions *)v73 startRoadCount]+ 1];
                  }

                  if ([v66 roadSequenceNumber] >= v27)
                  {
                    [(RTTripClusterRoadTransitions *)v73 setEndRoadCount:[(RTTripClusterRoadTransitions *)v73 endRoadCount]+ 1];
                  }

                  [(RTTripClusterRoadTransitions *)v73 familiarityMetric];
                  if (v56 <= 0.0)
                  {
                    v99 = v98;
                  }

                  else
                  {
                    v99 = v98 / v56;
                  }

                  [v66 familiarityMetric];
                  v101 = v99 + fmax(v100, 1.0);
                  v102 = [(RTTripClusterProcessor *)self options];
                  v103 = [v102 maxClusterTraversalCount];

                  v104 = v103;
                  if (v101 <= v103)
                  {
                    v104 = v101;
                  }

                  [(RTTripClusterRoadTransitions *)v73 setFamiliarityMetric:v104];
                  v97 = v68;
                  goto LABEL_59;
                }
              }

              v70 = [(RTTripClusterRoadTransitions *)v68 countByEnumeratingWithState:&v129 objects:v149 count:16];
              if (v70)
              {
                continue;
              }

              break;
            }
          }

          v125 = [v66 roadSequenceNumber] <= v127;
          v74 = [v66 roadSequenceNumber] >= v27;
          v75 = v27;
          v76 = v19;
          v77 = v74;
          v78 = [RTTripClusterRoadTransitions alloc];
          v79 = [v66 clRoadIDFrom];
          v80 = [v66 clRoadIDTo];
          [v66 fromStartLatitude];
          v124 = v81;
          [v66 fromStartLongitude];
          v83 = v82;
          [v66 fromEndLatitude];
          v85 = v84;
          [v66 fromEndLongitude];
          v87 = v86;
          [v66 toStartLatitude];
          v89 = v88;
          [v66 toStartLongitude];
          v91 = v90;
          [v66 toEndLatitude];
          v93 = v92;
          [v66 toEndLongitude];
          v95 = v94;
          v96 = [v66 startDate];
          v110 = v77;
          v19 = v76;
          v27 = v75;
          v73 = [(RTTripClusterRoadTransitions *)v78 initWithclusterID:v19 clRoadIDFrom:v79 clRoadIDTo:v80 fromStartLatitude:1 fromStartLongitude:v96 fromEndLatitude:v125 fromEndLongitude:v124 toStartLatitude:v83 toStartLongitude:v85 toEndLatitude:v87 toEndLongitude:v89 count:v91 startDate:v93 startRoadCount:v95 endRoadCount:v110 roadSequenceNumber:0x3FF0000000000000 familiarityMetric:v111];

          v97 = v73;
LABEL_59:
          [v57 addObject:v73];
        }

        v128 = [obj countByEnumeratingWithState:&v133 objects:v150 count:16];
      }

      while (v128);
    }

    v47 = obj;

    v22 = v115;
    if (([v115 deleteTripClusterRoadTransitionsWithClusterID:v19 maxDeleteAttempts:{-[RTTripClusterProcessorOptions maxDeletionAttemptsForClusterData](self->_options, "maxDeletionAttemptsForClusterData")}] & 1) != 0 || -[RTTripClusterProcessorOptions maxDeletionAttemptsForClusterData](self->_options, "maxDeletionAttemptsForClusterData") < 2)
    {
      [v115 storeTripClusterRoadTransitions:v57];
      v46 = v120;
    }

    else
    {
      v105 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      v46 = v120;
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v107 = objc_opt_class();
        v108 = NSStringFromClass(v107);
        v109 = [(RTTripClusterProcessorOptions *)self->_options maxDeletionAttemptsForClusterData];
        *buf = 138412546;
        v155 = v108;
        v156 = 2048;
        v157 = v109;
        _os_log_error_impl(&dword_2304B3000, v105, OS_LOG_TYPE_ERROR, "%@,Road transitions delete failed after %lu attempts", buf, 0x16u);

        v22 = v115;
      }
    }

    v23 = v113;
    if (a14 >= 2)
    {
      [(RTTripClusterProcessor *)self updateClusterRouteUsingClusterRoadTransitionsWithClusterID:v19 tripClusterStore:v46 tripClusterRouteStore:v113 tripClusterWaypointStore:v121 tripClusterRouteTransitionsStore:v22 startLat:a14 startLon:a10 endLat:a11 endLon:a12 traversalCount:a13];
    }

    v20 = v114;
    v21 = v112;
    goto LABEL_70;
  }

  v46 = v120;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      [v20 identifier];
      v51 = v50 = v23;
      [v51 UUIDString];
      v53 = v52 = v22;
      *buf = 138412546;
      v155 = v49;
      v156 = 2112;
      v157 = v53;
      _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%@,No road transitions for trip segment ID,%@", buf, 0x16u);

      v22 = v52;
      v23 = v50;
    }

LABEL_70:
  }

  return v21 != 0;
}

uint64_t __243__RTTripClusterProcessor_updateClusterRoadTransitionsForClusterID_usingTripSegment_withTransitions_tripClusterRoadTransitionsStore_tripClusterRouteStore_tripClusterStore_tripClusterWaypointStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 roadSequenceNumber];
  if (v6 >= [v5 roadSequenceNumber])
  {
    v8 = [v4 roadSequenceNumber];
    v7 = v8 > [v5 roadSequenceNumber];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (double)getDistanceToRoadFromLatitude:(double)a3 longitude:(double)a4 roadStart:(id)a5 roadEnd:(id)a6
{
  v9 = a6;
  v10 = a5;
  v32 = CLLocationCoordinate2DMake(a3, a4);
  [v10 latitude];
  v12 = v11;
  [v10 longitude];
  v14 = v13;

  v31 = CLLocationCoordinate2DMake(v12, v14);
  [v9 latitude];
  v16 = v15;
  [v9 longitude];
  v18 = v17;

  v30 = CLLocationCoordinate2DMake(v16, v18);
  v19 = objc_alloc_init(RTDistanceCalculator);
  v29 = 0;
  [(RTDistanceCalculator *)v19 distanceFromLocationCoordinate:&v32 toLocationCoordinate:&v31 error:&v29];
  v21 = v20;
  v22 = v29;
  if (v22)
  {
    v23 = -1.0;
  }

  else
  {
    v28 = 0;
    [(RTDistanceCalculator *)v19 distanceFromLocationCoordinate:&v32 toLocationCoordinate:&v30 error:&v28];
    v25 = v24;
    v22 = v28;
    if (v21 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v21;
    }

    if (v22)
    {
      v23 = -1.0;
    }

    else
    {
      v23 = v26;
    }
  }

  return v23;
}

- (void)fillInRouteLocationsForClustersInStore:(id)a3 tripClusterRouteStore:(id)a4 tripClusterWaypointStore:(id)a5 tripClusterRoadTransitionsStore:(id)a6 minimumTraversalCountForLearnedRoutes:(int)a7
{
  v7 = *&a7;
  v75 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v58 = a5;
  v15 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      v67 = v18;
      v68 = 2112;
      v69 = v19;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,%@,Starting rehydration process for clusters with waypoints but no route locations", buf, 0x16u);
    }
  }

  v60 = v14;
  v61 = v15;
  v59 = v13;
  v56 = objc_alloc_init(MEMORY[0x277D01368]);
  [v13 getTripClustersWithOptions:?];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v20 = v65 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (!v21)
  {
    v23 = 0;
    goto LABEL_35;
  }

  v22 = v21;
  v23 = 0;
  v24 = *v63;
  v57 = v20;
  do
  {
    v25 = 0;
    do
    {
      if (*v63 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v62 + 1) + 8 * v25);
      if ([(RTTripClusterProcessor *)self shouldDeferClusterProcessing])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = [v26 clusterID];
          v45 = [v44 UUIDString];
          *buf = 138412546;
          v67 = v43;
          v68 = 2112;
          v69 = v45;
          _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%@,Processing deferred in fillInRouteLocationsForClustersInStore loop for clusterID,%@", buf, 0x16u);
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v23 >= [(RTTripClusterProcessorOptions *)self->_options maxRouteRehydrationsCountPerRun])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = [(RTTripClusterProcessorOptions *)self->_options maxRouteRehydrationsCountPerRun];
          v49 = [v26 clusterID];
          v50 = [v49 UUIDString];
          *buf = 138412802;
          v67 = v47;
          v68 = 2048;
          v69 = v48;
          v70 = 2112;
          v71 = v50;
          _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%@,Limit,%lu,reached in rehydration loop for clusterID,%@", buf, 0x20u);
        }

        goto LABEL_34;
      }

      if ([v26 countOfTraversal] >= v7)
      {
        v27 = v7;
        v28 = v23;
        v29 = [v26 clusterID];
        v30 = [v61 getTripClusterRoadTransitionsDataCountForClusterID:v29];

        if (v30)
        {
          goto LABEL_16;
        }

        v31 = [v26 clusterID];
        v32 = [v60 getTripClusterRouteCountWithClusterID:v31];

        if (v32)
        {
          v20 = v57;
LABEL_16:
          v23 = v28;
LABEL_17:
          v7 = v27;
          goto LABEL_18;
        }

        v33 = [v26 clusterID];
        [(RTTripClusterProcessor *)self updateClusterRouteUsingWaypointsWithClusterID:v33 tripClusterStore:v59 tripClusterRouteStore:v60 tripClusterWaypointStore:v58];

        v23 = v28 + 1;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v20 = v57;
          goto LABEL_17;
        }

        v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        v7 = v27;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v55 = [(RTTripClusterProcessorOptions *)self->_options maxRouteRehydrationsCountPerRun];
          v37 = [v26 clusterID];
          [v37 UUIDString];
          v39 = v38 = v23;
          *buf = 138413058;
          v67 = v36;
          v68 = 2048;
          v69 = v38;
          v70 = 2048;
          v71 = v55;
          v72 = 2112;
          v73 = v39;
          _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@,Called updateClusterRouteUsingWaypointsWithClusterID (%lu/%lu) for clusterID,%@", buf, 0x2Au);

          v23 = v38;
        }

        v20 = v57;
      }

LABEL_18:
      ++v25;
    }

    while (v22 != v25);
    v40 = [v20 countByEnumeratingWithState:&v62 objects:v74 count:16];
    v22 = v40;
  }

  while (v40);
LABEL_35:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v51 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = [(RTTripClusterProcessorOptions *)self->_options maxRouteRehydrationsCountPerRun];
      *buf = 138412802;
      v67 = v53;
      v68 = 2048;
      v69 = v23;
      v70 = 2048;
      v71 = v54;
      _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@,Completed fillInRouteLocationsForClustersInStore - called updateClusterRouteUsingWaypointsWithClusterID %lu times,limit,%lu", buf, 0x20u);
    }
  }
}

- (BOOL)updateClusterRouteUsingWaypointsWithClusterID:(id)a3 tripClusterStore:(id)a4 tripClusterRouteStore:(id)a5 tripClusterWaypointStore:(id)a6
{
  v97[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v64 = a4;
  v11 = a5;
  v69 = a6;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__73;
  v89 = __Block_byref_object_dispose__73;
  v90 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__73;
  v83 = __Block_byref_object_dispose__73;
  v84 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__RTTripClusterProcessor_updateClusterRouteUsingWaypointsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore___block_invoke;
  aBlock[3] = &unk_2788CAB80;
  v12 = v10;
  v76 = v12;
  v65 = v11;
  v77 = v65;
  v78 = self;
  v68 = _Block_copy(aBlock);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __136__RTTripClusterProcessor_updateClusterRouteUsingWaypointsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore___block_invoke_268;
  v74[3] = &unk_2788CAB58;
  v74[4] = &v85;
  v74[5] = &v79;
  v67 = _Block_copy(v74);
  v13 = [objc_alloc(MEMORY[0x277D013C8]) initWithClusterID:v12];
  v14 = [v69 getTripClusterWaypointWithOptions:v13];
  v15 = v14;
  v66 = v13;
  if (v14 && [v14 count])
  {
    v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_273];

    v17 = [MEMORY[0x277CBEB18] array];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v15 = v16;
    v18 = [v15 countByEnumeratingWithState:&v70 objects:v96 count:16];
    if (v18)
    {
      v19 = *v71;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v71 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v70 + 1) + 8 * i);
          v22 = objc_alloc(MEMORY[0x277CBFC98]);
          [v21 latitude];
          v24 = v23;
          [v21 longitude];
          v26 = [v22 initWithLatitude:v24 longitude:v25 altitude:0.0];
          [v17 addObject:v26];
        }

        v18 = [v15 countByEnumeratingWithState:&v70 objects:v96 count:16];
      }

      while (v18);
    }

    v62 = [(RTTripClusterProcessor *)self getCLTripSegmentProcessorOptions];
    v63 = objc_alloc_init(MEMORY[0x277CBFCA8]);
    [v63 constructRouteFromWaypoints:v17 forRouteID:v12 withOptions:v62 outputHandler:v68 completionHandler:v67];
    v27 = v80[5];
    v28 = [MEMORY[0x277CBEAA8] now];
    v29 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v27, v29))
    {
      v61 = [MEMORY[0x277CBEAA8] now];
      [v61 timeIntervalSinceDate:v28];
      v31 = v30;
      v32 = objc_opt_new();
      v33 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_381];
      v34 = [MEMORY[0x277CCACC8] callStackSymbols];
      v35 = [v34 filteredArrayUsingPredicate:v33];
      v36 = [v35 firstObject];

      [v32 submitToCoreAnalytics:v36 type:1 duration:v31];
      v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v37, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v38 = MEMORY[0x277CCA9B8];
      v97[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v97 count:1];
      v40 = [v38 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v39];

      if (v40)
      {
        v41 = v40;
      }
    }

    else
    {
      v40 = 0;
    }

    v43 = v40;
    if (v43)
    {
      v44 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v59 = [v12 UUIDString];
        v60 = [v43 localizedDescription];
        *buf = 138412802;
        *&buf[4] = v58;
        v92 = 2112;
        v93 = v59;
        v94 = 2112;
        v95 = v60;
        _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "%@,Semaphore error when calling constructRouteWithID using waypoints,%@,error,%@", buf, 0x20u);
      }
    }

    else
    {
      v46 = v86[5];
      v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!v46)
      {
        if (!v47)
        {
          v42 = 1;
          goto LABEL_24;
        }

        v44 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        v42 = 1;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          v53 = [v12 UUIDString];
          *buf = 138412546;
          *&buf[4] = v52;
          v92 = 2112;
          v93 = v53;
          _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@,constructRouteUsingWaypoints,success,clusterID,%@", buf, 0x16u);
        }

        goto LABEL_23;
      }

      if (!v47)
      {
        v42 = 0;
        goto LABEL_24;
      }

      v44 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        v50 = [v12 UUIDString];
        *buf = 138412546;
        *&buf[4] = v49;
        v92 = 2112;
        v93 = v50;
        _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@,constructRouteUsingWaypoints,failed,clusterID,%@", buf, 0x16u);
      }
    }

    v42 = 0;
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = [v12 UUIDString];
    *buf = 138412546;
    *&buf[4] = v55;
    v92 = 2112;
    v93 = v56;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, No waypoints found for clusterID,%@", buf, 0x16u);
  }

  v42 = 0;
LABEL_25:

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v85, 8);

  return v42;
}

void __136__RTTripClusterProcessor_updateClusterRouteUsingWaypointsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 routeRoads];

  if (v3)
  {
    v37 = [MEMORY[0x277CBEB18] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v29 = v2;
    obj = [v2 routeRoads];
    v32 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v32)
    {
      v31 = *v43;
      v4 = 1;
      do
      {
        v5 = 0;
        do
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v5;
          v6 = *(*(&v42 + 1) + 8 * v5);
          context = objc_autoreleasePoolPush();
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v35 = [v6 coordinates];
          v7 = [v35 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v39;
            do
            {
              v10 = 0;
              do
              {
                if (*v39 != v9)
                {
                  objc_enumerationMutation(v35);
                }

                v11 = *(*(&v38 + 1) + 8 * v10);
                v12 = objc_autoreleasePoolPush();
                v13 = [RTTripClusterRoute alloc];
                v14 = *(a1 + 32);
                v15 = [v6 clRoadID];
                [v11 latitude];
                v17 = v16;
                [v11 longitude];
                v19 = [(RTTripClusterRoute *)v13 initWithClusterID:v14 clRoadID:v15 latitude:v4 longitude:0 course:v17 sequence:v18 followedByUTurn:-1.0];
                [v37 addObject:v19];
                ++v4;

                objc_autoreleasePoolPop(v12);
                ++v10;
              }

              while (v8 != v10);
              v8 = [v35 countByEnumeratingWithState:&v38 objects:v50 count:16];
            }

            while (v8);
          }

          objc_autoreleasePoolPop(context);
          v5 = v34 + 1;
        }

        while (v34 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v32);
    }

    [*(a1 + 40) deleteTripClusterRouteWithClusterID:*(a1 + 32)];
    [*(a1 + 40) storeTripClusterRoute:v37];
    v2 = v29;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v37 count];
        v28 = [*(a1 + 32) UUIDString];
        *buf = 138412802;
        v47 = v26;
        v48 = 1024;
        *v49 = v27;
        *&v49[4] = 2112;
        *&v49[6] = v28;
        _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "%@,Stored new TripCluster Route from waypoints,%d,clusterID,%@", buf, 0x1Cu);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [*(a1 + 32) UUIDString];
        *buf = 138412546;
        v47 = v23;
        v48 = 2112;
        *v49 = v24;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@,constructRouteUsingWaypoints for %@,received reconstructed route", buf, 0x16u);
      }
    }
  }
}

void __136__RTTripClusterProcessor_updateClusterRouteUsingWaypointsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore___block_invoke_268(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

uint64_t __136__RTTripClusterProcessor_updateClusterRouteUsingWaypointsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore___block_invoke_270(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sequence];
  if (v6 >= [v5 sequence])
  {
    v8 = [v4 sequence];
    v7 = v8 > [v5 sequence];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)deleteWaypointsForClustersWithDuplicateWaypoints:(id)a3 tripClusterWaypointStore:(id)a4 tripClusterRouteStore:(id)a5 tripClusterRouteTransitionsStore:(id)a6 minimumTraversalCountForLearnedRoutes:(int)a7
{
  v111 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v97 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v103 = "[RTTripClusterProcessor deleteWaypointsForClustersWithDuplicateWaypoints:tripClusterWaypointStore:tripClusterRouteStore:tripClusterRouteTransitionsStore:minimumTraversalCountForLearnedRoutes:]";
    v104 = 1024;
    LODWORD(v105) = 1631;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusterStore (in %s:%d)", buf, 0x12u);
  }

  if (!v12)
  {
LABEL_7:
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v103 = "[RTTripClusterProcessor deleteWaypointsForClustersWithDuplicateWaypoints:tripClusterWaypointStore:tripClusterRouteStore:tripClusterRouteTransitionsStore:minimumTraversalCountForLearnedRoutes:]";
      v104 = 1024;
      LODWORD(v105) = 1632;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusterWaypointStore (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      v103 = v18;
      v104 = 2112;
      v105 = v19;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,%@,Starting clean up process for clusters with duplicate waypoints", buf, 0x16u);
    }
  }

  v20 = objc_alloc_init(MEMORY[0x277D01368]);
  v21 = [v11 getTripClustersWithOptions:v20];
  v22 = v21;
  if (v21 && [v21 count])
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v93 = v22;
    obj = v22;
    v23 = [obj countByEnumeratingWithState:&v98 objects:v110 count:16];
    if (!v23)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_57;
    }

    v24 = v23;
    aSelector = a2;
    v25 = 0;
    v26 = 0;
    v27 = *v99;
    v28 = self;
    v91 = v13;
    v92 = v11;
    v90 = v20;
    while (1)
    {
      v29 = 0;
      v30 = v26;
      v89 = v24 + v26;
      v31 = a7;
      do
      {
        if (*v99 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v98 + 1) + 8 * v29);
        if ([(RTTripClusterProcessor *)v28 shouldDeferClusterProcessing])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v70 = v12;
            v71 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            v13 = v91;
            v11 = v92;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v72 = objc_opt_class();
              NSStringFromClass(v72);
              v74 = v73 = v25;
              v75 = [v32 clusterID];
              v76 = [v75 UUIDString];
              *buf = 138412546;
              v103 = v74;
              v104 = 2112;
              v105 = v76;
              _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@,Processing deferred in deleteWaypointsForClustersWithDuplicateWaypoints loop for clusterID,%@", buf, 0x16u);

              v25 = v73;
            }

LABEL_54:

            v26 = v30;
            v12 = v70;
LABEL_56:
            v20 = v90;
            goto LABEL_57;
          }

LABEL_55:
          v26 = v30;
          v13 = v91;
          v11 = v92;
          goto LABEL_56;
        }

        if (v25 >= [(RTTripClusterProcessorOptions *)v28->_options maxCleanUpOperationsCountPerRun])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v70 = v12;
            v71 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            v13 = v91;
            v11 = v92;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v77 = objc_opt_class();
              NSStringFromClass(v77);
              v79 = v78 = v25;
              v80 = NSStringFromSelector(aSelector);
              v81 = [(RTTripClusterProcessorOptions *)v28->_options maxCleanUpOperationsCountPerRun];
              *buf = 138413058;
              v103 = v79;
              v104 = 2112;
              v105 = v80;
              v106 = 2048;
              v107 = v78;
              v108 = 2048;
              v109 = v81;
              _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@,%@,clean up operations done for %lu clusters,limit,%lu,breaking", buf, 0x2Au);

              v25 = v78;
            }

            goto LABEL_54;
          }

          goto LABEL_55;
        }

        if ([v32 countOfTraversal] >= v31)
        {
          v33 = v25;
          v34 = [v32 clusterID];
          v35 = [v97 getTripClusterRoadTransitionsDataCountForClusterID:v34];

          if (!v35 || ([v32 clusterID], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v12, "getTripClusterWaypointDataCountForClusterID:", v36), v36, v37 < 2))
          {
            v25 = v33;
            v28 = self;
            goto LABEL_39;
          }

          v38 = objc_alloc(MEMORY[0x277D013C8]);
          v39 = [v32 clusterID];
          v40 = [v38 initWithClusterID:v39];
          v41 = v12;
          v42 = v40;

          v43 = v41;
          v44 = [v41 getTripClusterWaypointWithOptions:v42];
          v45 = v44;
          if (v44 && [v44 count])
          {
LABEL_29:

            goto LABEL_37;
          }

          v46 = [v32 clusterID];
          v47 = [v43 deleteTripClusterWaypointWithClusterID:v46 maxDeleteAttempts:{-[RTTripClusterProcessorOptions maxDeletionAttemptsForClusterData](self->_options, "maxDeletionAttemptsForClusterData")}];

          if (v47)
          {
            v48 = v33;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v49 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                v50 = objc_opt_class();
                v86 = NSStringFromClass(v50);
                v87 = [v32 clusterID];
                v51 = [v87 UUIDString];
                *buf = 138412802;
                v103 = v86;
                v104 = 2048;
                v105 = v37;
                v106 = 2112;
                v107 = v51;
                v52 = v51;
                _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@,Deleted %lu waypoints for clusterID,%@", buf, 0x20u);

                v48 = v33;
              }
            }

            v25 = v48 + 1;
            v42 = [v32 clusterID];
            [v32 startLatitude];
            v54 = v53;
            [v32 startLongitude];
            v56 = v55;
            [v32 endLatitude];
            v58 = v57;
            [v32 endLongitude];
            v28 = self;
            -[RTTripClusterProcessor updateClusterRouteUsingClusterRoadTransitionsWithClusterID:tripClusterStore:tripClusterRouteStore:tripClusterWaypointStore:tripClusterRouteTransitionsStore:startLat:startLon:endLat:endLon:traversalCount:](self, "updateClusterRouteUsingClusterRoadTransitionsWithClusterID:tripClusterStore:tripClusterRouteStore:tripClusterWaypointStore:tripClusterRouteTransitionsStore:startLat:startLon:endLat:endLon:traversalCount:", v42, v92, v91, v43, v97, [v32 countOfTraversal], v54, v56, v58, v59);
          }

          else
          {
            v42 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v60 = objc_opt_class();
              v45 = NSStringFromClass(v60);
              v61 = [v32 clusterID];
              v62 = [v61 UUIDString];
              *buf = 138412546;
              v103 = v45;
              v104 = 2112;
              v105 = v62;
              _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@,Failed to delete waypoints for clusterID,%@", buf, 0x16u);

              goto LABEL_29;
            }

LABEL_37:
            v25 = v33;
            v28 = self;
          }

          v12 = v43;
          v31 = a7;
        }

LABEL_39:
        ++v29;
        ++v30;
      }

      while (v24 != v29);
      v63 = [obj countByEnumeratingWithState:&v98 objects:v110 count:16];
      v24 = v63;
      v13 = v91;
      v11 = v92;
      v26 = v89;
      v20 = v90;
      if (!v63)
      {
LABEL_57:
        v82 = v26;

        v22 = v93;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v64 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            v83 = objc_opt_class();
            NSStringFromClass(v83);
            v66 = v84 = v25;
            v85 = [(RTTripClusterProcessorOptions *)self->_options maxCleanUpOperationsCountPerRun];
            *buf = 138413058;
            v103 = v66;
            v104 = 2048;
            v105 = v82;
            v106 = 2048;
            v107 = v84;
            v108 = 2048;
            v109 = v85;
            v67 = "%@,Processed %lu clusters, deleted waypoints for %lu clusters,limit,%lu";
            v68 = v64;
            v69 = 42;
LABEL_60:
            _os_log_impl(&dword_2304B3000, v68, OS_LOG_TYPE_INFO, v67, buf, v69);
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v64 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      *buf = 138412290;
      v103 = v66;
      v67 = "%@,No clusters found for waypoint deletion";
      v68 = v64;
      v69 = 12;
      goto LABEL_60;
    }

LABEL_61:
  }

LABEL_62:
}

- (BOOL)updateClusterRouteUsingClusterRoadTransitionsWithClusterID:(id)a3 tripClusterStore:(id)a4 tripClusterRouteStore:(id)a5 tripClusterWaypointStore:(id)a6 tripClusterRouteTransitionsStore:(id)a7 startLat:(double)a8 startLon:(double)a9 endLat:(double)a10 endLon:(double)a11 traversalCount:(int)a12
{
  v189[1] = *MEMORY[0x277D85DE8];
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v136 = a7;
  v175 = 0;
  v176 = &v175;
  v177 = 0x3032000000;
  v178 = __Block_byref_object_copy__73;
  v179 = __Block_byref_object_dispose__73;
  v180 = 0;
  v169 = 0;
  v170 = &v169;
  v171 = 0x3032000000;
  v172 = __Block_byref_object_copy__73;
  v173 = __Block_byref_object_dispose__73;
  v174 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __229__RTTripClusterProcessor_updateClusterRouteUsingClusterRoadTransitionsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore_tripClusterRouteTransitionsStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke;
  aBlock[3] = &unk_2788CABA8;
  v26 = v22;
  v164 = v26;
  v168 = a12;
  v132 = v24;
  v165 = v132;
  v166 = self;
  v140 = self;
  v133 = v25;
  v167 = v133;
  v134 = _Block_copy(aBlock);
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = __229__RTTripClusterProcessor_updateClusterRouteUsingClusterRoadTransitionsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore_tripClusterRouteTransitionsStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke_293;
  v158[3] = &unk_2788CABD0;
  v161 = &v175;
  v158[4] = self;
  v137 = v26;
  v159 = v137;
  v131 = v23;
  v160 = v131;
  v162 = &v169;
  v135 = _Block_copy(v158);
  v157[0] = MEMORY[0x277D85DD0];
  v157[1] = 3221225472;
  v157[2] = __229__RTTripClusterProcessor_updateClusterRouteUsingClusterRoadTransitionsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore_tripClusterRouteTransitionsStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke_294;
  v157[3] = &unk_2788CABF8;
  v157[4] = self;
  v139 = _Block_copy(v157);
  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 3221225472;
  v156[2] = __229__RTTripClusterProcessor_updateClusterRouteUsingClusterRoadTransitionsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore_tripClusterRouteTransitionsStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke_2;
  v156[3] = &unk_2788CABF8;
  v156[4] = self;
  v145 = _Block_copy(v156);
  v27 = [v136 getRoadTransitionsWithID:v137];
  if ([(RTTripClusterProcessorOptions *)self->_options recordDebuggingDataInFile])
  {
    if (!v27 || ![v27 count])
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = [v137 UUIDString];
        *buf = 138412546;
        *&buf[4] = v30;
        v183 = 2112;
        v184 = v31;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "%@,clusterRoadTransitions not stored correctly,%@", buf, 0x16u);
      }
    }

    debuggingData = self->_debuggingData;
    v33 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v27, "count")}];
    [(NSMutableDictionary *)debuggingData setValue:v33 forKey:@"roadFamiliarityCountAfterUpdate"];
  }

  v148 = [MEMORY[0x277CBEB18] array];
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  obj = v27;
  v34 = [obj countByEnumeratingWithState:&v152 objects:v188 count:16];
  if (v34)
  {
    v143 = 0;
    v144 = 0;
    v146 = 0;
    v141 = *v153;
    v35 = 0.0;
    do
    {
      v36 = 0;
      v142 = v34;
      do
      {
        if (*v153 != v141)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v152 + 1) + 8 * v36);
        context = objc_autoreleasePoolPush();
        v38 = objc_alloc(MEMORY[0x277CBFC00]);
        [v37 fromStartLatitude];
        v40 = v39;
        [v37 fromStartLongitude];
        v151 = [v38 initWithLatitude:v40 longitude:v41];
        v42 = objc_alloc(MEMORY[0x277CBFC00]);
        [v37 fromEndLatitude];
        v44 = v43;
        [v37 fromEndLongitude];
        v150 = [v42 initWithLatitude:v44 longitude:v45];
        v46 = objc_alloc(MEMORY[0x277CBFCB8]);
        v47 = [v37 clRoadIDFrom];
        v187[0] = v151;
        v187[1] = v150;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:2];
        v49 = [v46 initWithRoadID:0 clRoadID:v47 roadClass:0 formOfWay:0 coordinates:v48];

        [v49 setConnectingCLRoadID:{objc_msgSend(v37, "clRoadIDTo")}];
        v50 = objc_alloc(MEMORY[0x277CBFC00]);
        [v37 toStartLatitude];
        v52 = v51;
        [v37 toStartLongitude];
        v149 = [v50 initWithLatitude:v52 longitude:v53];
        v54 = objc_alloc(MEMORY[0x277CBFC00]);
        [v37 toEndLatitude];
        v56 = v55;
        [v37 toEndLongitude];
        v58 = [v54 initWithLatitude:v56 longitude:v57];
        [v49 setConnectingRoadStartCoordinate:v149 endCoordinate:v58];
        [v37 familiarityMetric];
        [v49 setFamiliarityIndex:?];
        [v37 familiarityMetric];
        if (v59 > v35)
        {
          [v37 familiarityMetric];
          v35 = v60;
        }

        [v148 addObject:v49];
        if ([v37 startRoadCount])
        {
          if (v145[2](v145, [v37 startRoadCount], HIDWORD(v146)) || v139[2](v139, objc_msgSend(v37, "startRoadCount"), HIDWORD(v146)) && (objc_msgSend(v144, "coordinates"), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "firstObject"), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v144, "coordinates"), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "lastObject"), v65 = objc_claimAutoreleasedReturnValue(), -[RTTripClusterProcessor getDistanceToRoadFromLatitude:longitude:roadStart:roadEnd:](v140, "getDistanceToRoadFromLatitude:longitude:roadStart:roadEnd:", v63, v65, a8, a9), v67 = v66, v65, v64, v63, v62, objc_msgSend(v148, "lastObject"), v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v68, "coordinates"), v69 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v69, "firstObject"), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v148, "lastObject"), v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "coordinates"), v72 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v72, "lastObject"), v73 = objc_claimAutoreleasedReturnValue(), -[RTTripClusterProcessor getDistanceToRoadFromLatitude:longitude:roadStart:roadEnd:](v140, "getDistanceToRoadFromLatitude:longitude:roadStart:roadEnd:", v70, v73, a8, a9), v75 = v74, v73, v72, v71, v70, v69, v68, v67 >= 0.0) && v75 >= 0.0 && v75 < v67)
          {
            v61 = [v148 lastObject];

            HIDWORD(v146) = [v37 startRoadCount];
            v144 = v61;
          }
        }

        if ([v37 endRoadCount])
        {
          if (v145[2](v145, [v37 endRoadCount], v146) || v139[2](v139, objc_msgSend(v37, "endRoadCount"), v146) && (objc_msgSend(v143, "coordinates"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "firstObject"), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v143, "coordinates"), v79 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "lastObject"), v80 = objc_claimAutoreleasedReturnValue(), -[RTTripClusterProcessor getDistanceToRoadFromLatitude:longitude:roadStart:roadEnd:](v140, "getDistanceToRoadFromLatitude:longitude:roadStart:roadEnd:", v78, v80, a10, a11), v82 = v81, v80, v79, v78, v77, objc_msgSend(v148, "lastObject"), v83 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v83, "coordinates"), v84 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v84, "firstObject"), v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v148, "lastObject"), v86 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v86, "coordinates"), v87 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v87, "lastObject"), v88 = objc_claimAutoreleasedReturnValue(), -[RTTripClusterProcessor getDistanceToRoadFromLatitude:longitude:roadStart:roadEnd:](v140, "getDistanceToRoadFromLatitude:longitude:roadStart:roadEnd:", v85, v88, a10, a11), v90 = v89, v88, v87, v86, v85, v84, v83, v82 >= 0.0) && v90 >= 0.0 && v90 < v82)
          {
            v76 = [v148 lastObject];

            LODWORD(v146) = [v37 endRoadCount];
            v143 = v76;
          }
        }

        objc_autoreleasePoolPop(context);
        ++v36;
      }

      while (v142 != v36);
      v34 = [obj countByEnumeratingWithState:&v152 objects:v188 count:16];
    }

    while (v34);

    if (v144 && v143)
    {
      v91 = [(RTTripClusterProcessor *)v140 getCLTripSegmentProcessorOptions];
      v92 = objc_alloc_init(MEMORY[0x277CBFCA8]);
      [v92 constructRouteWithID:v137 withOptions:v91 usingRoadData:v148 startRoad:v144 endRoad:v143 modeOfTransport:1 outputHandler:v134 completionHandler:v135];
      v93 = v170[5];
      v94 = [MEMORY[0x277CBEAA8] now];
      v95 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v93, v95))
      {
        v96 = [MEMORY[0x277CBEAA8] now];
        [v96 timeIntervalSinceDate:v94];
        v98 = v97;
        v99 = objc_opt_new();
        v100 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_381];
        v101 = [MEMORY[0x277CCACC8] callStackSymbols];
        v102 = [v101 filteredArrayUsingPredicate:v100];
        v103 = [v102 firstObject];

        [v99 submitToCoreAnalytics:v103 type:1 duration:v98];
        v104 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v104, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v105 = MEMORY[0x277CCA9B8];
        v189[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v189 count:1];
        v107 = [v105 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v106];

        if (v107)
        {
          v108 = v107;
        }
      }

      else
      {
        v107 = 0;
      }

      v110 = v107;
      if (v110)
      {
        v111 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          v127 = objc_opt_class();
          v128 = NSStringFromClass(v127);
          v129 = [v137 UUIDString];
          v130 = [v110 localizedDescription];
          *buf = 138412802;
          *&buf[4] = v128;
          v183 = 2112;
          v184 = v129;
          v185 = 2112;
          v186 = v130;
          _os_log_error_impl(&dword_2304B3000, v111, OS_LOG_TYPE_ERROR, "%@,Semaphore error when calling constructRouteWithID,%@,error,%@", buf, 0x20u);
        }
      }

      else
      {
        v113 = v176[5];
        v114 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (!v113)
        {
          if (v114)
          {
            v118 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
            {
              v119 = objc_opt_class();
              v120 = NSStringFromClass(v119);
              v121 = [v137 UUIDString];
              *buf = 138412546;
              *&buf[4] = v120;
              v183 = 2112;
              v184 = v121;
              _os_log_impl(&dword_2304B3000, v118, OS_LOG_TYPE_INFO, "%@,constructRoute,success,clusterID,%@", buf, 0x16u);
            }
          }

          if ([(RTTripClusterProcessorOptions *)v140->_options recordDebuggingDataInFile])
          {
            [(NSMutableDictionary *)v140->_debuggingData setValue:v148 forKey:@"roadFamiliarity"];
            v122 = v140->_debuggingData;
            v181[0] = v144;
            v181[1] = v143;
            v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
            [(NSMutableDictionary *)v122 setValue:v123 forKey:@"startAndEndRoads"];

            [v92 outputRouteLearningDebuggingDataInCLTSPFile:v140->_debuggingData];
          }

          v109 = 1;
          goto LABEL_48;
        }

        if (!v114)
        {
LABEL_47:
          v109 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v111 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
        {
          v115 = objc_opt_class();
          v116 = NSStringFromClass(v115);
          v117 = [v137 UUIDString];
          *buf = 138412546;
          *&buf[4] = v116;
          v183 = 2112;
          v184 = v117;
          _os_log_impl(&dword_2304B3000, v111, OS_LOG_TYPE_INFO, "%@,constructRoute,failed,clusterID,%@", buf, 0x16u);
        }
      }

      goto LABEL_47;
    }
  }

  else
  {

    v143 = 0;
    v144 = 0;
  }

  v91 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
  {
    v124 = objc_opt_class();
    v125 = NSStringFromClass(v124);
    v126 = [v137 UUIDString];
    *buf = 138412546;
    *&buf[4] = v125;
    v183 = 2112;
    v184 = v126;
    _os_log_error_impl(&dword_2304B3000, v91, OS_LOG_TYPE_ERROR, "%@, Error finding StartRoad or EndRoad for clusterID,%@", buf, 0x16u);
  }

  v109 = 0;
LABEL_49:

  _Block_object_dispose(&v169, 8);
  _Block_object_dispose(&v175, 8);

  return v109;
}

void __229__RTTripClusterProcessor_updateClusterRouteUsingClusterRoadTransitionsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore_tripClusterRouteTransitionsStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke(uint64_t a1, void *a2)
{
  v176 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 routeRoads];

  if (!v4)
  {
    goto LABEL_104;
  }

  v155 = a1;
  v153 = [MEMORY[0x277CBEB18] array];
  v154 = [MEMORY[0x277CBEB18] array];
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v144 = v3;
  obj = [v3 routeRoads];
  v147 = [obj countByEnumeratingWithState:&v165 objects:v175 count:16];
  if (v147)
  {
    v146 = *v166;
    v5 = 1;
    do
    {
      v6 = 0;
      do
      {
        if (*v166 != v146)
        {
          objc_enumerationMutation(obj);
        }

        v149 = v6;
        v7 = *(*(&v165 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v151 = [v7 coordinates];
        v8 = [v151 countByEnumeratingWithState:&v161 objects:v174 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v162;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v162 != v10)
              {
                objc_enumerationMutation(v151);
              }

              v12 = *(*(&v161 + 1) + 8 * i);
              v13 = objc_autoreleasePoolPush();
              [v153 addObject:v12];
              v14 = [RTTripClusterRoute alloc];
              v15 = *(v155 + 32);
              v16 = [v7 clRoadID];
              [v12 latitude];
              v18 = v17;
              [v12 longitude];
              v20 = [(RTTripClusterRoute *)v14 initWithClusterID:v15 clRoadID:v16 latitude:v5 longitude:0 course:v18 sequence:v19 followedByUTurn:-1.0];
              [v154 addObject:v20];
              ++v5;

              objc_autoreleasePoolPop(v13);
            }

            v9 = [v151 countByEnumeratingWithState:&v161 objects:v174 count:16];
          }

          while (v9);
        }

        objc_autoreleasePoolPop(context);
        v6 = v149 + 1;
      }

      while (v149 + 1 != v147);
      v147 = [obj countByEnumeratingWithState:&v165 objects:v175 count:16];
    }

    while (v147);
  }

  v21 = v155;
  v22 = 0.0;
  if (*(v155 + 64) == 2)
  {
    v23 = [objc_alloc(MEMORY[0x277D013A8]) initWithClusterID:*(v155 + 32)];
    v24 = [*(v155 + 40) getTripClusterRouteWithOptions:v23];
    v25 = [MEMORY[0x277CBEB18] array];
    v26 = *(v155 + 48);
    v160 = v25;
    [v26 getTripClusterRouteAsArrayOfRoadStartAndStopCoordinates:v24 decimatedTripClusterRoute:&v160];
    v27 = v160;

    if ([v154 count] && objc_msgSend(v27, "count"))
    {
      v28 = [*(v155 + 48) options];
      [RTTripClusterProcessor calculateDTWDistanceBetweenTrip1:v153 trip2:v27 windowSize:[v28 windowSize]];
      v22 = v29;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_24:

        goto LABEL_25;
      }

      v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [*(v155 + 32) UUIDString];
        *buf = 138412546;
        v171 = v31;
        v172 = 2112;
        *v173 = v32;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@,failed to get clusterRouteRoads or convertedTripClusterRoute for clusterID,%@", buf, 0x16u);
      }
    }

    v21 = v155;
    goto LABEL_24;
  }

LABEL_25:
  v152 = [MEMORY[0x277CBEB18] array];
  v33 = [*(v21 + 48) options];
  [v33 distanceThreshold_m];
  if (v22 >= v34)
  {
    v35 = *(v21 + 64);

    v3 = v144;
    if (v35 <= 2)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_79;
      }

      v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_INFO, "DTWDistance check failed for aStar reconstructed route. Using existing trip segment representative route", buf, 2u);
      }

      goto LABEL_78;
    }
  }

  else
  {

    v3 = v144;
  }

  v36 = [*(v21 + 56) deleteTripClusterWaypointWithClusterID:*(v21 + 32) maxDeleteAttempts:{objc_msgSend(*(*(v21 + 48) + 24), "maxDeletionAttemptsForClusterData")}];
  v37 = [*(v21 + 40) deleteTripClusterRouteWithClusterID:*(v21 + 32) maxDeleteAttempts:{objc_msgSend(*(*(v21 + 48) + 24), "maxDeletionAttemptsForClusterData")}];
  if ([*(*(v21 + 48) + 24) recordDebuggingDataInFile])
  {
    v38 = [objc_alloc(MEMORY[0x277D013A8]) initWithClusterID:*(v155 + 32)];
    v39 = [*(v155 + 40) getTripClusterRouteWithOptions:v38];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v138 = objc_opt_class();
        v139 = NSStringFromClass(v138);
        v140 = [v39 count];
        *buf = 138412546;
        v171 = v139;
        v172 = 1024;
        *v173 = v140;
        _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "%@,TripCluster Route delete check, fetched,%d", buf, 0x12u);
      }
    }

    if (v39 && [v39 count])
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        [*(v155 + 32) UUIDString];
        v45 = v44 = v38;
        *buf = 138412546;
        v171 = v43;
        v172 = 2112;
        *v173 = v45;
        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEFAULT, "%@,route not deleted correctly,%@", buf, 0x16u);

        v38 = v44;
      }
    }

    v46 = [objc_alloc(MEMORY[0x277D013C8]) initWithClusterID:*(v155 + 32)];
    v47 = [*(v155 + 56) getTripClusterWaypointWithOptions:v46];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v48 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v141 = objc_opt_class();
        v142 = NSStringFromClass(v141);
        v143 = [v47 count];
        *buf = 138412546;
        v171 = v142;
        v172 = 1024;
        *v173 = v143;
        _os_log_debug_impl(&dword_2304B3000, v48, OS_LOG_TYPE_DEBUG, "%@,TripCluster Waypoint delete check, fetched,%d", buf, 0x12u);
      }
    }

    if (v47 && [v47 count])
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        [*(v155 + 32) UUIDString];
        v53 = v52 = v38;
        *buf = 138412546;
        v171 = v51;
        v172 = 2112;
        *v173 = v53;
        _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEFAULT, "%@,waypoints not stored correctly,%@", buf, 0x16u);

        v38 = v52;
      }
    }

    v54 = *(*(v155 + 48) + 8);
    v55 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v39, "count")}];
    [v54 setValue:v55 forKey:@"routePointsCountAfterDelete"];

    v56 = *(*(v155 + 48) + 8);
    v57 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v47, "count")}];
    [v56 setValue:v57 forKey:@"waypointsCountAfterDelete"];

    v58 = *(*(v155 + 48) + 8);
    v3 = v144;
    v59 = [v144 routeRoads];
    [v58 setValue:v59 forKey:@"clusterRouteAfter"];

    v60 = *(*(v155 + 48) + 8);
    v61 = [v144 tripLocations];
    [v60 setValue:v61 forKey:@"waypoints"];

    v62 = *(*(v155 + 48) + 8);
    v63 = [MEMORY[0x277CBEAA8] now];
    [v62 setValue:v63 forKey:@"updateTime"];
  }

  if (v36)
  {
    v64 = 1;
    v21 = v155;
    if ((v37 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v21 = v155;
    v64 = [*(v155 + 56) getTripClusterWaypointDataCountForClusterID:*(v155 + 32)] == 0;
    if ((v37 & 1) == 0)
    {
LABEL_50:
      v65 = [*(v21 + 40) getTripClusterRouteCountWithClusterID:*(v21 + 32)] == 0;
      if (v64)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  v65 = 1;
  if (v64)
  {
LABEL_57:
    if (v65 || [*(*(v21 + 48) + 24) maxDeletionAttemptsForClusterData] < 2)
    {
      [*(v21 + 40) storeTripClusterRoute:v154];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_64:
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v150 = [v3 tripLocations];
        v76 = [v150 countByEnumeratingWithState:&v156 objects:v169 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v157;
          v79 = 1;
          do
          {
            v80 = 0;
            do
            {
              v81 = v79;
              if (*v157 != v78)
              {
                objc_enumerationMutation(v150);
              }

              v82 = *(*(&v156 + 1) + 8 * v80);
              v83 = objc_autoreleasePoolPush();
              [v82 courseAccuracy];
              v84 = [RTTripClusterProcessor uTurnFlagFromCourseAccuracy:?];
              if (v84 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v85 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                {
                  v95 = objc_opt_class();
                  v96 = NSStringFromClass(v95);
                  v97 = [v144 tripSegmentID];
                  *buf = 138412802;
                  v171 = v96;
                  v172 = 2112;
                  *v173 = v97;
                  *&v173[8] = 1024;
                  *&v173[10] = v81;
                  _os_log_debug_impl(&dword_2304B3000, v85, OS_LOG_TYPE_DEBUG, "%@,followedByUTurn,1 for tripID,%@, loc waypoint seq,%d", buf, 0x1Cu);
                }
              }

              v86 = [RTTripClusterWaypoint alloc];
              v87 = *(v155 + 32);
              v88 = [v82 clRoadID];
              [v82 latitude];
              v90 = v89;
              [v82 longitude];
              v92 = v91;
              [v82 course];
              v79 = v81 + 1;
              v94 = [(RTTripClusterWaypoint *)v86 initWithClusterID:v87 clRoadID:v88 latitude:v81 longitude:v84 course:v90 sequence:v92 followedByUTurn:v93];
              [v152 addObject:v94];

              objc_autoreleasePoolPop(v83);
              ++v80;
            }

            while (v77 != v80);
            v77 = [v150 countByEnumeratingWithState:&v156 objects:v169 count:16];
          }

          while (v77);
        }

        v21 = v155;
        [*(v155 + 56) storeTripClusterWaypoint:v152];
        v3 = v144;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_79;
        }

        v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_78;
        }

        v126 = objc_opt_class();
        v68 = NSStringFromClass(v126);
        v127 = [v152 count];
        v128 = [*(v155 + 32) UUIDString];
        *buf = 138412802;
        v171 = v68;
        v172 = 1024;
        *v173 = v127;
        *&v173[4] = 2112;
        *&v173[6] = v128;
        _os_log_debug_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEBUG, "%@,deleted old, and stored new TripCluster Waypoints,%d,clusterID,%@", buf, 0x1Cu);

        goto LABEL_109;
      }

      v71 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v135 = objc_opt_class();
        v73 = NSStringFromClass(v135);
        v136 = [v154 count];
        v137 = [*(v21 + 32) UUIDString];
        *buf = 138412802;
        v171 = v73;
        v172 = 1024;
        *v173 = v136;
        *&v173[4] = 2112;
        *&v173[6] = v137;
        _os_log_debug_impl(&dword_2304B3000, v71, OS_LOG_TYPE_DEBUG, "%@,deleted old, and stored new TripCluster Route,%d,clusterID,%@", buf, 0x1Cu);

        goto LABEL_111;
      }
    }

    else
    {
      v71 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        v74 = [*(*(v21 + 48) + 24) maxDeletionAttemptsForClusterData];
        v75 = [*(v21 + 32) UUIDString];
        *buf = 138412802;
        v171 = v73;
        v172 = 2048;
        *v173 = v74;
        *&v173[8] = 2112;
        *&v173[10] = v75;
        _os_log_error_impl(&dword_2304B3000, v71, OS_LOG_TYPE_ERROR, "%@,Failed to delete route location after %lu attempts for clusterID,%@,not updating route", buf, 0x20u);

LABEL_111:
      }
    }

    goto LABEL_64;
  }

LABEL_54:
  if ([*(*(v21 + 48) + 24) maxDeletionAttemptsForClusterData] < 2)
  {
    goto LABEL_57;
  }

  v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    v69 = [*(*(v21 + 48) + 24) maxDeletionAttemptsForClusterData];
    v70 = [*(v21 + 32) UUIDString];
    *buf = 138412802;
    v171 = v68;
    v172 = 2048;
    *v173 = v69;
    *&v173[8] = 2112;
    *&v173[10] = v70;
    _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "%@,Failed to delete waypoints after %lu attempts for clusterID,%@,not updating waypoints or route locations", buf, 0x20u);

LABEL_109:
  }

LABEL_78:

LABEL_79:
  if ([*(*(v21 + 48) + 24) recordDebuggingDataInFile])
  {
    v98 = [objc_alloc(MEMORY[0x277D013A8]) initWithClusterID:*(v21 + 32)];
    v99 = [*(v21 + 40) getTripClusterRouteWithOptions:v98];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v100 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
      {
        v129 = objc_opt_class();
        v130 = NSStringFromClass(v129);
        v131 = [v99 count];
        *buf = 138412546;
        v171 = v130;
        v172 = 1024;
        *v173 = v131;
        _os_log_debug_impl(&dword_2304B3000, v100, OS_LOG_TYPE_DEBUG, "%@,TripCluster Route Store check, fetched,%d", buf, 0x12u);
      }
    }

    if (!v99 || ![v99 count])
    {
      v101 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v102 = objc_opt_class();
        v103 = NSStringFromClass(v102);
        v104 = [*(v155 + 32) UUIDString];
        *buf = 138412546;
        v171 = v103;
        v172 = 2112;
        *v173 = v104;
        _os_log_impl(&dword_2304B3000, v101, OS_LOG_TYPE_DEFAULT, "%@,route not stored correctly,%@", buf, 0x16u);
      }
    }

    v105 = [objc_alloc(MEMORY[0x277D013C8]) initWithClusterID:*(v155 + 32)];
    v106 = [*(v155 + 56) getTripClusterWaypointWithOptions:v105];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v107 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
      {
        v132 = objc_opt_class();
        v133 = NSStringFromClass(v132);
        v134 = [v106 count];
        *buf = 138412546;
        v171 = v133;
        v172 = 1024;
        *v173 = v134;
        _os_log_debug_impl(&dword_2304B3000, v107, OS_LOG_TYPE_DEBUG, "%@,TripCluster Waypoint Store check, fetched,%d", buf, 0x12u);
      }
    }

    if (!v106 || ![v106 count])
    {
      v108 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = objc_opt_class();
        v110 = NSStringFromClass(v109);
        v111 = [*(v155 + 32) UUIDString];
        *buf = 138412546;
        v171 = v110;
        v172 = 2112;
        *v173 = v111;
        _os_log_impl(&dword_2304B3000, v108, OS_LOG_TYPE_DEFAULT, "%@,waypoints not stored correctly,%@", buf, 0x16u);
      }
    }

    v21 = v155;
    v112 = *(*(v155 + 48) + 8);
    v113 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v99, "count")}];
    [v112 setValue:v113 forKey:@"routePointsCountAfterUpdate"];

    v114 = *(*(v155 + 48) + 8);
    v115 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v106, "count")}];
    [v114 setValue:v115 forKey:@"waypointsCountAfterUpdate"];

    v116 = *(*(v155 + 48) + 8);
    v3 = v144;
    v117 = [v144 routeRoads];
    [v116 setValue:v117 forKey:@"clusterRouteAfter"];

    v118 = *(*(v155 + 48) + 8);
    v119 = [v144 tripLocations];
    [v118 setValue:v119 forKey:@"waypoints"];

    v120 = *(*(v155 + 48) + 8);
    v121 = [MEMORY[0x277CBEAA8] now];
    [v120 setValue:v121 forKey:@"updateTime"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v122 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
    {
      v123 = objc_opt_class();
      v124 = NSStringFromClass(v123);
      v125 = [*(v21 + 32) UUIDString];
      *buf = 138412546;
      v171 = v124;
      v172 = 2112;
      *v173 = v125;
      _os_log_impl(&dword_2304B3000, v122, OS_LOG_TYPE_INFO, "%@,constructRoute for %@,received reconstructed route", buf, 0x16u);
    }
  }

LABEL_104:
}

void __229__RTTripClusterProcessor_updateClusterRouteUsingClusterRoadTransitionsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore_tripClusterRouteTransitionsStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke_293(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = [*(a1 + 40) UUIDString];
        *v11 = 138412546;
        *&v11[4] = v7;
        *&v11[12] = 2112;
        *&v11[14] = v8;
        v9 = "%@,constructRoute,failed,clusterID,%@";
LABEL_8:
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, v9, v11, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v7 = NSStringFromClass(v10);
      v8 = [*(a1 + 40) UUIDString];
      *v11 = 138412546;
      *&v11[4] = v7;
      *&v11[12] = 2112;
      *&v11[14] = v8;
      v9 = "%@,constructRoute,success,clusterID,%@";
      goto LABEL_8;
    }

LABEL_9:
  }

  [*(a1 + 48) updateLockStatusForClusterId:*(a1 + 40) isLocked:{0, *v11, *&v11[16], v12}];
  dispatch_semaphore_signal(*(*(*(a1 + 64) + 8) + 40));
}

BOOL __229__RTTripClusterProcessor_updateClusterRouteUsingClusterRoadTransitionsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore_tripClusterRouteTransitionsStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke_294(uint64_t a1, int a2, int a3)
{
  if (fabs((a2 - a3)) < 3.0)
  {
    return 1;
  }

  if (a2 > a3)
  {
    [*(*(a1 + 32) + 24) startEndRoadCountBufferZonePercentage];
    if (v7 * a2 < a3)
    {
      return 1;
    }
  }

  if (a2 >= a3)
  {
    return 0;
  }

  [*(*(a1 + 32) + 24) startEndRoadCountBufferZonePercentage];
  return v8 * a3 < a2;
}

BOOL __229__RTTripClusterProcessor_updateClusterRouteUsingClusterRoadTransitionsWithClusterID_tripClusterStore_tripClusterRouteStore_tripClusterWaypointStore_tripClusterRouteTransitionsStore_startLat_startLon_endLat_endLon_traversalCount___block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2 >= 1 && !a3 || a2 > 1 && a3 == 1)
  {
    return 1;
  }

  [*(*(a1 + 32) + 24) startEndRoadCountBufferZonePercentage];
  return v6 * a2 > a3 && fabs((a2 - a3)) > 3.0;
}

+ (id)getWaypointIDFromClusterID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a3 UUIDString];
  if ([v3 length] > 7)
  {
    v6 = [v3 substringFromIndex:8];
    v7 = [@"00000000" stringByAppendingString:v6];

    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Waypoint cluster ID requested for an invalid clusterID", &v11, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (void)deferClusterProcessing:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,defer,ClusterProcessing,%d", &v10, 0x1Cu);
    }
  }

  [(RTTripClusterProcessor *)self setShouldDeferClusterProcessing:v3];
}

@end