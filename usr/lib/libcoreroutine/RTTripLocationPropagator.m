@interface RTTripLocationPropagator
- (RTTripLocationPropagator)initWithDefaultsManager:(id)a3;
- (id)getLocationArrayWithLocationManager:(id)a3;
- (id)getLocationExtendedArrayWithLocationManager:(id)a3;
- (id)getPropagatedLocationUsingLocations:(id)a3 atDistance:(double)a4;
- (id)getPropagatedLocationWithLocationManager:(id)a3 atDistance:(double)a4;
@end

@implementation RTTripLocationPropagator

- (RTTripLocationPropagator)initWithDefaultsManager:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RTTripLocationPropagator;
  v5 = [(RTTripLocationPropagator *)&v15 init];
  if (v5)
  {
    v6 = +[RTPlatform currentPlatform];
    v5->_recordDebuggingDataInFile = [v6 internalInstall];

    if (v4)
    {
      v7 = [v4 objectForKey:@"RTDefaultsTripSegmentRecordDebuggingDataInFile"];
      v8 = v7;
      if (v7)
      {
        recordDebuggingDataInFile = [v7 BOOLValue];
      }

      else
      {
        recordDebuggingDataInFile = v5->_recordDebuggingDataInFile;
      }

      v5->_recordDebuggingDataInFile = recordDebuggingDataInFile;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = v5->_recordDebuggingDataInFile;
        *buf = 138412546;
        v17 = v12;
        v18 = 1024;
        v19 = v13;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,initialized,recordDebuggingDataInFile,%d", buf, 0x12u);
      }
    }
  }

  return v5;
}

- (id)getLocationArrayWithLocationManager:(id)a3
{
  v54[1] = *MEMORY[0x277D85DE8];
  v33 = a3;
  v3 = [MEMORY[0x277CBEAA8] now];
  v34 = [v3 dateByAddingTimeInterval:300.0];
  v32 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v34 endDate:v3];
  v4 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v32 horizontalAccuracy:0x7FFFFFFFFFFFFFFFLL batchSize:0 boundingBoxLocation:1.79769313e308];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__141;
  v49 = __Block_byref_object_dispose__141;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__141;
  v43 = __Block_byref_object_dispose__141;
  v44 = 0;
  v5 = dispatch_semaphore_create(0);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__RTTripLocationPropagator_getLocationArrayWithLocationManager___block_invoke;
  v35[3] = &unk_2788C4490;
  v37 = &v45;
  v38 = &v39;
  v6 = v5;
  v36 = v6;
  [v33 fetchStoredLocationsWithOptions:v4 handler:v35];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_117];
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v54[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v54 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  if (v23)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138412546;
      *&buf[4] = v28;
      v52 = 2112;
      v53 = v23;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Semaphore error in clLocations fetching,semaError,%@", buf, 0x16u);
    }

LABEL_14:

    v25 = 0;
    goto LABEL_15;
  }

  if (v46[5])
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = v46[5];
      *buf = 138412546;
      *&buf[4] = v30;
      v52 = 2112;
      v53 = v31;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@,Failed in clLocations fetching,fetchError,%@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v25 = v40[5];
LABEL_15:

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v25;
}

void __64__RTTripLocationPropagator_getLocationArrayWithLocationManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getLocationExtendedArrayWithLocationManager:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__141;
  v48 = __Block_byref_object_dispose__141;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__141;
  v42 = __Block_byref_object_dispose__141;
  v43 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc(MEMORY[0x277D01198]);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:300];
  v7 = [v5 initWithNumberOfSeconds:v6];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __72__RTTripLocationPropagator_getLocationExtendedArrayWithLocationManager___block_invoke;
  v34[3] = &unk_2788C4490;
  v36 = &v44;
  v37 = &v38;
  v8 = v4;
  v35 = v8;
  [v3 fetchLocationsFromCoreLocationWithOptions:v7 handler:v34];
  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_117];
    v17 = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [v17 filteredArrayUsingPredicate:v16];
    v19 = [v18 firstObject];

    [v15 submitToCoreAnalytics:v19 type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v53[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v53 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  if (v25)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138412546;
      *&buf[4] = v30;
      v51 = 2112;
      v52 = v25;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@,Semaphore error in clLocations fetching,semaError,%@", buf, 0x16u);
    }

LABEL_14:

    v27 = 0;
    goto LABEL_15;
  }

  if (v45[5])
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = v45[5];
      *buf = 138412546;
      *&buf[4] = v32;
      v51 = 2112;
      v52 = v33;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@,Failed in clLocations fetching,fetchError,%@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v27 = v39[5];
