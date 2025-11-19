@interface RTLocationSmoother
+ (int)_inferLocationType:(id)a3;
- (double)getRefAlt:(id)a3;
- (id)estimateLocationFromFallbackModelWithLocations:(id)a3 timestamp:(double)a4 parameters:(id)a5;
- (id)estimateLocationWithLocations:(id)a3 timestamp:(double)a4 parameters:(id)a5 meta:(id)a6;
- (id)estimateVehicleLocationWithLocations:(id)a3 parkingTimestamp:(double)a4;
- (id)inflateHorizontalAccuracyWithLocation:(id)a3 speed:(double)a4 timestamp:(double)a5;
- (id)interpolateLocation1:(id)a3 location2:(id)a4 weigth:(double)a5 speed:(double)a6 timestamp:(double)a7;
- (id)smoothLocations:(id)a3 timestamp:(double)a4 parameters:(id)a5;
- (id)snapToBestLocationWithLocations:(id)a3 timestamp:(double)a4 parameters:(id)a5;
@end

@implementation RTLocationSmoother

- (double)getRefAlt:(id)a3
{
  v3 = a3;
  [v3 verticalAccuracy];
  v4 = 0.0;
  if (v5 > 0.0)
  {
    [v3 altitude];
    v4 = v6;
  }

  return v4;
}

- (id)estimateLocationWithLocations:(id)a3 timestamp:(double)a4 parameters:(id)a5 meta:(id)a6
{
  v88[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = MEMORY[0x277CBEC28];
  v14 = [v10 objectForKey:@"kRTLocationSmootherPreciseLocationOnlyMode" defaultObject:MEMORY[0x277CBEC28]];
  v15 = [v14 BOOLValue];

  v16 = [v10 objectForKey:@"kRTLocationSmootherEnableFallbackModel" defaultObject:v13];
  v68 = [v16 BOOLValue];

  v17 = [v10 objectForKey:@"kRTLocationSmootherInterpolateTime" defaultObject:MEMORY[0x277CBEC38]];
  v18 = [v17 BOOLValue];

  v19 = [v10 objectForKey:@"kRTLocationSmootherAverageMovingSpeed" defaultObject:&unk_2845A1968];
  [v19 doubleValue];
  v21 = v20;

  v70 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
  v88[0] = v70;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:1];
  v23 = [v12 sortedArrayUsingDescriptors:v22];

  v67 = self;
  v69 = v23;
  if (v15)
  {
    v71 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type IN %@", &unk_2845A0B30];
    v65 = [v23 filteredArrayUsingPredicate:?];
    v24 = [RTLocationSmoother smoothLocations:"smoothLocations:timestamp:parameters:" timestamp:a4 parameters:?];
    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type IN %@", &unk_2845A0B48];
    v26 = [v23 filteredArrayUsingPredicate:v25];
    [(RTLocationSmoother *)self snapToBestLocationWithLocations:v26 timestamp:v10 parameters:a4];
    *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v28 = v24;
    v29 = v28;
    v30 = v28;
    if (*&v27 != 0.0)
    {
      if (!v28)
      {
        *&v30 = COERCE_DOUBLE(v27);
        if (v11)
        {
LABEL_7:
          v64 = v11;
          v63 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a4];
          v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", @"timestamp", v63];
          v35 = [v65 filteredArrayUsingPredicate:v34];
          v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v35, "count")}];
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __78__RTLocationSmoother_estimateLocationWithLocations_timestamp_parameters_meta___block_invoke;
          v72[3] = &unk_2788C8170;
          v37 = v36;
          v73 = v37;
          [v35 enumerateObjectsUsingBlock:v72];
          if ([v37 count])
          {
            v38 = [v37 valueForKeyPath:@"@avg.self"];
            [v38 doubleValue];
            v40 = v39;

            v41 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
            [v64 setObject:v41 forKeyedSubscript:@"kRTLocationSmootherSpeedEstimationAfterDate"];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v42 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                v75 = v40;
                _os_log_debug_impl(&dword_2304B3000, v42, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, preciseLocationMode, speedAfterDate, %f", buf, 0xCu);
              }
            }
          }

          v11 = v64;
        }

