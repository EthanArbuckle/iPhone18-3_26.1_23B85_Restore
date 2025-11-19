@interface RTElevationAdjuster
- (RTElevationAdjuster)initWithElevationManager:(id)a3;
- (id)adjustCLLocation:(id)a3 elevation:(double)a4;
- (id)performElevationInterpolationOn:(id)a3 referenceElevations:(id)a4;
- (void)adjustElevation:(id)a3 handler:(id)a4;
- (void)adjustElevationForLocations:(id)a3 handler:(id)a4;
- (void)adjustElevationForSynthesizedLocations:(id)a3 handler:(id)a4;
- (void)adjustElevationForTripSegmentLocations:(id)a3 handler:(id)a4;
- (void)respondWithCLLocation:(id)a3 elevations:(id)a4 error:(id)a5 handler:(id)a6;
- (void)respondWithSynthesizedLocation:(id)a3 elevations:(id)a4 error:(id)a5 handler:(id)a6;
- (void)respondWithTripSegmentLocation:(id)a3 elevations:(id)a4 error:(id)a5 handler:(id)a6;
@end

@implementation RTElevationAdjuster

- (void)respondWithSynthesizedLocation:(id)a3 elevations:(id)a4 error:(id)a5 handler:(id)a6
{
  v95 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [v10 count];
    if (v14 == [v11 count])
    {
      aSelector = a2;
      v72 = v13;
      v73 = v12;
      v15 = [MEMORY[0x277CBEB18] array];
      if ([v10 count])
      {
        v16 = 0;
        v74 = v15;
        do
        {
          v17 = [v10 objectAtIndexedSubscript:v16];
          v18 = [v17 locationType];

          v19 = [v10 objectAtIndexedSubscript:v16];
          [v19 verticalAccuracy];
          v21 = v20;

          v22 = [v11 objectAtIndexedSubscript:v16];
          [v22 elevation];
          v24 = v23;
          v25 = [v10 objectAtIndexedSubscript:v16];
          [v25 altitude];
          v27 = v26;

          if (v24 != v27)
          {
            v28 = [v10 objectAtIndexedSubscript:v16];
            v18 = [v28 locationType] | 0x10;

            v21 = 10.0;
          }

          v83 = v21;
          v84 = v18;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v55 = objc_opt_class();
              v56 = NSStringFromClass(v55);
              v57 = NSStringFromSelector(aSelector);
              v58 = [v10 objectAtIndexedSubscript:v16];
              v59 = [v58 description];
              v60 = [v10 objectAtIndexedSubscript:v16];
              [v60 altitude];
              v62 = v61;
              v63 = [v11 objectAtIndexedSubscript:v16];
              [v63 elevation];
              *buf = 138413315;
              v86 = v56;
              v87 = 2112;
              v88 = v57;
              v89 = 2117;
              v90 = v59;
              v91 = 2048;
              v92 = v62;
              v93 = 2048;
              v94 = v64;
              _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "%@ %@ CLLocation %{sensitive}@, elevation from %.2f to %.2f", buf, 0x34u);
            }
          }

          v78 = [RTSynthesizedLocation alloc];
          v82 = [v10 objectAtIndexedSubscript:v16];
          [v82 coordinate];
          v31 = v30;
          v33 = v32;
          v81 = [v11 objectAtIndexedSubscript:v16];
          [v81 elevation];
          v35 = v34;
          v80 = [v10 objectAtIndexedSubscript:v16];
          [v80 horizontalAccuracy];
          v37 = v36;
          v79 = [v10 objectAtIndexedSubscript:v16];
          [v79 course];
          v39 = v38;
          v77 = [v10 objectAtIndexedSubscript:v16];
          [v77 courseAccuracy];
          v41 = v40;
          v76 = [v10 objectAtIndexedSubscript:v16];
          [v76 speed];
          v43 = v42;
          v75 = [v10 objectAtIndexedSubscript:v16];
          [v75 speedAccuracy];
          v45 = v44;
          v46 = [v10 objectAtIndexedSubscript:v16];
          v47 = [v46 geoRoadClass];
          v48 = [v10 objectAtIndexedSubscript:v16];
          v49 = [v48 geoFormOfWay];
          v50 = [v10 objectAtIndexedSubscript:v16];
          v51 = [v50 timestamp];
          [v10 objectAtIndexedSubscript:v16];
          v53 = v52 = v11;
          v54 = -[RTSynthesizedLocation initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:geoRoadClass:geoFormOfWay:locationType:timestamp:clRoadID:](v78, "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:geoRoadClass:geoFormOfWay:locationType:timestamp:clRoadID:", v47, v49, v84, v51, [v53 clRoadID], v31, v33, v35, v37, v83, v39, v41, v43, v45);

          v11 = v52;
          v15 = v74;
          [v74 addObject:v54];

          ++v16;
        }

        while (v16 < [v10 count]);
      }

      v13 = v72;
      v12 = v73;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v65 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v66 = objc_opt_class();
          NSStringFromClass(v66);
          v68 = v67 = v11;
          v69 = NSStringFromSelector(aSelector);
          v70 = [v10 count];
          *buf = 138412802;
          v86 = v68;
          v87 = 2112;
          v88 = v69;
          v89 = 2048;
          v90 = v70;
          _os_log_debug_impl(&dword_2304B3000, v65, OS_LOG_TYPE_DEBUG, "%@ %@, adjusted %tu locations", buf, 0x20u);

          v11 = v67;
        }
      }

      (*(v72 + 2))(v72, v15, v73);
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v86 = [v11 count];
        v87 = 2048;
        v88 = [v10 count];
        _os_log_fault_impl(&dword_2304B3000, v15, OS_LOG_TYPE_FAULT, "Number of elements (%tu) in elevations is not equal to number of elements in locations (%tu)", buf, 0x16u);
      }
    }
  }
}

