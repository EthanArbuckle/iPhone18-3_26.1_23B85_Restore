@interface RTPlaceTypeClassifier
- (BOOL)_logExpertClassifications:(id)classifications sourceNames:(id)names;
- (BOOL)classifyWithError:(id *)error;
- (BOOL)isRottedMeCard:(id)card inferredPlace:(id)place;
- (BOOL)processExpertClassifications:(id)classifications error:(id *)error;
- (BOOL)updatePlaces:(id)places error:(id *)error;
- (RTPlaceTypeClassifier)initWithBiomeManager:(id)manager contactsManager:(id)contactsManager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator learnedLocationStore:(id)store locationManager:(id)locationManager mapServiceManager:(id)serviceManager mapsSupportManager:(id)self0 placeTypeClassifierMetricsCalculator:(id)self1 platform:(id)self2 queue:(id)self3 visitManager:(id)self4;
- (id)_convertToIdToLearnedPlace:(id)place;
- (id)_getClosestLearnedPlacesAtDestination:(id)destination source:(id)source threshold:(double)threshold error:(id *)error;
- (id)coalescePlacesFromExperts:(id)experts;
- (id)coalescePlacesFromSourcesOfTruth:(id)truth sourceOfTruthNames:(id)names;
- (id)getClassificationsFromExperts:(id)experts error:(id *)error;
- (id)getExperts;
- (id)getStoredPlacesWithError:(id *)error;
- (id)mergeExistingPlaces:(id)places intoUpdatedPlace:(id)place typesInMeCard:(id)card;
- (id)replaceBusinessMapItemWithReverseGeocodedMapItem:(id)item;
- (void)donateInferredPlaces:(id)places;
- (void)storeTruthMetricsWithExpertClassifications:(id)classifications rottedPlaces:(id)places;
@end

@implementation RTPlaceTypeClassifier

- (RTPlaceTypeClassifier)initWithBiomeManager:(id)manager contactsManager:(id)contactsManager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator learnedLocationStore:(id)store locationManager:(id)locationManager mapServiceManager:(id)serviceManager mapsSupportManager:(id)self0 placeTypeClassifierMetricsCalculator:(id)self1 platform:(id)self2 queue:(id)self3 visitManager:(id)self4
{
  managerCopy = manager;
  contactsManagerCopy = contactsManager;
  contactsManagerCopy2 = contactsManager;
  defaultsManagerCopy = defaultsManager;
  defaultsManagerCopy2 = defaultsManager;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  storeCopy = store;
  locationManagerCopy = locationManager;
  locationManagerCopy2 = locationManager;
  serviceManagerCopy = serviceManager;
  supportManagerCopy = supportManager;
  metricsCalculatorCopy = metricsCalculator;
  platformCopy = platform;
  queueCopy = queue;
  visitManagerCopy = visitManager;
  v44 = visitManagerCopy;
  if (managerCopy)
  {
    v24 = contactsManagerCopy2;
    if (contactsManagerCopy2)
    {
      v25 = calculatorCopy2;
      v26 = defaultsManagerCopy2;
      v27 = storeCopy;
      selfCopy3 = self;
      if (defaultsManagerCopy2)
      {
        if (calculatorCopy2)
        {
          if (storeCopy)
          {
            if (locationManagerCopy2)
            {
              if (serviceManagerCopy)
              {
                if (supportManagerCopy)
                {
                  if (metricsCalculatorCopy)
                  {
                    if (queueCopy)
                    {
                      if (visitManagerCopy)
                      {
                        v50.receiver = self;
                        v50.super_class = RTPlaceTypeClassifier;
                        v29 = [(RTPlaceTypeClassifier *)&v50 init];
                        p_isa = &v29->super.isa;
                        if (v29)
                        {
                          objc_storeStrong(&v29->_biomeManager, manager);
                          objc_storeStrong(p_isa + 2, contactsManagerCopy);
                          objc_storeStrong(p_isa + 5, store);
                          objc_storeStrong(p_isa + 6, locationManagerCopy);
                          objc_storeStrong(p_isa + 7, serviceManager);
                          objc_storeStrong(p_isa + 8, supportManager);
                          objc_storeStrong(p_isa + 9, metricsCalculator);
                          objc_storeStrong(p_isa + 10, platform);
                          objc_storeStrong(p_isa + 3, defaultsManagerCopy);
                          objc_storeStrong(p_isa + 4, calculatorCopy);
                          objc_storeStrong(p_isa + 12, queue);
                          objc_storeStrong(p_isa + 11, visitManager);
                        }

                        selfCopy3 = p_isa;
                        v31 = selfCopy3;
                        goto LABEL_40;
                      }

                      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v34 = "Invalid parameter not satisfying: visitManager";
                        goto LABEL_38;
                      }

LABEL_39:

                      v31 = 0;
                      goto LABEL_40;
                    }

                    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_39;
                    }

                    *buf = 0;
                    v34 = "Invalid parameter not satisfying: queue";
                  }

                  else
                  {
                    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_39;
                    }

                    *buf = 0;
                    v34 = "Invalid parameter not satisfying: placeTypeClassifierMetricsCalculator";
                  }
                }

                else
                {
                  v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_39;
                  }

                  *buf = 0;
                  v34 = "Invalid parameter not satisfying: mapsSupportManager";
                }
              }

              else
              {
                v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_39;
                }

                *buf = 0;
                v34 = "Invalid parameter not satisfying: mapServiceManager";
              }
            }

            else
            {
              v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }

              *buf = 0;
              v34 = "Invalid parameter not satisfying: locationManager";
            }
          }

          else
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 0;
            v34 = "Invalid parameter not satisfying: learnedLocationStore";
          }
        }

        else
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }

          *buf = 0;
          v34 = "Invalid parameter not satisfying: distanceCalculator";
        }
      }

      else
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 0;
        v34 = "Invalid parameter not satisfying: defaultsManager";
      }
    }

    else
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v25 = calculatorCopy2;
      v26 = defaultsManagerCopy2;
      v27 = storeCopy;
      selfCopy3 = self;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v34 = "Invalid parameter not satisfying: contactsManager";
    }

LABEL_38:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v34, buf, 2u);
    goto LABEL_39;
  }

  v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: biomeManager", buf, 2u);
  }

  v31 = 0;
  v24 = contactsManagerCopy2;
  v25 = calculatorCopy2;
  v26 = defaultsManagerCopy2;
  v27 = storeCopy;
  selfCopy3 = self;
LABEL_40:

  return v31;
}

- (BOOL)isRottedMeCard:(id)card inferredPlace:(id)place
{
  v82[1] = *MEMORY[0x277D85DE8];
  cardCopy = card;
  placeCopy = place;
  v52 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-3024000.0];
  distanceCalculator = [(RTPlaceTypeClassifier *)self distanceCalculator];
  mapItem = [placeCopy mapItem];
  location = [mapItem location];
  mapItem2 = [cardCopy mapItem];
  location2 = [mapItem2 location];
  v70 = 0;
  [distanceCalculator distanceFromLocation:location toLocation:location2 error:&v70];
  v12 = v11;
  v13 = v70;

  LOBYTE(mapItem2) = 0;
  if (v13 || v12 < 1000.0)
  {
    goto LABEL_26;
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__123;
  v68 = __Block_byref_object_dispose__123;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__123;
  v62 = __Block_byref_object_dispose__123;
  v63 = 0;
  v15 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  mapItem3 = [cardCopy mapItem];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __54__RTPlaceTypeClassifier_isRottedMeCard_inferredPlace___block_invoke;
  v54[3] = &unk_2788C4B58;
  v56 = &v64;
  v57 = &v58;
  v18 = v15;
  v55 = v18;
  [learnedLocationStore fetchLocationOfInterestWithMapItem:mapItem3 handler:v54];

  v19 = v18;
  v20 = [MEMORY[0x277CBEAA8] now];
  v21 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v19, v21))
  {
    v33 = 0;
LABEL_9:
    v35 = 1;
    goto LABEL_10;
  }

  v22 = [MEMORY[0x277CBEAA8] now];
  [v22 timeIntervalSinceDate:v20];
  v24 = v23;
  v25 = objc_opt_new();
  v26 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v28 = [callStackSymbols filteredArrayUsingPredicate:v26];
  firstObject = [v28 firstObject];

  [v25 submitToCoreAnalytics:firstObject type:1 duration:v24];
  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v31 = MEMORY[0x277CCA9B8];
  v82[0] = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v82 count:1];
  v33 = [v31 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v32];

  if (!v33)
  {
    goto LABEL_9;
  }

  v34 = v33;

  v35 = 0;
LABEL_10:

  v36 = v33;
  if ((v35 & 1) == 0)
  {
    objc_storeStrong(v59 + 5, v33);
  }

  lastObject = [v65[5] lastObject];
  entryDate = [lastObject entryDate];
  v39 = entryDate;
  if (entryDate)
  {
    distantPast = entryDate;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v41 = distantPast;

  if (v59[5])
  {
    LODWORD(mapItem2) = 0;
  }

  else
  {
    LODWORD(mapItem2) = [v41 compare:v52] == -1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v49 = v36;
      v43 = NSStringFromSelector(a2);
      if (mapItem2)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      v45 = [v65[5] count];
      lastObject2 = [v65[5] lastObject];
      v47 = v59[5];
      *buf = 138413571;
      *&buf[4] = v43;
      v72 = 2112;
      v73 = v44;
      v74 = 2048;
      v75 = v45;
      v76 = 2117;
      v77 = lastObject2;
      v78 = 2117;
      v79 = cardCopy;
      v80 = 2112;
      v81 = v47;
      _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, isRotten, %@, fetched %lu visits, most recent visit, %{sensitive}@, for place, %{sensitive}@, error, %@", buf, 0x3Eu);

      v36 = v50;
    }
  }

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

LABEL_26:
  return mapItem2;
}

void __54__RTPlaceTypeClassifier_isRottedMeCard_inferredPlace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 visits];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getStoredPlacesWithError:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v40 = [&unk_2845A1490 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v40)
  {
    v37 = *v54;
    v35 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
LABEL_3:
    v3 = 0;
    while (1)
    {
      if (*v54 != v37)
      {
        objc_enumerationMutation(&unk_2845A1490);
      }

      v4 = *(*(&v53 + 1) + 8 * v3);
      v5 = dispatch_semaphore_create(0);
      *&v57 = 0;
      *(&v57 + 1) = &v57;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy__123;
      v60 = __Block_byref_object_dispose__123;
      array2 = [MEMORY[0x277CBEB18] array];
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__123;
      v51 = __Block_byref_object_dispose__123;
      v52 = 0;
      learnedLocationStore = [(RTPlaceTypeClassifier *)self learnedLocationStore];
      unsignedIntegerValue = [v4 unsignedIntegerValue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __50__RTPlaceTypeClassifier_getStoredPlacesWithError___block_invoke;
      v42[3] = &unk_2788CDED0;
      v45 = &v47;
      v46 = a2;
      v42[4] = self;
      v42[5] = v4;
      v44 = &v57;
      v8 = v5;
      v43 = v8;
      [learnedLocationStore fetchLocationsOfInterestWithPlaceType:unsignedIntegerValue handler:v42];

      v9 = v8;
      v10 = [MEMORY[0x277CBEAA8] now];
      v11 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(v9, v11))
      {
        break;
      }

      v12 = [MEMORY[0x277CBEAA8] now];
      [v12 timeIntervalSinceDate:v10];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
      firstObject = [v18 firstObject];

      [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
      v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v21 = MEMORY[0x277CCA9B8];
      v63 = v36;
      *buf = @"semaphore wait timeout";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v63 count:1];
      v23 = [v21 errorWithDomain:v35 code:15 userInfo:v22];

      if (!v23)
      {
        goto LABEL_12;
      }

      v24 = v23;

      v25 = 0;
LABEL_13:

      v26 = v23;
      if ((v25 & 1) == 0)
      {
        objc_storeStrong(v48 + 5, v23);
      }

      v27 = v48[5];
      if (v27)
      {
        if (error)
        {
          v28 = v27;
          *error = v27;
        }
      }

      else if (*(*(&v57 + 1) + 40))
      {
        [array addObjectsFromArray:?];
      }

      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&v57, 8);

      if (v27)
      {
        v32 = 0;
        v31 = array;
        goto LABEL_27;
      }

      if (v40 == ++v3)
      {
        v40 = [&unk_2845A1490 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v40)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    v23 = 0;
LABEL_12:
    v25 = 1;
    goto LABEL_13;
  }

LABEL_23:
  v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [array count];
    LODWORD(v57) = 134217984;
    *(&v57 + 4) = v30;
    _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEFAULT, "%lu existing places with known type", &v57, 0xCu);
  }

  [array enumerateObjectsUsingBlock:&__block_literal_global_101];
  v31 = array;
  v32 = array;
LABEL_27:

  return v32;
}

void __50__RTPlaceTypeClassifier_getStoredPlacesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 72));
      v11 = [v5 count];
      v12 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [*(a1 + 40) unsignedIntegerValue]);
      *buf = 138413058;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, fetched %lu learned location of interest from learned location store of type, %@", buf, 0x2Au);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__RTPlaceTypeClassifier_getStoredPlacesWithError___block_invoke_14;
  v18[3] = &unk_2788C68C8;
  v13 = *(a1 + 72);
  v14 = *(a1 + 56);
  v18[4] = *(a1 + 32);
  v18[5] = v14;
  v18[6] = v13;
  [v5 enumerateObjectsUsingBlock:v18];
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v6;
  v17 = v6;

  dispatch_semaphore_signal(*(a1 + 48));
}

void __50__RTPlaceTypeClassifier_getStoredPlacesWithError___block_invoke_14(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      v12 = 138413059;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = a3 + 1;
      v18 = 2117;
      v19 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, learned location of interest %lu, %{sensitive}@", &v12, 0x2Au);
    }
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);
  v11 = [v5 place];
  [v10 addObject:v11];
}

void __50__RTPlaceTypeClassifier_getStoredPlacesWithError___block_invoke_17(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218243;
    v7 = a3 + 1;
    v8 = 2117;
    v9 = v4;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "existing place %lu, %{sensitive}@", &v6, 0x16u);
  }
}

