@interface RTVisitPipelineModuleAltitudeEstimator
- (BOOL)isValidForAltitudeUpdate:(id)update;
- (RTVisitPipelineModuleAltitudeEstimator)initWithMaxHorizontalAccuracy:(double)accuracy locationManager:(id)manager;
- (id)dateIntervalForAltitudeEstimation:(id)estimation;
- (id)process:(id)process;
- (id)updateAltitudeforVisit:(id)visit;
- (void)updateAltitudeForCentroid:(id)centroid locations:(id)locations;
@end

@implementation RTVisitPipelineModuleAltitudeEstimator

- (RTVisitPipelineModuleAltitudeEstimator)initWithMaxHorizontalAccuracy:(double)accuracy locationManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (accuracy < 0.0)
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

  if (!managerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: locationManager";
      goto LABEL_12;
    }

LABEL_9:

    selfCopy = 0;
    goto LABEL_10;
  }

  v15.receiver = self;
  v15.super_class = RTVisitPipelineModuleAltitudeEstimator;
  v11 = [(RTVisitPipelineModuleAltitudeEstimator *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_maxHorizontalAccuracy = accuracy;
    objc_storeStrong(&v11->_locationManager, manager);
    [(RTVisitPipelineModuleAltitudeEstimator *)v12 initializeZAxisParameters];
  }

  self = v12;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)isValidForAltitudeUpdate:(id)update
{
  updateCopy = update;
  v4 = updateCopy;
  if (!updateCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", v10, 2u);
    }

    goto LABEL_8;
  }

  if ([updateCopy type] == 1 || (objc_msgSend(v4, "verticalAccuracy"), v5 < 0.0))
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