LABEL_15:

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v27;
}

void __72__RTTripLocationPropagator_getLocationExtendedArrayWithLocationManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getPropagatedLocationWithLocationManager:(id)a3 atDistance:(double)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[RTTripLocationPropagator getPropagatedLocationWithLocationManager:atDistance:]";
      v18 = 1024;
      v19 = 127;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager (in %s:%d)", &v16, 0x12u);
    }
  }

  if (a4 <= 0.0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[RTTripLocationPropagator getPropagatedLocationWithLocationManager:atDistance:]";
      v18 = 1024;
      v19 = 128;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distance > 0.0 (in %s:%d)", &v16, 0x12u);
    }
  }

  v9 = [(RTTripLocationPropagator *)self getLocationExtendedArrayWithLocationManager:v6];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v9 count];
      v16 = 138412546;
      v17 = v12;
      v18 = 1024;
      v19 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,getPropagatedLocationWithLocationManager invoked,locations,%d", &v16, 0x12u);
    }
  }

  v14 = [(RTTripLocationPropagator *)self getPropagatedLocationUsingLocations:v9 atDistance:a4];

  return v14;
}

- (id)getPropagatedLocationUsingLocations:(id)a3 atDistance:(double)a4
{
  v111[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v78 = v7;
    v8 = [MEMORY[0x277CBEB18] array];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v10)
    {
      v11 = *v98;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v98 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v97 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x277CBFC98]);
          v15 = [v13 location];
          v4 = [v14 initWithCLLocation:v15];

          if ([v4 isGPSLocationType])
          {
            [v8 addObject:v4];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v97 objects:v110 count:16];
      }

      while (v10);
    }

    if ([v8 count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v106 = 0x3032000000;
      v107 = __Block_byref_object_copy__141;
      v108 = __Block_byref_object_dispose__141;
      v109 = 0;
      v91 = 0;
      v92 = &v91;
      v93 = 0x3032000000;
      v94 = __Block_byref_object_copy__141;
      v95 = __Block_byref_object_dispose__141;
      v96 = 0;
      v85 = 0;
      v86 = &v85;
      v87 = 0x3032000000;
      v88 = __Block_byref_object_copy__141;
      v89 = __Block_byref_object_dispose__141;
      v90 = dispatch_semaphore_create(0);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__RTTripLocationPropagator_getPropagatedLocationUsingLocations_atDistance___block_invoke;
      aBlock[3] = &unk_2788CFAC8;
      aBlock[4] = self;
      aBlock[5] = &buf;
      v75 = _Block_copy(aBlock);
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __75__RTTripLocationPropagator_getPropagatedLocationUsingLocations_atDistance___block_invoke_25;
      v83[3] = &unk_2788CFAF0;
      v83[4] = self;
      v83[5] = &v91;
      v83[6] = &v85;
      v74 = _Block_copy(v83);
      v73 = objc_alloc_init(MEMORY[0x277CBFCB0]);
      v76 = objc_alloc_init(MEMORY[0x277CBFCA8]);
      [v76 propagateLocation:v8 route:0 distance:v73 withOptions:1 modeOfTransport:v75 outputHandler:v74 completionHandler:a4];
      v16 = v86[5];
      v17 = [MEMORY[0x277CBEAA8] now];
      v18 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v16, v18))
      {
        v19 = [MEMORY[0x277CBEAA8] now];
        [v19 timeIntervalSinceDate:v17];
        v21 = v20;
        v22 = objc_opt_new();
        v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_117];
        v24 = [MEMORY[0x277CCACC8] callStackSymbols];
        v25 = [v24 filteredArrayUsingPredicate:v23];
        v4 = [v25 firstObject];

        [v22 submitToCoreAnalytics:v4 type:1 duration:v21];
        v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *v101 = 0;
          _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v101, 2u);
        }

        v27 = MEMORY[0x277CCA9B8];
        v111[0] = *MEMORY[0x277CCA450];
        *v101 = @"semaphore wait timeout";
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v111 count:1];
        v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

        if (v29)
        {
          v30 = v29;
        }
      }

      else
      {
        v29 = 0;
      }

      v37 = v29;
      v72 = v37;
      if (v37)
      {
        v38 = v37;
        v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = [v38 localizedDescription];
          *v101 = 138412546;
          *&v101[4] = v41;
          v102 = 2112;
          *v103 = v42;
          _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@,propagateLocationForward,semaphore error when calling propagateLocation,error,%@", v101, 0x16u);
        }
      }

      else if (v92[5])
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v69 = objc_opt_class();
          v70 = NSStringFromClass(v69);
          v71 = [v92[5] localizedDescription];
          *v101 = 138412546;
          *&v101[4] = v70;
          v102 = 2112;
          *v103 = v71;
          _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@,propagateLocationForward,processing error when calling propagateLocation,error,%@", v101, 0x16u);
        }
      }

      else
      {
        v44 = *(*(&buf + 1) + 40);
        if (v44)
        {
          v45 = [v44 tripLocations];
          v46 = [v45 count] == 0;

          if (!v46)
          {
            v33 = [MEMORY[0x277CBEB18] array];
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v47 = [*(*(&buf + 1) + 40) tripLocations];
            v48 = [v47 countByEnumeratingWithState:&v79 objects:v104 count:16];
            if (v48)
            {
              v49 = *v80;
              do
              {
                for (j = 0; j != v48; ++j)
                {
                  if (*v80 != v49)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v51 = *(*(&v79 + 1) + 8 * j);
                  v52 = objc_alloc(MEMORY[0x277D01160]);
                  [v51 latitude];
                  v54 = v53;
                  [v51 longitude];
                  v56 = v55;
                  [v51 horizontalAccuracy];
                  v58 = v57;
                  v59 = [v51 timestamp];
                  v4 = [v52 initWithLatitude:v59 longitude:objc_msgSend(v51 horizontalUncertainty:"referenceFrame") date:v54 referenceFrame:{v56, v58}];

                  [v33 addObject:v4];
                }

                v48 = [v47 countByEnumeratingWithState:&v79 objects:v104 count:16];
              }

              while (v48);
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_36;
            }

            v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v60 = objc_opt_class();
              v61 = NSStringFromClass(v60);
              v62 = [v33 count];
              v63 = [v33 count];
              if (v63)
              {
                v4 = [v33 lastObject];
                v64 = [v4 date];
              }

              else
              {
                v64 = @"NA";
              }

              *v101 = 138412802;
              *&v101[4] = v61;
              v102 = 1024;
              *v103 = v62;
              *&v103[4] = 2112;
              *&v103[6] = v64;
              _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@,propagateLocationForward returned propagated location,count,%d,time,%@", v101, 0x1Cu);
              if (v63)
              {
              }
            }

            goto LABEL_35;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v33 = 0;
            goto LABEL_36;
          }

          v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v67 = objc_opt_class();
            v68 = NSStringFromClass(v67);
            *v101 = 138412290;
            *&v101[4] = v68;
            _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@,propagateLocationForward got zero propagated locations,returning nil", v101, 0xCu);
          }
        }

        else
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v65 = objc_opt_class();
            v66 = NSStringFromClass(v65);
            *v101 = 138412290;
            *&v101[4] = v66;
            _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@,propagateLocationForward,Nil tripSegmentOutputData when calling propagateLocation", v101, 0xCu);
          }
        }
      }

      v33 = 0;
