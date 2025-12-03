@interface RTPOIHarvestUtilities
+ (BOOL)harvestCuration:(id)curation mapItem:(id)item referenceLocations:(id)locations poiHarvester:(id)harvester error:(id *)error;
+ (BOOL)harvestVisits:(id)visits mapItem:(id)item harvestType:(unint64_t)type poiHarvester:(id)harvester error:(id *)error;
+ (id)accessPointsForFingerprint:(id)fingerprint endDate:(id)date fingerprintManager:(id)manager error:(id *)error;
+ (id)determineFingerprintFallbackDateIntervalFromStartDate:(id)date endDate:(id)endDate error:(id *)error;
+ (id)fingerprintsBetweenStartDate:(id)date endDate:(id)endDate isTimeWindowFallback:(BOOL *)fallback settledState:(unint64_t)state fingerprintManager:(id)manager error:(id *)error;
+ (id)locationsForAccessPoints:(id)points harvestParameters:(id)parameters locationManager:(id)manager error:(id *)error;
+ (id)locationsInDateInterval:(id)interval harvestParameters:(id)parameters locationManager:(id)manager error:(id *)error;
@end

@implementation RTPOIHarvestUtilities

+ (id)fingerprintsBetweenStartDate:(id)date endDate:(id)endDate isTimeWindowFallback:(BOOL *)fallback settledState:(unint64_t)state fingerprintManager:(id)manager error:(id *)error
{
  v121[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  managerCopy = manager;
  if (!dateCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (error)
    {
      v32 = _RTErrorInvalidParameterCreate(@"startDate");
LABEL_16:
      v34 = 0;
      *error = v32;
      goto LABEL_56;
    }

LABEL_17:
    v34 = 0;
    goto LABEL_56;
  }

  if (!endDateCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (error)
    {
      v32 = _RTErrorInvalidParameterCreate(@"endDate");
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__84;
  v105 = __Block_byref_object_dispose__84;
  v106 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__84;
  v99 = __Block_byref_object_dispose__84;
  v100 = 0;
  v12 = dispatch_semaphore_create(0);
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __121__RTPOIHarvestUtilities_fingerprintsBetweenStartDate_endDate_isTimeWindowFallback_settledState_fingerprintManager_error___block_invoke;
  v91[3] = &unk_2788C4490;
  v93 = &v101;
  v94 = &v95;
  v13 = v12;
  v92 = v13;
  [managerCopy fetchFingerprintsBetweenStartDate:dateCopy endDate:endDateCopy filteredBySettledState:state handler:v91];
  v14 = v13;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v14, v16))
  {
    v28 = 0;
LABEL_19:
    v30 = 1;
    goto LABEL_20;
  }

  v17 = [MEMORY[0x277CBEAA8] now];
  [v17 timeIntervalSinceDate:v15];
  v19 = v18;
  v20 = objc_opt_new();
  v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_49];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
  firstObject = [v23 firstObject];

  [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v26 = MEMORY[0x277CCA9B8];
  *v114 = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v114 count:1];
  v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;

  v30 = 0;
LABEL_20:

  v35 = v28;
  if ((v30 & 1) == 0)
  {
    objc_storeStrong(v96 + 5, v28);
  }

  if (state == 2 && !v96[5] && ![v102[5] count])
  {
    *fallback = 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v108 = __Block_byref_object_copy__84;
    *v109 = __Block_byref_object_dispose__84;
    *&v109[8] = 0;
    v90 = 0;
    v80 = [RTPOIHarvestUtilities determineFingerprintFallbackDateIntervalFromStartDate:dateCopy endDate:endDateCopy error:&v90];
    v36 = v90;
    if (v36)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          stringFromDate = [dateCopy stringFromDate];
          stringFromDate2 = [endDateCopy stringFromDate];
          *v114 = 138412802;
          *&v114[4] = stringFromDate;
          v115 = 2112;
          v116 = stringFromDate2;
          v117 = 2112;
          v118 = v36;
          _os_log_debug_impl(&dword_2304B3000, v37, OS_LOG_TYPE_DEBUG, "Zero fingerprints found between startDate %@, endDate, %@, fallback query date interval could not be constructed due to error, %@", v114, 0x20u);
        }
      }

      v38 = v96;
      v39 = v36;
      v40 = v38[5];
      v38[5] = v39;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v41 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          stringFromDate3 = [dateCopy stringFromDate];
          dsemaa = [endDateCopy stringFromDate];
          startDate = [v80 startDate];
          stringFromDate4 = [startDate stringFromDate];
          endDate = [v80 endDate];
          stringFromDate5 = [endDate stringFromDate];
          *v114 = 138413058;
          *&v114[4] = stringFromDate3;
          v115 = 2112;
          v116 = dsemaa;
          v117 = 2112;
          v118 = stringFromDate4;
          v119 = 2112;
          v120 = stringFromDate5;
          _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "Zero fingerprints found between startDate %@, endDate, %@, fallback query between fallbackStartDate %@ and fallbackEndDate %@", v114, 0x2Au);
        }
      }

      startDate2 = [v80 startDate];
      endDate2 = [v80 endDate];
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __121__RTPOIHarvestUtilities_fingerprintsBetweenStartDate_endDate_isTimeWindowFallback_settledState_fingerprintManager_error___block_invoke_5;
      v86[3] = &unk_2788C4490;
      v88 = buf;
      v89 = &v95;
      v48 = v14;
      v87 = v48;
      [managerCopy fetchFingerprintsBetweenStartDate:startDate2 endDate:endDate2 filteredBySettledState:2 handler:v86];

      dsema = v48;
      v77 = [MEMORY[0x277CBEAA8] now];
      v49 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(dsema, v49))
      {
        goto LABEL_40;
      }

      v75 = [MEMORY[0x277CBEAA8] now];
      [v75 timeIntervalSinceDate:v77];
      v51 = v50;
      v52 = objc_opt_new();
      v53 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_49];
      callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
      v55 = [callStackSymbols2 filteredArrayUsingPredicate:v53];
      firstObject2 = [v55 firstObject];

      [v52 submitToCoreAnalytics:firstObject2 type:1 duration:v51];
      v57 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
      {
        *v114 = 0;
        _os_log_fault_impl(&dword_2304B3000, v57, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v114, 2u);
      }

      v58 = MEMORY[0x277CCA9B8];
      v121[0] = *MEMORY[0x277CCA450];
      *v114 = @"semaphore wait timeout";
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v121 count:1];
      v60 = [v58 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v59];

      if (v60)
      {
        v61 = v60;

        v62 = 0;
      }

      else
      {
LABEL_40:
        v62 = 1;
        v60 = v35;
      }

      v63 = v60;
      if ((v62 & 1) == 0)
      {
        objc_storeStrong(v96 + 5, v60);
      }

      if (!v96[5])
      {
        objc_storeStrong(v102 + 5, *(*&buf[8] + 40));
      }

      v40 = v87;
      v35 = v63;
    }

    _Block_object_dispose(buf, 8);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v64 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v65 = NSStringFromSelector(a2);
      v66 = [v102[5] count];
      stringFromDate6 = [dateCopy stringFromDate];
      stringFromDate7 = [endDateCopy stringFromDate];
      v69 = stringFromDate7;
      v70 = @"NO";
      v71 = v96[5];
      if (*fallback)
      {
        v70 = @"YES";
      }

      *buf = 138413826;
      *&buf[4] = v65;
      *&buf[12] = 2048;
      *&buf[14] = v66;
      *&buf[22] = 2112;
      v108 = stringFromDate6;
      *v109 = 2112;
      *&v109[2] = stringFromDate7;
      *&v109[10] = 2048;
      *&v109[12] = state;
      v110 = 2112;
      v111 = v70;
      v112 = 2112;
      v113 = v71;
      _os_log_impl(&dword_2304B3000, v64, OS_LOG_TYPE_INFO, "%@, fingerprints count, %lu, startDate %@, endData, %@, settledState, %lu, isTimeWindowFallback, %@, error, %@", buf, 0x48u);
    }
  }

  if (error)
  {
    *error = v96[5];
  }

  v34 = v102[5];

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v101, 8);