- (void)donateInferredPlaces:(id)places
{
  v19 = *MEMORY[0x277D85DE8];
  placesCopy = places;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [placesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(placesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 typeSource] == 1)
        {
          if ([v9 type] == 1)
          {
            v10 = 1;
          }

          else if ([v9 type] == 2)
          {
            v10 = 2;
          }

          else if ([v9 type] == 3)
          {
            v10 = 3;
          }

          else
          {
            v10 = 0;
          }

          contactsManager = [(RTPlaceTypeClassifier *)self contactsManager];
          mapItem = [v9 mapItem];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __46__RTPlaceTypeClassifier_donateInferredPlaces___block_invoke;
          v13[3] = &unk_2788CEA60;
          v13[4] = v9;
          [contactsManager donateAddressFromMapItem:mapItem addressLabelType:v10 handler:v13];
        }
      }

      v6 = [placesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

void __46__RTPlaceTypeClassifier_donateInferredPlaces___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412547;
      v11 = v6;
      v12 = 2117;
      v13 = v9;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "error, %@, while donating place, %{sensitive}@", &v10, 0x16u);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10 = 138740227;
      v11 = v8;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "successfully donated place, %{sensitive}@, postalAddress, %{sensitive}@", &v10, 0x16u);
    }
  }

LABEL_5:
}

- (id)replaceBusinessMapItemWithReverseGeocodedMapItem:(id)item
{
  v144[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  mapItem = [itemCopy mapItem];
  validMUID = [mapItem validMUID];

  if ((validMUID & 1) == 0)
  {
    v27 = itemCopy;
    goto LABEL_52;
  }

  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = __Block_byref_object_copy__123;
  v117 = __Block_byref_object_dispose__123;
  v118 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__123;
  v111 = __Block_byref_object_dispose__123;
  v112 = 0;
  v6 = dispatch_semaphore_create(0);
  learnedLocationStore = self->_learnedLocationStore;
  identifier = [itemCopy identifier];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __74__RTPlaceTypeClassifier_replaceBusinessMapItemWithReverseGeocodedMapItem___block_invoke;
  v103[3] = &unk_2788C61C0;
  v105 = &v113;
  v106 = &v107;
  v9 = v6;
  v104 = v9;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLastVisitToPlaceWithIdentifier:identifier handler:v103];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v10, v12))
  {
    v24 = 0;
LABEL_9:
    v26 = 1;
    goto LABEL_10;
  }

  v13 = [MEMORY[0x277CBEAA8] now];
  [v13 timeIntervalSinceDate:v11];
  v15 = v14;
  v16 = objc_opt_new();
  v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
  firstObject = [v19 firstObject];

  [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    *v140 = 0;
    _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v140, 2u);
  }

  v22 = MEMORY[0x277CCA9B8];
  v134 = *MEMORY[0x277CCA450];
  *v140 = @"semaphore wait timeout";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:&v134 count:1];
  v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = v24;

  v26 = 0;
LABEL_10:

  v28 = v24;
  if ((v26 & 1) == 0)
  {
    objc_storeStrong(v108 + 5, v24);
  }

  if (v108[5])
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v75 = v108[5];
      *v140 = 138740227;
      *&v140[4] = itemCopy;
      *&v140[12] = 2112;
      *&v140[14] = v75;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Failed to look up last visit for place, %{sensitive}@, error, %@", v140, 0x16u);
    }

    v27 = itemCopy;
  }

  else
  {
    location = [v114[5] location];
    v30Location = [location location];

    *v140 = 0;
    *&v140[8] = v140;
    *&v140[16] = 0x3032000000;
    v141 = __Block_byref_object_copy__123;
    v142 = __Block_byref_object_dispose__123;
    v143 = 0;
    v134 = 0;
    v135 = &v134;
    v136 = 0x3032000000;
    v137 = __Block_byref_object_copy__123;
    v138 = __Block_byref_object_dispose__123;
    v139 = 0;
    v31 = self->_learnedLocationStore;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __74__RTPlaceTypeClassifier_replaceBusinessMapItemWithReverseGeocodedMapItem___block_invoke_21;
    v99[3] = &unk_2788C4490;
    v101 = v140;
    v102 = &v134;
    v32 = v10;
    v100 = v32;
    [(RTLearnedLocationStore *)v31 fetchPlacesWithinDistance:v30Location location:v99 handler:250.0];
    v33 = v32;
    v34 = [MEMORY[0x277CBEAA8] now];
    v35 = dispatch_time(0, 3600000000000);
    if (!dispatch_semaphore_wait(v33, v35))
    {
      goto LABEL_21;
    }

    v89 = [MEMORY[0x277CBEAA8] now];
    [v89 timeIntervalSinceDate:v34];
    v37 = v36;
    v38 = objc_opt_new();
    v39 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
    v41 = [callStackSymbols2 filteredArrayUsingPredicate:v39];
    firstObject2 = [v41 firstObject];

    [v38 submitToCoreAnalytics:firstObject2 type:1 duration:v37];
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v43, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v44 = MEMORY[0x277CCA9B8];
    v124 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v124 count:1];
    v46 = [v44 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v45];

    if (v46)
    {
      v47 = v46;

      v48 = 0;
    }

    else
    {
LABEL_21:
      v48 = 1;
      v46 = v28;
    }

    v49 = v46;
    if ((v48 & 1) == 0)
    {
      objc_storeStrong(v135 + 5, v46);
    }

    if (v135[5])
    {
      v50 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v78 = v135[5];
        *buf = 138412546;
        *&buf[4] = v30Location;
        *&buf[12] = 2112;
        *&buf[14] = v78;
        _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "Failed to look up for places nearby, %@, error, %@", buf, 0x16u);
      }

      v27 = itemCopy;
    }

    else
    {
      v51 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_26];
      v52 = [*(*&v140[8] + 40) filteredArrayUsingPredicate:v51];
      v53 = [v52 count] == 0;

      if (v53)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v131 = __Block_byref_object_copy__123;
        v132 = __Block_byref_object_dispose__123;
        v133 = 0;
        v124 = 0;
        v125 = &v124;
        v126 = 0x3032000000;
        v127 = __Block_byref_object_copy__123;
        v128 = __Block_byref_object_dispose__123;
        v129 = 0;
        v55 = objc_alloc(MEMORY[0x277D011B0]);
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v90 = [v55 initWithUseBackgroundTraits:1 analyticsIdentifier:v57];

        mapServiceManager = self->_mapServiceManager;
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __74__RTPlaceTypeClassifier_replaceBusinessMapItemWithReverseGeocodedMapItem___block_invoke_28;
        v95[3] = &unk_2788C4490;
        v97 = buf;
        v98 = &v124;
        v59 = v33;
        v96 = v59;
        [(RTMapServiceManager *)mapServiceManager fetchMapItemsFromLocation:v30Location options:v90 handler:v95];
        v60 = v59;
        v93 = [MEMORY[0x277CBEAA8] now];
        v61 = dispatch_time(0, 3600000000000);
        if (!dispatch_semaphore_wait(v60, v61))
        {
          goto LABEL_39;
        }

        v87 = [MEMORY[0x277CBEAA8] now];
        [v87 timeIntervalSinceDate:v93];
        v63 = v62;
        v64 = objc_opt_new();
        v65 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
        callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
        v67 = [callStackSymbols3 filteredArrayUsingPredicate:v65];
        firstObject3 = [v67 firstObject];

        [v64 submitToCoreAnalytics:firstObject3 type:1 duration:v63];
        v69 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
        {
          *v119 = 0;
          _os_log_fault_impl(&dword_2304B3000, v69, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v119, 2u);
        }

        v70 = MEMORY[0x277CCA9B8];
        v144[0] = *MEMORY[0x277CCA450];
        *v119 = @"semaphore wait timeout";
        v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v144 count:1];
        v72 = [v70 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v71];

        if (v72)
        {
          v73 = v72;

          v74 = 0;
        }

        else
        {
LABEL_39:
          v74 = 1;
          v72 = v49;
        }

        v76 = v72;
        if ((v74 & 1) == 0)
        {
          objc_storeStrong(v125 + 5, v72);
        }

        if (*(*&buf[8] + 40) && !v125[5])
        {
          v88 = [RTLearnedPlace alloc];
          identifier2 = [itemCopy identifier];
          type = [itemCopy type];
          typeSource = [itemCopy typeSource];
          v81 = *(*&buf[8] + 40);
          customLabel = [itemCopy customLabel];
          creationDate = [itemCopy creationDate];
          expirationDate = [itemCopy expirationDate];
          v27 = [(RTLearnedPlace *)v88 initWithIdentifier:identifier2 type:type typeSource:typeSource mapItem:v81 customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];
        }

        else
        {
          v77 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v86 = v108[5];
            *v119 = 138740483;
            *&v119[4] = v30Location;
            v120 = 2117;
            v121 = itemCopy;
            v122 = 2112;
            v123 = v86;
            _os_log_error_impl(&dword_2304B3000, v77, OS_LOG_TYPE_ERROR, "Failed to reverse geocode last visit location, %{sensitive}@, for place, %{sensitive}@, error, %@", v119, 0x20u);
          }

          v27 = itemCopy;
        }

        _Block_object_dispose(&v124, 8);
        _Block_object_dispose(buf, 8);

        v49 = v76;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v54 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138739971;
            *&buf[4] = v30Location;
            _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "There exists another reverseGeocode LearnedPlace nearby this location %{sensitive}@", buf, 0xCu);
          }
        }

        v27 = itemCopy;
      }
    }

    _Block_object_dispose(&v134, 8);
    _Block_object_dispose(v140, 8);

    v28 = v49;
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v113, 8);

LABEL_52:

  return v27;
}

void __74__RTPlaceTypeClassifier_replaceBusinessMapItemWithReverseGeocodedMapItem___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __74__RTPlaceTypeClassifier_replaceBusinessMapItemWithReverseGeocodedMapItem___block_invoke_21(uint64_t a1, void *a2, void *a3)
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

uint64_t __74__RTPlaceTypeClassifier_replaceBusinessMapItemWithReverseGeocodedMapItem___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 source];

  return v3 & 1;
}

