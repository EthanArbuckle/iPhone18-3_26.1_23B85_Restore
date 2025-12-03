@interface RTPlaceTypeClassifierExpertContacts
- (RTPlaceTypeClassifierExpertContacts)initWithContactsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store mapServiceManager:(id)serviceManager mapsSupportManager:(id)supportManager placeTypeClassifierMetricsCalculator:(id)metricsCalculator;
- (id)_correctedMapItemsFromUserWithError:(id *)error;
- (id)_meCardContactWithError:(id *)error;
- (id)_postalAddressMapItemsOfContact:(id)contact error:(id *)error;
- (id)classifyWithError:(id *)error;
@end

@implementation RTPlaceTypeClassifierExpertContacts

- (RTPlaceTypeClassifierExpertContacts)initWithContactsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store mapServiceManager:(id)serviceManager mapsSupportManager:(id)supportManager placeTypeClassifierMetricsCalculator:(id)metricsCalculator
{
  managerCopy = manager;
  calculatorCopy = calculator;
  storeCopy = store;
  serviceManagerCopy = serviceManager;
  supportManagerCopy = supportManager;
  metricsCalculatorCopy = metricsCalculator;
  if (!managerCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: contactsManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_20;
  }

  if (!calculatorCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_19;
  }

  if (!storeCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_19;
  }

  if (!serviceManagerCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_19;
  }

  if (!supportManagerCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: mapsSupportManager";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v27.receiver = self;
  v27.super_class = RTPlaceTypeClassifierExpertContacts;
  v18 = [(RTPlaceTypeClassifierExpertContacts *)&v27 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_contactsManager, manager);
    objc_storeStrong(p_isa + 3, store);
    objc_storeStrong(p_isa + 4, serviceManager);
    objc_storeStrong(p_isa + 5, supportManager);
    objc_storeStrong(p_isa + 2, calculator);
    objc_storeStrong(p_isa + 6, metricsCalculator);
  }

  self = p_isa;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (id)_meCardContactWithError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__68;
  v45 = __Block_byref_object_dispose__68;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__68;
  v39 = __Block_byref_object_dispose__68;
  v40 = 0;
  v5 = dispatch_semaphore_create(0);
  contactsManager = [(RTPlaceTypeClassifierExpertContacts *)self contactsManager];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __63__RTPlaceTypeClassifierExpertContacts__meCardContactWithError___block_invoke;
  v31 = &unk_2788CA838;
  v33 = &v41;
  v34 = &v35;
  v7 = v5;
  v32 = v7;
  [contactsManager fetchMeCardWithHandler:&v28];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_135];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v47 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;

      v24 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
LABEL_8:

  v25 = v22;
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v36 + 5, v22);
  }

  if (error)
  {
    *error = v36[5];
  }

  v26 = v42[5];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v26;
}

void __63__RTPlaceTypeClassifierExpertContacts__meCardContactWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_correctedMapItemsFromUserWithError:(id *)error
{
  v60[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  [dictionary setObject:array forKeyedSubscript:&unk_28459DE48];

  array2 = [MEMORY[0x277CBEB18] array];
  [dictionary setObject:array2 forKeyedSubscript:&unk_28459DE60];

  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__68;
  v55 = __Block_byref_object_dispose__68;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__68;
  v49 = __Block_byref_object_dispose__68;
  v50 = 0;
  v8 = dispatch_semaphore_create(0);
  mapsSupportManager = [(RTPlaceTypeClassifierExpertContacts *)self mapsSupportManager];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __75__RTPlaceTypeClassifierExpertContacts__correctedMapItemsFromUserWithError___block_invoke;
  v41[3] = &unk_2788C4490;
  v43 = &v45;
  v44 = &v51;
  v10 = v8;
  v42 = v10;
  [mapsSupportManager fetchPinnedPlacesWithHandler:v41];

  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_135];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
    firstObject = [v20 firstObject];

    [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v60[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v60 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;

      v27 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = 1;
LABEL_8:

  v28 = v25;
  if ((v27 & 1) == 0)
  {
    objc_storeStrong(v46 + 5, v25);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v52[5] count];
      v31 = v46[5];
      *buf = 134218242;
      *&buf[4] = v30;
      v58 = 2112;
      v59 = v31;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "fetched, %lu, pinnedPlaces, error, %@", buf, 0x16u);
    }
  }

  v32 = v46[5];
  if (v32)
  {
    v33 = 0;
    if (error)
    {
      *error = v32;
    }
  }

  else
  {
    v34 = v52[5];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __75__RTPlaceTypeClassifierExpertContacts__correctedMapItemsFromUserWithError___block_invoke_12;
    v38[3] = &unk_2788CA860;
    v40 = &v45;
    v35 = dictionary;
    v39 = v35;
    [v34 enumerateObjectsUsingBlock:v38];
    v36 = v46[5];
    if (v36)
    {
      v33 = 0;
      if (error)
      {
        *error = v36;
      }
    }

    else
    {
      v33 = v35;
    }
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  return v33;
}