LABEL_35:

LABEL_36:
      _Block_object_dispose(&v85, 8);

      _Block_object_dispose(&v91, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@,propagateLocationForward,getLocationArrayWithLocationManager,GPS locations not available in recent history", &buf, 0xCu);
      }
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v33 = 0;
      goto LABEL_38;
    }

    v78 = v7;
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,propagateLocationForward,getLocationArrayWithLocationManager,locations not available in recent history", &buf, 0xCu);
    }
  }

  v33 = 0;
LABEL_37:

  v7 = v78;
LABEL_38:

  return v33;
}

void __75__RTTripLocationPropagator_getPropagatedLocationUsingLocations_atDistance___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 routeRoads];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v4 tripLocations];
        v10 = 138412546;
        v11 = v8;
        v12 = 1024;
        v13 = [v9 count];
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,propagateLocationForward,returned location,count,%d", &v10, 0x12u);
      }
    }
  }
}

void __75__RTTripLocationPropagator_getPropagatedLocationUsingLocations_atDistance___block_invoke_25(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v10 = 138412290;
        v11 = v7;
        v8 = "%@,propagateLocationForward,failed";
LABEL_8:
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, v8, &v10, 0xCu);

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
      v9 = objc_opt_class();
      v7 = NSStringFromClass(v9);
      v10 = 138412290;
      v11 = v7;
      v8 = "%@,propagateLocationForward,success";
      goto LABEL_8;
    }

LABEL_9:
  }

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

@end