- (void)adjustElevationForSynthesizedLocations:(id)a3 handler:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v24 = self;
    v8 = [MEMORY[0x277CBEB18] array];
    if ([v6 count])
    {
      v9 = 0;
      do
      {
        v10 = objc_alloc(MEMORY[0x277CCA970]);
        v11 = [v6 objectAtIndexedSubscript:v9];
        v12 = [v11 timestamp];
        v13 = [v6 objectAtIndexedSubscript:v9];
        v14 = [v13 timestamp];
        v15 = [v10 initWithStartDate:v12 endDate:v14];

        v16 = objc_alloc(MEMORY[0x277D010E0]);
        v17 = [v6 objectAtIndexedSubscript:v9];
        [v17 altitude];
        v18 = [v16 initWithElevation:v15 dateInterval:?];
        [v8 addObject:v18];

        ++v9;
      }

      while (v9 < [v6 count]);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v30 = [v6 count];
        _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "Invoked adjustElevationForLocations for %tu RTSynthesizedLocation values", buf, 0xCu);
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __93__RTElevationAdjuster_RTSynthesizedLocation__adjustElevationForSynthesizedLocations_handler___block_invoke;
    v25[3] = &unk_2788C55A8;
    v26 = v6;
    v27 = v24;
    v28 = v7;
    [(RTElevationAdjuster *)v24 adjustElevation:v8 handler:v25];

    v20 = v26;
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = *MEMORY[0x277D01448];
    v31 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received empty location array"];
    v32[0] = v8;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v23 = [v21 initWithDomain:v22 code:7 userInfo:v20];
    (*(v7 + 2))(v7, v6, v23);
  }
}

void __93__RTElevationAdjuster_RTSynthesizedLocation__adjustElevationForSynthesizedLocations_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5 || (v6 = [v7 count], v6 != objc_msgSend(*(a1 + 32), "count")))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) respondWithSynthesizedLocation:*(a1 + 32) elevations:v7 error:0 handler:*(a1 + 48)];
  }
}