LABEL_13:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          v44 = v65;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138740483;
            v75 = *&v29;
            v76 = 2117;
            v77 = *&v27;
            v78 = 2117;
            v79 = *&v30;
            _os_log_debug_impl(&dword_2304B3000, v43, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, preciseLocationMode, gpsEstimatedLocation, %{sensitive}@, wifiEstimatedLocation, %{sensitive}@, interpolatedLocation, %{sensitive}@", buf, 0x20u);
          }
        }

        else
        {
          v44 = v65;
        }

LABEL_41:

        goto LABEL_42;
      }

      [v27 horizontalAccuracy];
      v32 = v31 + v31;
      [v29 horizontalAccuracy];
      v30 = v29;
      if (v32 < v33)
      {
        *&v30 = COERCE_DOUBLE(v27);
      }
    }

    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v26 = v23;
  v71 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a4];
  v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", @"timestamp", v71];
  v45 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v44];
  v29 = [v26 filteredArrayUsingPredicate:v45];

  v46 = [v29 lastObject];
  v47 = [v46 timestamp];
  [v47 timeIntervalSinceReferenceDate];
  v49 = v48;

  v25 = [(RTLocationSmoother *)self smoothLocations:v26 timestamp:v10 parameters:v49 + -0.00000001];
  if (!v25)
  {
    *&v30 = 0.0;
    goto LABEL_42;
  }

  if (!v18)
  {
LABEL_38:
    [(RTLocationSmoother *)v67 inflateHorizontalAccuracyWithLocation:v25 speed:v21 timestamp:a4];
    *&v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_42;
    }

    _rt_log_facility_get_os_log(RTLogFacilityLocation);
    *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412547;
      v75 = *&v25;
      v76 = 2117;
      v77 = *&v30;
      _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, allLocationMode, locationT1, %@, estimatedLocation, %{sensitive}@", buf, 0x16u);
    }

    goto LABEL_41;
  }

  v50 = [v26 filteredArrayUsingPredicate:v44];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v51 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v75 = *&v71;
      v76 = 2048;
      v77 = COERCE_DOUBLE([v50 count]);
      _os_log_debug_impl(&dword_2304B3000, v51, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, interpolation, referenceDate, %@, post locations, %lu", buf, 0x16u);
    }
  }

  if (![v50 count])
  {
LABEL_37:

    goto LABEL_38;
  }

  v52 = [v50 firstObject];
  v53 = [v52 timestamp];
  [v53 timeIntervalSinceReferenceDate];
  v55 = v54;

  v56 = [(RTLocationSmoother *)v67 smoothLocations:v26 timestamp:v10 parameters:v55];
  v57 = v56;
  if (!v56 || v49 == v55)
  {

    goto LABEL_37;
  }

  v66 = v50;
  [(RTLocationSmoother *)v67 interpolateLocation1:v25 location2:v56 weigth:1.0 - (a4 - v49) / (v55 - v49) speed:v21 timestamp:a4];
  *&v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v58 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219523;
      v75 = v49;
      v76 = 2048;
      v77 = a4;
      v78 = 2048;
      v79 = v55;
      v80 = 2048;
      v81 = 1.0 - (a4 - v49) / (v55 - v49);
      v82 = 2112;
      v83 = v25;
      v84 = 2112;
      v85 = v57;
      v86 = 2117;
      v87 = v30;
      _os_log_debug_impl(&dword_2304B3000, v58, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, interpolation, t1, %.2f, timeofinterest, %.2f, t2, %.2f, weight, %.2f, location1, %@, location2, %@, interpolatedLocation, %{sensitive}@", buf, 0x48u);
    }
  }

  if (*&v30 == 0.0)
  {
    goto LABEL_38;
  }

LABEL_42:

  if (((v30 == 0) & v68) == 1)
  {
    v59 = v69;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v60 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v60, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, fallback model is engaged", buf, 2u);
      }
    }

    v61 = [(RTLocationSmoother *)v67 estimateLocationFromFallbackModelWithLocations:v69 timestamp:v10 parameters:a4];
  }

  else
  {
    v61 = v30;
    v59 = v69;
  }

  return v61;
}