void __74__RTPlaceTypeClassifier_replaceBusinessMapItemWithReverseGeocodedMapItem___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_convertToIdToLearnedPlace:(id)place
{
  v24 = *MEMORY[0x277D85DE8];
  placeCopy = place;
  if (!placeCopy)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTPlaceTypeClassifier _convertToIdToLearnedPlace:]";
      v22 = 1024;
      v23 = 342;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedPlaces (in %s:%d)", buf, 0x12u);
    }
  }

  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = placeCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        identifier = [v11 identifier];
        [v5 setObject:v11 forKeyedSubscript:identifier];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)coalescePlacesFromSourcesOfTruth:(id)truth sourceOfTruthNames:(id)names
{
  v189 = *MEMORY[0x277D85DE8];
  truthCopy = truth;
  namesCopy = names;
  v8 = namesCopy;
  if (truthCopy)
  {
    if (namesCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v159 = "[RTPlaceTypeClassifier coalescePlacesFromSourcesOfTruth:sourceOfTruthNames:]";
    v160 = 1024;
    LODWORD(v161) = 357;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expertClassifications (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v159 = "[RTPlaceTypeClassifier coalescePlacesFromSourcesOfTruth:sourceOfTruthNames:]";
      v160 = 1024;
      LODWORD(v161) = 358;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceOfTruthNames (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v108 = objc_opt_new();
  v115 = objc_opt_new();
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = v8;
  selfCopy = self;
  v137 = [obj countByEnumeratingWithState:&v153 objects:v188 count:16];
  if (v137)
  {
    v11 = *v154;
    v12 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v137; ++i)
      {
        if (*v154 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v153 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [truthCopy objectForKey:v14];
        if (v16)
        {
          v17 = [(RTPlaceTypeClassifier *)selfCopy _convertToIdToLearnedPlace:v16];
        }

        else
        {
          array = [MEMORY[0x277CBEA60] array];
          v17 = [(RTPlaceTypeClassifier *)selfCopy _convertToIdToLearnedPlace:array];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = NSStringFromSelector(a2);
            [truthCopy objectForKeyedSubscript:v14];
            v23 = v11;
            v25 = v24 = truthCopy;
            v26 = [v25 count];
            *buf = 138413058;
            v159 = v21;
            v160 = 2112;
            v161 = v22;
            v162 = 2112;
            v163 = v14;
            v164 = 2048;
            v165 = v26;
            _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, sourceOfTruthName, %@, count %lu,", buf, 0x2Au);

            truthCopy = v24;
            v11 = v23;
            v12 = MEMORY[0x277D86220];
          }
        }

        if (v17)
        {
          [v115 addObject:v17];
        }

        objc_autoreleasePoolPop(v15);
        self = selfCopy;
      }

      v137 = [obj countByEnumeratingWithState:&v153 objects:v188 count:16];
    }

    while (v137);
  }

  v27 = v115;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      v32 = [v115 count];
      *buf = 138412802;
      v159 = v30;
      v160 = 2112;
      v161 = v31;
      v162 = 2048;
      v163 = v32;
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, %@, arrayOfSourcesOfIdToLearnedPlaces count %lu,", buf, 0x20u);
    }
  }

  v104 = truthCopy;
  if ([v115 count])
  {
    v33 = 0;
    v34 = 0;
    v111 = 1;
    while (1)
    {
      v106 = objc_autoreleasePoolPush();
      v35 = [v27 objectAtIndexedSubscript:v33];
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v105 = v35;
      allValues = [v35 allValues];
      v112 = [allValues countByEnumeratingWithState:&v149 objects:v187 count:16];
      if (v112)
      {
        break;
      }

      v36 = v33 + 1;
LABEL_78:

      objc_autoreleasePoolPop(v106);
      ++v111;
      v33 = v36;
      if ([v27 count] <= v36)
      {
        goto LABEL_81;
      }
    }

    v117 = v33;
    v36 = v33 + 1;
    v109 = *v150;
    v110 = v33 + 1;
    while (1)
    {
      v37 = 0;
      do
      {
        if (*v150 != v109)
        {
          objc_enumerationMutation(allValues);
        }

        v114 = v37;
        v38 = *(*(&v149 + 1) + 8 * v37);
        v113 = objc_autoreleasePoolPush();
        typeSource = [v38 typeSource];
        v39 = v111;
        if ([v27 count] > v36)
        {
          do
          {
            v116 = objc_autoreleasePoolPush();
            v121 = v39;
            v40 = [v27 objectAtIndexedSubscript:v39];
            v145 = 0u;
            v146 = 0u;
            v147 = 0u;
            v148 = 0u;
            v120 = v40;
            allValues2 = [v40 allValues];
            v135 = [allValues2 countByEnumeratingWithState:&v145 objects:v186 count:16];
            if (!v135)
            {
              goto LABEL_70;
            }

            v134 = *v146;
            do
            {
              v41 = 0;
              do
              {
                v42 = v34;
                if (*v146 != v134)
                {
                  objc_enumerationMutation(allValues2);
                }

                v43 = *(*(&v145 + 1) + 8 * v41);
                context = objc_autoreleasePoolPush();
                selfCopy2 = self;
                distanceCalculator = [(RTPlaceTypeClassifier *)self distanceCalculator];
                mapItem = [v38 mapItem];
                location = [mapItem location];
                mapItem2 = [(__CFString *)v43 mapItem];
                [mapItem2 location];
                v50 = v49 = v38;
                v144 = v42;
                [distanceCalculator distanceFromLocation:location toLocation:v50 error:&v144];
                v52 = v51;
                v138 = v144;

                v38 = v49;
                identifier = [v49 identifier];
                identifier2 = [(__CFString *)v43 identifier];
                v55 = [identifier isEqual:identifier2];
                if (v52 < 100.0)
                {
                  v56 = 1;
                }

                else
                {
                  v56 = v55;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v57 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                  {
                    v58 = objc_opt_class();
                    v133 = NSStringFromClass(v58);
                    v59 = NSStringFromSelector(a2);
                    v127 = v59;
                    identifier3 = [v49 identifier];
                    identifier4 = [(__CFString *)v43 identifier];
                    if ([identifier3 isEqual:identifier4])
                    {
                      v60 = @"YES";
                    }

                    else
                    {
                      v60 = @"NO";
                    }

                    v125 = v60;
                    type = [v49 type];
                    if (type == [(__CFString *)v43 type])
                    {
                      v62 = @"YES";
                    }

                    else
                    {
                      v62 = @"NO";
                    }

                    if (v56)
                    {
                      v63 = @"YES";
                    }

                    else
                    {
                      v63 = @"NO";
                    }

                    v123 = v63;
                    v124 = v62;
                    mapItem3 = [v49 mapItem];
                    name = [mapItem3 name];
                    mapItem4 = [(__CFString *)v43 mapItem];
                    name2 = [mapItem4 name];
                    v66 = [obj objectAtIndexedSubscript:v117];
                    v67 = [obj objectAtIndexedSubscript:v121];
                    *buf = 138415619;
                    v159 = v133;
                    v160 = 2112;
                    v161 = v59;
                    v162 = 2112;
                    v163 = v125;
                    v164 = 2112;
                    v165 = v124;
                    v166 = 2112;
                    v167 = v123;
                    v168 = 2117;
                    v169 = name;
                    v68 = name;
                    v170 = 2117;
                    v171 = name2;
                    v172 = 2048;
                    v173 = v52;
                    v174 = 2048;
                    v175 = 0x4059000000000000;
                    v176 = 2112;
                    v177 = v66;
                    v178 = 2112;
                    v179 = v67;
                    v180 = 2117;
                    v181 = v49;
                    v182 = 2117;
                    v183 = v43;
                    v184 = 2112;
                    v185 = v138;
                    _os_log_impl(&dword_2304B3000, v57, OS_LOG_TYPE_INFO, "%@, %@, learnedPlaces have same UUID, %@, type matched, %@, shallBeFolded, %@, mapItem name of source1, %{sensitive}@, mapItem name of source 2, %{sensitive}@, distance between learnedPlaces, %.3f, threshold, %.3f, source1, %@, source2, %@, learnedPlaceFromSource1, %{sensitive}@, learnedPlaceFromSource2, %{sensitive}@, error, %@", buf, 0x8Eu);

                    selfCopy2 = selfCopy;
                    v38 = v49;
                  }
                }

                if (v56)
                {
                  type2 = [v38 type];
                  self = selfCopy2;
                  if (type2 == [(__CFString *)v43 type])
                  {
                    typeSource |= [(__CFString *)v43 typeSource];
                    identifier5 = [(__CFString *)v43 identifier];
                    [v120 removeObjectForKey:identifier5];
                    v34 = v138;
LABEL_62:

                    goto LABEL_64;
                  }

                  v34 = v138;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    identifier5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                    if (os_log_type_enabled(identifier5, OS_LOG_TYPE_INFO))
                    {
                      v71 = objc_opt_class();
                      v72 = NSStringFromClass(v71);
                      v73 = NSStringFromSelector(a2);
                      identifier6 = [v38 identifier];
                      *buf = 138413315;
                      v159 = v72;
                      v160 = 2112;
                      v161 = v73;
                      v162 = 2112;
                      v163 = identifier6;
                      v164 = 2117;
                      v165 = v38;
                      v166 = 2117;
                      v167 = v43;
                      _os_log_impl(&dword_2304B3000, identifier5, OS_LOG_TYPE_INFO, "%@, %@, learnedplaces have same UUID, %@, but mismatched type, learnedPlaceFromSource1, %{sensitive}@, learnedPlaceFromSource2, %{sensitive}@", buf, 0x34u);
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  self = selfCopy2;
                  v34 = v138;
                }

LABEL_64:
                objc_autoreleasePoolPop(context);
                ++v41;
              }

              while (v135 != v41);
              v75 = [allValues2 countByEnumeratingWithState:&v145 objects:v186 count:16];
              v135 = v75;
            }

            while (v75);
LABEL_70:

            objc_autoreleasePoolPop(v116);
            v39 = v121 + 1;
            v27 = v115;
          }

          while ([v115 count] > (v121 + 1));
        }

        if ([v38 typeSource] == typeSource)
        {
          [v108 addObject:v38];
        }

        else
        {
          v76 = [RTLearnedPlace alloc];
          identifier7 = [v38 identifier];
          type3 = [v38 type];
          mapItem5 = [v38 mapItem];
          [v38 customLabel];
          v81 = v80 = v38;
          creationDate = [v80 creationDate];
          expirationDate = [v80 expirationDate];
          v104 = [(RTLearnedPlace *)v76 initWithIdentifier:identifier7 type:type3 typeSource:typeSource mapItem:mapItem5 customLabel:v81 creationDate:creationDate expirationDate:expirationDate, v104];

          v27 = v115;
          [v108 addObject:v104];
        }

        objc_autoreleasePoolPop(v113);
        v37 = v114 + 1;
        v36 = v110;
      }

      while (v114 + 1 != v112);
      v112 = [allValues countByEnumeratingWithState:&v149 objects:v187 count:16];
      if (!v112)
      {
        goto LABEL_78;
      }
    }
  }

  v34 = 0;
LABEL_81:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v85 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      v86 = objc_opt_class();
      v87 = NSStringFromClass(v86);
      v88 = NSStringFromSelector(a2);
      v89 = [v108 count];
      *buf = 138412802;
      v159 = v87;
      v160 = 2112;
      v161 = v88;
      v162 = 2048;
      v163 = v89;
      _os_log_impl(&dword_2304B3000, v85, OS_LOG_TYPE_INFO, "%@, %@, finalSourcesOfTruth count %lu,", buf, 0x20u);
    }
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v90 = v108;
  v91 = [v90 countByEnumeratingWithState:&v140 objects:v157 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v141;
    v94 = MEMORY[0x277D86220];
    do
    {
      for (j = 0; j != v92; ++j)
      {
        if (*v141 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v96 = *(*(&v140 + 1) + 8 * j);
        v97 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v98 = v34;
          v99 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v100 = objc_opt_class();
            v139 = NSStringFromClass(v100);
            v101 = NSStringFromSelector(a2);
            *buf = 138412803;
            v159 = v139;
            v160 = 2112;
            v161 = v101;
            v102 = v101;
            v162 = 2117;
            v163 = v96;
            _os_log_debug_impl(&dword_2304B3000, v99, OS_LOG_TYPE_DEBUG, "%@, %@, finalSourceOfTruth, %{sensitive}@,", buf, 0x20u);
          }

          v34 = v98;
        }

        objc_autoreleasePoolPop(v97);
      }

      v92 = [v90 countByEnumeratingWithState:&v140 objects:v157 count:16];
    }

    while (v92);
  }

  return v90;
}

- (BOOL)_logExpertClassifications:(id)classifications sourceNames:(id)names
{
  v58 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  namesCopy = names;
  v7 = namesCopy;
  v35 = classificationsCopy;
  if (classificationsCopy)
  {
    if (namesCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v50 = "[RTPlaceTypeClassifier _logExpertClassifications:sourceNames:]";
    v51 = 1024;
    LODWORD(v52) = 479;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expertClassifications (in %s:%d)", buf, 0x12u);
  }

  if (!v7)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "[RTPlaceTypeClassifier _logExpertClassifications:sourceNames:]";
      v51 = 1024;
      LODWORD(v52) = 480;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceNames (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v7;
  v34 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v34)
  {
    v33 = *v45;
    v11 = MEMORY[0x277D86220];
    *&v10 = 138413058;
    v31 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v44 + 1) + 8 * v12);
        context = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = NSStringFromSelector(a2);
            v17 = [v35 objectForKeyedSubscript:v39];
            v18 = [v17 count];
            *buf = v31;
            v50 = v15;
            v51 = 2112;
            v52 = v16;
            v53 = 2112;
            v54 = v39;
            v55 = 2048;
            v56 = v18;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, sourceName, %@, count %lu,", buf, 0x2Au);
          }
        }

        v37 = v12;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v19 = [v35 objectForKeyedSubscript:{v39, v31}];
        v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v41;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v41 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v40 + 1) + 8 * i);
              v25 = objc_autoreleasePoolPush();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  v27 = objc_opt_class();
                  v28 = NSStringFromClass(v27);
                  v29 = NSStringFromSelector(a2);
                  *buf = 138413059;
                  v50 = v28;
                  v51 = 2112;
                  v52 = v29;
                  v53 = 2112;
                  v54 = v39;
                  v55 = 2117;
                  v56 = v24;
                  _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "%@, %@, sourceName, %@, learnedPlace, %{sensitive}@", buf, 0x2Au);
                }
              }

              objc_autoreleasePoolPop(v25);
            }

            v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v21);
        }

        objc_autoreleasePoolPop(context);
        v12 = v37 + 1;
      }

      while (v37 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v34);
  }

  return 1;
}

- (id)coalescePlacesFromExperts:(id)experts
{
  v266[4] = *MEMORY[0x277D85DE8];
  expertsCopy = experts;
  selfCopy = self;
  if (!expertsCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v250 = "[RTPlaceTypeClassifier coalescePlacesFromExperts:]";
      v251 = 1024;
      LODWORD(v252) = 506;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expertClassifications (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v266[0] = v7;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v266[1] = v9;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v266[2] = v11;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v266[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v266 count:4];
  [(RTPlaceTypeClassifier *)self _logExpertClassifications:expertsCopy sourceNames:v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v265[0] = v16;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v265[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v265 count:2];
  v196 = [(RTPlaceTypeClassifier *)self coalescePlacesFromSourcesOfTruth:expertsCopy sourceOfTruthNames:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [expertsCopy objectForKey:v21];
  v23 = v22;
  selfCopy2 = self;
  if (v22)
  {
    array = v22;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [expertsCopy objectForKey:v27];
  v29 = v28;
  if (v28)
  {
    array2 = v28;
  }

  else
  {
    array2 = [MEMORY[0x277CBEA60] array];
  }

  v194 = objc_opt_new();
  v243 = 0;
  v206 = array;
  v201 = [(RTPlaceTypeClassifier *)selfCopy2 _getClosestLearnedPlacesAtDestination:v196 source:array threshold:&v243 error:250.0];
  v30 = v243;
  v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = NSStringFromSelector(a2);
    v35 = [v201 count];
    *buf = 138413058;
    v250 = v33;
    v251 = 2112;
    v252 = v34;
    v253 = 2048;
    v254 = v35;
    v255 = 2112;
    v256 = v30;
    _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@, %@, before coalescing, inferredToClosestSourceOfTruth count, %lu, error, %@", buf, 0x2Au);
  }

  v192 = v30;
  v193 = expertsCopy;

  v36 = [(RTPlaceTypeClassifier *)selfCopy2 _convertToIdToLearnedPlace:v196];
  v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = NSStringFromSelector(a2);
    v41 = [v36 count];
    *buf = 138412802;
    v250 = v39;
    v251 = 2112;
    v252 = v40;
    v253 = 2048;
    v254 = v41;
    _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_DEFAULT, "%@, %@, before coalescing, finalIdToClassifications count, %lu", buf, 0x20u);
  }

  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v205 = v36;
  allValues = [v36 allValues];
  v43 = [allValues countByEnumeratingWithState:&v239 objects:v264 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v240;
    v46 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v240 != v45)
        {
          objc_enumerationMutation(allValues);
        }

        v48 = *(*(&v239 + 1) + 8 * i);
        v49 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v50 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = NSStringFromSelector(a2);
            *buf = 138412803;
            v250 = v52;
            v251 = 2112;
            v252 = v53;
            v253 = 2117;
            v254 = v48;
            _os_log_debug_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEBUG, "%@, %@, before coalescing, finalIdToClassifications learnedPlace, %{sensitive}@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v49);
      }

      v44 = [allValues countByEnumeratingWithState:&v239 objects:v264 count:16];
    }

    while (v44);
  }

  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  obj = v206;
  v54 = selfCopy;
  v202 = [obj countByEnumeratingWithState:&v235 objects:v263 count:16];
  if (v202)
  {
    v200 = *v236;
    do
    {
      for (j = 0; j != v202; ++j)
      {
        if (*v236 != v200)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v235 + 1) + 8 * j);
        v57 = objc_autoreleasePoolPush();
        identifier = [(__CFString *)v56 identifier];
        v59 = [v201 objectForKeyedSubscript:identifier];
        firstObject = [v59 firstObject];

        identifier2 = [(__CFString *)v56 identifier];
        v62 = [v201 objectForKeyedSubscript:identifier2];
        secondObject = [v62 secondObject];

        v64 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          v67 = NSStringFromSelector(a2);
          if (secondObject)
          {
            v68 = MEMORY[0x277CCACA8];
            [secondObject floatValue];
            v199 = [v68 stringWithFormat:@"%.3f", v69];
            v70 = v199;
          }

          else
          {
            v70 = @"nil";
          }

          *buf = 138413315;
          v250 = v66;
          v251 = 2112;
          v252 = v67;
          v253 = 2117;
          v254 = v56;
          v255 = 2117;
          v256 = firstObject;
          v257 = 2112;
          v258 = v70;
          _os_log_impl(&dword_2304B3000, v64, OS_LOG_TYPE_DEFAULT, "%@, %@, inferred place, %{sensitive}@, closestSourceOfTruthLearnedPlace, %{sensitive}@, distance, %@", buf, 0x34u);
          if (secondObject)
          {
          }
        }

        v211 = secondObject;
        if (!firstObject)
        {
          v207 = v57;
          v203 = j;
          v233 = 0u;
          v234 = 0u;
          v231 = 0u;
          v232 = 0u;
          v90 = v196;
          v91 = [v90 countByEnumeratingWithState:&v231 objects:v248 count:16];
          if (v91)
          {
            v92 = v91;
            v93 = *v232;
            while (2)
            {
              for (k = 0; k != v92; ++k)
              {
                if (*v232 != v93)
                {
                  objc_enumerationMutation(v90);
                }

                v95 = *(*(&v231 + 1) + 8 * k);
                v96 = objc_autoreleasePoolPush();
                type = [v95 type];
                if (type == [(__CFString *)v56 type]&& ![(RTPlaceTypeClassifier *)v54 isRottedMeCard:v95 inferredPlace:v56])
                {
                  objc_autoreleasePoolPop(v96);

                  v81 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                  {
                    v107 = objc_opt_class();
                    v108 = NSStringFromClass(v107);
                    v109 = NSStringFromSelector(a2);
                    v110 = [RTLearnedPlace placeTypeToString:[(__CFString *)v56 type]];
                    v111 = [RTLearnedPlace placeTypeToString:[(__CFString *)v56 type]];
                    *buf = 138413315;
                    v250 = v108;
                    v251 = 2112;
                    v252 = v109;
                    v253 = 2112;
                    v254 = v110;
                    v255 = 2112;
                    v256 = v111;
                    v257 = 2117;
                    v258 = v56;
                    _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_DEFAULT, "%@, %@, case 2.2, skipping inferred %@ because all source of truth %@ are not rotten, %{sensitive}@", buf, 0x34u);
                  }

                  goto LABEL_59;
                }

                objc_autoreleasePoolPop(v96);
              }

              v92 = [v90 countByEnumeratingWithState:&v231 objects:v248 count:16];
              if (v92)
              {
                continue;
              }

              break;
            }
          }

          identifier3 = [(__CFString *)v56 identifier];
          [v205 setObject:v56 forKeyedSubscript:identifier3];

          v81 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v99 = objc_opt_class();
            v83 = NSStringFromClass(v99);
            v85 = NSStringFromSelector(a2);
            v86 = [RTLearnedPlace placeTypeToString:[(__CFString *)v56 type]];
            v100 = [RTLearnedPlace placeTypeToString:[(__CFString *)v56 type]];
            *buf = 138413315;
            v250 = v83;
            v251 = 2112;
            v252 = v85;
            v253 = 2112;
            v254 = v86;
            v255 = 2112;
            v256 = v100;
            v257 = 2117;
            v258 = v56;
            _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_DEFAULT, "%@, %@, case 2.1, yielding inferred %@ since all meCard %@ are rotten, %{sensitive}@", buf, 0x34u);