void __75__RTPlaceTypeClassifierExpertContacts__correctedMapItemsFromUserWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __75__RTPlaceTypeClassifierExpertContacts__correctedMapItemsFromUserWithError___block_invoke_12(uint64_t a1, void *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 type])
  {
    if ([v5 type] != 1 && objc_msgSend(v5, "type") != 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v17 = 138739971;
          v18 = v5;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "pinnedPlace %{sensitive}@, has invalid type", &v17, 0xCu);
        }
      }

      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"RTPinnedPlace type is invalid.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:7 userInfo:v10];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      goto LABEL_13;
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = [v5 mapItem];
    [v8 addObject:v9];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 134218243;
      v18 = (a3 + 1);
      v19 = 2117;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "pinnedPlace %lu, %{sensitive}@", &v17, 0x16u);
    }

LABEL_13:
  }
}

- (id)_postalAddressMapItemsOfContact:(id)contact error:(id *)error
{
  v98[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  if (contactCopy)
  {
    oslog = [MEMORY[0x277CBEB18] array];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = [contactCopy postalAddresses];
    v70 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
    if (!v70)
    {
      goto LABEL_57;
    }

    v69 = *v89;
    v64 = *MEMORY[0x277D01448];
    v65 = *MEMORY[0x277CCA450];
    *&v4 = 138739971;
    v59 = v4;
    while (1)
    {
      v5 = 0;
      do
      {
        if (*v89 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v88 + 1) + 8 * v5);
        *v82 = 0;
        v83 = v82;
        v84 = 0x3032000000;
        v85 = __Block_byref_object_copy__68;
        v86 = __Block_byref_object_dispose__68;
        v87 = 0;
        v76 = 0;
        v77 = &v76;
        v78 = 0x3032000000;
        v79 = __Block_byref_object_copy__68;
        v80 = __Block_byref_object_dispose__68;
        v81 = 0;
        mergedThoroughfare = [v6 mergedThoroughfare];
        v8 = [mergedThoroughfare length] == 0;

        if (v8)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_19;
            }

            *buf = 138412290;
            *&buf[4] = v6;
            v34 = v33;
            v35 = "skipping postalAddress due to missing street, %@";
            goto LABEL_55;
          }
        }

        else
        {
          if ([v6 labelType])
          {
            v9 = dispatch_semaphore_create(0);
            v10 = objc_alloc(MEMORY[0x277D011B0]);
            v11 = objc_opt_class();
            v12 = NSStringFromClass(v11);
            v71 = [v10 initWithUseBackgroundTraits:1 analyticsIdentifier:v12];

            mapServiceManager = [(RTPlaceTypeClassifierExpertContacts *)self mapServiceManager];
            geoDictionaryRepresentation = [v6 geoDictionaryRepresentation];
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __77__RTPlaceTypeClassifierExpertContacts__postalAddressMapItemsOfContact_error___block_invoke;
            v72[3] = &unk_2788C4490;
            v74 = v82;
            v75 = &v76;
            v15 = v9;
            v73 = v15;
            [mapServiceManager fetchMapItemsFromAddressDictionary:geoDictionaryRepresentation options:v71 handler:v72];

            v16 = v15;
            v17 = [MEMORY[0x277CBEAA8] now];
            v18 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v16, v18))
            {
              v19 = [MEMORY[0x277CBEAA8] now];
              [v19 timeIntervalSinceDate:v17];
              v21 = v20;
              v22 = objc_opt_new();
              v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_135];
              callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
              v25 = [callStackSymbols filteredArrayUsingPredicate:v23];
              firstObject = [v25 firstObject];

              [v22 submitToCoreAnalytics:firstObject type:1 duration:v21];
              v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
              }

              v28 = MEMORY[0x277CCA9B8];
              v98[0] = v65;
              *buf = @"semaphore wait timeout";
              v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v98 count:1];
              v30 = [v28 errorWithDomain:v64 code:15 userInfo:v29];

              if (v30)
              {
                v31 = v30;

                v32 = 0;
LABEL_23:

                v33 = v30;
                if ((v32 & 1) == 0)
                {
                  objc_storeStrong(v77 + 5, v30);
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                  {
                    v38 = [*(v83 + 5) count];
                    v39 = v77[5];
                    *buf = 138740483;
                    *&buf[4] = v6;
                    v93 = 2048;
                    v94 = v38;
                    v95 = 2112;
                    v96 = v39;
                    _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "geocoded postalAddress, %{sensitive}@, mapItems, %lu, error, %@", buf, 0x20u);
                  }
                }

                [*(v83 + 5) enumerateObjectsUsingBlock:&__block_literal_global_53];
                v40 = v77[5];
                if (v40 && [v40 code] != -8)
                {
                  if (error)
                  {
                    *error = v77[5];
                  }

                  v36 = 1;
                }

                else
                {
                  if ([*(v83 + 5) count])
                  {
                    firstObject2 = [*(v83 + 5) firstObject];
                    address = [firstObject2 address];
                    mergedThoroughfare2 = [address mergedThoroughfare];
                    v44 = [mergedThoroughfare2 length] == 0;

                    if (v44)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        v55 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                        {
                          *buf = v59;
                          *&buf[4] = firstObject2;
                          _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "skipping invalid mapItem, %{sensitive}@", buf, 0xCu);
                        }
                      }

                      v45 = firstObject2;
                    }

                    else
                    {
                      v45 = [firstObject2 appendSource:4];

                      v46 = objc_alloc(MEMORY[0x277D011A8]);
                      extendedAttributes = [v45 extendedAttributes];
                      identifier = [extendedAttributes identifier];
                      v48 = identifier;
                      if (!identifier)
                      {
                        uUID = [MEMORY[0x277CCAD78] UUID];
                        v48 = uUID;
                      }

                      contactsIdentifier = [v6 contactsIdentifier];
                      extendedAttributes2 = [v45 extendedAttributes];
                      [extendedAttributes2 wifiConfidence];
                      v52 = v51;
                      extendedAttributes3 = [v45 extendedAttributes];
                      v54 = [v46 initWithIdentifier:v48 addressIdentifier:contactsIdentifier isMe:1 wifiConfidence:objc_msgSend(extendedAttributes3 wifiFingerprintLabelType:{"wifiFingerprintLabelType"), v52}];
                      [v45 setExtendedAttributes:v54];

                      if (!identifier)
                      {
                      }

                      [oslog addObject:v45];
                    }
                  }

                  v36 = 0;
                }

                goto LABEL_49;
              }
            }

            else
            {
              v30 = 0;
            }

            v32 = 1;
            goto LABEL_23;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_19;
            }

            *buf = 138412290;
            *&buf[4] = v6;
            v34 = v33;
            v35 = "skipping postalAddress with type other, %@";