void __78__RTLocationSmoother_estimateLocationWithLocations_timestamp_parameters_meta___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 speedAccuracy];
  if (v3 > 0.0)
  {
    [v9 speed];
    if (v4 >= 0.0)
    {
      [v9 speed];
      if (v5 <= 600.0)
      {
        v6 = *(a1 + 32);
        v7 = MEMORY[0x277CCABB0];
        [v9 speed];
        v8 = [v7 numberWithDouble:?];
        [v6 addObject:v8];
      }
    }
  }
}

- (id)interpolateLocation1:(id)a3 location2:(id)a4 weigth:(double)a5 speed:(double)a6 timestamp:(double)a7
{
  v11 = a3;
  v12 = a4;
  v13 = [v11 timestamp];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = [v12 timestamp];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;

  [v11 horizontalAccuracy];
  v20 = v19;
  [v12 horizontalAccuracy];
  v22 = v21;
  v43 = 0u;
  memset(v44, 0, 28);
  v42 = 0u;
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  v39 = 0u;
  memset(&v38[2], 0, 32);
  if (v11)
  {
    [v11 clientLocation];
  }

  v23 = a7 - v15;
  if (a7 - v15 < 0.0)
  {
    v23 = -(a7 - v15);
  }

  v24 = v20 + a6 * v23;
  v25 = v18 - a7;
  if (v18 - a7 < 0.0)
  {
    v25 = -(v18 - a7);
  }

  v26 = v22 + a6 * v25;
  if (v24 >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  [v11 coordinate];
  v29 = v28;
  [v12 coordinate];
  *(&v38[2] + 4) = (1.0 - a5) * v30 + v29 * a5;
  [v11 coordinate];
  v32 = v31;
  [v12 coordinate];
  *(&v38[2] + 12) = (1.0 - a5) * v33 + v32 * a5;
  *(&v38[3] + 4) = v27;
  *(v41 + 12) = a7;
  v34 = objc_alloc(MEMORY[0x277CE41F8]);
  v37[6] = v42;
  v37[7] = v43;
  v38[0] = v44[0];
  *(v38 + 12) = *(v44 + 12);
  v37[2] = v39;
  v37[3] = v40;
  v37[4] = v41[0];
  v37[5] = v41[1];
  v37[0] = v38[2];
  v37[1] = v38[3];
  v35 = [v34 initWithClientLocation:v37];

  return v35;
}

- (id)inflateHorizontalAccuracyWithLocation:(id)a3 speed:(double)a4 timestamp:(double)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 timestamp];
  [v8 timeIntervalSinceReferenceDate];
  v10 = a5 - v9;

  if (v10 < 0.0)
  {
    v10 = -v10;
  }

  [v7 horizontalAccuracy];
  v12 = v11 + a4 * v10;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [v7 horizontalAccuracy];
      *buf = 134218496;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, interpolation, no follow-up locations, delta, %.2f, originalHorizontalAccuray, %.2f, newHorizontalAccuracy, %.2f", buf, 0x20u);
    }
  }

  v25 = 0u;
  memset(v26, 0, 28);
  v24 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  memset(buf, 0, sizeof(buf));
  if (v7)
  {
    [v7 clientLocation];
  }

  *&buf[20] = v12;
  *(v23 + 12) = a5;
  v14 = objc_alloc(MEMORY[0x277CE41F8]);
  v18[6] = v24;
  v18[7] = v25;
  v19[0] = v26[0];
  *(v19 + 12) = *(v26 + 12);
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23[0];
  v18[5] = v23[1];
  v18[0] = *buf;
  v18[1] = *&buf[16];
  v15 = [v14 initWithClientLocation:v18];

  return v15;
}

