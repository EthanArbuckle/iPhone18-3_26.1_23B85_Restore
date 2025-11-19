@interface RTLearnedLocation
+ (double)confidenceFromDataPointCount:(unint64_t)a3 highConfidenceThreshold:(double)a4;
+ (id)removeLearnedVisitsInvalid:(id)a3;
+ (id)removeLearnedVisitsPinned:(id)a3;
+ (id)removeLearnedVisitsWithShortestDwell:(id)a3;
+ (id)removeOutlierLearnedLocationsWithLargeHorizontalUncertainty:(id)a3;
+ (id)shiftLocation:(id)a3 shifter:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RTLearnedLocation)initWithChinaShiftedLearnedLocations:(id)a3 type:(unint64_t)a4;
- (RTLearnedLocation)initWithLearnedLocations:(id)a3 type:(unint64_t)a4;
- (RTLearnedLocation)initWithLearnedVisits:(id)a3;
- (RTLearnedLocation)initWithLocation:(id)a3 dataPointCount:(unint64_t)a4 confidence:(double)a5;
- (RTLearnedLocation)initWithLocation:(id)a3 dataPointCount:(unint64_t)a4 type:(unint64_t)a5;
- (RTLearnedLocation)initWithLocationOfInterest:(id)a3;
- (RTLearnedLocation)initWithMapItem:(id)a3 type:(unint64_t)a4;
- (id)aggregateLearnedLocations:(id)a3 updateAltitude:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
- (void)calculateAltitude:(double *)a3 verticalUncertainty:(double *)a4 learnedLocations:(id)a5;
@end

@implementation RTLearnedLocation

- (RTLearnedLocation)initWithLocationOfInterest:(id)a3
{
  v4 = MEMORY[0x277D01160];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 location];
  [v7 latitude];
  v9 = v8;
  v10 = [v5 location];
  [v10 longitude];
  v12 = v11;
  v13 = [v5 location];
  [v13 horizontalUncertainty];
  v15 = v14;
  v16 = [v5 location];
  [v16 altitude];
  v18 = v17;
  v19 = [v5 location];
  [v19 verticalUncertainty];
  v21 = v20;
  v22 = [v5 location];
  v23 = [v6 initWithLatitude:0 longitude:0 horizontalUncertainty:objc_msgSend(v22 altitude:"sourceAccuracy") verticalUncertainty:v9 date:v12 referenceFrame:v15 speed:v18 sourceAccuracy:{v21, 0.0}];

  v24 = [v5 location];

  v25 = -[RTLearnedLocation initWithLocation:dataPointCount:type:](self, "initWithLocation:dataPointCount:type:", v23, [v24 sourceAccuracy] == 2, 2);
  return v25;
}

- (RTLearnedLocation)initWithLocation:(id)a3 dataPointCount:(unint64_t)a4 confidence:(double)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = RTLearnedLocation;
    v10 = [(RTLearnedLocation *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_location, a3);
      v11->_dataPointCount = a4;
      v11->_confidence = a5;
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[RTLearnedLocation initWithLocation:dataPointCount:confidence:]";
      v18 = 1024;
      v19 = 42;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", buf, 0x12u);
    }

    v12 = 0;
  }

  return v12;
}

- (RTLearnedLocation)initWithLocation:(id)a3 dataPointCount:(unint64_t)a4 type:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[RTLearnedLocation initWithLocation:dataPointCount:type:]";
      v18 = 1024;
      LODWORD(v19) = 61;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", &v16, 0x12u);
    }
  }

  if (a5 >= 3)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = 138412546;
      v17 = v15;
      v18 = 2048;
      v19 = a5;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, unsupported learned location type, %lu", &v16, 0x16u);
    }

    v11 = 30.0;
  }

  else
  {
    v11 = dbl_230B01298[a5];
  }

  [objc_opt_class() confidenceFromDataPointCount:a4 highConfidenceThreshold:v11];
  v13 = [(RTLearnedLocation *)self initWithLocation:v9 dataPointCount:a4 confidence:?];

  return v13;
}

+ (id)shiftLocation:(id)a3 shifter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v6 shiftedLocation:v5 allowNetwork:1 error:0];

      goto LABEL_10;
    }

    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: shifter", v11, 2u);
    }
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