LABEL_55:
            _os_log_debug_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEBUG, v35, buf, 0xCu);
LABEL_19:
            v36 = 7;
LABEL_49:

            goto LABEL_50;
          }
        }

        v36 = 7;
LABEL_50:
        _Block_object_dispose(&v76, 8);

        _Block_object_dispose(v82, 8);
        if (v36 != 7 && v36)
        {

          goto LABEL_61;
        }

        ++v5;
      }

      while (v70 != v5);
      v56 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
      v70 = v56;
      if (!v56)
      {
LABEL_57:

        v57 = oslog;
        goto LABEL_62;
      }
    }
  }

  oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *v82 = 0;
    _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contact", v82, 2u);
  }

LABEL_61:
  v57 = 0;

LABEL_62:

  return v57;
}

void __77__RTPlaceTypeClassifierExpertContacts__postalAddressMapItemsOfContact_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __77__RTPlaceTypeClassifierExpertContacts__postalAddressMapItemsOfContact_error___block_invoke_21(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "postalAddress mapItem %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (id)classifyWithError:(id *)error
{
  v294 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v179 = objc_autoreleasePoolPush();
  v280 = 0;
  v201 = [(RTPlaceTypeClassifierExpertContacts *)self _meCardContactWithError:&v280];
  v3 = v280;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v201;
      *&buf[22] = 2112;
      v291 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, meCard, %@, error, %@", buf, 0x20u);
    }

    v3 = v4;
  }

  v178 = v3;
  if (v3 || !v201)
  {
    v217 = v3;
    goto LABEL_168;
  }

  v279 = 0;
  obj = [(RTPlaceTypeClassifierExpertContacts *)self _postalAddressMapItemsOfContact:v201 error:&v279];
  v170 = v279;
  if (v170 || ![obj count])
  {
    v217 = v170;
    goto LABEL_167;
  }

  v278 = 0;
  v191 = [(RTPlaceTypeClassifierExpertContacts *)self _correctedMapItemsFromUserWithError:&v278];
  v158 = v278;
  if (v158 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v156 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v156;
      *&buf[12] = 2112;
      *&buf[14] = v158;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, failed to fetch  correctedMapItemsFromUser due to error, %@", buf, 0x16u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke;
  aBlock[3] = &unk_2788CA8B0;
  v277 = v201;
  v206 = _Block_copy(aBlock);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v291 = __Block_byref_object_copy__68;
  v292 = __Block_byref_object_dispose__68;
  v293 = [MEMORY[0x277CBEB58] set];
  v270 = 0;
  v271 = &v270;
  v272 = 0x3032000000;
  v273 = __Block_byref_object_copy__68;
  v274 = __Block_byref_object_dispose__68;
  v275 = 0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array2 = [MEMORY[0x277CBEB18] array];
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  obj = obj;
  v8 = [obj countByEnumeratingWithState:&v266 objects:v289 count:16];
  if (v8)
  {
    v188 = *v267;
    v180 = *MEMORY[0x277D01448];
    v182 = *MEMORY[0x277CCA450];
    do
    {
      v9 = 0;
      v190 = v8;
      do
      {
        if (*v267 != v188)
        {
          objc_enumerationMutation(obj);
        }

        v213 = v9;
        v10 = *(*(&v266 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v206[2](v206, v10)}];
        v12 = [v191 objectForKey:v11];

        v264 = 0u;
        v265 = 0u;
        v262 = 0u;
        v263 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v262 objects:v288 count:16];
        if (v14)
        {
          v15 = *v263;
LABEL_23:
          v16 = 0;
          while (1)
          {
            if (*v263 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v262 + 1) + 8 * v16);
            if ([v10 isEqualToMapItem:v17])
            {
              location = [v10 location];
              location2 = [v17 location];
              v20 = [location isEqualToLocation:location2];

              if ((v20 & 1) == 0)
              {
                break;
              }
            }

            if (v14 == ++v16)
            {
              v14 = [v13 countByEnumeratingWithState:&v262 objects:v288 count:16];
              if (v14)
              {
                goto LABEL_23;
              }

              goto LABEL_30;
            }
          }

          location3 = [v17 location];

          if (!location3)
          {
            goto LABEL_33;
          }

          v176 = objc_alloc(MEMORY[0x277D011A0]);
          identifier = [v10 identifier];
          name = [v10 name];
          category = [v10 category];
          categoryMUID = [v10 categoryMUID];
          address = [v10 address];
          source = [v10 source];
          mapItemPlaceType = [v10 mapItemPlaceType];
          muid = [v10 muid];
          resultProviderID = [v10 resultProviderID];
          geoMapItemHandle = [v10 geoMapItemHandle];
          geoMapItemIdentifier = [v10 geoMapItemIdentifier];
          creationDate = [v10 creationDate];
          expirationDate = [v10 expirationDate];
          extendedAttributes = [v10 extendedAttributes];
          displayLanguage = [v10 displayLanguage];
          LOBYTE(v157) = [v10 disputed];
          v29 = [v176 initWithIdentifier:identifier name:name category:category categoryMUID:categoryMUID address:address location:location3 source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate expirationDate:expirationDate extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v157];

          [dictionary setObject:&unk_28459DE78 forKeyedSubscript:v29];
          v203 = 0;
        }

        else
        {
LABEL_30:

LABEL_33:
          location3 = 0;
          v29 = 0;
          v203 = 1;
        }

        v208 = v29;
        if (v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v10;
        }

        [array2 addObject:v30];
        v256 = 0;
        v257 = &v256;
        v258 = 0x3032000000;
        v259 = __Block_byref_object_copy__68;
        v260 = __Block_byref_object_dispose__68;
        v261 = 0;
        v31 = dispatch_semaphore_create(0);
        learnedLocationStore = [(RTPlaceTypeClassifierExpertContacts *)self learnedLocationStore];
        v252[0] = MEMORY[0x277D85DD0];
        v252[1] = 3221225472;
        v252[2] = __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_31;
        v252[3] = &unk_2788C4B58;
        v254 = &v256;
        v255 = &v270;
        v33 = v31;
        v253 = v33;
        [learnedLocationStore fetchLocationOfInterestWithMapItem:v10 handler:v252];

        v34 = v33;
        v35 = [MEMORY[0x277CBEAA8] now];
        v36 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v34, v36))
        {
          v37 = [MEMORY[0x277CBEAA8] now];
          [v37 timeIntervalSinceDate:v35];
          v39 = v38;
          v40 = objc_opt_new();
          v41 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_135];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v43 = [callStackSymbols filteredArrayUsingPredicate:v41];
          firstObject = [v43 firstObject];

          [v40 submitToCoreAnalytics:firstObject type:1 duration:v39];
          v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            *v283 = 0;
            _os_log_fault_impl(&dword_2304B3000, v45, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v283, 2u);
          }

          v46 = MEMORY[0x277CCA9B8];
          v286[0] = v182;
          *v283 = @"semaphore wait timeout";
          v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v283 forKeys:v286 count:1];
          v48 = [v46 errorWithDomain:v180 code:15 userInfo:v47];

          if (v48)
          {
            v49 = v48;

            v50 = 0;
            goto LABEL_44;
          }
        }

        else
        {
          v48 = 0;
        }

        v50 = 1;
