@interface RTVisitPipelineModuleAltitudeEstimator
- (BOOL)isValidForAltitudeUpdate:(id)a3;
- (RTVisitPipelineModuleAltitudeEstimator)initWithMaxHorizontalAccuracy:(double)a3 locationManager:(id)a4;
- (id)dateIntervalForAltitudeEstimation:(id)a3;
- (id)process:(id)a3;
- (id)updateAltitudeforVisit:(id)a3;
- (void)updateAltitudeForCentroid:(id)a3 locations:(id)a4;
@end

@implementation RTVisitPipelineModuleAltitudeEstimator

- (RTVisitPipelineModuleAltitudeEstimator)initWithMaxHorizontalAccuracy:(double)a3 locationManager:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 < 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: maxHorizontalAccuracy >= 0";
LABEL_12:
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: locationManager";
      goto LABEL_12;
    }

LABEL_9:

    v13 = 0;
    goto LABEL_10;
  }

  v15.receiver = self;
  v15.super_class = RTVisitPipelineModuleAltitudeEstimator;
  v11 = [(RTVisitPipelineModuleAltitudeEstimator *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_maxHorizontalAccuracy = a3;
    objc_storeStrong(&v11->_locationManager, a4);
    [(RTVisitPipelineModuleAltitudeEstimator *)v12 initializeZAxisParameters];
  }

  self = v12;
  v13 = self;
LABEL_10:

  return v13;
}

- (BOOL)isValidForAltitudeUpdate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", v10, 2u);
    }

    goto LABEL_8;
  }

  if ([v3 type] == 1 || (objc_msgSend(v4, "verticalAccuracy"), v5 < 0.0))
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  [v4 verticalAccuracy];
  v7 = v6 < 30.0;
LABEL_9:

  return v7;
}

- (void)updateAltitudeForCentroid:(id)a3 locations:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  estimatedVerticalUncertainty = self->_estimatedVerticalUncertainty;
  if (estimatedVerticalUncertainty == -1.0 || estimatedVerticalUncertainty > 0.0)
  {
    if ([v7 count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v30 = 0x2020000000;
      v11 = self->_estimatedVerticalUncertainty;
      v12 = 0.0;
      if (v11 != -1.0)
      {
        v12 = 1.0 / (v11 * v11);
      }

      v31 = v12;
      v25 = 0;
      v26 = &v25;
      v13 = v12 * self->_estimatedAltitude;
      v27 = 0x2020000000;
      v28 = v13;
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __78__RTVisitPipelineModuleAltitudeEstimator_updateAltitudeForCentroid_locations___block_invoke;
      v20[3] = &unk_2788D01D8;
      v20[4] = self;
      v20[5] = &v21;
      v20[6] = &buf;
      v20[7] = &v25;
      [v8 enumerateObjectsUsingBlock:v20];
      if ((v22[3] & 1) == 0)
      {
        v14 = *(&buf + 1);
        v15 = *(*(&buf + 1) + 24);
        if (v15 <= 0.0)
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *v19 = 0;
            _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inverseVerticalUncertaintySquaredSum > 0.0", v19, 2u);
          }
        }

        else
        {
          self->_estimatedVerticalUncertainty = sqrt(1.0 / v15);
          self->_estimatedAltitude = v26[3] / *(v14 + 24);
        }
      }

      _Block_object_dispose(&v21, 8);
      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&buf, 8);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "no locations after filtering to update the estimated altitude and vertical uncertainty.", &buf, 2u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_estimatedVerticalUncertainty];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "invalid estimated verticalUncertainty, %@, setting it to the default value.", &buf, 0xCu);
      }
    }

    self->_estimatedVerticalUncertainty = -1.0;
  }
}

void __78__RTVisitPipelineModuleAltitudeEstimator_updateAltitudeForCentroid_locations___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  [v6 verticalUncertainty];
  if (v7 == 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138739971;
        v17 = v6;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "this location, %{sensitive}@, has zero uncertainty, so it is chosen as the final estimate.", &v16, 0xCu);
      }
    }

    [v6 altitude];
    *(a1[4] + 24) = v9;
    [v6 verticalUncertainty];
    *(a1[4] + 32) = v10;
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    [v6 verticalUncertainty];
    v12 = v11;
    [v6 verticalUncertainty];
    v14 = 1.0 / (v12 * v13);
    *(*(a1[6] + 8) + 24) = v14 + *(*(a1[6] + 8) + 24);
    [v6 altitude];
    *(*(a1[7] + 8) + 24) = *(*(a1[7] + 8) + 24) + v15 * v14;
  }
}

