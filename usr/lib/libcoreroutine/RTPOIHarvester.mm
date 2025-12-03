@interface RTPOIHarvester
+ (id)harvestTypeToString:(unint64_t)string;
+ (int)harvestTypeToPoiTriggerType:(unint64_t)type;
- (BOOL)_submitHarvest:(id)harvest error:(id *)error;
- (BOOL)harvestPOI:(id)i mapItemSource:(unint64_t)source referenceLocations:(id)locations startDate:(id)date endDate:(id)endDate harvestType:(unint64_t)type error:(id *)error;
- (RTPOIHarvester)initWithDefaultsManager:(id)manager fingerprintManager:(id)fingerprintManager locationManager:(id)locationManager motionActivityManager:(id)activityManager;
- (RTPOIHarvester)initWithFingerprintManager:(id)manager locationManager:(id)locationManager motionActivityManager:(id)activityManager parameters:(id)parameters;
- (id)_motionActivitiesFrom:(id)from to:(id)to error:(id *)error;
- (id)_poiHarvestForFingerprint:(id)fingerprint mapItem:(id)item referenceLocations:(id)locations endDate:(id)date error:(id *)error;
@end

@implementation RTPOIHarvester

- (RTPOIHarvester)initWithDefaultsManager:(id)manager fingerprintManager:(id)fingerprintManager locationManager:(id)locationManager motionActivityManager:(id)activityManager
{
  managerCopy = manager;
  fingerprintManagerCopy = fingerprintManager;
  locationManagerCopy = locationManager;
  activityManagerCopy = activityManager;
  v14 = activityManagerCopy;
  if (!managerCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v24 = 0;
    v18 = "Invalid parameter not satisfying: defaultsManager";
    v19 = &v24;
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, v19, 2u);
    goto LABEL_15;
  }

  if (!fingerprintManagerCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v23 = 0;
    v18 = "Invalid parameter not satisfying: fingerprintManager";
    v19 = &v23;
    goto LABEL_14;
  }

  if (!locationManagerCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v22 = 0;
    v18 = "Invalid parameter not satisfying: locationManager";
    v19 = &v22;
    goto LABEL_14;
  }

  if (!activityManagerCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 0;
      v18 = "Invalid parameter not satisfying: motionActivityManager";
      v19 = &v21;
      goto LABEL_14;
    }