- (id)adjustCLLocation:(id)a3 elevation:(double)a4
{
  if (a3)
  {
    v17 = 0u;
    memset(v18, 0, 28);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    memset(v12, 0, sizeof(v12));
    *buf = 0u;
    [a3 clientLocation];
    *(v12 + 12) = a4;
    v5 = objc_alloc(MEMORY[0x277CE41F8]);
    v9[6] = v16;
    v9[7] = v17;
    v10[0] = v18[0];
    *(v10 + 12) = *(v18 + 12);
    v9[2] = v12[1];
    v9[3] = v13;
    v9[4] = v14;
    v9[5] = v15;
    v9[0] = *buf;
    v9[1] = v12[0];
    v6 = [v5 initWithClientLocation:v9];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)respondWithCLLocation:(id)a3 elevations:(id)a4 error:(id)a5 handler:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    v15 = [v11 count];
    if (v15 == [v12 count])
    {
      aSelector = a2;
      v40 = v14;
      v41 = v13;
      v16 = [MEMORY[0x277CBEB18] array];
      if ([v11 count])
      {
        v17 = 0;
        v18 = MEMORY[0x277D86220];
        do
        {
          v19 = objc_autoreleasePoolPush();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v24 = objc_opt_class();
              v39 = NSStringFromClass(v24);
              v38 = NSStringFromSelector(aSelector);
              v36 = [v11 objectAtIndexedSubscript:v17];
              v25 = [v36 description];
              v35 = [v11 objectAtIndexedSubscript:v17];
              [v35 altitude];
              v27 = v26;
              v28 = [v12 objectAtIndexedSubscript:v17];
              [v28 elevation];
              *buf = 138413315;
              v43 = v39;
              v44 = 2112;
              v45 = v38;
              v46 = 2117;
              v47 = v25;
              v48 = 2048;
              v49 = v27;
              v50 = 2048;
              v51 = v29;
              _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "%@ %@ CLLocation %{sensitive}@, elevation from %.2f to %.2f", buf, 0x34u);
            }
          }

          v21 = [v11 objectAtIndexedSubscript:v17];
          v22 = [v12 objectAtIndexedSubscript:v17];
          [v22 elevation];
          v23 = [(RTElevationAdjuster *)self adjustCLLocation:v21 elevation:?];

          [v16 addObject:v23];
          objc_autoreleasePoolPop(v19);
          ++v17;
        }

        while (v17 < [v11 count]);
      }

      v14 = v40;
      v13 = v41;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = NSStringFromSelector(aSelector);
          v34 = [v11 count];
          *buf = 138412802;
          v43 = v32;
          v44 = 2112;
          v45 = v33;
          v46 = 2048;
          v47 = v34;
          _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@ %@, adjusted %tu locations", buf, 0x20u);
        }
      }

      (*(v40 + 2))(v40, v16, v41);
    }

    else
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v43 = [v12 count];
        v44 = 2048;
        v45 = [v11 count];
        _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "Number of elements (%tu) in elevations is not equal to number of elements in locations (%tu)", buf, 0x16u);
      }
    }
  }
}

- (void)adjustElevationForLocations:(id)a3 handler:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v27 = self;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __71__RTElevationAdjuster_CLLocation__adjustElevationForLocations_handler___block_invoke;
    v32[3] = &unk_2788C8170;
    v8 = v6;
    v33 = v8;
    [v8 enumerateObjectsUsingBlock:v32];
    v9 = [MEMORY[0x277CBEB18] array];
    if ([v8 count])
    {
      v10 = 0;
      do
      {
        v11 = objc_alloc(MEMORY[0x277CCA970]);
        v12 = [v8 objectAtIndexedSubscript:v10];
        v13 = [v12 timestamp];
        v14 = [v8 objectAtIndexedSubscript:v10];
        v15 = [v14 timestamp];
        v16 = [v11 initWithStartDate:v13 endDate:v15];

        v17 = objc_alloc(MEMORY[0x277D010E0]);
        v18 = [v8 objectAtIndexedSubscript:v10];
        [v18 altitude];
        v19 = [v17 initWithElevation:v16 dateInterval:?];
        [v9 addObject:v19];

        ++v10;
      }

      while (v10 < [v8 count]);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v8 count];
        *buf = 134217984;
        v35 = v26;
        _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "Invoked adjustElevationForLocations for %tu CLLocation values", buf, 0xCu);
      }
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__RTElevationAdjuster_CLLocation__adjustElevationForLocations_handler___block_invoke_8;
    v28[3] = &unk_2788C55A8;
    v29 = v8;
    v30 = v27;
    v31 = v7;
    [(RTElevationAdjuster *)v27 adjustElevation:v9 handler:v28];

    v21 = v33;
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v23 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received empty location array"];
    v37[0] = v21;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v25 = [v22 initWithDomain:v23 code:7 userInfo:v24];
    (*(v7 + 2))(v7, v6, v25);
  }
}

void __71__RTElevationAdjuster_CLLocation__adjustElevationForLocations_handler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 32) count];
      v6 = [v3 toString];
      v7 = 134218243;
      v8 = v5;
      v9 = 2117;
      v10 = v6;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "adjustElevationForLocations,locationCount,%tu,location,%{sensitive}@", &v7, 0x16u);
    }
  }
}

void __71__RTElevationAdjuster_CLLocation__adjustElevationForLocations_handler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5 || (v6 = [v7 count], v6 != objc_msgSend(*(a1 + 32), "count")))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) respondWithCLLocation:*(a1 + 32) elevations:v7 error:0 handler:*(a1 + 48)];
  }
}