- (id)dateIntervalForAltitudeEstimation:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 exit];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 date];
    v8 = MEMORY[0x277CBEAA8];
    v9 = [v3 entry];
    v10 = [v8 dateWithTimeInterval:v9 sinceDate:900.0];
    v6 = [v7 earlierDate:v10];
  }

  v11 = [v3 entry];
  v12 = [v6 isBeforeDate:v11];

  if (v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v21 = 138412290;
      v22 = v3;
      _os_log_fault_impl(&dword_2304B3000, v13, OS_LOG_TYPE_FAULT, "Invalid visit for altitude update, %@", &v21, 0xCu);
    }

    v14 = MEMORY[0x277CBEAA8];
    v15 = [v3 entry];
    v16 = [v14 dateWithTimeInterval:v15 sinceDate:900.0];

    v6 = v16;
  }

  v17 = objc_alloc(MEMORY[0x277CCA970]);
  v18 = [v3 entry];
  v19 = [v17 initWithStartDate:v18 endDate:v6];

  return v19;
}

- (id)updateAltitudeforVisit:(id)a3
{
  v109[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(RTVisitPipelineModuleAltitudeEstimator *)self initializeZAxisParameters];
  v90 = v4;
  v91 = self;
  v89 = [(RTVisitPipelineModuleAltitudeEstimator *)self dateIntervalForAltitudeEstimation:v4];
  v5 = objc_alloc(MEMORY[0x277CE41F8]);
  v6 = [v4 location];
  [v6 latitude];
  v8 = v7;
  v9 = [v90 location];
  [v9 longitude];
  v11 = CLLocationCoordinate2DMake(v8, v10);
  v12 = [v90 location];
  [v12 horizontalUncertainty];
  v14 = v13;

  if (v14 < 5.0)
  {
    v14 = 5.0;
  }

  v15 = [v90 location];
  v16 = [v15 date];
  v88 = [v5 initWithCoordinate:v16 altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 timestamp:{v14, 0.0}];

  v86 = *MEMORY[0x277D01448];
  v87 = *MEMORY[0x277CCA450];
  do
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v89 horizontalAccuracy:200 batchSize:v88 boundingBoxLocation:v91->_maxHorizontalAccuracy];
    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = __Block_byref_object_copy__151;
    v106 = __Block_byref_object_dispose__151;
    v107 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__151;
    v100 = __Block_byref_object_dispose__151;
    v101 = 0;
    v19 = dispatch_semaphore_create(0);
    v20 = [(RTVisitPipelineModuleAltitudeEstimator *)v91 locationManager];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __65__RTVisitPipelineModuleAltitudeEstimator_updateAltitudeforVisit___block_invoke;
    v92[3] = &unk_2788D0228;
    v94 = &v102;
    v95 = &v96;
    v92[4] = v91;
    v21 = v19;
    v93 = v21;
    [v20 fetchStoredLocationsWithOptions:v18 handler:v92];

    v22 = v21;
    v23 = [MEMORY[0x277CBEAA8] now];
    v24 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v22, v24))
    {
      v25 = [MEMORY[0x277CBEAA8] now];
      [v25 timeIntervalSinceDate:v23];
      v27 = v26;
      v28 = objc_opt_new();
      v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_124];
      v30 = [MEMORY[0x277CCACC8] callStackSymbols];
      v31 = [v30 filteredArrayUsingPredicate:v29];
      v32 = [v31 firstObject];

      [v28 submitToCoreAnalytics:v32 type:1 duration:v27];
      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v34 = MEMORY[0x277CCA9B8];
      v109[0] = v87;
      *buf = @"semaphore wait timeout";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v109 count:1];
      v36 = [v34 errorWithDomain:v86 code:15 userInfo:v35];

      if (v36)
      {
        v37 = v36;

        v38 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v36 = 0;
    }

    v38 = 1;