LABEL_15:

    selfCopy = 0;
    goto LABEL_16;
  }

  v15 = [[RTPOIHarvestParameters alloc] initWithDefaultsManager:managerCopy];
  self = [(RTPOIHarvester *)self initWithFingerprintManager:fingerprintManagerCopy locationManager:locationManagerCopy motionActivityManager:v14 parameters:v15];

  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (RTPOIHarvester)initWithFingerprintManager:(id)manager locationManager:(id)locationManager motionActivityManager:(id)activityManager parameters:(id)parameters
{
  v27 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationManagerCopy = locationManager;
  activityManagerCopy = activityManager;
  parametersCopy = parameters;
  v15 = parametersCopy;
  if (!managerCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: fingerprintManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_20;
  }

  if (!locationManagerCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_19;
  }

  if (!activityManagerCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_19;
  }

  if (!parametersCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: parameters";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v24.receiver = self;
  v24.super_class = RTPOIHarvester;
  v16 = [(RTPOIHarvester *)&v24 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    objc_storeStrong(&v16->_fingerprintManager, manager);
    objc_storeStrong(p_isa + 2, locationManager);
    objc_storeStrong(p_isa + 3, activityManager);
    objc_storeStrong(p_isa + 4, parameters);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = p_isa[4];
        *buf = 138412290;
        v26 = v19;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "initialized RTPOIHarvester with parameters: %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

+ (int)harvestTypeToPoiTriggerType:(unint64_t)type
{
  if (type == 2)
  {
    v3 = 5;
  }

  else
  {
    v3 = 3;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)harvestTypeToString:(unint64_t)string
{
  if (string > 2)
  {
    return 0;
  }

  else
  {
    return off_2788C7470[string];
  }
}

- (id)_motionActivitiesFrom:(id)from to:(id)to error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__28;
  v48 = __Block_byref_object_dispose__28;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__28;
  v42 = __Block_byref_object_dispose__28;
  v43 = 0;
  v9 = dispatch_semaphore_create(0);
  motionActivityManager = [(RTPOIHarvester *)self motionActivityManager];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __49__RTPOIHarvester__motionActivitiesFrom_to_error___block_invoke;
  v34[3] = &unk_2788C4490;
  v36 = &v38;
  v37 = &v44;
  v11 = v9;
  v35 = v11;
  [motionActivityManager fetchMotionActivitiesFromStartDate:fromCopy endDate:toCopy handler:v34];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_23];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v50 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;

      v28 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = 1;
LABEL_8:

  v29 = v26;
  if ((v28 & 1) == 0)
  {
    objc_storeStrong(v45 + 5, v26);
  }

  v30 = v45[5];
  if (v30)
  {
    v31 = 0;
    if (error)
    {
      *error = v30;
    }
  }

  else
  {
    v31 = v39[5];
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v31;
}

void __49__RTPOIHarvester__motionActivitiesFrom_to_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_poiHarvestForFingerprint:(id)fingerprint mapItem:(id)item referenceLocations:(id)locations endDate:(id)date error:(id *)error
{
  fingerprintCopy = fingerprint;
  itemCopy = item;
  locationsCopy = locations;
  dateCopy = date;
  v16 = dateCopy;
  if (!fingerprintCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprint", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_20;
    }

    v23 = @"fingerprint";
    goto LABEL_19;
  }

  if (!itemCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_20;
    }

    v23 = @"mapItem";
LABEL_19:
    _RTErrorInvalidParameterCreate(v23);
    *error = v21 = 0;
    goto LABEL_41;
  }

  if (!dateCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (error)
    {
      v23 = @"endDate";
      goto LABEL_19;
    }

LABEL_20:
    v21 = 0;
    goto LABEL_41;
  }

  fingerprintManager = [(RTPOIHarvester *)self fingerprintManager];
  v51 = 0;
  v18 = [RTPOIHarvestUtilities accessPointsForFingerprint:fingerprintCopy endDate:v16 fingerprintManager:fingerprintManager error:&v51];
  v19 = v51;

  if (!v19)
  {
    if ([v18 count])
    {
      parameters = [(RTPOIHarvester *)self parameters];
      locationManager = [(RTPOIHarvester *)self locationManager];
      v28 = v18;
      v29 = locationManager;
      v50[1] = 0;
      v48 = v28;
      v49 = [RTPOIHarvestUtilities locationsForAccessPoints:"locationsForAccessPoints:harvestParameters:locationManager:error:" harvestParameters:? locationManager:? error:?];
      v30 = 0;

      if (v30)
      {
        v31 = v49;
        if (error)
        {
          v32 = v30;
          v21 = 0;
          *error = v30;
        }

        else
        {
          v21 = 0;
        }

        v18 = v48;
      }

      else
      {
        firstObject = [v49 firstObject];
        date = [firstObject date];
        lastObject = [v49 lastObject];
        date2 = [lastObject date];
        v50[0] = 0;
        selfCopy = self;
        v37 = date;
        v47 = [(RTPOIHarvester *)selfCopy _motionActivitiesFrom:date to:date2 error:v50];
        v38 = v50[0];

        v39 = v38;
        if (v38)
        {
          v30 = 0;
          v18 = v48;
          if (error)
          {
            v40 = v39;
            v21 = 0;
            *error = v39;
          }

          else
          {
            v21 = 0;
          }

          v44 = v39;
          v31 = v49;
          v43 = v47;
        }

        else
        {
          array = [MEMORY[0x277CBEB18] array];
          v42 = array;
          v30 = 0;
          v18 = v48;
          if (locationsCopy)
          {
            [array addObjectsFromArray:locationsCopy];
          }

          v31 = v49;
          if ([v49 count])
          {
            [v42 addObjectsFromArray:v49];
          }

          v21 = [objc_alloc(MEMORY[0x277CFFE88]) initWithMapItem:itemCopy accessPoints:v48 locations:v42 motionActivities:v47];

          v43 = v47;
          v44 = 0;
        }
      }

      goto LABEL_40;
    }

    goto LABEL_26;
  }

  if (!error)
  {
LABEL_26:
    v21 = 0;
    goto LABEL_40;
  }

  v20 = v19;
  v21 = 0;
  *error = v19;
LABEL_40:

LABEL_41:

  return v21;
}

- (BOOL)_submitHarvest:(id)harvest error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  harvestCopy = harvest;
  if (harvestCopy)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__28;
    v38 = __Block_byref_object_dispose__28;
    v39 = 0;
    v7 = dispatch_semaphore_create(0);
    locationManager = [(RTPOIHarvester *)self locationManager];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __39__RTPOIHarvester__submitHarvest_error___block_invoke;
    v31[3] = &unk_2788C4618;
    v33 = &v34;
    v9 = v7;
    v32 = v9;
    [locationManager submitHarvestSample:harvestCopy handler:v31];

    v10 = v9;
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v10, v12))
    {
      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_23];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
      firstObject = [v19 firstObject];

      [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v42 count:1];
      v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

      if (v24)
      {
        v25 = v24;

        v26 = 0;
LABEL_11:

        v29 = v24;
        if ((v26 & 1) == 0)
        {
          objc_storeStrong(v35 + 5, v24);
        }

        if (error)
        {
          *error = v35[5];
        }

        LOBYTE(error) = v35[5] == 0;

        _Block_object_dispose(&v34, 8);
        goto LABEL_16;
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = 1;
    goto LABEL_11;
  }

  if (error)
  {
    v27 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"requires a valid poiHarvest.";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    *error = [v27 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v28];

    LOBYTE(error) = 0;
  }