LABEL_44:

        v51 = v48;
        if ((v50 & 1) == 0)
        {
          objc_storeStrong(v271 + 5, v48);
        }

        if (v271[5])
        {
          v52 = 0;
        }

        else
        {
          if (v257[5])
          {
            distanceCalculator = [(RTPlaceTypeClassifierExpertContacts *)self distanceCalculator];
            location4 = [v257[5] location];
            v54Location = [location4 location];
            location5 = [v10 location];
            v251 = 0;
            [distanceCalculator distanceFromLocation:v54Location toLocation:location5 error:&v251];
            v58 = v57;
            v59 = v251;

            if (!v59 && v58 > 250.0)
            {
              [*(*&buf[8] + 40) addObject:v257[5]];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v60 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  v61 = NSStringFromSelector(a2);
                  v62 = v257[5];
                  *v283 = 138413059;
                  *&v283[4] = v61;
                  *&v283[12] = 2117;
                  *&v283[14] = v62;
                  *&v283[22] = 2117;
                  v284 = v10;
                  LOWORD(v285) = 2048;
                  *(&v285 + 2) = v58;
                  _os_log_impl(&dword_2304B3000, v60, OS_LOG_TYPE_INFO, "%@, picked locationOfInterest, %{sensitive}@, with same mapItem as postalAddressMapItem, %{sensitive}@, with distance, %lf", v283, 0x2Au);
                }
              }
            }
          }

          location6 = [v10 location];
          v64 = [location6 referenceFrame] == 2;

          if (v64)
          {
            v65 = 1400.0;
          }

          else
          {
            v65 = 400.0;
          }

          v66 = dispatch_semaphore_create(0);

          learnedLocationStore2 = [(RTPlaceTypeClassifierExpertContacts *)self learnedLocationStore];
          v68 = location3;
          if (v203)
          {
            location7 = [v10 location];
            v68 = location7;
          }

          v247[0] = MEMORY[0x277D85DD0];
          v247[1] = 3221225472;
          v247[2] = __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_33;
          v247[3] = &unk_2788C4490;
          v249 = buf;
          v250 = &v270;
          v69 = v66;
          v248 = v69;
          [learnedLocationStore2 fetchLocationsOfInterestWithinDistance:v68 location:v247 handler:v65];
          if (v203)
          {
          }

          v34 = v69;
          v70 = [MEMORY[0x277CBEAA8] now];
          v71 = dispatch_time(0, 3600000000000);
          if (!dispatch_semaphore_wait(v34, v71))
          {
            goto LABEL_68;
          }

          v72 = [MEMORY[0x277CBEAA8] now];
          [v72 timeIntervalSinceDate:v70];
          v74 = v73;
          v75 = objc_opt_new();
          v76 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_135];
          callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
          v78 = [callStackSymbols2 filteredArrayUsingPredicate:v76];
          firstObject2 = [v78 firstObject];

          [v75 submitToCoreAnalytics:firstObject2 type:1 duration:v74];
          v80 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
          {
            *v283 = 0;
            _os_log_fault_impl(&dword_2304B3000, v80, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v283, 2u);
          }

          v81 = MEMORY[0x277CCA9B8];
          v286[0] = v182;
          *v283 = @"semaphore wait timeout";
          v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v283 forKeys:v286 count:1];
          v83 = [v81 errorWithDomain:v180 code:15 userInfo:v82];

          if (v83)
          {
            v84 = v83;

            v85 = 0;
          }

          else
          {
LABEL_68:
            v85 = 1;
            v83 = v51;
          }

          v86 = v83;
          if ((v85 & 1) == 0)
          {
            objc_storeStrong(v271 + 5, v83);
          }

          v52 = v271[5] == 0;

          v51 = v86;
        }

        _Block_object_dispose(&v256, 8);
        objc_autoreleasePoolPop(context);
        if (!v52)
        {
          goto LABEL_75;
        }

        v9 = v213 + 1;
      }

      while (v213 + 1 != v190);
      v8 = [obj countByEnumeratingWithState:&v266 objects:v289 count:16];
    }

    while (v8);
  }