+ (id)removeLearnedVisitsPinned:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-4838400.0];
    v6 = MEMORY[0x277CCAC30];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__RTLearnedLocation_removeLearnedVisitsPinned___block_invoke;
    v14[3] = &unk_2788CDF48;
    v15 = v5;
    v7 = v5;
    v8 = [v6 predicateWithBlock:v14];
    v9 = [v4 filteredArrayUsingPredicate:v8];

    if ([v9 count])
    {
      v10 = v9;

      v4 = v10;
    }

    v11 = v4;

    v12 = v11;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedVisits", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

uint64_t __47__RTLearnedLocation_removeLearnedVisitsPinned___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 entryDate];
  v5 = [v3 earlierDate:v4];
  v6 = [v5 isEqualToDate:*(a1 + 32)];

  return v6;
}

+ (id)removeLearnedVisitsInvalid:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v20 = v3;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [v10 location];
          v12 = [v11 location];
          [v12 horizontalUncertainty];
          v14 = v13;

          if (v14 <= -1.0)
          {
            v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              v18 = NSStringFromSelector(a2);
              *buf = 138412803;
              v27 = v17;
              v28 = 2112;
              v29 = v18;
              v30 = 2117;
              v31 = v10;
              _os_log_fault_impl(&dword_2304B3000, v15, OS_LOG_TYPE_FAULT, "%@, %@, filter invalid visit, %{sensitive}@", buf, 0x20u);
            }
          }

          else
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v7);
      v3 = v20;
    }
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedVisits", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)removeLearnedVisitsWithShortestDwell:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v12 location];
          v14 = [v13 location];
          v15 = [v14 sourceAccuracy];

          if (v15 == 2)
          {
            v16 = v5;
          }

          else
          {
            v16 = v6;
          }

          [v16 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    if ([v5 count] >= 5)
    {
      v17 = [v5 sortedArrayUsingComparator:&__block_literal_global_91];
      v18 = MEMORY[0x277CBEB18];
      v19 = [v17 subarrayWithRange:{0, objc_msgSend(v17, "count") - (objc_msgSend(v17, "count") * 0.2)}];
      v20 = [v18 arrayWithArray:v19];

      [v20 addObjectsFromArray:v6];
      v7 = v20;
    }

    v21 = v7;

    v22 = v21;
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedVisits", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

uint64_t __58__RTLearnedLocation_removeLearnedVisitsWithShortestDwell___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 exitDate];
  v7 = [v5 entryDate];

  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [v4 exitDate];
  v11 = [v4 entryDate];

  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  if (v9 <= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v9 < v13)
  {
    return 1;
  }

  else
  {
    return v14;
  }
}

+ (id)removeOutlierLearnedLocationsWithLargeHorizontalUncertainty:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 count] > 2)
    {
      v8 = [[_RTMap alloc] initWithInput:v5];
      v9 = [(_RTMap *)v8 withBlock:&__block_literal_global_22_0];

      v10 = [v9 sortedArrayUsingSelector:sel_compare_];
      v11 = [v10 objectAtIndex:{objc_msgSend(v9, "count") >> 1}];
      [v11 doubleValue];
      v13 = v12;

      v14 = v13 * 3.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = NSStringFromSelector(a2);
          *buf = 138412546;
          v20 = v16;
          v21 = 2048;
          v22 = v14;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, filter locations based on maximum horizonal uncertainty, %.1f", buf, 0x16u);
        }
      }

      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K <= %f", @"location", @"horizontalUncertainty", *&v14];
      v6 = [v5 filteredArrayUsingPredicate:v17];
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocations", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

id __81__RTLearnedLocation_removeOutlierLearnedLocationsWithLargeHorizontalUncertainty___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 location];
  [v3 horizontalUncertainty];
  v4 = [v2 numberWithDouble:?];

  return v4;
}