LABEL_53:
LABEL_54:
          }

LABEL_59:
          j = v203;
          v57 = v207;
          goto LABEL_60;
        }

        type2 = [firstObject type];
        if (type2 == [(__CFString *)v56 type])
        {
          v207 = v57;
          v203 = j;
          v198 = [RTLearnedPlace alloc];
          identifier4 = [firstObject identifier];
          type3 = [firstObject type];
          typeSource = [firstObject typeSource];
          typeSource2 = [(__CFString *)v56 typeSource];
          mapItem = [firstObject mapItem];
          customLabel = [firstObject customLabel];
          [firstObject creationDate];
          v79 = v78 = firstObject;
          expirationDate = [v78 expirationDate];
          v81 = [(RTLearnedPlace *)v198 initWithIdentifier:identifier4 type:type3 typeSource:typeSource2 | typeSource mapItem:mapItem customLabel:customLabel creationDate:v79 expirationDate:expirationDate];

          firstObject = v78;
          v54 = selfCopy;

          identifier5 = [v81 identifier];
          [v205 setObject:v81 forKeyedSubscript:identifier5];

          v83 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = objc_opt_class();
            v85 = NSStringFromClass(v84);
            v86 = NSStringFromSelector(a2);
            v87 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [v78 type]);
            v88 = [RTLearnedPlace placeTypeToString:[(__CFString *)v56 type]];
            [v211 doubleValue];
            *buf = 138413827;
            v250 = v85;
            v251 = 2112;
            v252 = v86;
            v253 = 2112;
            v254 = v87;
            v255 = 2112;
            v256 = v88;
            v257 = 2048;
            v258 = v89;
            v259 = 2117;
            v260 = firstObject;
            v261 = 2117;
            v262 = v56;
            _os_log_impl(&dword_2304B3000, v83, OS_LOG_TYPE_DEFAULT, "%@, %@, case 1.1, snapping inferred %@ to source of truth %@ which are %f meters distance apart, source of truth place, %{sensitive}@, inferred place, %{sensitive}@", buf, 0x48u);

            goto LABEL_53;
          }

          goto LABEL_54;
        }

        v81 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v101 = objc_opt_class();
          v102 = NSStringFromClass(v101);
          v103 = NSStringFromSelector(a2);
          +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [firstObject type]);
          v104 = v208 = v57;
          v105 = [RTLearnedPlace placeTypeToString:[(__CFString *)v56 type]];
          [v211 doubleValue];
          *buf = 138413827;
          v250 = v102;
          v251 = 2112;
          v252 = v103;
          v253 = 2112;
          v254 = v104;
          v255 = 2112;
          v256 = v105;
          v257 = 2048;
          v258 = v106;
          v259 = 2117;
          v260 = firstObject;
          v261 = 2117;
          v262 = v56;
          _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_DEFAULT, "%@, %@, case 1.2, skip snapping inferred %@ to source of truth %@ which are at %f meters distance apart due to placeType mismatch, source of truth place, %{sensitive}@, inferred place, %{sensitive}@", buf, 0x48u);

          v57 = v208;
        }

LABEL_60:

        objc_autoreleasePoolPop(v57);
      }

      v202 = [obj countByEnumeratingWithState:&v235 objects:v263 count:16];
    }

    while (v202);
  }

  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  allValues2 = [v205 allValues];
  v113 = [allValues2 countByEnumeratingWithState:&v227 objects:v247 count:16];
  if (v113)
  {
    v114 = v113;
    v115 = *v228;
    v116 = MEMORY[0x277D86220];
    do
    {
      v117 = 0;
      v212 = v114;
      do
      {
        if (*v228 != v115)
        {
          objc_enumerationMutation(allValues2);
        }

        v118 = *(*(&v227 + 1) + 8 * v117);
        v119 = objc_autoreleasePoolPush();
        if ([v118 type] == 1 || objc_msgSend(v118, "type") == 2)
        {
          v120 = [(RTPlaceTypeClassifier *)selfCopy replaceBusinessMapItemWithReverseGeocodedMapItem:v118];
          if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
          {
            v121 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
            {
              v122 = objc_opt_class();
              v123 = NSStringFromClass(v122);
              v124 = NSStringFromSelector(a2);
              [v118 identifier];
              v125 = v115;
              v127 = v126 = allValues2;
              *buf = 138413315;
              v250 = v123;
              v251 = 2112;
              v252 = v124;
              v253 = 2112;
              v254 = v127;
              v255 = 2117;
              v256 = v118;
              v257 = 2117;
              v258 = v120;
              _os_log_impl(&dword_2304B3000, v121, OS_LOG_TYPE_INFO, "%@, %@, Replacing business map item with reverse geocoded map item, identifier, %@, original place, %{sensitive}@, updated place, %{sensitive}@,", buf, 0x34u);

              allValues2 = v126;
              v115 = v125;
              v116 = MEMORY[0x277D86220];
            }

            v114 = v212;
          }

          identifier6 = [(__CFString *)v120 identifier];
          [v205 setObject:v120 forKeyedSubscript:identifier6];
        }

        objc_autoreleasePoolPop(v119);
        ++v117;
      }

      while (v114 != v117);
      v114 = [allValues2 countByEnumeratingWithState:&v227 objects:v247 count:16];
    }

    while (v114);
  }

  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  allValues3 = [v205 allValues];
  v130 = [allValues3 countByEnumeratingWithState:&v223 objects:v246 count:16];
  if (v130)
  {
    v131 = v130;
    v132 = *v224;
    v133 = selfCopy;
    while (2)
    {
      for (m = 0; m != v131; ++m)
      {
        if (*v224 != v132)
        {
          objc_enumerationMutation(allValues3);
        }

        v135 = *(*(&v223 + 1) + 8 * m);
        v136 = objc_autoreleasePoolPush();
        type4 = [v135 type];
        objc_autoreleasePoolPop(v136);
        if (type4 == 1)
        {
          v138 = 1;
          goto LABEL_87;
        }
      }

      v131 = [allValues3 countByEnumeratingWithState:&v223 objects:v246 count:16];
      if (v131)
      {
        continue;
      }

      break;
    }

    v138 = 0;
  }

  else
  {
    v138 = 0;
    v133 = selfCopy;
  }

LABEL_87:

  v139 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    v140 = objc_opt_class();
    v141 = NSStringFromClass(v140);
    v142 = NSStringFromSelector(a2);
    v143 = v142;
    v144 = @"NO";
    *buf = 138412802;
    v250 = v141;
    v251 = 2112;
    if (v138)
    {
      v144 = @"YES";
    }

    v252 = v142;
    v253 = 2112;
    v254 = v144;
    _os_log_impl(&dword_2304B3000, v139, OS_LOG_TYPE_DEFAULT, "%@, %@, final classifications has home, %@", buf, 0x20u);
  }

  if (v138)
  {
    v204 = v192;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v145 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
      {
        v146 = objc_opt_class();
        v147 = NSStringFromClass(v146);
        v148 = NSStringFromSelector(a2);
        *buf = 138412546;
        v250 = v147;
        v251 = 2112;
        v252 = v148;
        _os_log_impl(&dword_2304B3000, v145, OS_LOG_TYPE_INFO, "%@, %@, final list of classifications doesn't have home, trying to use fallback", buf, 0x16u);
      }
    }

    allValues4 = [v205 allValues];
    v222 = v192;
    v150 = [(RTPlaceTypeClassifier *)v133 _getClosestLearnedPlacesAtDestination:allValues4 source:array2 threshold:&v222 error:250.0];
    v151 = v222;

    if (v151)
    {
      [v194 addObject:v151];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v152 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
      {
        v188 = objc_opt_class();
        v189 = NSStringFromClass(v188);
        v190 = NSStringFromSelector(a2);
        v191 = [v150 count];
        *buf = 138413058;
        v250 = v189;
        v251 = 2112;
        v252 = v190;
        v253 = 2048;
        v254 = v191;
        v255 = 2112;
        v256 = v151;
        _os_log_debug_impl(&dword_2304B3000, v152, OS_LOG_TYPE_DEBUG, "%@, %@, fallBackToClosestFinalClassifications count, %lu, error, %@", buf, 0x2Au);
      }
    }

    v204 = v151;
    v220 = 0u;
    v221 = 0u;
    v218 = 0u;
    v219 = 0u;
    v153 = array2;
    v213 = [v153 countByEnumeratingWithState:&v218 objects:v245 count:16];
    if (v213)
    {
      v154 = *v219;
      v155 = MEMORY[0x277D86220];
      do
      {
        for (n = 0; n != v213; ++n)
        {
          if (*v219 != v154)
          {
            objc_enumerationMutation(v153);
          }

          v157 = *(*(&v218 + 1) + 8 * n);
          v158 = objc_autoreleasePoolPush();
          if (!v150 || ([v157 identifier], v159 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v150, "objectForKeyedSubscript:", v159), v160 = objc_claimAutoreleasedReturnValue(), v160, v159, !v160))
          {
            identifier7 = [v157 identifier];
            [v205 setObject:v157 forKeyedSubscript:identifier7];

            if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
            {
              v162 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
              {
                v163 = objc_opt_class();
                v164 = NSStringFromClass(v163);
                NSStringFromSelector(a2);
                v165 = v154;
                v166 = v150;
                v167 = v153;
                v169 = v168 = v155;
                *buf = 138412803;
                v250 = v164;
                v251 = 2112;
                v252 = v169;
                v253 = 2117;
                v254 = v157;
                _os_log_impl(&dword_2304B3000, v162, OS_LOG_TYPE_INFO, "%@, %@, fallback learned place added, %{sensitive}@", buf, 0x20u);

                v155 = v168;
                v153 = v167;
                v150 = v166;
                v154 = v165;
              }
            }
          }

          objc_autoreleasePoolPop(v158);
        }

        v213 = [v153 countByEnumeratingWithState:&v218 objects:v245 count:16];
      }

      while (v213);
    }
  }

  v170 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
  {
    v171 = objc_opt_class();
    v172 = NSStringFromClass(v171);
    v173 = NSStringFromSelector(a2);
    v174 = [v205 count];
    *buf = 138412802;
    v250 = v172;
    v251 = 2112;
    v252 = v173;
    v253 = 2048;
    v254 = v174;
    _os_log_impl(&dword_2304B3000, v170, OS_LOG_TYPE_DEFAULT, "%@, %@, after coalescing, finalIdToClassifications count, %lu", buf, 0x20u);
  }

  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  allValues5 = [v205 allValues];
  v176 = [allValues5 countByEnumeratingWithState:&v214 objects:v244 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v215;
    do
    {
      for (ii = 0; ii != v177; ++ii)
      {
        if (*v215 != v178)
        {
          objc_enumerationMutation(allValues5);
        }

        v180 = *(*(&v214 + 1) + 8 * ii);
        v181 = objc_autoreleasePoolPush();
        v182 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
        {
          v183 = objc_opt_class();
          v184 = NSStringFromClass(v183);
          v185 = NSStringFromSelector(a2);
          *buf = 138412803;
          v250 = v184;
          v251 = 2112;
          v252 = v185;
          v253 = 2117;
          v254 = v180;
          _os_log_impl(&dword_2304B3000, v182, OS_LOG_TYPE_DEFAULT, "%@, %@, final learned place, %{sensitive}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v181);
      }

      v177 = [allValues5 countByEnumeratingWithState:&v214 objects:v244 count:16];
    }

    while (v177);
  }

  v186 = v205;
  return v205;
}

- (id)_getClosestLearnedPlacesAtDestination:(id)destination source:(id)source threshold:(double)threshold error:(id *)error
{
  v123 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  sourceCopy = source;
  v86 = destinationCopy;
  v78 = sourceCopy;
  if (!destinationCopy)
  {
    v70 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v70, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLearnedPlaces", buf, 2u);
    }

    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_59;
    }

    v72 = @"destinationLearnedPlaces";
    goto LABEL_58;
  }

  if (!sourceCopy)
  {
    v73 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceLearnedPlaces", buf, 2u);
    }

    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_59;
    }

    v72 = @"sourceLearnedPlaces";