LABEL_75:

  v87 = v271[5];
  if (v87)
  {
    v217 = v87;
    goto LABEL_166;
  }

  allObjects = [*(*&buf[8] + 40) allObjects];
  v88 = array2;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  array3 = [MEMORY[0x277CBEB18] array];
  distanceCalculator2 = [(RTPlaceTypeClassifierExpertContacts *)self distanceCalculator];
  v256 = 0;
  v257 = &v256;
  v258 = 0x3032000000;
  v259 = __Block_byref_object_copy__68;
  v260 = __Block_byref_object_dispose__68;
  v261 = 0;
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  obj = v88;
  v89 = [obj countByEnumeratingWithState:&v243 objects:v287 count:16];
  if (!v89)
  {
    v217 = 0;
    goto LABEL_96;
  }

  v217 = 0;
  contexta = *v244;
  do
  {
    v90 = 0;
    do
    {
      if (*v244 != contexta)
      {
        objc_enumerationMutation(obj);
      }

      v91 = *(*(&v243 + 1) + 8 * v90);
      v286[0] = 0;
      v286[1] = v286;
      v286[2] = 0x2020000000;
      v286[3] = 0x7FF0000000000000;
      *v283 = 0;
      *&v283[8] = v283;
      *&v283[16] = 0x3032000000;
      v284 = __Block_byref_object_copy__68;
      *&v285 = __Block_byref_object_dispose__68;
      *(&v285 + 1) = 0;
      v238[0] = MEMORY[0x277D85DD0];
      v238[1] = 3221225472;
      v238[2] = __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_2_34;
      v238[3] = &unk_2788CA8D8;
      v238[4] = v91;
      v240 = v283;
      v239 = distanceCalculator2;
      v241 = &v256;
      v242 = v286;
      [allObjects enumerateObjectsUsingBlock:v238];
      v92 = v257[5];
      if (v92)
      {
        identifier4 = v217;
        v217 = v92;
LABEL_88:

        goto LABEL_89;
      }

      v94 = *(*&v283[8] + 40);
      if (v94)
      {
        identifier2 = [v94 identifier];
        v96 = [dictionary2 objectForKey:identifier2];
        v97 = v96 == 0;

        if (v97)
        {
          array4 = [MEMORY[0x277CBEB18] array];
          identifier3 = [*(*&v283[8] + 40) identifier];
          [dictionary2 setObject:array4 forKey:identifier3];
        }

        identifier4 = [*(*&v283[8] + 40) identifier];
        v100 = [dictionary2 objectForKey:identifier4];
        [v100 addObject:v91];

        goto LABEL_88;
      }

      [array3 addObject:v91];
LABEL_89:

      _Block_object_dispose(v283, 8);
      _Block_object_dispose(v286, 8);
      if (v92)
      {
        goto LABEL_96;
      }

      ++v90;
    }

    while (v89 != v90);
    v101 = [obj countByEnumeratingWithState:&v243 objects:v287 count:16];
    v89 = v101;
  }

  while (v101);