- (void)calculateAltitude:(double *)a3 verticalUncertainty:(double *)a4 learnedLocations:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      goto LABEL_16;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: altitudeEstimation";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_9;
  }

  if (!a4)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: verticalUncertaintyEstimation";
    goto LABEL_21;
  }

  *a3 = 0.0;
  *a4 = -1.0;
  if ([v7 count])
  {
    *buf = 0;
    v35 = buf;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0xBFF0000000000000;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__RTLearnedLocation_calculateAltitude_verticalUncertainty_learnedLocations___block_invoke;
    v17[3] = &unk_2788CDFB0;
    v17[4] = buf;
    v17[5] = &v30;
    v17[6] = &v18;
    v17[7] = &v26;
    v17[8] = &v22;
    [v8 enumerateObjectsUsingBlock:v17];
    if (*(v19 + 24) == 1)
    {
      v9 = *(v35 + 3);
      v10 = v31;
    }

    else
    {
      v13 = v27;
      v14 = v27[3];
      if (v14 == 0.0 && v23[3] == 0.0)
      {
        goto LABEL_15;
      }

      if (v14 <= 0.0)
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v16 = 0;
          _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inverseVerticalUncertaintySquaredSum > 0.0", v16, 2u);
        }

        goto LABEL_15;
      }

      v10 = v31;
      v31[3] = sqrt(1.0 / v14);
      v9 = v23[3] / v13[3];
      *(v35 + 3) = v9;
    }

    *a3 = v9;
    *a4 = v10[3];
LABEL_15:
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(buf, 8);
  }

LABEL_16:
}

void __76__RTLearnedLocation_calculateAltitude_verticalUncertainty_learnedLocations___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 location];
  [v7 altitude];
  v9 = v8;

  v10 = [v6 location];
  [v10 verticalUncertainty];
  v12 = v11;

  if (v12 != -1.0)
  {
    if (v12 == 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = 138739971;
          v16 = v6;
          _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "this learnedLocation, %{sensitive}@, has zero verticalUncertainty, so it is chosen as the final estimate.", &v15, 0xCu);
        }
      }

      *(*(a1[4] + 8) + 24) = v9;
      *(*(a1[5] + 8) + 24) = v12;
      *(*(a1[6] + 8) + 24) = 1;
      *a4 = 1;
    }

    else
    {
      v14 = 1.0 / (v12 * v12);
      *(*(a1[7] + 8) + 24) = v14 + *(*(a1[7] + 8) + 24);
      *(*(a1[8] + 8) + 24) = *(*(a1[8] + 8) + 24) + v9 * v14;
    }
  }
}

- (RTLearnedLocation)initWithLearnedVisits:(id)a3
{
  v4 = [RTLearnedLocation removeLearnedVisitsInvalid:a3];
  v5 = [RTLearnedLocation removeLearnedVisitsPinned:v4];

  v6 = [RTLearnedLocation removeLearnedVisitsWithShortestDwell:v5];

  v7 = [[_RTMap alloc] initWithInput:v6];
  v8 = [(_RTMap *)v7 withBlock:&__block_literal_global_39];

  v9 = [RTLearnedLocation removeOutlierLearnedLocationsWithLargeHorizontalUncertainty:v8];
  v10 = [(RTLearnedLocation *)self initWithLearnedLocations:v9 type:2];

  return v10;
}

- (RTLearnedLocation)initWithLearnedLocations:(id)a3 type:(unint64_t)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (![v7 count])
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocations.count != 0", buf, 2u);
    }

    goto LABEL_37;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (!v9)
  {

LABEL_41:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v46 = 0;
      goto LABEL_39;
    }

    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v48 = NSStringFromSelector(a2);
      *buf = 138412290;
      v79 = v48;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, data point count was 0", buf, 0xCu);
    }

LABEL_37:
    v46 = 0;
    goto LABEL_38;
  }

  v10 = v9;
  v65 = self;
  obj = v8;
  aSelector = a2;
  v63 = a4;
  v64 = v7;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *v74;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v74 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v73 + 1) + 8 * i);
      v17 = [v16 location];
      v18 = [v17 sourceAccuracy];

      v19 = [v16 location];
      v20 = [v19 referenceFrame];

      if (v20 == 2)
      {
        v7 = v64;
        v21 = obj;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = NSStringFromSelector(aSelector);
            *buf = 138412547;
            v79 = v44;
            v80 = 2117;
            v81 = v16;
            _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, found China shifted location, %{sensitive}@", buf, 0x16u);
          }
        }

        v45 = [(RTLearnedLocation *)v65 initWithChinaShiftedLearnedLocations:obj type:v63];
        goto LABEL_34;
      }

      v13 |= v18 == 2;
      if (v18 == 2)
      {
        ++v11;
      }

      v12 += [v16 dataPointCount];
    }

    v10 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v7 = v64;
  self = v65;
  a2 = aSelector;
  if (!v12)
  {
    goto LABEL_41;
  }

  if ((v13 & (v11 > 2)) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = NSStringFromSelector(aSelector);
        *buf = 138412290;
        v79 = v50;
        _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, high accurate location was not found", buf, 0xCu);
      }
    }

    v21 = [(RTLearnedLocation *)v65 aggregateLearnedLocations:obj updateAltitude:1];
    if (v63 == 2)
    {
      v51 = 0;
      v52 = 2;
    }

    else
    {
      v51 = v12;
      v52 = v63;
    }

    v45 = [(RTLearnedLocation *)v65 initWithLocation:v21 dataPointCount:v51 type:v52];