LABEL_58:
    v74 = errorCopy2;
    *v74 = _RTErrorInvalidParameterCreate(v72);
LABEL_59:
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    goto LABEL_64;
  }

  v10 = sourceCopy;
  dictionary = objc_opt_new();
  array = [MEMORY[0x277CBEB18] array];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v10;
  v87 = [obj countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (!v87)
  {
    v96 = 0;
    goto LABEL_61;
  }

  v96 = 0;
  v84 = *v108;
  v91 = dictionary;
  v85 = array;
  do
  {
    for (i = 0; i != v87; i = v68 + 1)
    {
      if (*v108 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v89 = i;
      v14 = *(*(&v107 + 1) + 8 * i);
      v88 = objc_autoreleasePoolPush();
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v92 = v86;
      v100 = [v92 countByEnumeratingWithState:&v103 objects:v121 count:16];
      if (!v100)
      {
        v15 = &unk_2845A24F0;
        goto LABEL_37;
      }

      v97 = *v104;
      v15 = &unk_2845A24F0;
      v93 = v14;
      do
      {
        v16 = 0;
        do
        {
          if (*v104 != v97)
          {
            objc_enumerationMutation(v92);
          }

          v17 = *(*(&v103 + 1) + 8 * v16);
          v18 = objc_autoreleasePoolPush();
          identifier = [v14 identifier];
          identifier2 = [v17 identifier];
          v21 = [identifier isEqual:identifier2];

          if (v21)
          {
            v22 = &unk_28459F048;
          }

          else
          {
            v95 = v18;
            v23 = MEMORY[0x277CCABB0];
            distanceCalculator = [(RTPlaceTypeClassifier *)self distanceCalculator];
            mapItem = [v14 mapItem];
            location = [mapItem location];
            mapItem2 = [v17 mapItem];
            location2 = [mapItem2 location];
            v102 = v96;
            [distanceCalculator distanceFromLocation:location toLocation:location2 error:&v102];
            v30 = v29;
            v31 = v102;

            v22 = [v23 numberWithDouble:v30];

            if (v31)
            {
              dictionary = v91;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  v33 = objc_opt_class();
                  v34 = NSStringFromClass(v33);
                  v35 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  v112 = v34;
                  v113 = 2112;
                  v114 = v35;
                  v115 = 2112;
                  v116 = v31;
                  _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, %@, distance calculation error, %@", buf, 0x20u);
                }
              }

              v96 = v31;
            }

            else
            {
              v96 = 0;
              dictionary = v91;
            }

            v14 = v93;
            v18 = v95;
          }

          [v22 doubleValue];
          if (v36 <= threshold)
          {
            identifier3 = [v14 identifier];
            identifier4 = [dictionary objectForKeyedSubscript:identifier3];
            if (!identifier4 || ([v15 doubleValue], v40 = v39, objc_msgSend(v22, "doubleValue"), v40 > v41))
            {
              v42 = v18;

LABEL_27:
              v43 = v22;

              identifier3 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:v17 secondObject:v43];
              identifier4 = [v14 identifier];
              [dictionary setObject:identifier3 forKeyedSubscript:identifier4];
              v15 = v43;
              v18 = v42;
LABEL_29:

              goto LABEL_30;
            }

            if (v15 != v22)
            {
              goto LABEL_29;
            }

            v42 = v18;
            type = [v17 type];
            type2 = [v14 type];

            v46 = type == type2;
            v14 = v93;
            if (v46)
            {
              goto LABEL_27;
            }

            v18 = v42;
          }

LABEL_30:

          objc_autoreleasePoolPop(v18);
          ++v16;
        }

        while (v100 != v16);
        v47 = [v92 countByEnumeratingWithState:&v103 objects:v121 count:16];
        v100 = v47;
      }

      while (v47);
LABEL_37:

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v99 = v15;
        v48 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          v51 = NSStringFromSelector(a2);
          identifier5 = [v14 identifier];
          v53 = [dictionary objectForKeyedSubscript:identifier5];
          firstObject = [v53 firstObject];
          [v14 identifier];
          v55 = v54 = dictionary;
          v56 = [v54 objectForKeyedSubscript:v55];
          [v56 secondObject];
          v58 = v57 = v14;
          if (v58)
          {
            v98 = v56;
            v59 = v51;
            v60 = v55;
            v61 = v50;
            v62 = v53;
            v63 = identifier5;
            v64 = MEMORY[0x277CCACA8];
            identifier6 = [v57 identifier];
            v81 = [v54 objectForKeyedSubscript:?];
            secondObject = [v81 secondObject];
            [secondObject floatValue];
            v66 = v64;
            identifier5 = v63;
            v53 = v62;
            v50 = v61;
            v55 = v60;
            v51 = v59;
            v56 = v98;
            v79 = [v66 stringWithFormat:@"%.3f", v65];
            v67 = v79;
          }

          else
          {
            v67 = @"nil";
          }

          *buf = 138413315;
          v112 = v50;
          v113 = 2112;
          v114 = v51;
          v115 = 2117;
          v116 = v57;
          v117 = 2117;
          v118 = firstObject;
          v119 = 2112;
          v120 = v67;
          _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@, %@, source learnedPlace, %{sensitive}@, closest learned place, %{sensitive}@, distance, %@", buf, 0x34u);
          if (v58)
          {
          }

          dictionary = v91;
        }

        array = v85;
        v69 = v88;
        v68 = v89;

        v15 = v99;
      }

      else
      {
        array = v85;
        v69 = v88;
        v68 = v89;
      }

      objc_autoreleasePoolPop(v69);
    }

    v87 = [obj countByEnumeratingWithState:&v107 objects:v122 count:16];
  }

  while (v87);
LABEL_61:

  if (error)
  {
    v75 = _RTSafeArray();
    *error = _RTMultiErrorCreate();
  }

LABEL_64:

  return dictionary;
}

- (id)mergeExistingPlaces:(id)places intoUpdatedPlace:(id)place typesInMeCard:(id)card
{
  v56 = *MEMORY[0x277D85DE8];
  placesCopy = places;
  placeCopy = place;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = placesCopy;
  v8 = [placesCopy countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    v46 = *v50;
    v43 = placeCopy;
    do
    {
      v11 = 0;
      v47 = v9;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        identifier = [v12 identifier];
        v14 = [placeCopy objectForKey:identifier];

        if (!v14)
        {
          mapItem = [v12 mapItem];
          if (([mapItem source] & 4) != 0)
          {
            [mapItem setExtendedAttributes:0];
            mapItem2 = [v12 mapItem];
            [mapItem setSource:{objc_msgSend(mapItem2, "source") & 0xFFFFFFFFFFFFFFFBLL}];
          }

          if (([mapItem source] & 8) != 0)
          {
            mapItem3 = [v12 mapItem];
            [mapItem setSource:{objc_msgSend(mapItem3, "source") & 0xFFFFFFFFFFFFFFF7}];
          }

          if (([mapItem source] & 0x20000) != 0)
          {
            mapItem4 = [v12 mapItem];
            [mapItem setSource:{objc_msgSend(mapItem4, "source") & 0xFFFFFFFFFFFDFFFFLL}];
          }

          v29 = [RTLearnedPlace alloc];
          identifier2 = [v12 identifier];
          customLabel = [v12 customLabel];
          creationDate = [v12 creationDate];
          expirationDate = [v12 expirationDate];
          v14 = [(RTLearnedPlace *)v29 initWithIdentifier:identifier2 type:0 typeSource:0 mapItem:mapItem customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

          if (v14)
          {
            identifier3 = [(RTLearnedPlace *)v14 identifier];
            [placeCopy setObject:v14 forKey:identifier3];
          }

LABEL_21:
          v10 = v46;
          v9 = v47;
LABEL_22:

          goto LABEL_23;
        }

        type = [(RTLearnedPlace *)v14 type];
        if (type == [v12 type])
        {
          typeSource = [(RTLearnedPlace *)v14 typeSource];
          if (typeSource == [v12 typeSource])
          {
            mapItem = [(RTLearnedPlace *)v14 mapItem];
            muid = [mapItem muid];
            mapItem5 = [v12 mapItem];
            if (muid != [mapItem5 muid])
            {

              goto LABEL_22;
            }

            mapItem6 = [(RTLearnedPlace *)v14 mapItem];
            address = [mapItem6 address];
            mapItem7 = [v12 mapItem];
            address2 = [mapItem7 address];
            v44 = address;
            if (![address isEqualToAddress:address2])
            {

              placeCopy = v43;
              goto LABEL_22;
            }

            mapItem8 = [(RTLearnedPlace *)v14 mapItem];
            location = [mapItem8 location];
            mapItem9 = [v12 mapItem];
            location2 = [mapItem9 location];
            v42 = [location isEqualToLocation:location2];

            if (v42)
            {
              mapItem = [v12 identifier];
              placeCopy = v43;
              [v43 removeObjectForKey:mapItem];
              goto LABEL_21;
            }

            placeCopy = v43;
            v10 = v46;
            v9 = v47;
          }
        }

LABEL_23:

        ++v11;
      }

      while (v9 != v11);
      v35 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      v9 = v35;
    }

    while (v35);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [placeCopy count];
      *buf = 134217984;
      v54 = v37;
      _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "Finalized %lu places to be updated from merging the existing and coalesced places (from experts)", buf, 0xCu);
    }
  }

  allValues = [placeCopy allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_55];

  allValues2 = [placeCopy allValues];

  return allValues2;
}

void __76__RTPlaceTypeClassifier_mergeExistingPlaces_intoUpdatedPlace_typesInMeCard___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138739971;
      v5 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "finalized place, %{sensitive}@", &v4, 0xCu);
    }
  }
}

- (id)getExperts
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [RTPlaceTypeClassifierExpertContacts alloc];
  contactsManager = [(RTPlaceTypeClassifier *)self contactsManager];
  distanceCalculator = [(RTPlaceTypeClassifier *)self distanceCalculator];
  learnedLocationStore = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  mapServiceManager = [(RTPlaceTypeClassifier *)self mapServiceManager];
  mapsSupportManager = [(RTPlaceTypeClassifier *)self mapsSupportManager];
  placeTypeClassifierMetricsCalculator = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
  v33 = [(RTPlaceTypeClassifierExpertContacts *)v4 initWithContactsManager:contactsManager distanceCalculator:distanceCalculator learnedLocationStore:learnedLocationStore mapServiceManager:mapServiceManager mapsSupportManager:mapsSupportManager placeTypeClassifierMetricsCalculator:placeTypeClassifierMetricsCalculator];

  [array addObject:v33];
  v11 = [RTPlaceTypeClassifierExpertMaps alloc];
  learnedLocationStore2 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  mapsSupportManager2 = [(RTPlaceTypeClassifier *)self mapsSupportManager];
  placeTypeClassifierMetricsCalculator2 = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
  v15 = [(RTPlaceTypeClassifierExpertMaps *)v11 initWithLearnedLocationStore:learnedLocationStore2 mapsSupportManager:mapsSupportManager2 placeTypeClassifierMetricsCalculator:placeTypeClassifierMetricsCalculator2];

  [array addObject:v15];
  v16 = [RTPlaceTypeClassifierExpertInferred alloc];
  biomeManager = [(RTPlaceTypeClassifier *)self biomeManager];
  defaultsManager = [(RTPlaceTypeClassifier *)self defaultsManager];
  distanceCalculator2 = [(RTPlaceTypeClassifier *)self distanceCalculator];
  learnedLocationStore3 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  placeTypeClassifierMetricsCalculator3 = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
  platform = [(RTPlaceTypeClassifier *)self platform];
  v23 = [(RTPlaceTypeClassifierExpertInferred *)v16 initWithBiomeManager:biomeManager defaultsManager:defaultsManager distanceCalculator:distanceCalculator2 learnedLocationStore:learnedLocationStore3 placeTypeClassifierMetricsCalculator:placeTypeClassifierMetricsCalculator3 platform:platform];

  [array addObject:v23];
  v24 = [RTPlaceTypeClassifierExpertFallback alloc];
  distanceCalculator3 = [(RTPlaceTypeClassifier *)self distanceCalculator];
  learnedLocationStore4 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  locationManager = [(RTPlaceTypeClassifier *)self locationManager];
  mapServiceManager2 = [(RTPlaceTypeClassifier *)self mapServiceManager];
  visitManager = [(RTPlaceTypeClassifier *)self visitManager];
  placeTypeClassifierMetricsCalculator4 = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
  v31 = [(RTPlaceTypeClassifierExpertFallback *)v24 initWithDistanceCalculator:distanceCalculator3 learnedLocationStore:learnedLocationStore4 locationManager:locationManager mapServiceManager:mapServiceManager2 visitManager:visitManager placeTypeClassifierMetricsCalculator:placeTypeClassifierMetricsCalculator4];

  [array addObject:v31];

  return array;
}