- (void)respondWithTripSegmentLocation:(id)a3 elevations:(id)a4 error:(id)a5 handler:(id)a6
{
  v81 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [v10 count];
    if (v14 == [v11 count])
    {
      aSelector = a2;
      v62 = v13;
      v63 = v12;
      v15 = [MEMORY[0x277CBEB18] array];
      if ([v10 count])
      {
        v16 = 0;
        v64 = v15;
        do
        {
          context = objc_autoreleasePoolPush();
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              v47 = NSStringFromSelector(aSelector);
              v48 = [v10 objectAtIndexedSubscript:v16];
              v49 = [v48 description];
              v50 = [v10 objectAtIndexedSubscript:v16];
              [v50 altitude];
              v52 = v51;
              v53 = [v11 objectAtIndexedSubscript:v16];
              [v53 elevation];
              *buf = 138413315;
              v72 = v46;
              v73 = 2112;
              v74 = v47;
              v75 = 2117;
              v76 = v49;
              v77 = 2048;
              v78 = v52;
              v79 = 2048;
              v80 = v54;
              _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@ %@ CLLocation %{sensitive}@, elevation from %.2f to %.2f", buf, 0x34u);
            }
          }

          v18 = objc_alloc(MEMORY[0x277CBFC98]);
          v69 = [v10 objectAtIndexedSubscript:v16];
          v19 = [v69 timestamp];
          v68 = [v10 objectAtIndexedSubscript:v16];
          [v68 latitude];
          v21 = v20;
          v67 = [v10 objectAtIndexedSubscript:v16];
          [v67 longitude];
          v23 = v22;
          v66 = [v10 objectAtIndexedSubscript:v16];
          [v66 horizontalAccuracy];
          v25 = v24;
          v65 = [v10 objectAtIndexedSubscript:v16];
          [v65 course];
          v27 = v26;
          v28 = [v10 objectAtIndexedSubscript:v16];
          [v28 courseAccuracy];
          v30 = v29;
          v31 = [v10 objectAtIndexedSubscript:v16];
          [v31 speed];
          v33 = v32;
          v34 = [v10 objectAtIndexedSubscript:v16];
          [v34 speedAccuracy];
          v36 = v35;
          v37 = [v11 objectAtIndexedSubscript:v16];
          [v37 elevation];
          v39 = v38;
          [v10 objectAtIndexedSubscript:v16];
          v41 = v40 = v11;
          v42 = [v18 initWithTime:v19 latitude:objc_msgSend(v41 longitude:"locType") horizontalAccuracy:v21 course:v23 courseAccuracy:v25 speed:v27 speedAccuracy:v30 altitude:v33 altitudeAccuracy:v36 locType:{v39, 0x4024000000000000}];
          v43 = v10;
          v44 = v42;

          v11 = v40;
          v15 = v64;
          [v64 addObject:v44];

          v10 = v43;
          objc_autoreleasePoolPop(context);
          ++v16;
        }

        while (v16 < [v43 count]);
      }

      v13 = v62;
      v12 = v63;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v55 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          v56 = objc_opt_class();
          NSStringFromClass(v56);
          v58 = v57 = v11;
          v59 = NSStringFromSelector(aSelector);
          v60 = [v10 count];
          *buf = 138412802;
          v72 = v58;
          v73 = 2112;
          v74 = v59;
          v75 = 2048;
          v76 = v60;
          _os_log_debug_impl(&dword_2304B3000, v55, OS_LOG_TYPE_DEBUG, "%@ %@, adjusted %tu locations", buf, 0x20u);

          v11 = v57;
        }
      }

      (*(v62 + 2))(v62, v15, v63);
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v72 = [v11 count];
        v73 = 2048;
        v74 = [v10 count];
        _os_log_fault_impl(&dword_2304B3000, v15, OS_LOG_TYPE_FAULT, "Number of elements (%tu) in elevations is not equal to number of elements in locations (%tu)", buf, 0x16u);
      }
    }
  }
}