LABEL_34:
    self = v45;
    v46 = v45;
    goto LABEL_38;
  }

  [obj count];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CBEB18] array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v23 = obj;
  v24 = [v23 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v70;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v70 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v69 + 1) + 8 * j);
        v29 = [v28 location];
        v30 = [v29 sourceAccuracy];

        if (v30 == 2)
        {
          v31 = v21;
        }

        else
        {
          v31 = v22;
        }

        [v31 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v25);
  }

  v32 = [(RTLearnedLocation *)v65 aggregateLearnedLocations:v21 updateAltitude:0];
  v33 = [(RTLearnedLocation *)v65 aggregateLearnedLocations:v22 updateAltitude:0];
  [v32 horizontalUncertainty];
  v35 = v34;
  [v33 horizontalUncertainty];
  v7 = v64;
  if (v32)
  {
    if (v35 >= v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = v36;
    }

    [v32 latitude];
    v39 = v38;
    [v32 longitude];
    v41 = v40;
    v42 = v63;
LABEL_55:
    v67 = -1.0;
    v68 = 0.0;
    [(RTLearnedLocation *)v65 calculateAltitude:&v68 verticalUncertainty:&v67 learnedLocations:v23];
    v56 = objc_alloc(MEMORY[0x277D01160]);
    v57 = [v56 initWithLatitude:0 longitude:0 horizontalUncertainty:2 altitude:v39 verticalUncertainty:v41 date:v37 referenceFrame:v68 speed:v67 sourceAccuracy:0.0];
    if (v42 >= 2)
    {
      if (v42 == 2)
      {
        v12 = [v21 count];
      }

      else
      {
        v58 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v61 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v79 = v61;
          v80 = 2048;
          v81 = v42;
          _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, unsupported learned location type, %lu", buf, 0x16u);
        }
      }
    }

    v60 = [(RTLearnedLocation *)v65 initWithLocation:v57 dataPointCount:v12 type:v42];

    self = v60;
    v46 = v60;
  }

  else
  {
    v42 = v63;
    if (v33)
    {
      [v33 latitude];
      v39 = v53;
      [v33 longitude];
      v41 = v54;
      [v33 horizontalUncertainty];
      v37 = v55;
      goto LABEL_55;
    }

    v46 = 0;
    self = v65;
  }

LABEL_38:
LABEL_39:

  return v46;
}