- (id)snapToBestLocationWithLocations:(id)a3 timestamp:(double)a4 parameters:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v8 objectForKey:@"kRTLocationSmootherAverageMovingSpeed" defaultObject:&unk_2845A1968];
  [v9 doubleValue];
  v11 = v10;

  v45 = 0u;
  memset(v46, 0, 28);
  v44 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  memset(v40, 0, sizeof(v40));
  v12 = objc_opt_new();
  v13 = v12;
  if (v12)
  {
    [v12 clientLocation];
  }

  else
  {
    v45 = 0u;
    memset(v46, 0, 28);
    v44 = 0u;
    v42 = 0u;
    memset(v43, 0, sizeof(v43));
    v41 = 0u;
    memset(v40, 0, sizeof(v40));
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v15)
  {
    v16 = 0;
    v17 = *v37;
    v18 = -1.0;
    while (1)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        if (v16)
        {
          [*(*(&v36 + 1) + 8 * i) horizontalAccuracy];
          v22 = v21;
          v23 = [v20 timestamp];
          [v23 timeIntervalSinceReferenceDate];
          v25 = v22 + v11 * vabdd_f64(a4, v24);

          if (v25 >= v18)
          {
            continue;
          }

          v26 = v20;
        }

        else
        {
          v26 = v20;
          [v26 horizontalAccuracy];
          v28 = v27;
          v16 = [v26 timestamp];
          [v16 timeIntervalSinceReferenceDate];
          v25 = v28 + v11 * vabdd_f64(a4, v29);
        }

        v18 = v25;
        v16 = v26;
      }

      v15 = [v14 countByEnumeratingWithState:&v36 objects:v47 count:16];
      if (!v15)
      {

        if (v16 && (*(v43 + 12) = a4, LODWORD(v44) = 4, *(&v40[1] + 4) = v18, [v16 coordinate], *(v40 + 4) = v30, objc_msgSend(v16, "coordinate"), *(v40 + 12) = v31, *(&v40[1] + 4) > 0.0))
        {
          v32 = objc_alloc(MEMORY[0x277CE41F8]);
          v34[6] = v44;
          v34[7] = v45;
          v35[0] = v46[0];
          *(v35 + 12) = *(v46 + 12);
          v34[2] = v41;
          v34[3] = v42;
          v34[4] = v43[0];
          v34[5] = v43[1];
          v34[0] = v40[0];
          v34[1] = v40[1];
          v15 = [v32 initWithClientLocation:v34];
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_21;
      }
    }
  }

  v16 = 0;
LABEL_21:

  return v15;
}

+ (int)_inferLocationType:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type IN %@", &unk_2845A0B60];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type IN %@", &unk_2845A0B78];
    v9 = [v3 filteredArrayUsingPredicate:v8];
    v10 = [v9 count];

    if (v10)
    {
      v7 = 4;
    }

    else
    {
      v7 = 6;
    }
  }

  return v7;
}