LABEL_11:

    v39 = v36;
    if ((v38 & 1) == 0)
    {
      objc_storeStrong(v103 + 5, v36);
    }

    if (!v103[5])
    {
      v46 = [v90 location];
      [(RTVisitPipelineModuleAltitudeEstimator *)v91 updateAltitudeForCentroid:v46 locations:v97[5]];

      v47 = [v97[5] lastObject];
      v48 = [v47 date];
      v43 = [v48 dateByAddingTimeInterval:1.0];

      v49 = [v89 endDate];
      if ([v97[5] count] && objc_msgSend(v43, "compare:", v49) == -1)
      {
        v51 = objc_alloc(MEMORY[0x277CCA970]);
        v50 = [v43 earlierDate:v49];
        v52 = [v51 initWithStartDate:v50 endDate:v49];

        v44 = 1;
        v89 = v52;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v44 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v50 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEBUG, "no more locations to fetch.", buf, 2u);
        }

        v44 = 0;
      }

      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v53 = v103[5];
        *buf = 138412290;
        *&buf[4] = v53;
        _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "not updating the current visit's altitude and verticalUncertainty due to error, %@", buf, 0xCu);
      }
    }

    v41 = [v90 location];
    [v41 altitude];
    v91->_estimatedAltitude = v42;

    v43 = [v90 location];
    [v43 verticalUncertainty];
    v44 = 0;
    v91->_estimatedVerticalUncertainty = v45;
LABEL_29:

    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v102, 8);

    objc_autoreleasePoolPop(v17);
  }

  while ((v44 & 1) != 0);
  v54 = objc_alloc(MEMORY[0x277D01160]);
  v55 = [v90 location];
  [v55 latitude];
  v57 = v56;
  v58 = [v90 location];
  [v58 longitude];
  v60 = v59;
  v61 = [v90 location];
  [v61 horizontalUncertainty];
  v63 = v62;
  estimatedAltitude = v91->_estimatedAltitude;
  estimatedVerticalUncertainty = v91->_estimatedVerticalUncertainty;
  v66 = [v90 location];
  v67 = [v66 date];
  v68 = [v90 location];
  v69 = [v68 referenceFrame];
  v70 = [v90 location];
  [v70 speed];
  v72 = v71;
  v73 = [v90 location];
  v74 = [v54 initWithLatitude:v67 longitude:v69 horizontalUncertainty:objc_msgSend(v73 altitude:"sourceAccuracy") verticalUncertainty:v57 date:v60 referenceFrame:v63 speed:estimatedAltitude sourceAccuracy:{estimatedVerticalUncertainty, v72}];

  v75 = objc_alloc(MEMORY[0x277D01428]);
  v76 = [v90 date];
  v77 = [v90 type];
  v78 = [v90 entry];
  v79 = [v90 exit];
  v80 = [v90 dataPointCount];
  [v90 confidence];
  v82 = v81;
  v83 = [v90 placeInference];
  v84 = [v75 initWithDate:v76 type:v77 location:v74 entry:v78 exit:v79 dataPointCount:v80 confidence:v82 placeInference:v83];

  return v84;
}

void __65__RTVisitPipelineModuleAltitudeEstimator_updateAltitudeforVisit___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  v8 = [[_RTMap alloc] initWithInput:v7];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__RTVisitPipelineModuleAltitudeEstimator_updateAltitudeforVisit___block_invoke_2;
  v12[3] = &unk_2788D0200;
  v12[4] = *(a1 + 32);
  v9 = [(_RTMap *)v8 withBlock:v12];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

id __65__RTVisitPipelineModuleAltitudeEstimator_updateAltitudeforVisit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isValidForAltitudeUpdate:v3])
  {
    v4 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)process:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v31 = v4;
      v8 = *v34;
      v9 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = [v11 visit];
          v13 = [v12 entry];

          v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
          if (v13)
          {
            if (v14)
            {
              v15 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v26 = objc_opt_class();
                v27 = NSStringFromClass(v26);
                *buf = 138412547;
                v38 = v27;
                v39 = 2117;
                v40 = v11;
                _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@ working on cluster, %{sensitive}@", buf, 0x16u);
              }
            }

            v16 = [v11 visit];
            v17 = [(RTVisitPipelineModuleAltitudeEstimator *)self updateAltitudeforVisit:v16];

            v18 = [RTVisitCluster alloc];
            v19 = [v11 points];
            v20 = v18;
            v21 = v19;
            v22 = v17;
          }

          else
          {
            if (v14)
            {
              v23 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                v28 = objc_opt_class();
                v29 = NSStringFromClass(v28);
                *buf = 138412546;
                v38 = v29;
                v39 = 2112;
                v40 = v11;
                _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "%@ skiping cluster with null visit entry, %@ ", buf, 0x16u);
              }
            }

            v24 = [RTVisitCluster alloc];
            v17 = [v11 points];
            v19 = [v11 visit];
            v20 = v24;
            v21 = v17;
            v22 = v19;
          }

          v25 = [(RTVisitCluster *)v20 initWithPoints:v21 visit:v22];

          [v5 addObject:v25];
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v7);
      v4 = v31;
    }
  }

  else
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, obj, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inClusters.count", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

@end