LABEL_96:

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v185 = allObjects;
  v102 = [v185 countByEnumeratingWithState:&v234 objects:v282 count:16];
  if (!v102)
  {
    goto LABEL_163;
  }

  v193 = *v235;
  while (2)
  {
    v195 = v102;
    v103 = 0;
    while (2)
    {
      if (*v235 != v193)
      {
        objc_enumerationMutation(v185);
      }

      place = [*(*(&v234 + 1) + 8 * v103) place];
      mapItem = [place mapItem];
      location8 = [mapItem location];

      identifier5 = [place identifier];
      v108 = [dictionary2 objectForKey:identifier5];
      v229[0] = MEMORY[0x277D85DD0];
      v229[1] = 3221225472;
      v229[2] = __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_3;
      v229[3] = &unk_2788CA900;
      v109 = v206;
      v232 = v109;
      v230 = distanceCalculator2;
      contextb = location8;
      v231 = contextb;
      v233 = &v256;
      v215 = [v108 sortedArrayUsingComparator:v229];

      v110 = v257[5];
      if (v110)
      {
        v111 = v110;

        v112 = 0;
        v113 = 10;
        v217 = v111;
        goto LABEL_159;
      }

      if (![v215 count])
      {
        v112 = 0;
        goto LABEL_158;
      }

      firstObject3 = [v215 firstObject];
      v227 = 0u;
      v228 = 0u;
      v225 = 0u;
      v226 = 0u;
      v114 = v215;
      v115 = [v114 countByEnumeratingWithState:&v225 objects:v281 count:16];
      if (v115)
      {
        v116 = *v226;
        while (2)
        {
          for (i = 0; i != v115; ++i)
          {
            if (*v226 != v116)
            {
              objc_enumerationMutation(v114);
            }

            v118 = *(*(&v225 + 1) + 8 * i);
            mapItem2 = [place mapItem];
            v120 = RTMapItemsAddressIdentifiersSame(mapItem2, v118);

            if (v120)
            {
              v121 = v118;

              firstObject3 = v121;
              goto LABEL_114;
            }
          }

          v115 = [v114 countByEnumeratingWithState:&v225 objects:v281 count:16];
          if (v115)
          {
            continue;
          }

          break;
        }
      }

LABEL_114:

      v184 = v206[2](v109, firstObject3);
      if (v184)
      {
        v122 = 2;
        goto LABEL_122;
      }

      if (([place typeSource] & 2) != 0)
      {
        v122 = 0;
LABEL_122:
        v124 = [dictionary objectForKeyedSubscript:firstObject3];

        v125 = v122 | 4;
        if (!v124)
        {
          v125 = v122;
        }

        v162 = v125;
        mapItem3 = [place mapItem];
        if ([mapItem3 validMUID])
        {
          mapItem4 = [place mapItem];
          v128 = [mapItem4 isEqualToMapItem:firstObject3];

          if (v128)
          {
            mapItem5 = [place mapItem];
            mapItem6 = firstObject3;
            source2 = [mapItem6 source];
LABEL_129:
            if ((source2 & 8) != 0 || ([mapItem6 source] & 4) != 0 && RTMapItemsAddressIdentifiersSame(mapItem6, mapItem5))
            {
              location9 = [firstObject3 location];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v131 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
                {
                  *v283 = 138740227;
                  *&v283[4] = mapItem5;
                  *&v283[12] = 2117;
                  *&v283[14] = location9;
                  _os_log_impl(&dword_2304B3000, v131, OS_LOG_TYPE_INFO, "applying corrected coordinate to mapItem, original mapItem, %{sensitive}@, corrected coordinates, %{sensitive}@", v283, 0x16u);
                }
              }
            }

            else
            {
              location9 = 0;
            }

            if (mapItem5 == firstObject3)
            {
              extendedAttributes2 = 0;
            }

            else
            {
              extendedAttributes2 = [firstObject3 extendedAttributes];
            }

            v167 = objc_alloc(MEMORY[0x277D011A0]);
            identifier6 = [mapItem5 identifier];
            name2 = [mapItem5 name];
            category2 = [mapItem5 category];
            categoryMUID2 = [mapItem5 categoryMUID];
            address2 = [mapItem5 address];
            v132 = location9;
            if (!location9)
            {
              location10 = [mapItem5 location];
              v132 = location10;
            }

            v165 = v132;
            source3 = [mapItem5 source];
            mapItemPlaceType2 = [mapItem5 mapItemPlaceType];
            muid2 = [mapItem5 muid];
            resultProviderID2 = [mapItem5 resultProviderID];
            aSelectora = [mapItem5 geoMapItemHandle];
            geoMapItemIdentifier2 = [mapItem5 geoMapItemIdentifier];
            creationDate2 = [mapItem5 creationDate];
            expirationDate2 = [mapItem5 expirationDate];
            v138 = extendedAttributes2;
            if (!extendedAttributes2)
            {
              extendedAttributes3 = [mapItem5 extendedAttributes];
              v138 = extendedAttributes3;
            }

            displayLanguage2 = [mapItem5 displayLanguage];
            LOBYTE(v157) = [mapItem5 disputed];
            v140 = [v167 initWithIdentifier:identifier6 name:name2 category:category2 categoryMUID:categoryMUID2 address:address2 location:v165 source:source3 mapItemPlaceType:mapItemPlaceType2 muid:muid2 resultProviderID:resultProviderID2 geoMapItemHandle:aSelectora geoMapItemIdentifier:geoMapItemIdentifier2 creationDate:creationDate2 expirationDate:expirationDate2 extendedAttributes:v138 displayLanguage:displayLanguage2 disputed:v157];

            if (!extendedAttributes2)
            {
            }

            if (!location9)
            {
            }

            if (v140)
            {
              v141 = [RTLearnedPlace alloc];
              identifier7 = [place identifier];
              customLabel = [place customLabel];
              creationDate3 = [place creationDate];
              expirationDate3 = [place expirationDate];
              v112 = [(RTLearnedPlace *)v141 initWithIdentifier:identifier7 type:v184 typeSource:v162 mapItem:v140 customLabel:customLabel creationDate:creationDate3 expirationDate:expirationDate3];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v146 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
                {
                  *v283 = 138740227;
                  *&v283[4] = place;
                  *&v283[12] = 2117;
                  *&v283[14] = v112;
                  _os_log_impl(&dword_2304B3000, v146, OS_LOG_TYPE_INFO, "disambiguated place using meCard, previous place, %{sensitive}@, updated place, %{sensitive}@", v283, 0x16u);
                }
              }

              if (v112)
              {
                [array addObject:v112];
              }

              v113 = 0;
            }

            else
            {
              v112 = 0;
              v113 = 11;
            }

            if (!v140)
            {
              goto LABEL_159;
            }

LABEL_158:
            v113 = 0;
            goto LABEL_159;
          }
        }

        else
        {
        }

        mapItem5 = firstObject3;
        mapItem6 = [place mapItem];
        source2 = [mapItem6 source];
        goto LABEL_129;
      }

      v123 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        *v283 = 138740227;
        *&v283[4] = firstObject3;
        *&v283[12] = 2117;
        *&v283[14] = place;
        _os_log_error_impl(&dword_2304B3000, v123, OS_LOG_TYPE_ERROR, "unable to find the type for postalAddress mapItem, %{sensitive}@, associated to place, %{sensitive}@", v283, 0x16u);
      }

      v112 = 0;
      v113 = 11;