LABEL_16:

  return error;
}

void __39__RTPOIHarvester__submitHarvest_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)harvestPOI:(id)i mapItemSource:(unint64_t)source referenceLocations:(id)locations startDate:(id)date endDate:(id)endDate harvestType:(unint64_t)type error:(id *)error
{
  v89[1] = *MEMORY[0x277D85DE8];
  iCopy = i;
  locationsCopy = locations;
  dateCopy = date;
  endDateCopy = endDate;
  if (iCopy && ([iCopy validMUID] & 1) != 0)
  {
    typeCopy = type;
    selfCopy = self;
    v19 = [iCopy copy];
    if (v19)
    {
      v80 = 0;
      fingerprintManager = [(RTPOIHarvester *)selfCopy fingerprintManager];
      v79 = 0;
      v21 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:dateCopy endDate:endDateCopy isTimeWindowFallback:&v80 settledState:2 fingerprintManager:fingerprintManager error:&v79];
      v22 = v79;

      v62 = v22;
      if (v22)
      {
        v23 = 0;
        if (error)
        {
          *error = v62;
        }
      }

      else if ([v21 count])
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        obj = v21;
        v66 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
        if (v66)
        {
          v67 = v19;
          v68 = endDateCopy;
          v58 = iCopy;
          v65 = *v76;
          v61 = locationsCopy;
          while (2)
          {
            for (i = 0; i != v66; ++i)
            {
              v34 = v21;
              if (*v76 != v65)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v75 + 1) + 8 * i);
              v36 = objc_autoreleasePoolPush();
              v37 = [[_RTMap alloc] initWithInput:locationsCopy];
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __98__RTPOIHarvester_harvestPOI_mapItemSource_referenceLocations_startDate_endDate_harvestType_error___block_invoke;
              v73[3] = &unk_2788C7450;
              v38 = dateCopy;
              v74 = dateCopy;
              v39 = [(_RTMap *)v37 withBlock:v73];

              [v67 setSource:source];
              v72 = 0;
              v40 = [(RTPOIHarvester *)selfCopy _poiHarvestForFingerprint:v35 mapItem:v67 referenceLocations:v39 endDate:v68 error:&v72];
              v41 = v72;
              v42 = v41;
              if (v41)
              {
                v43 = v41;
              }

              else if (v40)
              {
                v44 = [RTPOIHarvester harvestTypeToPoiTriggerType:typeCopy];
                triggerEvent = [v40 triggerEvent];
                [triggerEvent setTriggerType:v44];

                v71 = 0;
                [(RTPOIHarvester *)selfCopy _submitHarvest:v40 error:&v71];
                v43 = v71;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v46 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                  {
                    triggerEvent2 = [v40 triggerEvent];
                    triggerType = [triggerEvent2 triggerType];
                    v47 = [RTPOIHarvester harvestTypeToString:typeCopy];
                    *buf = 138413314;
                    v82 = v35;
                    v83 = 2112;
                    v84 = v40;
                    v85 = 1024;
                    *v86 = triggerType;
                    *&v86[4] = 2112;
                    *&v86[6] = v47;
                    v48 = v47;
                    *&v86[14] = 2112;
                    *&v86[16] = v43;
                    _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "harvested fingerprint, %@, poiHarvest, %@, triggerType, %d, harvestType, %@, error, %@", buf, 0x30u);
                  }
                }

                locationsCopy = v61;
              }

              else
              {
                v43 = 0;
              }

              objc_autoreleasePoolPop(v36);
              v21 = v34;
              if (v43)
              {
                dateCopy = v38;
                v19 = v67;
                if (error)
                {
                  v49 = v43;
                  *error = v43;
                }

                v23 = 0;
                iCopy = v58;
                endDateCopy = v68;
                goto LABEL_43;
              }

              dateCopy = v38;
            }

            v66 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
            if (v66)
            {
              continue;
            }

            break;
          }

          v23 = 1;
          iCopy = v58;
          v19 = v67;
          endDateCopy = v68;
        }

        else
        {
          v23 = 1;
        }

