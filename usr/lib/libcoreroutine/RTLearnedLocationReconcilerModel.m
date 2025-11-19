@interface RTLearnedLocationReconcilerModel
- (double)_weightWithDeviceWeight:(double)a3 visitsPercentage:(double)a4 transitionsPercentage:(double)a5 semanticLabel:(BOOL)a6 firstVisit:(BOOL)a7 earliestTransition:(BOOL)a8 rawLocationCount:(unint64_t)a9;
- (double)scoreForDeviceClass:(id)a3;
- (double)weightForVisit:(id)a3 modelContext:(id)a4;
@end

@implementation RTLearnedLocationReconcilerModel

- (double)scoreForDeviceClass:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 containsString:@"iPhone"])
  {
    v4 = 0.3333;
  }

  else if ([v3 containsString:@"Watch"])
  {
    v4 = 0.2667;
  }

  else if ([v3 containsString:@"iPad"])
  {
    v4 = 0.2;
  }

  else
  {
    v4 = 0.1333;
    if (([v3 containsString:@"Mac"] & 1) == 0 && (objc_msgSend(v3, "containsString:", @"VMWare") & 1) == 0)
    {
      if ([v3 containsString:@"iPod"])
      {
        v4 = 0.0667;
      }

      else
      {
        v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          v8 = 138412290;
          v9 = v3;
          _os_log_fault_impl(&dword_2304B3000, v5, OS_LOG_TYPE_FAULT, "cannot calculate score for device class, %@, because it is unknown.", &v8, 0xCu);
        }

        v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = 138412802;
          v9 = v3;
          v10 = 2080;
          v11 = "[RTLearnedLocationReconcilerModel scoreForDeviceClass:]";
          v12 = 1024;
          v13 = 44;
          _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "cannot calculate score for device class, %@, because it is unknown. (in %s:%d)", &v8, 0x1Cu);
        }

        v4 = -1.0;
      }
    }
  }

  return v4;
}

- (double)weightForVisit:(id)a3 modelContext:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 device];
  v9 = [v8 deviceClass];
  [(RTLearnedLocationReconcilerModel *)self scoreForDeviceClass:v9];
  v11 = v10;

  v12 = [v6 device];
  v13 = [v12 visits];
  v14 = [v13 count];

  v15 = [v7 devices];
  v16 = [v15 valueForKeyPath:@"@sum.visits.@count"];
  v17 = [v16 unsignedIntegerValue];

  v18 = [v6 device];
  v19 = [v18 transitions];
  v20 = [v19 count];

  v21 = [v7 devices];
  v22 = [v21 valueForKeyPath:@"@sum.transitions.@count"];
  v23 = [v22 unsignedIntegerValue];

  v24 = [v6 place];
  v25 = [v24 type];
  v26 = [v25 unsignedIntegerValue];

  v27 = [v6 dataPointCount];
  v56 = [v27 unsignedIntegerValue];

  if (v17)
  {
    v28 = v14 / v17;
  }

  else
  {
    v28 = 0.0;
  }

  if (v23)
  {
    v29 = v20 / v23;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = [v6 place];
  v31 = [v30 visits];
  v57 = v26;
  v58 = self;
  if ([v31 count] == 1)
  {
    v32 = [v6 place];
    v33 = [v32 visits];
    v34 = [v33 allObjects];
    v35 = [v34 firstObject];
    v55 = [v35 isEqual:v6];
  }

  else
  {
    v55 = 0;
  }

  v36 = [v6 outbound];
  v37 = [v36 startDate];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = v7;
  v38 = [v7 overlappingVisits];
  v39 = [v38 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v61;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v61 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v60 + 1) + 8 * i);
        v44 = [v43 outbound];
        v45 = [v44 startDate];
        v46 = [v45 isBeforeDate:v37];

        if (v46)
        {
          v47 = [v43 outbound];
          v48 = [v47 startDate];

          v37 = v48;
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v40);
  }

  v49 = [v6 outbound];
  v50 = [v49 startDate];
  v51 = [v37 isEqual:v50];

  [(RTLearnedLocationReconcilerModel *)v58 _weightWithDeviceWeight:(v57 - 1) < 3 visitsPercentage:v55 transitionsPercentage:v51 semanticLabel:v56 firstVisit:v11 earliestTransition:v28 rawLocationCount:v29];
  v53 = v52;

  return v53;
}

- (double)_weightWithDeviceWeight:(double)a3 visitsPercentage:(double)a4 transitionsPercentage:(double)a5 semanticLabel:(BOOL)a6 firstVisit:(BOOL)a7 earliestTransition:(BOOL)a8 rawLocationCount:(unint64_t)a9
{
  v9 = a4 * 0.1538 + a3 * 0.2308 + a5 * 0.0769 + a6 * 0.0769 + a7 * 0.2308 + a8 * 0.1923;
  if (a9 <= 0xC7)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v9 + v10 * 0.0385;
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  return fmin(v11, 1.0);
}

@end