- (BOOL)updatePlaces:(id)places error:(id *)error
{
  v432[1] = *MEMORY[0x277D85DE8];
  placesCopy = places;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  learnedLocationStore = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  predicateForObjectsFromCurrentDevice = [learnedLocationStore predicateForObjectsFromCurrentDevice];

  learnedLocationStore2 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  predicateForObjectsNotFromCurrentDevice = [learnedLocationStore2 predicateForObjectsNotFromCurrentDevice];

  v414 = 0u;
  v415 = 0u;
  v412 = 0u;
  v413 = 0u;
  obj = placesCopy;
  v364 = [obj countByEnumeratingWithState:&v412 objects:v431 count:16];
  if (v364)
  {
    v360 = *v413;
    v367 = *MEMORY[0x277D01448];
    v368 = *MEMORY[0x277CCA450];
    do
    {
      v7 = 0;
      do
      {
        if (*v413 != v360)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v369 = v7;
        v9 = *(*(&v412 + 1) + 8 * v7);
        context = objc_autoreleasePoolPush();
        v406 = 0;
        v407 = &v406;
        v408 = 0x3032000000;
        v409 = __Block_byref_object_copy__123;
        v410 = __Block_byref_object_dispose__123;
        v411 = 0;
        v10 = dispatch_semaphore_create(0);
        learnedLocationStore3 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
        mapItem = [v9 mapItem];
        v401[0] = MEMORY[0x277D85DD0];
        v401[1] = 3221225472;
        v401[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke;
        v401[3] = &unk_2788CEA88;
        v13 = array;
        v405 = &v406;
        v402 = v13;
        v403 = v9;
        v14 = v10;
        v404 = v14;
        [learnedLocationStore3 fetchPlaceWithMapItem:mapItem predicate:predicateForObjectsFromCurrentDevice handler:v401];

        v15 = v14;
        v16 = [MEMORY[0x277CBEAA8] now];
        v17 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v15, v17))
        {
          v18 = [MEMORY[0x277CBEAA8] now];
          [v18 timeIntervalSinceDate:v16];
          v20 = v19;
          v21 = objc_opt_new();
          v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v24 = [callStackSymbols filteredArrayUsingPredicate:v22];
          firstObject = [v24 firstObject];

          [v21 submitToCoreAnalytics:firstObject type:1 duration:v20];
          v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            *v427 = 0;
            _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v427, 2u);
          }

          v27 = MEMORY[0x277CCA9B8];
          *v423 = v368;
          *v427 = @"semaphore wait timeout";
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v427 forKeys:v423 count:1];
          v29 = [v27 errorWithDomain:v367 code:15 userInfo:v28];

          if (v29)
          {
            v30 = v29;
          }
        }

        else
        {
          v29 = 0;
        }

        v31 = v29;
        *v427 = 0;
        *&v427[8] = v427;
        *&v427[16] = 0x3032000000;
        v428 = __Block_byref_object_copy__123;
        v429 = __Block_byref_object_dispose__123;
        v430 = 0;
        v32 = dispatch_semaphore_create(0);

        learnedLocationStore4 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
        mapItem2 = [v9 mapItem];
        v396[0] = MEMORY[0x277D85DD0];
        v396[1] = 3221225472;
        v396[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_57;
        v396[3] = &unk_2788CEAB0;
        v35 = v13;
        v400 = v427;
        v365 = v35;
        v397 = v35;
        v398 = v9;
        v36 = v32;
        v399 = v36;
        [learnedLocationStore4 fetchPlacesWithMapItem:mapItem2 predicate:predicateForObjectsNotFromCurrentDevice handler:v396];

        dsema = v36;
        v37 = [MEMORY[0x277CBEAA8] now];
        v38 = dispatch_time(0, 3600000000000);
        v39 = v31;
        if (dispatch_semaphore_wait(dsema, v38))
        {
          v40 = [MEMORY[0x277CBEAA8] now];
          [v40 timeIntervalSinceDate:v37];
          v42 = v41;
          v43 = objc_opt_new();
          v44 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
          callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
          v46 = [callStackSymbols2 filteredArrayUsingPredicate:v44];
          firstObject2 = [v46 firstObject];

          [v43 submitToCoreAnalytics:firstObject2 type:1 duration:v42];
          v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            *v423 = 0;
            _os_log_fault_impl(&dword_2304B3000, v48, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v423, 2u);
          }

          v49 = MEMORY[0x277CCA9B8];
          *v419 = v368;
          *v423 = @"semaphore wait timeout";
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v423 forKeys:v419 count:1];
          v51 = [v49 errorWithDomain:v367 code:15 userInfo:v50];

          v39 = v31;
          if (v51)
          {
            v52 = v51;

            v39 = v51;
          }
        }

        v371 = v39;
        if (v407[5])
        {
          if ([v9 typeSource] == 8)
          {
            v53 = [RTLearnedPlace alloc];
            identifier = [v9 identifier];
            mapItem3 = [v9 mapItem];
            customLabel = [v9 customLabel];
            creationDate = [v9 creationDate];
            expirationDate = [v9 expirationDate];
            date = [(RTLearnedPlace *)v53 initWithIdentifier:identifier type:0 typeSource:0 mapItem:mapItem3 customLabel:customLabel creationDate:creationDate expirationDate:expirationDate];

            [array3 addObject:date];
            v59 = v407;
            v60 = v9;
            v61 = v59[5];
            v59[5] = v60;
            goto LABEL_34;
          }

          mapItem4 = [v9 mapItem];
          address = [mapItem4 address];
          mapItem5 = [v407[5] mapItem];
          address2 = [mapItem5 address];
          if ([address isEqualToAddress:address2])
          {
            mapItem6 = [v9 mapItem];
            location = [mapItem6 location];
            mapItem7 = [v407[5] mapItem];
            location2 = [mapItem7 location];
            v92 = [location isEqualToLocation:location2];

            if (v92)
            {
              date = 0;
LABEL_28:
              if ([v407[5] type] || objc_msgSend(v407[5], "typeSource") || (v104 = date) != 0)
              {
                v98 = [RTLearnedPlace alloc];
                identifier2 = [v407[5] identifier];
                v100 = date;
                if (!date)
                {
                  mapItem8 = [v407[5] mapItem];
                  v100 = mapItem8;
                }

                customLabel2 = [v407[5] customLabel];
                creationDate2 = [v407[5] creationDate];
                expirationDate2 = [v407[5] expirationDate];
                v61 = [(RTLearnedPlace *)v98 initWithIdentifier:identifier2 type:0 typeSource:0 mapItem:v100 customLabel:customLabel2 creationDate:creationDate2 expirationDate:expirationDate2];

                if (!date)
                {
                }

                [array3 addObject:v61];
                objc_storeStrong(v407 + 5, v61);
LABEL_34:

                v104 = date;
              }

              goto LABEL_36;
            }

            v374 = objc_alloc(MEMORY[0x277D011A0]);
            mapItem4 = [v407[5] mapItem];
            address = [mapItem4 identifier];
            mapItem5 = [v407[5] mapItem];
            address2 = [mapItem5 name];
            mapItem9 = [v407[5] mapItem];
            category = [mapItem9 category];
            mapItem10 = [v407[5] mapItem];
            categoryMUID = [mapItem10 categoryMUID];
            mapItem11 = [v407[5] mapItem];
            address3 = [mapItem11 address];
            mapItem12 = [v9 mapItem];
            location3 = [mapItem12 location];
            mapItem13 = [v407[5] mapItem];
            source = [mapItem13 source];
            mapItem14 = [v407[5] mapItem];
            mapItemPlaceType = [mapItem14 mapItemPlaceType];
            mapItem15 = [v407[5] mapItem];
            muid = [mapItem15 muid];
            mapItem16 = [v407[5] mapItem];
            resultProviderID = [mapItem16 resultProviderID];
            mapItem17 = [v407[5] mapItem];
            geoMapItemHandle = [mapItem17 geoMapItemHandle];
            mapItem18 = [v407[5] mapItem];
            geoMapItemIdentifier = [mapItem18 geoMapItemIdentifier];
            mapItem19 = [v407[5] mapItem];
            creationDate3 = [mapItem19 creationDate];
            mapItem20 = [v407[5] mapItem];
            expirationDate3 = [mapItem20 expirationDate];
            mapItem21 = [v407[5] mapItem];
            extendedAttributes = [mapItem21 extendedAttributes];
            mapItem22 = [v407[5] mapItem];
            displayLanguage = [mapItem22 displayLanguage];
            mapItem23 = [v407[5] mapItem];
            LOBYTE(v260) = [mapItem23 disputed];
            date = [v374 initWithIdentifier:address name:address2 category:category categoryMUID:categoryMUID address:address3 location:location3 source:source mapItemPlaceType:mapItemPlaceType muid:muid resultProviderID:resultProviderID geoMapItemHandle:geoMapItemHandle geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate3 expirationDate:expirationDate3 extendedAttributes:extendedAttributes displayLanguage:displayLanguage disputed:v260];
          }

          else
          {
            date = 0;
          }

          goto LABEL_28;
        }

        if (![*(*&v427[8] + 40) count])
        {
          date = [MEMORY[0x277CBEAA8] date];
          v358 = [date dateByAddingTimeInterval:4838400.0];
          v267 = objc_alloc(MEMORY[0x277D01060]);
          uUID = [MEMORY[0x277CCAD78] UUID];
          mapItem24 = [v9 mapItem];
          address4 = [mapItem24 address];
          geoAddressData = [address4 geoAddressData];
          mapItem25 = [v9 mapItem];
          address5 = [mapItem25 address];
          subPremises = [address5 subPremises];
          mapItem26 = [v9 mapItem];
          address6 = [mapItem26 address];
          subThoroughfare = [address6 subThoroughfare];
          mapItem27 = [v9 mapItem];
          address7 = [mapItem27 address];
          thoroughfare = [address7 thoroughfare];
          mapItem28 = [v9 mapItem];
          address8 = [mapItem28 address];
          subLocality = [address8 subLocality];
          mapItem29 = [v9 mapItem];
          address9 = [mapItem29 address];
          locality = [address9 locality];
          mapItem30 = [v9 mapItem];
          address10 = [mapItem30 address];
          subAdministrativeArea = [address10 subAdministrativeArea];
          mapItem31 = [v9 mapItem];
          address11 = [mapItem31 address];
          administrativeArea = [address11 administrativeArea];
          mapItem32 = [v9 mapItem];
          address12 = [mapItem32 address];
          administrativeAreaCode = [address12 administrativeAreaCode];
          mapItem33 = [v9 mapItem];
          address13 = [mapItem33 address];
          postalCode = [address13 postalCode];
          mapItem34 = [v9 mapItem];
          address14 = [mapItem34 address];
          country = [address14 country];
          mapItem35 = [v9 mapItem];
          address15 = [mapItem35 address];
          countryCode = [address15 countryCode];
          mapItem36 = [v9 mapItem];
          address16 = [mapItem36 address];
          inlandWater = [address16 inlandWater];
          mapItem37 = [v9 mapItem];
          address17 = [mapItem37 address];
          ocean = [address17 ocean];
          mapItem38 = [v9 mapItem];
          address18 = [mapItem38 address];
          areasOfInterest = [address18 areasOfInterest];
          mapItem39 = [v9 mapItem];
          address19 = [mapItem39 address];
          isIsland = [address19 isIsland];
          mapItem40 = [v9 mapItem];
          address20 = [mapItem40 address];
          iso3166CountryCode = [address20 iso3166CountryCode];
          mapItem41 = [v9 mapItem];
          address21 = [mapItem41 address];
          iso3166SubdivisionCode = [address21 iso3166SubdivisionCode];
          LOBYTE(v260) = isIsland;
          v268 = [v267 initWithIdentifier:uUID geoAddressData:geoAddressData subPremises:subPremises subThoroughfare:subThoroughfare thoroughfare:thoroughfare subLocality:subLocality locality:locality subAdministrativeArea:subAdministrativeArea administrativeArea:administrativeArea administrativeAreaCode:administrativeAreaCode postalCode:postalCode country:country countryCode:countryCode inlandWater:inlandWater ocean:ocean areasOfInterest:areasOfInterest isIsland:v260 creationDate:date expirationDate:v358 iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:iso3166SubdivisionCode];

          v312 = objc_alloc(MEMORY[0x277D011A0]);
          uUID2 = [MEMORY[0x277CCAD78] UUID];
          mapItem42 = [v9 mapItem];
          name = [mapItem42 name];
          mapItem43 = [v9 mapItem];
          category2 = [mapItem43 category];
          mapItem44 = [v9 mapItem];
          categoryMUID2 = [mapItem44 categoryMUID];
          mapItem45 = [v9 mapItem];
          location4 = [mapItem45 location];
          mapItem46 = [v9 mapItem];
          source2 = [mapItem46 source];
          mapItem47 = [v9 mapItem];
          mapItemPlaceType2 = [mapItem47 mapItemPlaceType];
          mapItem48 = [v9 mapItem];
          muid2 = [mapItem48 muid];
          mapItem49 = [v9 mapItem];
          resultProviderID2 = [mapItem49 resultProviderID];
          mapItem50 = [v9 mapItem];
          geoMapItemHandle2 = [mapItem50 geoMapItemHandle];
          mapItem51 = [v9 mapItem];
          geoMapItemIdentifier2 = [mapItem51 geoMapItemIdentifier];
          mapItem52 = [v9 mapItem];
          extendedAttributes2 = [mapItem52 extendedAttributes];
          mapItem53 = [v9 mapItem];
          displayLanguage2 = [mapItem53 displayLanguage];
          mapItem54 = [v9 mapItem];
          LOBYTE(v261) = [mapItem54 disputed];
          v80 = [v312 initWithIdentifier:uUID2 name:name category:category2 categoryMUID:categoryMUID2 address:v268 location:location4 source:source2 mapItemPlaceType:mapItemPlaceType2 muid:muid2 resultProviderID:resultProviderID2 geoMapItemHandle:geoMapItemHandle2 geoMapItemIdentifier:geoMapItemIdentifier2 creationDate:date expirationDate:v358 extendedAttributes:extendedAttributes2 displayLanguage:displayLanguage2 disputed:v261];

          v81 = [RTLearnedPlace alloc];
          uUID3 = [MEMORY[0x277CCAD78] UUID];
          v83 = [(RTLearnedPlace *)v81 initWithIdentifier:uUID3 type:0 typeSource:0 mapItem:v80 customLabel:0 creationDate:date expirationDate:v358];

          [array2 addObject:v83];
          objc_storeStrong(v407 + 5, v83);

          v61 = v358;
          goto LABEL_34;
        }