- (id)aggregateLearnedLocations:(id)a3 updateAltitude:(BOOL)a4
{
  v4 = a4;
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    if ([v6 count])
    {
      v43 = v4;
      v42 = self;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0.0;
      v12 = MEMORY[0x277D86220];
      v13 = RTLogFacilityLearnedLocation;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        v18 = [v6 objectAtIndex:{v10, v42}];
        v19 = [v18 location];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v20 = _rt_log_facility_get_os_log(v13);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            NSStringFromSelector(a2);
            v45 = v8;
            v21 = v6;
            v22 = v12;
            v24 = v23 = v13;
            *buf = 138412803;
            v51 = v24;
            v52 = 2048;
            v53 = (v10 + 1);
            v54 = 2117;
            v55 = v19;
            _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, location %lu, %{sensitive}@", buf, 0x20u);

            v13 = v23;
            v12 = v22;
            v6 = v21;
            v8 = v45;
          }
        }

        if (!v8)
        {
          v8 = v19;
        }

        v25 = [v19 sourceAccuracy];
        v48 = 0.0;
        v49 = 0.0;
        v47 = 0.0;
        [v8 latitude];
        [v8 longitude];
        [v19 latitude];
        [v19 longitude];
        if ((RTCommonConvertGeodeticToLocalFrame() & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = NSStringFromSelector(a2);
              *buf = 138412290;
              v51 = v40;
              _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, failed to convert geodetic to local frame", buf, 0xCu);
            }
          }

          goto LABEL_44;
        }

        if (v25 == 2)
        {
          v9 = 2;
        }

        v11 = v11 + [v18 dataPointCount] * v48;
        v14 = v14 + [v18 dataPointCount] * v47;
        v15 = v15 + [v18 dataPointCount] * (v48 * v48);
        v16 = v16 + [v18 dataPointCount] * (v47 * v47);
        v26 = [v18 dataPointCount];
        [v19 horizontalUncertainty];
        v17 = v17 + v26 * (v27 * v27);
        v7 += [v18 dataPointCount];

        ++v10;
      }

      while (v10 < [v6 count]);
      if (!v7)
      {
        goto LABEL_30;
      }

      v48 = 0.0;
      v49 = 0.0;
      [v8 latitude];
      [v8 longitude];
      if (RTCommonConvertLocalFrameToGeodetic())
      {
        RTCommonIsCoordinateValid();
        if (v28 != 0.0)
        {
          v29 = sqrt((v16 + v15 + v17 - v11 * v11 / v7 - v14 * v14 / v7) / v7);
          if (v29 >= 5.0)
          {
            v30 = v29;
          }

          else
          {
            v30 = 5.0;
          }

          v46 = -1.0;
          v47 = 0.0;
          if (v43)
          {
            [(RTLearnedLocation *)v42 calculateAltitude:&v47 verticalUncertainty:&v46 learnedLocations:v6];
          }

          v31 = objc_alloc(MEMORY[0x277D01160]);
          v32 = [v31 initWithLatitude:0 longitude:0 horizontalUncertainty:v9 altitude:v49 verticalUncertainty:v48 date:v30 referenceFrame:v47 speed:v46 sourceAccuracy:0.0];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = NSStringFromSelector(a2);
              *buf = 138412547;
              v51 = v34;
              v52 = 2117;
              v53 = v32;
              _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, aggregated location, %{sensitive}@", buf, 0x16u);
            }
          }

          goto LABEL_45;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_44;
      }

      v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = NSStringFromSelector(a2);
        *buf = 138412290;
        v51 = v37;
        v38 = "%@, invalid coordinates converted from local frame";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v8 = 0;
LABEL_30:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = NSStringFromSelector(a2);
        *buf = 138412290;
        v51 = v37;
        v38 = "%@, zero data point count";
LABEL_42:
        _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, v38, buf, 0xCu);
      }

LABEL_43:
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = 0;
      goto LABEL_46;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v35 = NSStringFromSelector(a2);
      *buf = 138412290;
      v51 = v35;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, aggregate zero locations", buf, 0xCu);
    }
  }

LABEL_44:
  v32 = 0;
LABEL_45:

LABEL_46:

  return v32;
}

- (RTLearnedLocation)initWithChinaShiftedLearnedLocations:(id)a3 type:(unint64_t)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 count])
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocations.count != 0", buf, 2u);
    }

    goto LABEL_40;
  }

  if (![v6 count])
  {
    v7 = 0;
LABEL_40:
    v42 = 0;
    goto LABEL_43;
  }

  v45 = a4;
  v46 = self;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v48 = 0;
  v11 = 0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  while (1)
  {
    v17 = [v6 objectAtIndex:{v11, v45}];
    v18 = [v17 location];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412803;
        v52 = v20;
        v53 = 2048;
        v54 = v11;
        v55 = 2117;
        v56 = v18;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, location %lu, %{sensitive}@", buf, 0x20u);
      }
    }

    v21 = [v17 location];
    v22 = [v21 referenceFrame];

    if (v22 == 2)
    {
      goto LABEL_13;
    }

    if (!v7)
    {
      v7 = objc_opt_new();
    }

    v23 = [RTLearnedLocation shiftLocation:v18 shifter:v7];

    if (!v23)
    {
      break;
    }

    v18 = v23;