LABEL_43:
      }

      else
      {
        v23 = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v50 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = NSStringFromSelector(a2);
            *buf = 138413058;
            v82 = v52;
            v83 = 2112;
            v84 = v53;
            v85 = 2112;
            *v86 = dateCopy;
            *&v86[8] = 2112;
            *&v86[10] = endDateCopy;
            _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, No fingerprints found between start date, %@, and end date, %@, POI data will not be harvested", buf, 0x2Au);
          }

          v23 = 1;
        }
      }

      v25 = v62;
    }

    else
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = NSStringFromSelector(a2);
        *buf = 138412802;
        v82 = v56;
        v83 = 2112;
        v84 = v57;
        v85 = 2112;
        *v86 = iCopy;
        _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, Failed to copy map item, %@, exiting early", buf, 0x20u);
      }

      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277D01448];
      v88 = *MEMORY[0x277CCA450];
      iCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy %@", iCopy];
      v89[0] = iCopy;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:&v88 count:1];
      v25 = [v28 errorWithDomain:v29 code:0 userInfo:v31];

      if (error)
      {
        v32 = v25;
        v23 = 0;
        *error = v25;
      }

      else
      {
        v23 = 0;
      }
    }

    goto LABEL_45;
  }

  v23 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
LABEL_46:

      goto LABEL_47;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    *buf = 138412546;
    v82 = v25;
    v83 = 2112;
    v84 = v26;
    _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, No valid map item provided, exiting early", buf, 0x16u);

LABEL_45:
    goto LABEL_46;
  }

LABEL_47:

  return v23;
}

id __98__RTPOIHarvester_harvestPOI_mapItemSource_referenceLocations_startDate_endDate_harvestType_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01160];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 latitude];
  v7 = v6;
  [v4 longitude];
  v9 = v8;
  [v4 horizontalUncertainty];
  v11 = v10;
  v12 = *(a1 + 32);
  v13 = [v4 referenceFrame];

  v14 = [v5 initWithLatitude:v12 longitude:v13 horizontalUncertainty:v7 date:v9 referenceFrame:v11];

  return v14;
}

@end