- (void)updateAltitudeForCentroid:(id)centroid locations:(id)locations
{
  v32 = *MEMORY[0x277D85DE8];
  centroidCopy = centroid;
  locationsCopy = locations;
  v8 = locationsCopy;
  estimatedVerticalUncertainty = self->_estimatedVerticalUncertainty;
  if (estimatedVerticalUncertainty == -1.0 || estimatedVerticalUncertainty > 0.0)
  {
    if ([locationsCopy count])
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

- (id)dateIntervalForAltitudeEstimation:(id)estimation
{
  v23 = *MEMORY[0x277D85DE8];
  estimationCopy = estimation;
  exit = [estimationCopy exit];
  v5 = exit;
  if (exit)
  {
    v6 = exit;
  }

  else
  {
    date = [estimationCopy date];
    v8 = MEMORY[0x277CBEAA8];
    entry = [estimationCopy entry];
    v10 = [v8 dateWithTimeInterval:entry sinceDate:900.0];
    v6 = [date earlierDate:v10];
  }

  entry2 = [estimationCopy entry];
  v12 = [v6 isBeforeDate:entry2];

  if (v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v21 = 138412290;
      v22 = estimationCopy;
      _os_log_fault_impl(&dword_2304B3000, v13, OS_LOG_TYPE_FAULT, "Invalid visit for altitude update, %@", &v21, 0xCu);
    }

    v14 = MEMORY[0x277CBEAA8];
    entry3 = [estimationCopy entry];
    v16 = [v14 dateWithTimeInterval:entry3 sinceDate:900.0];

    v6 = v16;
  }

  v17 = objc_alloc(MEMORY[0x277CCA970]);
  entry4 = [estimationCopy entry];
  v19 = [v17 initWithStartDate:entry4 endDate:v6];

  return v19;
}

- (id)updateAltitudeforVisit:(id)visit
{
  v109[1] = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  [(RTVisitPipelineModuleAltitudeEstimator *)self initializeZAxisParameters];
  v90 = visitCopy;
  selfCopy = self;
  v89 = [(RTVisitPipelineModuleAltitudeEstimator *)self dateIntervalForAltitudeEstimation:visitCopy];
  v5 = objc_alloc(MEMORY[0x277CE41F8]);
  location = [visitCopy location];
  [location latitude];
  v8 = v7;
  location2 = [v90 location];
  [location2 longitude];
  v11 = CLLocationCoordinate2DMake(v8, v10);
  location3 = [v90 location];
  [location3 horizontalUncertainty];
  v14 = v13;

  if (v14 < 5.0)
  {
    v14 = 5.0;
  }

  location4 = [v90 location];
  date = [location4 date];
  v88 = [v5 initWithCoordinate:date altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 timestamp:{v14, 0.0}];

  v86 = *MEMORY[0x277D01448];
  v87 = *MEMORY[0x277CCA450];
  do
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v89 horizontalAccuracy:200 batchSize:v88 boundingBoxLocation:selfCopy->_maxHorizontalAccuracy];
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
    locationManager = [(RTVisitPipelineModuleAltitudeEstimator *)selfCopy locationManager];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __65__RTVisitPipelineModuleAltitudeEstimator_updateAltitudeforVisit___block_invoke;
    v92[3] = &unk_2788D0228;
    v94 = &v102;
    v95 = &v96;
    v92[4] = selfCopy;
    v21 = v19;
    v93 = v21;
    [locationManager fetchStoredLocationsWithOptions:v18 handler:v92];

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
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v31 = [callStackSymbols filteredArrayUsingPredicate:v29];
      firstObject = [v31 firstObject];

      [v28 submitToCoreAnalytics:firstObject type:1 duration:v27];
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
      location5 = [v90 location];
      [(RTVisitPipelineModuleAltitudeEstimator *)selfCopy updateAltitudeForCentroid:location5 locations:v97[5]];

      lastObject = [v97[5] lastObject];
      date2 = [lastObject date];
      location7 = [date2 dateByAddingTimeInterval:1.0];

      endDate = [v89 endDate];
      if ([v97[5] count] && objc_msgSend(location7, "compare:", endDate) == -1)
      {
        v51 = objc_alloc(MEMORY[0x277CCA970]);
        v50 = [location7 earlierDate:endDate];
        v52 = [v51 initWithStartDate:v50 endDate:endDate];

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

    location6 = [v90 location];
    [location6 altitude];
    selfCopy->_estimatedAltitude = v42;

    location7 = [v90 location];
    [location7 verticalUncertainty];
    v44 = 0;
    selfCopy->_estimatedVerticalUncertainty = v45;
LABEL_29:

    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v102, 8);

    objc_autoreleasePoolPop(v17);
  }

  while ((v44 & 1) != 0);
  v54 = objc_alloc(MEMORY[0x277D01160]);
  location8 = [v90 location];
  [location8 latitude];
  v57 = v56;
  location9 = [v90 location];
  [location9 longitude];
  v60 = v59;
  location10 = [v90 location];
  [location10 horizontalUncertainty];
  v63 = v62;
  estimatedAltitude = selfCopy->_estimatedAltitude;
  estimatedVerticalUncertainty = selfCopy->_estimatedVerticalUncertainty;
  location11 = [v90 location];
  date3 = [location11 date];
  location12 = [v90 location];
  referenceFrame = [location12 referenceFrame];
  location13 = [v90 location];
  [location13 speed];
  v72 = v71;
  location14 = [v90 location];
  v74 = [v54 initWithLatitude:date3 longitude:referenceFrame horizontalUncertainty:objc_msgSend(location14 altitude:"sourceAccuracy") verticalUncertainty:v57 date:v60 referenceFrame:v63 speed:estimatedAltitude sourceAccuracy:{estimatedVerticalUncertainty, v72}];

  v75 = objc_alloc(MEMORY[0x277D01428]);
  date4 = [v90 date];
  type = [v90 type];
  entry = [v90 entry];
  exit = [v90 exit];
  dataPointCount = [v90 dataPointCount];
  [v90 confidence];
  v82 = v81;
  placeInference = [v90 placeInference];
  v84 = [v75 initWithDate:date4 type:type location:v74 entry:entry exit:exit dataPointCount:dataPointCount confidence:v82 placeInference:placeInference];

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

- (id)process:(id)process
{
  v42 = *MEMORY[0x277D85DE8];
  processCopy = process;
  if ([processCopy count])
  {
    v5 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = processCopy;
    v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v31 = processCopy;
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
          visit = [v11 visit];
          entry = [visit entry];

          v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
          if (entry)
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

            visit2 = [v11 visit];
            points2 = [(RTVisitPipelineModuleAltitudeEstimator *)self updateAltitudeforVisit:visit2];

            v18 = [RTVisitCluster alloc];
            points = [v11 points];
            v20 = v18;
            v21 = points;
            v22 = points2;
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
            points2 = [v11 points];
            points = [v11 visit];
            v20 = v24;
            v21 = points2;
            v22 = points;
          }

          v25 = [(RTVisitCluster *)v20 initWithPoints:v21 visit:v22];

          [v5 addObject:v25];
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v7);
      processCopy = v31;
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