- (id)smoothLocations:(id)a3 timestamp:(double)a4 parameters:(id)a5
{
  v169 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (v7 && [v7 count])
  {
    v9 = [v8 objectForKey:@"kRTLocationSmootherPk_pre" defaultObject:&unk_2845A1978];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v8 objectForKey:@"kRTLocationSmootherDeltaQk" defaultObject:&unk_2845A1988];
    v13 = [v12 BOOLValue];

    v14 = [v8 objectForKey:@"kRTLocationSmootherDynamicQk" defaultObject:&unk_2845A1998];
    v15 = [v14 BOOLValue];

    v16 = [v8 objectForKey:@"kRTLocationSmootherAverageMovingSpeed" defaultObject:&unk_2845A1968];
    [v16 doubleValue];
    v18 = v17;

    v19 = 10.0;
    if (v15)
    {
      v20 = [v8 objectForKey:@"kRTLocationSmootherQkCoefficient" defaultObject:&unk_2845A19A8];
      [v20 doubleValue];
      v22 = v21;

      v19 = v18 * v22 * (v18 * v22) >= 10.0 ? v18 * v22 * (v18 * v22) : 10.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v118 = [v8 description];
          *buf = 134218498;
          *&buf[4] = v18;
          *&buf[12] = 2048;
          *&buf[14] = v19;
          *&buf[22] = 2112;
          *&buf[24] = v118;
          _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, speed, %.2f, qkFromSpeed, %.2f, parameters, %@", buf, 0x20u);
        }
      }
    }

    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v25 = [v8 objectForKey:@"kRTLocationSmootherQk" defaultObject:v24];
    [v25 doubleValue];
    v27 = v26;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = v27;
        _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, q, %.2f", buf, 0xCu);
      }
    }

    v153 = 0.0;
    v154 = 0.0;
    v152 = 0;
    if ([v7 count])
    {
      v126 = v18;
      v127 = v8;
      v29 = 0;
      v30 = 1;
      v140 = -1.0;
      v31 = 0;
      v32 = MEMORY[0x277D86220];
      v145 = 0.0;
      v146 = 0.0;
      v33 = v11;
      v147 = v11;
      v137 = 0.0;
      v138 = 0.0;
      v139 = -1.0;
      v141 = 0.0;
      v142 = 0.0;
      v131 = 0.0;
      v132 = v11;
      v34 = 1;
      v144 = sqrt(v27);
      v136 = v27;
      v130 = a4;
      while (1)
      {
        v35 = [v7 objectAtIndexedSubscript:v29];
        v36 = v35;
        if (v30 == 1)
        {
          v37 = 0;
        }

        else
        {
          v37 = v13;
        }

        v38 = v27;
        if (v37 == 1)
        {
          v39 = [v35 timestamp];
          v40 = [v7 objectAtIndexedSubscript:v30 - 2];
          v41 = [v40 timestamp];
          [v39 timeIntervalSinceDate:v41];
          v43 = v42;

          if (v144 * v43 * (v144 * v43) >= 10.0)
          {
            v38 = v144 * v43 * (v144 * v43);
          }

          else
          {
            v38 = 10.0;
          }
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v44 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v80 = MEMORY[0x277CCACA8];
            [v36 coordinate];
            v135 = v81;
            [v36 coordinate];
            v129 = v82;
            [v36 horizontalAccuracy];
            v83 = v31;
            v85 = v84;
            [v36 speed];
            v87 = v86;
            [v36 course];
            v89 = v88;
            v90 = [v36 timestamp];
            v91 = [v90 stringFromDate];
            v122 = v89;
            v121 = v85;
            v31 = v83;
            v11 = v132;
            v92 = [v80 stringWithFormat:@"<%+.8f, %+.8f> +/- %.2fm (speed %.2f mps / course %.2f) @ %@, type %u", v135, v129, v121, v87, v122, v91, objc_msgSend(v36, "type")];
            *buf = 138740483;
            *&buf[4] = v92;
            *&buf[12] = 2048;
            *&buf[14] = v38;
            *&buf[22] = 1024;
            *&buf[24] = v30;
            _os_log_debug_impl(&dword_2304B3000, v44, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, Locations in vehicle estimator buffer, %{sensitive}@, qk, %.2f, number, %u", buf, 0x1Cu);
          }
        }

        [v36 horizontalAccuracy];
        if (v45 <= 0.0)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v56 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_2304B3000, v56, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, horizontalAccuracy is not valid", buf, 2u);
            }

            goto LABEL_51;
          }
        }

        else
        {
          if (v30 == 1)
          {
            [v36 coordinate];
            [v36 coordinate];
            [(RTLocationSmoother *)self getRefAlt:v36];
            v31 = v46;
          }

          [v36 coordinate];
          [v36 coordinate];
          RTCommonConvertGeodeticToLocalFrame();
          [v36 horizontalAccuracy];
          v48 = v47;
          [v36 horizontalAccuracy];
          v50 = v48 * v49 * 0.5;
          if (v30 == 1)
          {
            v145 = v154;
            v146 = v153;
            v33 = v11 + v50;
            v147 = v11 + v50;
          }

          else
          {
            v51 = [v36 timestamp];
            [v51 timeIntervalSinceReferenceDate];
            v53 = v52;

            if (v53 < a4)
            {
              if (v147 + v50 == 0.0)
              {
                v115 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
                if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
LABEL_78:
                  v8 = v127;

                  v100 = 0;
                  goto LABEL_79;
                }

                *buf = 0;
                v116 = "fFilterPk_pre[0] + kFilterRk == 0.0\n";
LABEL_84:
                _os_log_error_impl(&dword_2304B3000, v115, OS_LOG_TYPE_ERROR, v116, buf, 2u);
                goto LABEL_78;
              }

              if (v33 + v50 == 0.0)
              {
                v115 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
                if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_78;
                }

                *buf = 0;
                v116 = "fFilterPk_pre[1] + kFilterRk == 0.0\n";
                goto LABEL_84;
              }

              v54 = v147 / (v147 + v50);
              v55 = v33 / (v33 + v50);
              v145 = v145 + v55 * (v154 - v145);
              v146 = v146 + v54 * (v153 - v146);
              v147 = v38 + v147 - v54 * v147;
              v33 = v38 + v33 - v55 * v33;
              if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_54;
              }

              v56 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                v57 = MEMORY[0x277CCACA8];
                [v36 coordinate];
                v128 = v58;
                [v36 coordinate];
                v60 = v59;
                [v36 horizontalAccuracy];
                v61 = v31;
                v63 = v62;
                v133 = [v36 timestamp];
                v64 = [v133 stringFromDate];
                v119 = v60;
                v120 = v63;
                v31 = v61;
                v11 = v132;
                v65 = [v57 stringWithFormat:@"<%+.8f, %+.8f> +/- %.2f @ %@", v128, v119, v120, v64];
                *buf = 138743043;
                *&buf[4] = v65;
                *&buf[12] = 2048;
                *&buf[14] = v153;
                *&buf[22] = 2048;
                *&buf[24] = v154;
                LOWORD(v156[0]) = 2048;
                *(v156 + 2) = v38;
                WORD5(v156[0]) = 2048;
                *(v156 + 12) = v146;
                WORD2(v156[1]) = 2048;
                *(&v156[1] + 6) = v145;
                HIWORD(v156[1]) = 2048;
                *v157 = v147;
                WORD4(v157[0]) = 2048;
                *(v157 + 10) = v33;
                WORD1(v157[1]) = 2048;
                *(&v157[1] + 4) = v153;
                WORD6(v157[1]) = 2048;
                *(&v157[1] + 14) = v154;
                WORD3(v157[2]) = 2048;
                *(&v157[2] + 1) = v153 - v146;
                *v158 = 2048;
                *&v158[2] = v154 - v145;
                *&v158[10] = 1024;
                *&v158[12] = v30;
                _os_log_debug_impl(&dword_2304B3000, v56, OS_LOG_TYPE_DEBUG, "RTLocationSmoother (forward), %{sensitive}@, (E,N) (%.4f, %.4f), qk, %.2f, Xk (%.2f, %.2f), Pkpre, (%.2f, %.2f), Zk, (%.2f, %.2f), Zk-Xk, (%.2f, %.2f), number, %u,  ", buf, 0x80u);
              }

              goto LABEL_50;
            }
          }

          v66 = [v36 timestamp];
          [v66 timeIntervalSinceReferenceDate];
          v68 = v67;

          if (v68 >= a4)
          {
            if (v34)
            {
              v69 = [v36 timestamp];
              [v69 timeIntervalSinceReferenceDate];
              v131 = v70;

              v141 = v145;
              v142 = v146;
              v139 = v147;
              v140 = v33;
              v137 = v33;
              v138 = v147;
            }

            if (v30 == 1)
            {
              v34 = 0;
              goto LABEL_55;
            }

            v134 = v31;
            v71 = v50 + v33;
            v72 = v147 / (v50 + v147);
            v73 = v138 / (v50 + v147);
            v74 = v137 / v71;
            v75 = v153 - v146;
            v76 = v154 - v145;
            v141 = v141 + v137 / v71 * (v154 - v145);
            v142 = v142 + v73 * (v153 - v146);
            v77 = v33 / v71;
            v145 = v145 + v33 / v71 * (v154 - v145);
            v146 = v146 + v72 * (v153 - v146);
            v147 = v38 + v147 * (1.0 - v72);
            v78 = 1.0 - v33 / v71;
            v33 = v38 + v33 * v78;
            v139 = v139 - v138 * v73;
            v140 = v140 - v137 * v74;
            v137 = v78 * v137;
            v138 = (1.0 - v72) * v138;
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v34 = 0;
              a4 = v130;
              v11 = v132;
              v31 = v134;
LABEL_54:
              v27 = v136;
              goto LABEL_55;
            }

            v56 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              v93 = MEMORY[0x277CCACA8];
              [v36 coordinate];
              v125 = v94;
              [v36 coordinate];
              v124 = v95;
              [v36 horizontalAccuracy];
              v123 = v96;
              v97 = [v36 timestamp];
              v98 = [v97 stringFromDate];
              v99 = [v93 stringWithFormat:@"<%+.8f, %+.8f> +/- %.2f @ %@", v125, v124, v123, v98];
              *buf = 138745091;
              *&buf[4] = v99;
              *&buf[12] = 2048;
              *&buf[14] = v153;
              *&buf[22] = 2048;
              *&buf[24] = v154;
              LOWORD(v156[0]) = 2048;
              *(v156 + 2) = v38;
              WORD5(v156[0]) = 2048;
              *(v156 + 12) = v142;
              WORD2(v156[1]) = 2048;
              *(&v156[1] + 6) = v141;
              HIWORD(v156[1]) = 2048;
              *v157 = v147;
              WORD4(v157[0]) = 2048;
              *(v157 + 10) = v33;
              WORD1(v157[1]) = 2048;
              *(&v157[1] + 4) = v72;
              WORD6(v157[1]) = 2048;
              *(&v157[1] + 14) = v77;
              WORD3(v157[2]) = 2048;
              *(&v157[2] + 1) = v153;
              *v158 = 2048;
              *&v158[2] = v154;
              *&v158[10] = 2048;
              *&v158[12] = v153 - v146;
              *&v158[20] = 2048;
              *&v158[22] = v154 - v145;
              *&v158[30] = 2048;
              *&v158[32] = v73;
              *&v158[40] = 2048;
              *&v158[42] = v74;
              v159 = 2048;
              v160 = v75;
              v161 = 2048;
              v162 = v76;
              v163 = 2048;
              v164 = v138;
              v165 = 2048;
              v166 = v137;
              v167 = 1024;
              v168 = v30;
              _os_log_debug_impl(&dword_2304B3000, v56, OS_LOG_TYPE_DEBUG, "RTLocationSmoother (backward), %{sensitive}@, (E,N) (%.4f, %.4f), qk, %.2f, Xjj (%.2f, %.2f), Pkpre, (%.2f, %.2f), Lk, (%.2f, %.2f), Zk, (%.2f, %.2f), Zk-Xk, (%.2f, %.2f), lambda, (%.2f, %.2f), innovation, (%.2f, %.2f), sigma, (%2.f, %.2f), number, %u,  ", buf, 0xD0u);
            }

            v34 = 0;
            a4 = v130;
            v11 = v132;
            v31 = v134;