LABEL_159:

      if (v113 != 11 && v113)
      {
        goto LABEL_163;
      }

      if (++v103 != v195)
      {
        continue;
      }

      break;
    }

    v102 = [v185 countByEnumeratingWithState:&v234 objects:v282 count:16];
    if (v102)
    {
      continue;
    }

    break;
  }

LABEL_163:

  if ([array3 count])
  {
    date = [MEMORY[0x277CBEAA8] date];
    v148 = [date dateByAddingTimeInterval:4838400.0];
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_39;
    v219[3] = &unk_2788CA928;
    v220 = dictionary;
    v224 = v206;
    v149 = date;
    v221 = v149;
    v150 = v148;
    v222 = v150;
    v223 = array;
    [array3 enumerateObjectsUsingBlock:v219];
  }

  _Block_object_dispose(&v256, 8);

LABEL_166:
  _Block_object_dispose(&v270, 8);

  _Block_object_dispose(buf, 8);
LABEL_167:

LABEL_168:
  objc_autoreleasePoolPop(v179);
  if (error)
  {
    v151 = v217;
    *error = v217;
  }

  placeTypeClassifierMetricsCalculator = [(RTPlaceTypeClassifierExpertContacts *)self placeTypeClassifierMetricsCalculator];
  [placeTypeClassifierMetricsCalculator storeMetricsData:array source:2];

  if ([array count])
  {
    v153 = array;
  }

  else
  {
    v153 = 0;
  }

  v154 = v153;

  return v153;
}