- (void)adjustElevationForTripSegmentLocations:(id)a3 handler:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v25 = self;
    v8 = [MEMORY[0x277CBEB18] array];
    if ([v6 count])
    {
      v9 = 0;
      do
      {
        v10 = objc_autoreleasePoolPush();
        v11 = objc_alloc(MEMORY[0x277CCA970]);
        v12 = [v6 objectAtIndexedSubscript:v9];
        v13 = [v12 timestamp];
        v14 = [v6 objectAtIndexedSubscript:v9];
        v15 = [v14 timestamp];
        v16 = [v11 initWithStartDate:v13 endDate:v15];

        v17 = objc_alloc(MEMORY[0x277D010E0]);
        v18 = [v6 objectAtIndexedSubscript:v9];
        [v18 altitude];
        v19 = [v17 initWithElevation:v16 dateInterval:?];
        [v8 addObject:v19];

        objc_autoreleasePoolPop(v10);
        ++v9;
      }

      while (v9 < [v6 count]);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v31 = [v6 count];
        _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "Invoked adjustElevationForLocations for %tu CLLocation values", buf, 0xCu);
      }
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93__RTElevationAdjuster_CLTripSegmentLocation__adjustElevationForTripSegmentLocations_handler___block_invoke;
    v26[3] = &unk_2788C55A8;
    v27 = v6;
    v28 = v25;
    v29 = v7;
    [(RTElevationAdjuster *)v25 adjustElevation:v8 handler:v26];

    v21 = v27;
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v23 = *MEMORY[0x277D01448];
    v32 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received empty location array"];
    v33[0] = v8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v24 = [v22 initWithDomain:v23 code:7 userInfo:v21];
    (*(v7 + 2))(v7, v6, v24);
  }
}

void __93__RTElevationAdjuster_CLTripSegmentLocation__adjustElevationForTripSegmentLocations_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5 || (v6 = [v7 count], v6 != objc_msgSend(*(a1 + 32), "count")))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) respondWithTripSegmentLocation:*(a1 + 32) elevations:v7 error:0 handler:*(a1 + 48)];
  }
}

- (RTElevationAdjuster)initWithElevationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTElevationAdjuster;
  v6 = [(RTElevationAdjuster *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elevationManager, a3);
  }

  return v7;
}

- (id)performElevationInterpolationOn:(id)a3 referenceElevations:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || ![v5 count])
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_20:

      v33 = v5;
      goto LABEL_21;
    }

    v90 = 0;
    v31 = "Attempting adjustElevationForLocationsWithElevations with no input elevation data";
    v32 = &v90;
LABEL_46:
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, v31, v32, 2u);
    goto LABEL_20;
  }

  if (!v6 || ![v6 count])
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v31 = "Attempting adjustElevationForLocationsWithElevations with no reference elevation data";
    v32 = buf;
    goto LABEL_46;
  }

  if ([v6 count] >= 2)
  {
    v7 = 1;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7 - 1];
      v9 = [v8 endDate];
      v10 = [v6 objectAtIndexedSubscript:v7];
      v11 = [v10 endDate];
      v12 = [v9 isOnOrAfter:v11];

      if (v12)
      {
        break;
      }

      if (++v7 >= [v6 count])
      {
        goto LABEL_9;
      }
    }

    v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v88 = 0;
    v31 = "Reference elevation data not in chronological order";
    v32 = &v88;
    goto LABEL_46;
  }

LABEL_9:
  if ([v5 count] >= 2)
  {
    v13 = 1;
    while (1)
    {
      v14 = [v5 objectAtIndexedSubscript:v13 - 1];
      v15 = [v14 endDate];
      v16 = [v5 objectAtIndexedSubscript:v13];
      v17 = [v16 endDate];
      v18 = [v15 isOnOrAfter:v17];

      if (v18)
      {
        break;
      }

      if (++v13 >= [v5 count])
      {
        goto LABEL_13;
      }
    }

    v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v87 = 0;
    v31 = "Input elevation data not in chronological order";
    v32 = &v87;
    goto LABEL_46;
  }