LABEL_36:
        v105 = v407[5];
        if (v105)
        {
          firstObject3 = v105;
        }

        else
        {
          firstObject3 = [*(*&v427[8] + 40) firstObject];
        }

        *v423 = 0;
        *&v423[8] = v423;
        *&v423[16] = 0x3032000000;
        v424 = __Block_byref_object_copy__123;
        v425 = __Block_byref_object_dispose__123;
        v426 = 0;
        *v419 = 0;
        *&v419[8] = v419;
        *&v419[16] = 0x3032000000;
        v420 = __Block_byref_object_copy__123;
        v421 = __Block_byref_object_dispose__123;
        v422 = 0;
        v106 = dispatch_semaphore_create(0);
        learnedLocationStore5 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
        identifier3 = [v9 identifier];
        v392[0] = MEMORY[0x277D85DD0];
        v392[1] = 3221225472;
        v392[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_61;
        v392[3] = &unk_2788C4B58;
        v394 = v419;
        v395 = v423;
        v109 = v106;
        v393 = v109;
        [learnedLocationStore5 fetchLocationOfInterestWithIdentifier:identifier3 handler:v392];

        v110 = v109;
        v111 = [MEMORY[0x277CBEAA8] now];
        v112 = dispatch_time(0, 3600000000000);
        if (!dispatch_semaphore_wait(v110, v112))
        {
          goto LABEL_44;
        }

        v113 = [MEMORY[0x277CBEAA8] now];
        [v113 timeIntervalSinceDate:v111];
        v115 = v114;
        v116 = objc_opt_new();
        v117 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
        callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
        v119 = [callStackSymbols3 filteredArrayUsingPredicate:v117];
        firstObject4 = [v119 firstObject];

        [v116 submitToCoreAnalytics:firstObject4 type:1 duration:v115];
        v121 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v121, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v122 = MEMORY[0x277CCA9B8];
        v432[0] = v368;
        *buf = @"semaphore wait timeout";
        v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v432 count:1];
        v124 = [v122 errorWithDomain:v367 code:15 userInfo:v123];

        if (v124)
        {
          v125 = v124;

          v126 = 0;
        }

        else
        {
LABEL_44:
          v126 = 1;
          v124 = v371;
        }

        v127 = v124;
        if ((v126 & 1) == 0)
        {
          objc_storeStrong((*&v423[8] + 40), v124);
        }

        v128 = *(*&v423[8] + 40);
        if (v128)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v129 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
            {
              v130 = *(*&v423[8] + 40);
              *buf = 138740227;
              *&buf[4] = v9;
              v417 = 2112;
              v418 = v130;
              _os_log_impl(&dword_2304B3000, v129, OS_LOG_TYPE_INFO, "failed to fetch locationofInterest, %{sensitive}@, error, %@", buf, 0x16u);
            }

            v128 = *(*&v423[8] + 40);
          }

          [v365 addObject:v128];
        }

        else
        {
          if (*(*&v419[8] + 40))
          {
            v131 = [RTLearnedPlace alloc];
            identifier4 = [v9 identifier];
            type = [v9 type];
            typeSource = [v9 typeSource];
            mapItem55 = [firstObject3 mapItem];
            customLabel3 = [v9 customLabel];
            creationDate4 = [v9 creationDate];
            expirationDate4 = [v9 expirationDate];
            location6 = [(RTLearnedPlace *)v131 initWithIdentifier:identifier4 type:type typeSource:typeSource mapItem:mapItem55 customLabel:customLabel3 creationDate:creationDate4 expirationDate:expirationDate4];

            v140 = [RTLearnedLocationOfInterest alloc];
            identifier5 = [*(*&v419[8] + 40) identifier];
            location5 = [*(*&v419[8] + 40) location];
            visits = [*(*&v419[8] + 40) visits];
            transitions = [*(*&v419[8] + 40) transitions];
            v145 = [(RTLearnedLocationOfInterest *)v140 initWithIdentifier:identifier5 location:location5 place:location6 visits:visits transitions:transitions];
            v146 = *(*&v419[8] + 40);
            *(*&v419[8] + 40) = v145;

            if (*(*&v419[8] + 40))
            {
              [array5 addObject:?];
            }
          }

          else
          {
            v147 = v407[5];
            if (v147)
            {
              [v147 mapItem];
            }

            else
            {
              [v9 mapItem];
            }
            v148 = ;
            location6 = [v148 location];

            v372 = [[RTLearnedLocation alloc] initWithLocation:location6 dataPointCount:0 confidence:0.0];
            if (v372)
            {
              v149 = [RTLearnedPlace alloc];
              identifier6 = [firstObject3 identifier];
              type2 = [v9 type];
              typeSource2 = [v9 typeSource];
              mapItem56 = [firstObject3 mapItem];
              customLabel4 = [firstObject3 customLabel];
              creationDate5 = [firstObject3 creationDate];
              expirationDate5 = [firstObject3 expirationDate];
              v156 = [(RTLearnedPlace *)v149 initWithIdentifier:identifier6 type:type2 typeSource:typeSource2 mapItem:mapItem56 customLabel:customLabel4 creationDate:creationDate5 expirationDate:expirationDate5];

              v157 = [RTLearnedLocationOfInterest alloc];
              identifier7 = [v156 identifier];
              v159 = [(RTLearnedLocationOfInterest *)v157 initWithIdentifier:identifier7 location:v372 place:v156 visits:0 transitions:0];
              v160 = *(*&v419[8] + 40);
              *(*&v419[8] + 40) = v159;

              if (*(*&v419[8] + 40))
              {
                [array4 addObject:?];
              }
            }

            else
            {
              v156 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
              {
                *buf = 138740227;
                *&buf[4] = v9;
                v417 = 2048;
                v418 = 0;
                _os_log_error_impl(&dword_2304B3000, v156, OS_LOG_TYPE_ERROR, "failed to create locationOfInterest for place, %{sensitive}@, with %lu visits", buf, 0x16u);
              }
            }
          }
        }

        _Block_object_dispose(v419, 8);
        _Block_object_dispose(v423, 8);

        _Block_object_dispose(v427, 8);
        _Block_object_dispose(&v406, 8);

        objc_autoreleasePoolPop(context);
        v7 = v369 + 1;
      }

      while (v364 != v369 + 1);
      v364 = [obj countByEnumeratingWithState:&v412 objects:v431 count:16];
    }

    while (v364);
  }

  if ([array count])
  {
    if (error)
    {
      v161 = _RTSafeArray();
      *error = _RTMultiErrorCreate();
    }

    v162 = 0;
    goto LABEL_136;
  }

  v406 = 0;
  v407 = &v406;
  v408 = 0x3032000000;
  v409 = __Block_byref_object_copy__123;
  v410 = __Block_byref_object_dispose__123;
  v411 = 0;
  v163 = dispatch_semaphore_create(0);
  learnedLocationStore6 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v389[0] = MEMORY[0x277D85DD0];
  v389[1] = 3221225472;
  v389[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_64;
  v389[3] = &unk_2788C4618;
  v391 = &v406;
  v165 = v163;
  v390 = v165;
  [learnedLocationStore6 storePlaces:array2 handler:v389];

  dsemaa = v165;
  v166 = [MEMORY[0x277CBEAA8] now];
  v167 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(dsemaa, v167))
  {
    v179 = 0;
LABEL_81:
    v181 = 1;
    goto LABEL_82;
  }

  v168 = [MEMORY[0x277CBEAA8] now];
  [v168 timeIntervalSinceDate:v166];
  v170 = v169;
  v171 = objc_opt_new();
  v172 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
  callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
  v174 = [callStackSymbols4 filteredArrayUsingPredicate:v172];
  firstObject5 = [v174 firstObject];

  [v171 submitToCoreAnalytics:firstObject5 type:1 duration:v170];
  v176 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
  {
    *v427 = 0;
    _os_log_fault_impl(&dword_2304B3000, v176, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v427, 2u);
  }

  v177 = MEMORY[0x277CCA9B8];
  *v423 = *MEMORY[0x277CCA450];
  *v427 = @"semaphore wait timeout";
  v178 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v427 forKeys:v423 count:1];
  v179 = [v177 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v178];

  if (!v179)
  {
    goto LABEL_81;
  }

  v180 = v179;

  v181 = 0;
LABEL_82:

  v182 = v179;
  if ((v181 & 1) == 0)
  {
    objc_storeStrong(v407 + 5, v179);
  }

  if (v407[5])
  {
    [array addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v183 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
    {
      v184 = [array2 count];
      v185 = v407[5];
      *v427 = 134218242;
      *&v427[4] = v184;
      *&v427[12] = 2112;
      *&v427[14] = v185;
      _os_log_impl(&dword_2304B3000, v183, OS_LOG_TYPE_INFO, "added %lu placeholder places for meCard postalAddress mapItems, error, %@", v427, 0x16u);
    }
  }

  [array2 enumerateObjectsUsingBlock:&__block_literal_global_68_0];
  *v427 = 0;
  *&v427[8] = v427;
  *&v427[16] = 0x3032000000;
  v428 = __Block_byref_object_copy__123;
  v429 = __Block_byref_object_dispose__123;
  v430 = 0;
  v186 = dispatch_semaphore_create(0);
  learnedLocationStore7 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v386[0] = MEMORY[0x277D85DD0];
  v386[1] = 3221225472;
  v386[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_69;
  v386[3] = &unk_2788C4618;
  v388 = v427;
  v188 = v186;
  v387 = v188;
  [learnedLocationStore7 updatePlaces:array3 handler:v386];

  v376 = v188;
  v189 = [MEMORY[0x277CBEAA8] now];
  v190 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v376, v190))
  {
    goto LABEL_95;
  }

  v191 = [MEMORY[0x277CBEAA8] now];
  [v191 timeIntervalSinceDate:v189];
  v193 = v192;
  v194 = objc_opt_new();
  v195 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
  callStackSymbols5 = [MEMORY[0x277CCACC8] callStackSymbols];
  v197 = [callStackSymbols5 filteredArrayUsingPredicate:v195];
  firstObject6 = [v197 firstObject];

  [v194 submitToCoreAnalytics:firstObject6 type:1 duration:v193];
  v199 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v199, OS_LOG_TYPE_FAULT))
  {
    *v423 = 0;
    _os_log_fault_impl(&dword_2304B3000, v199, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v423, 2u);
  }

  v200 = MEMORY[0x277CCA9B8];
  *v419 = *MEMORY[0x277CCA450];
  *v423 = @"semaphore wait timeout";
  v201 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v423 forKeys:v419 count:1];
  v202 = [v200 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v201];

  if (v202)
  {
    v203 = v202;

    v204 = 0;
  }

  else
  {
LABEL_95:
    v204 = 1;
    v202 = v182;
  }

  v205 = v202;
  if ((v204 & 1) == 0)
  {
    objc_storeStrong((*&v427[8] + 40), v202);
  }

  if (*(*&v427[8] + 40))
  {
    [array addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v206 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
    {
      v207 = [array3 count];
      v208 = *(*&v427[8] + 40);
      *v423 = 134218242;
      *&v423[4] = v207;
      *&v423[12] = 2112;
      *&v423[14] = v208;
      _os_log_impl(&dword_2304B3000, v206, OS_LOG_TYPE_INFO, "updated %lu places, error, %@", v423, 0x16u);
    }
  }

  [array3 enumerateObjectsUsingBlock:&__block_literal_global_72];
  *v423 = 0;
  *&v423[8] = v423;
  *&v423[16] = 0x3032000000;
  v424 = __Block_byref_object_copy__123;
  v425 = __Block_byref_object_dispose__123;
  v426 = 0;
  v209 = dispatch_semaphore_create(0);
  learnedLocationStore8 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v383[0] = MEMORY[0x277D85DD0];
  v383[1] = 3221225472;
  v383[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_73;
  v383[3] = &unk_2788C4618;
  v385 = v423;
  v211 = v209;
  v384 = v211;
  [learnedLocationStore8 storeLocationsOfInterest:array4 handler:v383];

  v212 = v211;
  v213 = [MEMORY[0x277CBEAA8] now];
  v214 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v212, v214))
  {
    goto LABEL_109;
  }

  v215 = [MEMORY[0x277CBEAA8] now];
  [v215 timeIntervalSinceDate:v213];
  v217 = v216;
  v218 = objc_opt_new();
  v219 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
  callStackSymbols6 = [MEMORY[0x277CCACC8] callStackSymbols];
  v221 = [callStackSymbols6 filteredArrayUsingPredicate:v219];
  firstObject7 = [v221 firstObject];

  [v218 submitToCoreAnalytics:firstObject7 type:1 duration:v217];
  v223 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v223, OS_LOG_TYPE_FAULT))
  {
    *v419 = 0;
    _os_log_fault_impl(&dword_2304B3000, v223, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v419, 2u);
  }

  v224 = MEMORY[0x277CCA9B8];
  *buf = *MEMORY[0x277CCA450];
  *v419 = @"semaphore wait timeout";
  v225 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v419 forKeys:buf count:1];
  v226 = [v224 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v225];

  if (v226)
  {
    v227 = v226;

    v228 = 0;
  }

  else
  {
LABEL_109:
    v228 = 1;
    v226 = v205;
  }

  v229 = v226;
  if ((v228 & 1) == 0)
  {
    objc_storeStrong((*&v423[8] + 40), v226);
  }

  if (*(*&v423[8] + 40))
  {
    [array addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v230 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
    {
      v231 = [array4 count];
      v232 = *(*&v423[8] + 40);
      *v419 = 134218242;
      *&v419[4] = v231;
      *&v419[12] = 2112;
      *&v419[14] = v232;
      _os_log_impl(&dword_2304B3000, v230, OS_LOG_TYPE_INFO, "added %lu placeholder locations of interests for meCard postalAddress mapItems, error, %@", v419, 0x16u);
    }
  }

  [array4 enumerateObjectsUsingBlock:&__block_literal_global_76];
  *v419 = 0;
  *&v419[8] = v419;
  *&v419[16] = 0x3032000000;
  v420 = __Block_byref_object_copy__123;
  v421 = __Block_byref_object_dispose__123;
  v422 = 0;
  v233 = dispatch_semaphore_create(0);
  learnedLocationStore9 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v380[0] = MEMORY[0x277D85DD0];
  v380[1] = 3221225472;
  v380[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_77;
  v380[3] = &unk_2788C4618;
  v382 = v419;
  v235 = v233;
  v381 = v235;
  [learnedLocationStore9 updateLocationsOfInterest:array5 handler:v380];

  v236 = v235;
  v237 = [MEMORY[0x277CBEAA8] now];
  v238 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v236, v238))
  {
    goto LABEL_123;
  }

  v239 = [MEMORY[0x277CBEAA8] now];
  [v239 timeIntervalSinceDate:v237];
  v241 = v240;
  v242 = objc_opt_new();
  v243 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_195];
  callStackSymbols7 = [MEMORY[0x277CCACC8] callStackSymbols];
  v245 = [callStackSymbols7 filteredArrayUsingPredicate:v243];
  firstObject8 = [v245 firstObject];

  [v242 submitToCoreAnalytics:firstObject8 type:1 duration:v241];
  v247 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v247, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v247, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v248 = MEMORY[0x277CCA9B8];
  v432[0] = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v249 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v432 count:1];
  v250 = [v248 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v249];

  if (v250)
  {
    v251 = v250;

    v252 = 0;
  }

  else
  {
LABEL_123:
    v252 = 1;
    v250 = v229;
  }

  v253 = v250;
  if ((v252 & 1) == 0)
  {
    objc_storeStrong((*&v419[8] + 40), v250);
  }

  if (*(*&v419[8] + 40))
  {
    [array addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v254 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v254, OS_LOG_TYPE_INFO))
    {
      v255 = [array5 count];
      v256 = *(*&v419[8] + 40);
      *buf = 134218242;
      *&buf[4] = v255;
      v417 = 2112;
      v418 = v256;
      _os_log_impl(&dword_2304B3000, v254, OS_LOG_TYPE_INFO, "updated %lu learnedLocationsOfInterest, error, %@", buf, 0x16u);
    }
  }

  [array5 enumerateObjectsUsingBlock:&__block_literal_global_80];
  v257 = [array count];
  v162 = v257 == 0;
  if (error && v257)
  {
    v258 = _RTSafeArray();
    *error = _RTMultiErrorCreate();
  }

  _Block_object_dispose(v419, 8);
  _Block_object_dispose(v423, 8);

  _Block_object_dispose(v427, 8);
  _Block_object_dispose(&v406, 8);