uint64_t __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = [*(a1 + 32) postalAddresses];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_2;
  v8[3] = &unk_2788CA888;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [*(a1 + 32) extendedAttributes];
  v7 = [v6 addressIdentifier];
  v8 = [v13 contactsIdentifier];
  v9 = [v7 isEqualToString:v8];

  v10 = v13;
  if (v9)
  {
    if ([v13 labelType] == 1)
    {
      v11 = 1;
    }

    else
    {
      if ([v13 labelType] != 2)
      {
        v12 = [v13 labelType] == 3;
        v10 = v13;
        if (!v12)
        {
          goto LABEL_8;
        }

        v11 = 3;
LABEL_7:
        *(*(*(a1 + 40) + 8) + 24) = v11;
LABEL_8:
        *a4 = 1;
        goto LABEL_9;
      }

      v11 = 2;
    }

    v10 = v13;
    goto LABEL_7;
  }

LABEL_9:
}

void __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_31(uint64_t a1, void *a2, void *a3)
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

void __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:a2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_2_34(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 place];
  v7 = [v6 mapItem];
  v8 = [v7 location];

  if (v8)
  {
    v9 = [v6 mapItem];
    v10 = [v9 isEqualToMapItem:*(a1 + 32)];

    if (v10)
    {
      goto LABEL_3;
    }

    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) location];
    v13 = *(*(a1 + 56) + 8);
    obj = *(v13 + 40);
    [v11 distanceFromLocation:v8 toLocation:v12 error:&obj];
    v15 = v14;
    objc_storeStrong((v13 + 40), obj);

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_5;
    }

    if (v15 > 250.0)
    {
      goto LABEL_6;
    }

    v16 = [v6 mapItem];
    v17 = RTMapItemsAddressIdentifiersSame(v16, *(a1 + 32));

    if (v17)
    {
LABEL_3:
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
LABEL_5:
      *a4 = 1;
      goto LABEL_6;
    }

    v18 = *(*(a1 + 64) + 8);
    if (v15 < *(v18 + 24))
    {
      *(v18 + 24) = v15;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
    }
  }

LABEL_6:
}

uint64_t __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(a1[6] + 16))();
  v8 = (*(a1[6] + 16))();
  if (v7 == v8)
  {
    goto LABEL_2;
  }

  if (v7 == 1)
  {
LABEL_6:
    v21 = -1;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    goto LABEL_8;
  }

  if (v7 == 2)
  {
    goto LABEL_6;
  }

  if (v8 == 2)
  {
    goto LABEL_8;
  }

  if (v7 == 3)
  {
    goto LABEL_6;
  }

  if (v8 == 3)
  {
    goto LABEL_8;
  }

  if (v7 == 4)
  {
    goto LABEL_6;
  }

  if (v8 == 4)
  {
LABEL_8:
    v21 = 1;
    goto LABEL_9;
  }

LABEL_2:
  v9 = a1[4];
  v10 = a1[5];
  v11 = [v5 location];
  v12 = *(a1[7] + 8);
  obj = *(v12 + 40);
  [v9 distanceFromLocation:v10 toLocation:v11 error:&obj];
  v14 = v13;
  objc_storeStrong((v12 + 40), obj);

  v15 = a1[4];
  v16 = a1[5];
  v17 = [v6 location];
  v18 = *(a1[7] + 8);
  v23 = *(v18 + 40);
  [v15 distanceFromLocation:v16 toLocation:v17 error:&v23];
  v20 = v19;
  objc_storeStrong((v18 + 40), v23);

  if (v14 < v20)
  {
    v21 = -1;
  }

  else
  {
    v21 = v14 > v20;
  }

LABEL_9:

  return v21;
}

void __57__RTPlaceTypeClassifierExpertContacts_classifyWithError___block_invoke_39(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = 6;
  }

  else
  {
    v6 = 2;
  }

  v7 = [RTLearnedPlace alloc];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [(RTLearnedPlace *)v7 initWithIdentifier:v8 type:(*(*(a1 + 64) + 16))() typeSource:v6 mapItem:v4 customLabel:0 creationDate:*(a1 + 40) expirationDate:*(a1 + 48)];

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138739971;
        v12 = v9;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "created a placeholder place for meCard postalAdress mapItem that was not associated to any existing place, %{sensitive}@", buf, 0xCu);
      }
    }

    [*(a1 + 56) addObject:v9];
  }
}

@end