LABEL_50:
            v27 = v136;
LABEL_51:
          }
        }

LABEL_55:

        v29 = v30;
        if ([v7 count] <= v30++)
        {
          if (v34)
          {
            v11 = v33;
            v8 = v127;
            v18 = v126;
            v101 = v147;
            goto LABEL_61;
          }

          v106 = v139 + v140;
          v8 = v127;
          v18 = v126;
          v105 = v131;
          goto LABEL_63;
        }
      }
    }

    v101 = v11;
LABEL_61:
    v102 = [v7 lastObject];
    v103 = [v102 timestamp];
    [v103 timeIntervalSinceReferenceDate];
    v105 = v104;

    v106 = v11 + v101;
LABEL_63:
    v107 = sqrt(v106);
    v36 = [v7 valueForKeyPath:@"@min.horizontalAccuracy"];
    [v36 doubleValue];
    if (v107 < v108)
    {
      [v36 doubleValue];
      v107 = v109;
    }

    v150 = 0;
    v151 = 0;
    RTCommonConvertLocalFrameToGeodetic();
    v110 = v107 + v18 * vabdd_f64(a4, v105);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v111 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = v110 - v107;
        _os_log_debug_impl(&dword_2304B3000, v111, OS_LOG_TYPE_DEBUG, "RTLocationSmoother, additional uncertainty, %f", buf, 0xCu);
      }
    }

    memset(v158, 0, 44);
    memset(v157, 0, sizeof(v157));
    memset(v156, 0, sizeof(v156));
    memset(buf, 0, sizeof(buf));
    v112 = objc_opt_new();
    v113 = v112;
    if (v112)
    {
      [v112 clientLocation];
    }

    else
    {
      memset(v158, 0, 44);
      memset(v157, 0, sizeof(v157));
      memset(v156, 0, sizeof(v156));
      memset(buf, 0, sizeof(buf));
    }

    *(v157 + 12) = a4;
    v100 = 0;
    LODWORD(v157[2]) = [RTLocationSmoother _inferLocationType:v7];
    *&buf[20] = v110;
    *&buf[4] = v151;
    *&buf[12] = v150;
    if (v110 > 0.0 && v107 > 0.0)
    {
      v114 = objc_alloc(MEMORY[0x277CE41F8]);
      v148[6] = v157[2];
      v148[7] = *v158;
      v149[0] = *&v158[16];
      *(v149 + 12) = *&v158[28];
      v148[2] = v156[0];
      v148[3] = v156[1];
      v148[4] = v157[0];
      v148[5] = v157[1];
      v148[0] = *buf;
      v148[1] = *&buf[16];
      v100 = [v114 initWithClientLocation:v148];
    }