LABEL_56:

  return v34;
}

void __121__RTPOIHarvestUtilities_fingerprintsBetweenStartDate_endDate_isTimeWindowFallback_settledState_fingerprintManager_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __121__RTPOIHarvestUtilities_fingerprintsBetweenStartDate_endDate_isTimeWindowFallback_settledState_fingerprintManager_error___block_invoke_5(uint64_t a1, void *a2, void *a3)
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

+ (id)determineFingerprintFallbackDateIntervalFromStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  v9 = endDateCopy;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-300.0];
      v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:300.0];
      v12 = objc_alloc(MEMORY[0x277CCA970]);
      v21 = 0;
      v13 = [v12 rt_initWithStartDate:v10 endDate:v11 error:&v21];
      v14 = v21;

      if (v14)
      {
        if (error)
        {
          v15 = v14;
          v16 = 0;
          *error = v14;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = v13;
      }

      goto LABEL_19;
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", v22, 2u);
    }

    if (error)
    {
      v18 = @"endDate";
      goto LABEL_14;
    }
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (error)
    {
      v18 = @"startDate";
LABEL_14:
      _RTErrorInvalidParameterCreate(v18);
      *error = v16 = 0;
      goto LABEL_19;
    }
  }

  v16 = 0;
LABEL_19:

  return v16;
}