LABEL_136:
  return v162;
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 40) mapItem];
      v10 = 138740483;
      v11 = v6;
      v12 = 2117;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "fetched place, %{sensitive}@, from current device with mapItem, %{sensitive}@, error, %@", &v10, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 count];
      v10 = [*(a1 + 40) mapItem];
      v11 = 134218499;
      v12 = v9;
      v13 = 2117;
      v14 = v10;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "fetched %lu places, from other devices with mapItem, %{sensitive}@, error, %@", &v11, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_61(uint64_t a1, void *a2, void *a3)
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

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_64(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_66(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "stored place %lu : %{sensitive}@", &v6, 0x16u);
    }
  }
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_69(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_70(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "updated place %lu : %{sensitive}@", &v6, 0x16u);
    }
  }
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_73(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_74(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "stored location of interest %lu : %{sensitive}@", &v6, 0x16u);
    }
  }
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_77(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_78(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "updated location of interest %lu : %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (id)getClassificationsFromExperts:(id)experts error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  expertsCopy = experts;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7 = expertsCopy;
  v42 = [v7 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v42)
  {
    v41 = *v55;
    v37 = v7;
    v38 = dictionary;
    selfCopy = self;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v55 != v41)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v54 + 1) + 8 * v8);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      if (v12 == objc_opt_class())
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v13 = dictionary;
        v24 = [v13 countByEnumeratingWithState:&v50 objects:v65 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v51;
          v39 = *v51;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v51 != v26)
              {
                objc_enumerationMutation(v13);
              }

              v28 = *(*(&v50 + 1) + 8 * i);
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v23 = [v13 objectForKeyedSubscript:v28];
              v29 = [v23 countByEnumeratingWithState:&v46 objects:v64 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v47;
                while (2)
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v47 != v31)
                    {
                      objc_enumerationMutation(v23);
                    }

                    if ([*(*(&v46 + 1) + 8 * j) type] == 1)
                    {
                      v7 = v37;
                      dictionary = v38;
                      self = selfCopy;
                      goto LABEL_37;
                    }
                  }

                  v30 = [v23 countByEnumeratingWithState:&v46 objects:v64 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }
              }

              v26 = v39;
              self = selfCopy;
            }

            v25 = [v13 countByEnumeratingWithState:&v50 objects:v65 count:16];
            v7 = v37;
            dictionary = v38;
          }

          while (v25);
        }
      }

      v45 = 0;
      v13 = [v9 classifyWithError:&v45];
      v14 = v45;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v13 count];
          *buf = 138412802;
          v59 = v11;
          v60 = 2048;
          v61 = v16;
          v62 = 2112;
          v63 = v14;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "expert, %@, classified places, %lu, error, %@", buf, 0x20u);
        }
      }

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __61__RTPlaceTypeClassifier_getClassificationsFromExperts_error___block_invoke;
      v43[3] = &unk_2788C8AE8;
      v17 = v11;
      v44 = v17;
      [v13 enumerateObjectsUsingBlock:v43];
      if (v14)
      {
        if (error)
        {
          v34 = v14;
          *error = v14;
        }

        v33 = 0;
        goto LABEL_43;
      }

      v18 = objc_opt_class();
      if (v18 != objc_opt_class())
      {
        goto LABEL_17;
      }

      platform = [(RTPlaceTypeClassifier *)self platform];
      if ([platform watchPlatform])
      {
        platform2 = [(RTPlaceTypeClassifier *)self platform];
        isTinkerPaired = [platform2 isTinkerPaired];

        if (!isTinkerPaired)
        {
          goto LABEL_17;
        }

        platform = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_83];
        v22 = [v13 filteredArrayUsingPredicate:platform];

        v13 = v22;
      }

LABEL_17:
      if ([v13 count])
      {
        [dictionary setObject:v13 forKey:v17];
      }

      v23 = v44;
LABEL_37:

      if (++v8 == v42)
      {
        v42 = [v7 countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v42)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v33 = dictionary;
LABEL_43:

  return v33;
}

void __61__RTPlaceTypeClassifier_getClassificationsFromExperts_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3 + 1;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "expert, %@, classified place %lu, %{sensitive}@", &v8, 0x20u);
    }
  }
}

- (BOOL)processExpertClassifications:(id)classifications error:(id *)error
{
  v104 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    *buf = 138412546;
    v101 = v10;
    v102 = 2112;
    v103 = v11;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@, %@, fetching stored places before classification", buf, 0x16u);
  }

  v96 = 0;
  v12 = [(RTPlaceTypeClassifier *)self getStoredPlacesWithError:&v96];
  v13 = v96;
  v14 = v13;
  if (v13)
  {
    if (error)
    {
      v15 = v13;
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
    aSelector = a2;
    errorCopy = error;
    placeTypeClassifierMetricsCalculator = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
    v78 = v12;
    [placeTypeClassifierMetricsCalculator storeMetricsData:v12 source:3];

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v79 = classificationsCopy;
    v20 = [classificationsCopy objectForKey:v19];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v92 objects:v99 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v93;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v93 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v92 + 1) + 8 * i);
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v27, "type")}];
          [dictionary2 setObject:v27 forKeyedSubscript:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v92 objects:v99 count:16];
      }

      while (v24);
    }

    selfCopy = self;
    v75 = v22;

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [v79 objectForKey:v30];

    v32 = [v31 countByEnumeratingWithState:&v88 objects:v98 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v89;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v89 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v88 + 1) + 8 * j);
          v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "type")}];
          v38 = [&unk_2845A14A8 containsObject:v37];

          if (v38)
          {
            v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "type")}];
            [dictionary setObject:&unk_28459F060 forKey:v39];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v88 objects:v98 count:16];
      }

      while (v33);
    }

    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = [v79 objectForKey:v41];

    array = [MEMORY[0x277CBEB18] array];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v44 = v42;
    v45 = [v44 countByEnumeratingWithState:&v84 objects:v97 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v85;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v85 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v84 + 1) + 8 * k);
          v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v49, "type")}];
          v51 = [dictionary2 objectForKey:v50];

          if (v51 && [(RTPlaceTypeClassifier *)selfCopy isRottedMeCard:v49 inferredPlace:v51])
          {
            [array addObject:v49];
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v84 objects:v97 count:16];
      }

      while (v46);
    }

    placeTypeClassifierMetricsCalculator2 = [(RTPlaceTypeClassifier *)selfCopy placeTypeClassifierMetricsCalculator];
    [placeTypeClassifierMetricsCalculator2 storeMetricsData:array source:10];

    classificationsCopy = v79;
    v53 = [(RTPlaceTypeClassifier *)selfCopy coalescePlacesFromExperts:v79];
    [(RTPlaceTypeClassifier *)selfCopy storeTruthMetricsWithExpertClassifications:v79 rottedPlaces:array];
    allValues = [v53 allValues];
    [(RTPlaceTypeClassifier *)selfCopy donateInferredPlaces:allValues];

    placeTypeClassifierMetricsCalculator3 = [(RTPlaceTypeClassifier *)selfCopy placeTypeClassifierMetricsCalculator];
    allValues2 = [v53 allValues];
    [placeTypeClassifierMetricsCalculator3 storeMetricsData:allValues2 source:1];

    v12 = v78;
    v57 = [(RTPlaceTypeClassifier *)selfCopy mergeExistingPlaces:v78 intoUpdatedPlace:v53 typesInMeCard:dictionary];
    v83 = 0;
    LOBYTE(placeTypeClassifierMetricsCalculator3) = [(RTPlaceTypeClassifier *)selfCopy updatePlaces:v57 error:&v83];
    v58 = v83;
    v59 = v58;
    if (placeTypeClassifierMetricsCalculator3)
    {
      v73 = v58;
      v60 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        NSStringFromSelector(aSelector);
        v64 = v63 = v57;
        *buf = 138412546;
        v101 = v62;
        v102 = 2112;
        v103 = v64;
        _os_log_impl(&dword_2304B3000, v60, OS_LOG_TYPE_DEFAULT, "%@, %@, fetching stored places after classification", buf, 0x16u);

        v57 = v63;
      }

      v82 = 0;
      v65 = [(RTPlaceTypeClassifier *)selfCopy getStoredPlacesWithError:&v82];
      v66 = v82;
      v67 = v66;
      v16 = v66 == 0;
      if (v66)
      {
        v59 = v73;
        if (errorCopy)
        {
          v68 = v66;
          *errorCopy = v67;
        }
      }

      else
      {
        [(RTPlaceTypeClassifier *)selfCopy placeTypeClassifierMetricsCalculator];
        v70 = v77 = v57;
        [v70 storeMetricsData:v65 source:14];

        placeTypeClassifierMetricsCalculator4 = [(RTPlaceTypeClassifier *)selfCopy placeTypeClassifierMetricsCalculator];
        [placeTypeClassifierMetricsCalculator4 submitMetrics];

        v57 = v77;
        v59 = v73;
      }

      v12 = v78;
    }

    else if (errorCopy)
    {
      v69 = v58;
      v16 = 0;
      *errorCopy = v59;
    }

    else
    {
      v16 = 0;
    }

    v14 = 0;
  }

  return v16;
}

- (BOOL)classifyWithError:(id *)error
{
  getExperts = [(RTPlaceTypeClassifier *)self getExperts];
  v12 = 0;
  v6 = [(RTPlaceTypeClassifier *)self getClassificationsFromExperts:getExperts error:&v12];
  v7 = v12;

  if (v7)
  {
    if (!error)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = v7;
    goto LABEL_6;
  }

  v11 = 0;
  [(RTPlaceTypeClassifier *)self processExpertClassifications:v6 error:&v11];
  v9 = v11 == 0;
  if (error && v11)
  {
LABEL_6:
    v9 = 0;
    *error = v7;
  }

LABEL_8:

  return v9;
}

- (void)storeTruthMetricsWithExpertClassifications:(id)classifications rottedPlaces:(id)places
{
  v33 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  placesCopy = places;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v57[0] = v8;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v57[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  selfCopy = self;
  v34 = classificationsCopy;
  v12 = [(RTPlaceTypeClassifier *)self coalescePlacesFromSourcesOfTruth:classificationsCopy sourceOfTruthNames:v11];

  array = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v12;
  v39 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v39)
  {
    v37 = *v52;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v41 = placesCopy;
        v15 = [v41 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v48;
          v40 = i;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v48 != v17)
              {
                objc_enumerationMutation(v41);
              }

              v19 = *(*(&v47 + 1) + 8 * j);
              identifier = [v14 identifier];
              identifier2 = [v19 identifier];
              v22 = [identifier isEqual:identifier2];

              if ((v22 & 1) == 0)
              {
                distanceCalculator = [(RTPlaceTypeClassifier *)selfCopy distanceCalculator];
                mapItem = [v14 mapItem];
                location = [mapItem location];
                mapItem2 = [v19 mapItem];
                location2 = [mapItem2 location];
                v46 = 0;
                [distanceCalculator distanceFromLocation:location toLocation:location2 error:&v46];
                v29 = v28;
                v30 = v46;

                if (v30 || v29 >= 100.0)
                {
                  continue;
                }
              }

              i = v40;
              goto LABEL_18;
            }

            v16 = [v41 countByEnumeratingWithState:&v47 objects:v55 count:16];
            i = v40;
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        [array addObject:v14];
LABEL_18:
        ;
      }

      v39 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v39);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __81__RTPlaceTypeClassifier_storeTruthMetricsWithExpertClassifications_rottedPlaces___block_invoke;
  v43[3] = &unk_2788C6918;
  v43[4] = selfCopy;
  v44 = array;
  v45 = v33;
  v31 = array;
  [v31 enumerateObjectsUsingBlock:v43];
  placeTypeClassifierMetricsCalculator = [(RTPlaceTypeClassifier *)selfCopy placeTypeClassifierMetricsCalculator];
  [placeTypeClassifierMetricsCalculator storeMetricsData:v31 source:19];
}

void __81__RTPlaceTypeClassifier_storeTruthMetricsWithExpertClassifications_rottedPlaces___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = [*(a1 + 40) count];
      v11 = 138413315;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2048;
      v16 = a3 + 1;
      v17 = 2048;
      v18 = v10;
      v19 = 2117;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, truth places, %lu/%lu, place: %{sensitive}@", &v11, 0x34u);
    }
  }
}

@end