LABEL_79:
  }

  else
  {
    v100 = 0;
  }

  return v100;
}

- (id)estimateLocationFromFallbackModelWithLocations:(id)a3 timestamp:(double)a4 parameters:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v8 objectForKey:@"kRTLocationSmootherAverageMovingSpeed" defaultObject:&unk_2845A1968];
  [v9 doubleValue];
  v11 = v10;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v13)
  {
    v14 = v12;
    goto LABEL_15;
  }

  v14 = 0;
  v15 = *v37;
  v16 = 1.79769313e308;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v36 + 1) + 8 * i);
      v19 = [v18 timestamp];
      [v19 timeIntervalSinceReferenceDate];
      v21 = v20 - a4;

      if (v21 < 0.0)
      {
        v21 = -v21;
      }

      if (v16 > v21)
      {
        v22 = v18;

        v14 = v22;
        v16 = v21;
      }
    }

    v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v13);

  if (v14)
  {
    v34 = 0u;
    memset(v35, 0, 28);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    [v14 clientLocation];
    *(&v28 + 4) = *(&v28 + 4) + v11 * v16;
    v23 = objc_alloc(MEMORY[0x277CE41F8]);
    v25[6] = v33;
    v25[7] = v34;
    v26[0] = v35[0];
    *(v26 + 12) = *(v35 + 12);
    v25[2] = v29;
    v25[3] = v30;
    v25[4] = v31;
    v25[5] = v32;
    v25[0] = v27;
    v25[1] = v28;
    v13 = [v23 initWithClientLocation:v25];
LABEL_15:

    goto LABEL_17;
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (id)estimateVehicleLocationWithLocations:(id)a3 parkingTimestamp:(double)a4
{
  v24[5] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionary];
  v23[0] = @"kRTLocationSmootherQk";
  v23[1] = @"kRTLocationSmootherPk_pre";
  v24[0] = &unk_2845A22C8;
  v24[1] = &unk_2845A22D8;
  v23[2] = @"kRTLocationSmootherAverageMovingSpeed";
  v23[3] = @"kRTLocationSmootherPreciseLocationOnlyMode";
  v24[2] = &unk_2845A22E8;
  v24[3] = MEMORY[0x277CBEC38];
  v23[4] = @"kRTLocationSmootherInterpolateTime";
  v24[4] = MEMORY[0x277CBEC28];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__RTLocationSmoother_VehicleLocationEstimator__estimateVehicleLocationWithLocations_parkingTimestamp___block_invoke;
  v20[3] = &__block_descriptor_40_e37_B24__0__CLLocation_8__NSDictionary_16l;
  *&v20[4] = a4;
  v10 = [MEMORY[0x277CCAC30] predicateWithBlock:v20];
  v11 = [v7 filteredArrayUsingPredicate:v10];

  v12 = [(RTLocationSmoother *)self estimateLocationWithLocations:v11 timestamp:v9 parameters:v8 meta:a4];
  v13 = [v8 objectForKeyedSubscript:@"kRTLocationSmootherSpeedEstimationAfterDate"];

  if (v13 && ([v8 objectForKeyedSubscript:@"kRTLocationSmootherSpeedEstimationAfterDate"], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "doubleValue"), v16 = v15, v14, v16 > 9.0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134545665;
        v22 = v16;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "invalidating parked event due to large average speed of %{sensitive}f m/s", buf, 0xCu);
      }
    }

    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  return v17;
}

BOOL __102__RTLocationSmoother_VehicleLocationEstimator__estimateVehicleLocationWithLocations_parkingTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 timestamp];
  [v5 timeIntervalSinceReferenceDate];
  if (v4 - v6 > 10.0)
  {
    v9 = 0;
  }

  else
  {
    v7 = [v3 timestamp];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8 - *(a1 + 32) <= 16.0;
  }

  return v9;
}

@end