+ (id)accessPointsForFingerprint:(id)fingerprint endDate:(id)date fingerprintManager:(id)manager error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  fingerprintCopy = fingerprint;
  dateCopy = date;
  managerCopy = manager;
  if (!fingerprintCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprint", buf, 2u);
    }

    if (error)
    {
      v30 = _RTErrorInvalidParameterCreate(@"fingerprint");
LABEL_16:
      v32 = 0;
      *error = v30;
      goto LABEL_25;
    }

LABEL_17:
    v32 = 0;
    goto LABEL_25;
  }

  if (!dateCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (error)
    {
      v30 = _RTErrorInvalidParameterCreate(@"endDate");
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *buf = 0;
  v49 = buf;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__84;
  v52 = __Block_byref_object_dispose__84;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__84;
  v46 = __Block_byref_object_dispose__84;
  v47 = 0;
  v12 = dispatch_semaphore_create(0);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __85__RTPOIHarvestUtilities_accessPointsForFingerprint_endDate_fingerprintManager_error___block_invoke;
  v38[3] = &unk_2788C4490;
  v40 = buf;
  v41 = &v42;
  v13 = v12;
  v39 = v13;
  [managerCopy fetchWifiAccessPointsForFingerprint:fingerprintCopy handler:v38];
  v14 = v13;
  v37 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v14, v15))
  {
    v26 = 0;
LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v36 = [MEMORY[0x277CBEAA8] now];
  [v36 timeIntervalSinceDate:v37];
  v17 = v16;
  v18 = objc_opt_new();
  v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_49];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
  firstObject = [v21 firstObject];

  [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    *v55 = 0;
    _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v55, 2u);
  }

  v24 = MEMORY[0x277CCA9B8];
  v54 = *MEMORY[0x277CCA450];
  *v55 = @"semaphore wait timeout";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

  if (!v26)
  {
    goto LABEL_19;
  }

  v27 = v26;

  v28 = 0;
LABEL_20:

  v33 = v26;
  if ((v28 & 1) == 0)
  {
    objc_storeStrong(v43 + 5, v26);
  }

  if (error)
  {
    *error = v43[5];
  }

  dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"date", dateCopy];
  v32 = [*(v49 + 5) filteredArrayUsingPredicate:dateCopy];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(buf, 8);