LABEL_13:
  v86 = v6;
  v19 = [v6 count];
  v20 = [v5 count];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = 0;
  v82 = v20;
  v23 = v20 - 1;
  while (1)
  {
    v24 = [v5 objectAtIndexedSubscript:v22];
    v25 = [v24 endDate];
    v26 = [v86 objectAtIndexedSubscript:0];
    v27 = [v26 endDate];
    v28 = [v25 compare:v27];

    if (v28 != -1 || v22 >= v23)
    {
      break;
    }

    v29 = [v5 objectAtIndexedSubscript:v22];
    [v21 addObject:v29];

    ++v22;
  }

  v35 = v82;
  v83 = v21;
  if (v22 >= v82)
  {
    v6 = v86;
  }

  else
  {
    v6 = v86;
    if (v19 >= 2)
    {
      v36 = 0;
      v80 = v19 - 1;
      do
      {
        context = objc_autoreleasePoolPush();
        v37 = objc_alloc(MEMORY[0x277CCA970]);
        v38 = [v6 objectAtIndexedSubscript:v36];
        v39 = [v38 endDate];
        v84 = v36;
        v85 = v36 + 1;
        v40 = [v6 objectAtIndexedSubscript:?];
        v41 = [v40 endDate];
        v42 = [v37 initWithStartDate:v39 endDate:v41];

        do
        {
          v43 = [v5 objectAtIndexedSubscript:v22];
          v44 = [v43 endDate];
          v45 = [v42 containsDate:v44];

          if (!v45)
          {
            break;
          }

          v46 = objc_autoreleasePoolPush();
          v47 = [v5 objectAtIndexedSubscript:v22];
          v48 = [v47 endDate];
          v49 = [v6 objectAtIndexedSubscript:v84];
          v50 = [v49 endDate];
          [v48 timeIntervalSinceDate:v50];
          v52 = v51;

          v53 = [v6 objectAtIndexedSubscript:v85];
          [v53 elevation];
          v55 = v54;
          v56 = [v6 objectAtIndexedSubscript:v84];
          [v56 elevation];
          v58 = v57;

          v59 = [v5 objectAtIndexedSubscript:v22];
          [v59 elevation];
          v61 = v60;

          [v42 duration];
          if (v62 > 0.0)
          {
            v63 = [v6 objectAtIndexedSubscript:v84];
            [v63 elevation];
            v65 = v64;
            [v42 duration];
            v61 = v65 + v52 / v66 * (v55 - v58);
          }

          v67 = objc_alloc(MEMORY[0x277CCA970]);
          v68 = [v5 objectAtIndexedSubscript:v22];
          v69 = [v68 startDate];
          v70 = [v5 objectAtIndexedSubscript:v22];
          v71 = [v70 endDate];
          v72 = [v67 initWithStartDate:v69 endDate:v71];

          v73 = objc_alloc(MEMORY[0x277D010E0]);
          v74 = [v5 objectAtIndexedSubscript:v22];
          [v74 elevationUncertainty];
          v76 = v75;
          v77 = [v5 objectAtIndexedSubscript:v22];
          v78 = [v73 initWithElevation:v72 dateInterval:objc_msgSend(v77 elevationUncertainty:"estimationStatus") estimationStatus:{v61, v76}];
          [v83 addObject:v78];

          ++v22;
          objc_autoreleasePoolPop(v46);
          v35 = v82;
          v6 = v86;
        }

        while (v22 < v82);

        objc_autoreleasePoolPop(context);
        if (v22 >= v35)
        {
          break;
        }

        v36 = v85;
      }

      while (v85 < v80);
    }
  }

  if (v22 >= v35)
  {
    v33 = v83;
  }

  else
  {
    v33 = v83;
    do
    {
      v79 = [v5 objectAtIndexedSubscript:v22];
      [v83 addObject:v79];

      ++v22;
    }

    while (v35 != v22);
    v6 = v86;
  }

LABEL_21:

  return v33;
}

- (void)adjustElevation:(id)a3 handler:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    v10 = [v6 firstObject];
    v11 = [v10 endDate];
    v12 = [v9 initWithTimeInterval:v11 sinceDate:-10.0];
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    v14 = [v6 lastObject];
    v15 = [v14 endDate];
    v16 = [v13 initWithTimeInterval:v15 sinceDate:10.0];
    v17 = [v8 initWithStartDate:v12 endDate:v16];

    v18 = [objc_alloc(MEMORY[0x277D01308]) initWithDateInterval:v17 batchSize:0];
    elevationManager = self->_elevationManager;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __47__RTElevationAdjuster_adjustElevation_handler___block_invoke;
    v23[3] = &unk_2788C6468;
    v26 = v7;
    v24 = v6;
    v25 = self;
    [(RTElevationManager *)elevationManager fetchElevationsWithOptions:v18 handler:v23];

    v20 = v26;
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = *MEMORY[0x277D01448];
    v27 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received empty input elevation array"];
    v28[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v20 = [v21 initWithDomain:v22 code:7 userInfo:v18];
    (*(v7 + 2))(v7, v6, v20);
  }
}

void __47__RTElevationAdjuster_adjustElevation_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  v5 = [*(a1 + 40) performElevationInterpolationOn:*(a1 + 32) referenceElevations:v6];
  (*(*(a1 + 48) + 16))();
}

@end