LABEL_13:
    if ([v18 sourceAccuracy] == 2)
    {
      ++v10;
      v24 = [v17 dataPointCount];
      [v18 latitude];
      v15 = v15 + v24 * v25;
      v26 = [v17 dataPointCount];
      [v18 longitude];
      v16 = v16 + v26 * v27;
      v9 += [v17 dataPointCount];
      v48 = 2;
    }

    v28 = [v17 dataPointCount];
    [v18 latitude];
    v12 = v12 + v28 * v29;
    v30 = [v17 dataPointCount];
    [v18 longitude];
    v13 = v13 + v30 * v31;
    v32 = [v17 dataPointCount];
    [v18 horizontalUncertainty];
    v14 = v14 + v32 * v33;
    v8 += [v17 dataPointCount];

    if (++v11 >= [v6 count])
    {
      if (!v8)
      {
        goto LABEL_42;
      }

      if (v48 == 2)
      {
        v34 = v15 / v9;
      }

      else
      {
        v34 = v12 / v8;
      }

      if (v48 == 2)
      {
        v35 = v16 / v9;
      }

      else
      {
        v35 = v13 / v8;
      }

      if (v14 / v8 >= 5.0)
      {
        v36 = v14 / v8;
      }

      else
      {
        v36 = 5.0;
      }

      v49 = -1.0;
      v50 = 0.0;
      [(RTLearnedLocation *)v46 calculateAltitude:&v50 verticalUncertainty:&v49 learnedLocations:v6];
      v37 = objc_alloc(MEMORY[0x277D01160]);
      v38 = [v37 initWithLatitude:0 longitude:2 horizontalUncertainty:v48 altitude:v34 verticalUncertainty:v35 date:v36 referenceFrame:v50 speed:v49 sourceAccuracy:0.0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = NSStringFromSelector(a2);
          *buf = 138412547;
          v52 = v40;
          v53 = 2117;
          v54 = v38;
          _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, aggregated location, %{sensitive}@", buf, 0x16u);
        }
      }

      if (v45 >= 2)
      {
        if (v45 == 2)
        {
LABEL_36:
          self = [(RTLearnedLocation *)v46 initWithLocation:v38 dataPointCount:v10 type:v45];

          v42 = self;
          goto LABEL_43;
        }

        v41 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v44 = NSStringFromSelector(a2);
          *buf = 138412546;
          v52 = v44;
          v53 = 2048;
          v54 = v45;
          _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "%@, unsupported learned location type, %lu", buf, 0x16u);
        }
      }

      v10 = v8;
      goto LABEL_36;
    }
  }

LABEL_42:
  v42 = 0;
  self = v46;
LABEL_43:

  return v42;
}

+ (double)confidenceFromDataPointCount:(unint64_t)a3 highConfidenceThreshold:(double)a4
{
  v4 = 1.0;
  if (a3 < a4)
  {
    v5 = a3 / a4;
    if (v5 <= 1.0)
    {
      return v5;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTLearnedLocation *)self location];
  v5 = [(RTLearnedLocation *)self dataPointCount];
  [(RTLearnedLocation *)self confidence];
  v7 = [v3 stringWithFormat:@"%@, dataPointCount, %lu, confidence, %.2f", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v12 = 1;
    goto LABEL_19;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = [(RTLearnedLocation *)self location];
  if (!v8)
  {
    v3 = [(RTLearnedLocation *)v7 location];
    if (!v3)
    {
      v11 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v9 = [(RTLearnedLocation *)self location];
  v10 = [(RTLearnedLocation *)v7 location];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:

  v13 = [(RTLearnedLocation *)self dataPointCount];
  v14 = [(RTLearnedLocation *)v7 dataPointCount];
  [(RTLearnedLocation *)self confidence];
  v16 = v15;
  [(RTLearnedLocation *)v7 confidence];
  if (v13 == v14)
  {
    v18 = v11;
  }

  else
  {
    v18 = 0;
  }

  if (v16 == v17)
  {
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(RTLearnedLocation *)self location];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedLocation dataPointCount](self, "dataPointCount")}];
  v6 = [v5 hash] ^ v4;
  v7 = MEMORY[0x277CCABB0];
  [(RTLearnedLocation *)self confidence];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 hash];

  return v6 ^ v9;
}

- (RTLearnedLocation)initWithMapItem:(id)a3 type:(unint64_t)a4
{
  v6 = [a3 location];
  if (v6)
  {
    self = [(RTLearnedLocation *)self initWithLocation:v6 dataPointCount:0 type:a4];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end