LABEL_25:

  return v32;
}

void __85__RTPOIHarvestUtilities_accessPointsForFingerprint_endDate_fingerprintManager_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)locationsForAccessPoints:(id)points harvestParameters:(id)parameters locationManager:(id)manager error:(id *)error
{
  pointsCopy = points;
  parametersCopy = parameters;
  managerCopy = manager;
  if (pointsCopy)
  {
    firstObject = [pointsCopy firstObject];
    date = [firstObject date];

    lastObject = [pointsCopy lastObject];
    date2 = [lastObject date];

    v16 = 0;
    if (!date || !date2)
    {
LABEL_20:

      goto LABEL_21;
    }

    [date2 timeIntervalSinceDate:date];
    v18 = v17 / 60.0;
    [parametersCopy locationLookupWindowMinMinutes];
    if (v18 >= v19)
    {
      [parametersCopy locationLookupWindowMaxMinutes];
      if (v18 <= v22)
      {
LABEL_13:
        v24 = objc_alloc(MEMORY[0x277CCA970]);
        v29 = 0;
        v25 = [v24 rt_initWithStartDate:date endDate:date2 error:&v29];
        v26 = v29;

        if (v26)
        {
          if (error)
          {
            v27 = v26;
            v16 = 0;
            *error = v26;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = [RTPOIHarvestUtilities locationsInDateInterval:v25 harvestParameters:parametersCopy locationManager:managerCopy error:error];
        }

        goto LABEL_20;
      }

      [parametersCopy locationLookupWindowMaxMinutes];
    }

    else
    {
      [parametersCopy locationLookupWindowMinMinutes];
    }

    v23 = [date dateByAddingTimeInterval:v20 * 60.0];

    date2 = v23;
    goto LABEL_13;
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: accessPoints", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"accessPoints");
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_21:

  return v16;
}

+ (id)locationsInDateInterval:(id)interval harvestParameters:(id)parameters locationManager:(id)manager error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  parametersCopy = parameters;
  managerCopy = manager;
  if (intervalCopy)
  {
    *v51 = 0;
    v52 = v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__84;
    v55 = __Block_byref_object_dispose__84;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__84;
    v49 = __Block_byref_object_dispose__84;
    v50 = 0;
    v10 = dispatch_semaphore_create(0);
    v11 = objc_alloc(MEMORY[0x277D01320]);
    [parametersCopy locationUncertaintyThreshold];
    v38 = [v11 initWithDateInterval:intervalCopy horizontalAccuracy:objc_msgSend(parametersCopy batchSize:"maxLocationsPerFingerprint") - 1 boundingBoxLocation:{0, v12}];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __89__RTPOIHarvestUtilities_locationsInDateInterval_harvestParameters_locationManager_error___block_invoke;
    v41[3] = &unk_2788C4490;
    v43 = v51;
    v44 = &v45;
    v13 = v10;
    v42 = v13;
    [managerCopy fetchStoredLocationsWithOptions:v38 handler:v41];
    v14 = v13;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v14, v16))
    {
      v17 = [MEMORY[0x277CBEAA8] now];
      [v17 timeIntervalSinceDate:v15];
      v19 = v18;
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_49];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
      firstObject = [v23 firstObject];

      [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v57 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

      if (v28)
      {
        v29 = v28;

        v30 = 0;
LABEL_13:

        v33 = v28;
        if ((v30 & 1) == 0)
        {
          objc_storeStrong(v52 + 5, v28);
        }

        v34 = *(v52 + 5);
        if (v34)
        {
          v32 = 0;
          if (error)
          {
            *error = v34;
          }
        }

        else
        {
          v35 = [_RTMap alloc];
          v36 = [(_RTMap *)v35 initWithInput:v46[5]];
          v32 = [(_RTMap *)v36 withBlock:&__block_literal_global_69];
        }

        _Block_object_dispose(&v45, 8);
        _Block_object_dispose(v51, 8);

        goto LABEL_20;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 1;
    goto LABEL_13;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *v51 = 0;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", v51, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"dateInterval");
    *error = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_20:

  return v32;
}

void __89__RTPOIHarvestUtilities_locationsInDateInterval_harvestParameters_locationManager_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

id __89__RTPOIHarvestUtilities_locationsInDateInterval_harvestParameters_locationManager_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01160];
  v3 = a2;
  v4 = [[v2 alloc] initWithCLLocation:v3];

  return v4;
}

+ (BOOL)harvestCuration:(id)curation mapItem:(id)item referenceLocations:(id)locations poiHarvester:(id)harvester error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  curationCopy = curation;
  itemCopy = item;
  locationsCopy = locations;
  harvesterCopy = harvester;
  if (!curationCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "+[RTPOIHarvestUtilities harvestCuration:mapItem:referenceLocations:poiHarvester:error:]";
      v25 = 1024;
      v26 = 266;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: curation (in %s:%d)", buf, 0x12u);
    }
  }

  visitEntryDate = [curationCopy visitEntryDate];
  visitExitDate = [curationCopy visitExitDate];
  v22 = 0;
  v18 = [harvesterCopy harvestPOI:itemCopy mapItemSource:8 referenceLocations:locationsCopy startDate:visitEntryDate endDate:visitExitDate harvestType:2 error:&v22];
  v19 = v22;

  if (error && (v18 & 1) == 0)
  {
    v20 = v19;
    *error = v19;
  }

  return v18;
}

+ (BOOL)harvestVisits:(id)visits mapItem:(id)item harvestType:(unint64_t)type poiHarvester:(id)harvester error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  itemCopy = item;
  harvesterCopy = harvester;
  if ([visitsCopy count] && objc_msgSend(itemCopy, "validMUID"))
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = visitsCopy;
    v45 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v45)
    {
      errorCopy = error;
      v42 = visitsCopy;
      v44 = *v53;
      while (2)
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v53 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v52 + 1) + 8 * i);
          if (type == 1)
          {
            if ([*(*(&v52 + 1) + 8 * i) placeSource])
            {
              placeSource = [v14 placeSource];
              parameters = [harvesterCopy parameters];
              v17 = [parameters harvestMask] & placeSource;

              if (!v17)
              {
                continue;
              }
            }
          }

          v18 = objc_alloc(MEMORY[0x277D01160]);
          location = [v14 location];
          v50Location = [location location];
          [v50Location latitude];
          v20 = v19;
          location2 = [v14 location];
          v48Location = [location2 location];
          [v48Location longitude];
          v22 = v21;
          location3 = [v14 location];
          v23Location = [location3 location];
          [v23Location horizontalUncertainty];
          v26 = v25;
          [v14 entryDate];
          v28 = v27 = itemCopy;
          location4 = [v14 location];
          [location4 location];
          v31 = v30 = type;
          v32 = [v18 initWithLatitude:v28 longitude:objc_msgSend(v31 horizontalUncertainty:"referenceFrame") date:v20 referenceFrame:{v22, v26}];

          type = v30;
          itemCopy = v27;

          placeSource2 = [v14 placeSource];
          v56 = v32;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
          entryDate = [v14 entryDate];
          exitDate = [v14 exitDate];
          v51 = 0;
          LOBYTE(location4) = [harvesterCopy harvestPOI:itemCopy mapItemSource:placeSource2 referenceLocations:v34 startDate:entryDate endDate:exitDate harvestType:type error:&v51];
          v37 = v51;

          if ((location4 & 1) == 0)
          {
            if (errorCopy)
            {
              v39 = v37;
              *errorCopy = v37;
            }

            v38 = 0;
            goto LABEL_20;
          }
        }

        v45 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }

      v38 = 1;
LABEL_20:
      visitsCopy = v42;
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 1;
  }

  return v38;
}

@end