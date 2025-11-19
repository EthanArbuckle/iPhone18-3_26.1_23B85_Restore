@interface RTPlaceTypeClassifier
- (BOOL)_logExpertClassifications:(id)a3 sourceNames:(id)a4;
- (BOOL)classifyWithError:(id *)a3;
- (BOOL)isRottedMeCard:(id)a3 inferredPlace:(id)a4;
- (BOOL)processExpertClassifications:(id)a3 error:(id *)a4;
- (BOOL)updatePlaces:(id)a3 error:(id *)a4;
- (RTPlaceTypeClassifier)initWithBiomeManager:(id)a3 contactsManager:(id)a4 defaultsManager:(id)a5 distanceCalculator:(id)a6 learnedLocationStore:(id)a7 locationManager:(id)a8 mapServiceManager:(id)a9 mapsSupportManager:(id)a10 placeTypeClassifierMetricsCalculator:(id)a11 platform:(id)a12 queue:(id)a13 visitManager:(id)a14;
- (id)_convertToIdToLearnedPlace:(id)a3;
- (id)_getClosestLearnedPlacesAtDestination:(id)a3 source:(id)a4 threshold:(double)a5 error:(id *)a6;
- (id)coalescePlacesFromExperts:(id)a3;
- (id)coalescePlacesFromSourcesOfTruth:(id)a3 sourceOfTruthNames:(id)a4;
- (id)getClassificationsFromExperts:(id)a3 error:(id *)a4;
- (id)getExperts;
- (id)getStoredPlacesWithError:(id *)a3;
- (id)mergeExistingPlaces:(id)a3 intoUpdatedPlace:(id)a4 typesInMeCard:(id)a5;
- (id)replaceBusinessMapItemWithReverseGeocodedMapItem:(id)a3;
- (void)donateInferredPlaces:(id)a3;
- (void)storeTruthMetricsWithExpertClassifications:(id)a3 rottedPlaces:(id)a4;
@end

@implementation RTPlaceTypeClassifier

- (RTPlaceTypeClassifier)initWithBiomeManager:(id)a3 contactsManager:(id)a4 defaultsManager:(id)a5 distanceCalculator:(id)a6 learnedLocationStore:(id)a7 locationManager:(id)a8 mapServiceManager:(id)a9 mapsSupportManager:(id)a10 placeTypeClassifierMetricsCalculator:(id)a11 platform:(id)a12 queue:(id)a13 visitManager:(id)a14
{
  v49 = a3;
  v37 = a4;
  v19 = a4;
  v39 = a5;
  v43 = a5;
  v40 = a6;
  v42 = a6;
  v41 = a7;
  v38 = a8;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v48 = a11;
  v45 = a12;
  v47 = a13;
  v23 = a14;
  v44 = v23;
  if (v49)
  {
    v24 = v19;
    if (v19)
    {
      v25 = v42;
      v26 = v43;
      v27 = v41;
      v28 = self;
      if (v43)
      {
        if (v42)
        {
          if (v41)
          {
            if (v20)
            {
              if (v21)
              {
                if (v22)
                {
                  if (v48)
                  {
                    if (v47)
                    {
                      if (v23)
                      {
                        v50.receiver = self;
                        v50.super_class = RTPlaceTypeClassifier;
                        v29 = [(RTPlaceTypeClassifier *)&v50 init];
                        p_isa = &v29->super.isa;
                        if (v29)
                        {
                          objc_storeStrong(&v29->_biomeManager, a3);
                          objc_storeStrong(p_isa + 2, v37);
                          objc_storeStrong(p_isa + 5, a7);
                          objc_storeStrong(p_isa + 6, v38);
                          objc_storeStrong(p_isa + 7, a9);
                          objc_storeStrong(p_isa + 8, a10);
                          objc_storeStrong(p_isa + 9, a11);
                          objc_storeStrong(p_isa + 10, a12);
                          objc_storeStrong(p_isa + 3, v39);
                          objc_storeStrong(p_isa + 4, v40);
                          objc_storeStrong(p_isa + 12, a13);
                          objc_storeStrong(p_isa + 11, a14);
                        }

                        v28 = p_isa;
                        v31 = v28;
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
      v25 = v42;
      v26 = v43;
      v27 = v41;
      v28 = self;
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
  v24 = v19;
  v25 = v42;
  v26 = v43;
  v27 = v41;
  v28 = self;
LABEL_40:

  return v31;
}

- (BOOL)isRottedMeCard:(id)a3 inferredPlace:(id)a4
{
  v82[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v53 = a4;
  v52 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-3024000.0];
  v7 = [(RTPlaceTypeClassifier *)self distanceCalculator];
  v8 = [v53 mapItem];
  v9 = [v8 location];
  v14 = [v6 mapItem];
  v10 = [v14 location];
  v70 = 0;
  [v7 distanceFromLocation:v9 toLocation:v10 error:&v70];
  v12 = v11;
  v13 = v70;

  LOBYTE(v14) = 0;
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
  v16 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v17 = [v6 mapItem];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __54__RTPlaceTypeClassifier_isRottedMeCard_inferredPlace___block_invoke;
  v54[3] = &unk_2788C4B58;
  v56 = &v64;
  v57 = &v58;
  v18 = v15;
  v55 = v18;
  [v16 fetchLocationOfInterestWithMapItem:v17 handler:v54];

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
  v27 = [MEMORY[0x277CCACC8] callStackSymbols];
  v28 = [v27 filteredArrayUsingPredicate:v26];
  v29 = [v28 firstObject];

  [v25 submitToCoreAnalytics:v29 type:1 duration:v24];
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

  v37 = [v65[5] lastObject];
  v38 = [v37 entryDate];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v41 = v40;

  if (v59[5])
  {
    LODWORD(v14) = 0;
  }

  else
  {
    LODWORD(v14) = [v41 compare:v52] == -1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v49 = v36;
      v43 = NSStringFromSelector(a2);
      if (v14)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      v45 = [v65[5] count];
      v46 = [v65[5] lastObject];
      v47 = v59[5];
      *buf = 138413571;
      *&buf[4] = v43;
      v72 = 2112;
      v73 = v44;
      v74 = 2048;
      v75 = v45;
      v76 = 2117;
      v77 = v46;
      v78 = 2117;
      v79 = v6;
      v80 = 2112;
      v81 = v47;
      _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, isRotten, %@, fetched %lu visits, most recent visit, %{sensitive}@, for place, %{sensitive}@, error, %@", buf, 0x3Eu);

      v36 = v50;
    }
  }

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

LABEL_26:
  return v14;
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

- (id)getStoredPlacesWithError:(id *)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v34 = [MEMORY[0x277CBEB18] array];
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
      v61 = [MEMORY[0x277CBEB18] array];
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__123;
      v51 = __Block_byref_object_dispose__123;
      v52 = 0;
      v6 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
      v7 = [v4 unsignedIntegerValue];
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
      [v6 fetchLocationsOfInterestWithPlaceType:v7 handler:v42];

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
        if (a3)
        {
          v28 = v27;
          *a3 = v27;
        }
      }

      else if (*(*(&v57 + 1) + 40))
      {
        [v34 addObjectsFromArray:?];
      }

      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&v57, 8);

      if (v27)
      {
        v32 = 0;
        v31 = v34;
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
    v30 = [v34 count];
    LODWORD(v57) = 134217984;
    *(&v57 + 4) = v30;
    _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEFAULT, "%lu existing places with known type", &v57, 0xCu);
  }

  [v34 enumerateObjectsUsingBlock:&__block_literal_global_101];
  v31 = v34;
  v32 = v34;
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

- (void)donateInferredPlaces:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
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

          v11 = [(RTPlaceTypeClassifier *)self contactsManager];
          v12 = [v9 mapItem];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __46__RTPlaceTypeClassifier_donateInferredPlaces___block_invoke;
          v13[3] = &unk_2788CEA60;
          v13[4] = v9;
          [v11 donateAddressFromMapItem:v12 addressLabelType:v10 handler:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)replaceBusinessMapItemWithReverseGeocodedMapItem:(id)a3
{
  v144[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 mapItem];
  v5 = [v4 validMUID];

  if ((v5 & 1) == 0)
  {
    v27 = v3;
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
  v8 = [v3 identifier];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __74__RTPlaceTypeClassifier_replaceBusinessMapItemWithReverseGeocodedMapItem___block_invoke;
  v103[3] = &unk_2788C61C0;
  v105 = &v113;
  v106 = &v107;
  v9 = v6;
  v104 = v9;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLastVisitToPlaceWithIdentifier:v8 handler:v103];

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
  v18 = [MEMORY[0x277CCACC8] callStackSymbols];
  v19 = [v18 filteredArrayUsingPredicate:v17];
  v20 = [v19 firstObject];

  [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
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
      *&v140[4] = v3;
      *&v140[12] = 2112;
      *&v140[14] = v75;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Failed to look up last visit for place, %{sensitive}@, error, %@", v140, 0x16u);
    }

    v27 = v3;
  }

  else
  {
    v30 = [v114[5] location];
    v91 = [v30 location];

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
    [(RTLearnedLocationStore *)v31 fetchPlacesWithinDistance:v91 location:v99 handler:250.0];
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
    v40 = [MEMORY[0x277CCACC8] callStackSymbols];
    v41 = [v40 filteredArrayUsingPredicate:v39];
    v42 = [v41 firstObject];

    [v38 submitToCoreAnalytics:v42 type:1 duration:v37];
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
        *&buf[4] = v91;
        *&buf[12] = 2112;
        *&buf[14] = v78;
        _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "Failed to look up for places nearby, %@, error, %@", buf, 0x16u);
      }

      v27 = v3;
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
        [(RTMapServiceManager *)mapServiceManager fetchMapItemsFromLocation:v91 options:v90 handler:v95];
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
        v66 = [MEMORY[0x277CCACC8] callStackSymbols];
        v67 = [v66 filteredArrayUsingPredicate:v65];
        v68 = [v67 firstObject];

        [v64 submitToCoreAnalytics:v68 type:1 duration:v63];
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
          v94 = [v3 identifier];
          v79 = [v3 type];
          v80 = [v3 typeSource];
          v81 = *(*&buf[8] + 40);
          v82 = [v3 customLabel];
          v83 = [v3 creationDate];
          v84 = [v3 expirationDate];
          v27 = [(RTLearnedPlace *)v88 initWithIdentifier:v94 type:v79 typeSource:v80 mapItem:v81 customLabel:v82 creationDate:v83 expirationDate:v84];
        }

        else
        {
          v77 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v86 = v108[5];
            *v119 = 138740483;
            *&v119[4] = v91;
            v120 = 2117;
            v121 = v3;
            v122 = 2112;
            v123 = v86;
            _os_log_error_impl(&dword_2304B3000, v77, OS_LOG_TYPE_ERROR, "Failed to reverse geocode last visit location, %{sensitive}@, for place, %{sensitive}@, error, %@", v119, 0x20u);
          }

          v27 = v3;
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
            *&buf[4] = v91;
            _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "There exists another reverseGeocode LearnedPlace nearby this location %{sensitive}@", buf, 0xCu);
          }
        }

        v27 = v3;
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

- (id)_convertToIdToLearnedPlace:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
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
  v6 = v3;
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
        v13 = [v11 identifier];
        [v5 setObject:v11 forKeyedSubscript:v13];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)coalescePlacesFromSourcesOfTruth:(id)a3 sourceOfTruthNames:(id)a4
{
  v189 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
  v119 = self;
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
        v16 = [v6 objectForKey:v14];
        if (v16)
        {
          v17 = [(RTPlaceTypeClassifier *)v119 _convertToIdToLearnedPlace:v16];
        }

        else
        {
          v18 = [MEMORY[0x277CBEA60] array];
          v17 = [(RTPlaceTypeClassifier *)v119 _convertToIdToLearnedPlace:v18];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = NSStringFromSelector(a2);
            [v6 objectForKeyedSubscript:v14];
            v23 = v11;
            v25 = v24 = v6;
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

            v6 = v24;
            v11 = v23;
            v12 = MEMORY[0x277D86220];
          }
        }

        if (v17)
        {
          [v115 addObject:v17];
        }

        objc_autoreleasePoolPop(v15);
        self = v119;
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

  v104 = v6;
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
      v107 = [v35 allValues];
      v112 = [v107 countByEnumeratingWithState:&v149 objects:v187 count:16];
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
          objc_enumerationMutation(v107);
        }

        v114 = v37;
        v38 = *(*(&v149 + 1) + 8 * v37);
        v113 = objc_autoreleasePoolPush();
        v131 = [v38 typeSource];
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
            v132 = [v40 allValues];
            v135 = [v132 countByEnumeratingWithState:&v145 objects:v186 count:16];
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
                  objc_enumerationMutation(v132);
                }

                v43 = *(*(&v145 + 1) + 8 * v41);
                context = objc_autoreleasePoolPush();
                v44 = self;
                v45 = [(RTPlaceTypeClassifier *)self distanceCalculator];
                v46 = [v38 mapItem];
                v47 = [v46 location];
                v48 = [(__CFString *)v43 mapItem];
                [v48 location];
                v50 = v49 = v38;
                v144 = v42;
                [v45 distanceFromLocation:v47 toLocation:v50 error:&v144];
                v52 = v51;
                v138 = v144;

                v38 = v49;
                v53 = [v49 identifier];
                v54 = [(__CFString *)v43 identifier];
                v55 = [v53 isEqual:v54];
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
                    v130 = [v49 identifier];
                    v129 = [(__CFString *)v43 identifier];
                    if ([v130 isEqual:v129])
                    {
                      v60 = @"YES";
                    }

                    else
                    {
                      v60 = @"NO";
                    }

                    v125 = v60;
                    v61 = [v49 type];
                    if (v61 == [(__CFString *)v43 type])
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
                    v128 = [v49 mapItem];
                    v64 = [v128 name];
                    v126 = [(__CFString *)v43 mapItem];
                    v65 = [v126 name];
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
                    v169 = v64;
                    v68 = v64;
                    v170 = 2117;
                    v171 = v65;
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

                    v44 = v119;
                    v38 = v49;
                  }
                }

                if (v56)
                {
                  v69 = [v38 type];
                  self = v44;
                  if (v69 == [(__CFString *)v43 type])
                  {
                    v131 |= [(__CFString *)v43 typeSource];
                    v70 = [(__CFString *)v43 identifier];
                    [v120 removeObjectForKey:v70];
                    v34 = v138;
LABEL_62:

                    goto LABEL_64;
                  }

                  v34 = v138;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    v70 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                    {
                      v71 = objc_opt_class();
                      v72 = NSStringFromClass(v71);
                      v73 = NSStringFromSelector(a2);
                      v74 = [v38 identifier];
                      *buf = 138413315;
                      v159 = v72;
                      v160 = 2112;
                      v161 = v73;
                      v162 = 2112;
                      v163 = v74;
                      v164 = 2117;
                      v165 = v38;
                      v166 = 2117;
                      v167 = v43;
                      _os_log_impl(&dword_2304B3000, v70, OS_LOG_TYPE_INFO, "%@, %@, learnedplaces have same UUID, %@, but mismatched type, learnedPlaceFromSource1, %{sensitive}@, learnedPlaceFromSource2, %{sensitive}@", buf, 0x34u);
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  self = v44;
                  v34 = v138;
                }

LABEL_64:
                objc_autoreleasePoolPop(context);
                ++v41;
              }

              while (v135 != v41);
              v75 = [v132 countByEnumeratingWithState:&v145 objects:v186 count:16];
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

        if ([v38 typeSource] == v131)
        {
          [v108 addObject:v38];
        }

        else
        {
          v76 = [RTLearnedPlace alloc];
          v77 = [v38 identifier];
          v78 = [v38 type];
          v79 = [v38 mapItem];
          [v38 customLabel];
          v81 = v80 = v38;
          v82 = [v80 creationDate];
          v83 = [v80 expirationDate];
          v84 = [(RTLearnedPlace *)v76 initWithIdentifier:v77 type:v78 typeSource:v131 mapItem:v79 customLabel:v81 creationDate:v82 expirationDate:v83, v104];

          v27 = v115;
          [v108 addObject:v84];
        }

        objc_autoreleasePoolPop(v113);
        v37 = v114 + 1;
        v36 = v110;
      }

      while (v114 + 1 != v112);
      v112 = [v107 countByEnumeratingWithState:&v149 objects:v187 count:16];
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

- (BOOL)_logExpertClassifications:(id)a3 sourceNames:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v35 = v5;
  if (v5)
  {
    if (v6)
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

- (id)coalescePlacesFromExperts:(id)a3
{
  v266[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v210 = self;
  if (!v4)
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
  [(RTPlaceTypeClassifier *)self _logExpertClassifications:v4 sourceNames:v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v265[0] = v16;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v265[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v265 count:2];
  v196 = [(RTPlaceTypeClassifier *)self coalescePlacesFromSourcesOfTruth:v4 sourceOfTruthNames:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [v4 objectForKey:v21];
  v23 = v22;
  v24 = self;
  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = [MEMORY[0x277CBEA60] array];
  }

  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [v4 objectForKey:v27];
  v29 = v28;
  if (v28)
  {
    v195 = v28;
  }

  else
  {
    v195 = [MEMORY[0x277CBEA60] array];
  }

  v194 = objc_opt_new();
  v243 = 0;
  v206 = v25;
  v201 = [(RTPlaceTypeClassifier *)v24 _getClosestLearnedPlacesAtDestination:v196 source:v25 threshold:&v243 error:250.0];
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
  v193 = v4;

  v36 = [(RTPlaceTypeClassifier *)v24 _convertToIdToLearnedPlace:v196];
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
  v42 = [v36 allValues];
  v43 = [v42 countByEnumeratingWithState:&v239 objects:v264 count:16];
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
          objc_enumerationMutation(v42);
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

      v44 = [v42 countByEnumeratingWithState:&v239 objects:v264 count:16];
    }

    while (v44);
  }

  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  obj = v206;
  v54 = v210;
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
        v58 = [(__CFString *)v56 identifier];
        v59 = [v201 objectForKeyedSubscript:v58];
        v60 = [v59 firstObject];

        v61 = [(__CFString *)v56 identifier];
        v62 = [v201 objectForKeyedSubscript:v61];
        v63 = [v62 secondObject];

        v64 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          v67 = NSStringFromSelector(a2);
          if (v63)
          {
            v68 = MEMORY[0x277CCACA8];
            [v63 floatValue];
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
          v256 = v60;
          v257 = 2112;
          v258 = v70;
          _os_log_impl(&dword_2304B3000, v64, OS_LOG_TYPE_DEFAULT, "%@, %@, inferred place, %{sensitive}@, closestSourceOfTruthLearnedPlace, %{sensitive}@, distance, %@", buf, 0x34u);
          if (v63)
          {
          }
        }

        v211 = v63;
        if (!v60)
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
                v97 = [v95 type];
                if (v97 == [(__CFString *)v56 type]&& ![(RTPlaceTypeClassifier *)v54 isRottedMeCard:v95 inferredPlace:v56])
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

          v98 = [(__CFString *)v56 identifier];
          [v205 setObject:v56 forKeyedSubscript:v98];

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

        v71 = [v60 type];
        if (v71 == [(__CFString *)v56 type])
        {
          v207 = v57;
          v203 = j;
          v198 = [RTLearnedPlace alloc];
          v72 = [v60 identifier];
          v73 = [v60 type];
          v74 = [v60 typeSource];
          v75 = [(__CFString *)v56 typeSource];
          v76 = [v60 mapItem];
          v77 = [v60 customLabel];
          [v60 creationDate];
          v79 = v78 = v60;
          v80 = [v78 expirationDate];
          v81 = [(RTLearnedPlace *)v198 initWithIdentifier:v72 type:v73 typeSource:v75 | v74 mapItem:v76 customLabel:v77 creationDate:v79 expirationDate:v80];

          v60 = v78;
          v54 = v210;

          v82 = [v81 identifier];
          [v205 setObject:v81 forKeyedSubscript:v82];

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
            v260 = v60;
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
          +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [v60 type]);
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
          v260 = v60;
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
  v112 = [v205 allValues];
  v113 = [v112 countByEnumeratingWithState:&v227 objects:v247 count:16];
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
          objc_enumerationMutation(v112);
        }

        v118 = *(*(&v227 + 1) + 8 * v117);
        v119 = objc_autoreleasePoolPush();
        if ([v118 type] == 1 || objc_msgSend(v118, "type") == 2)
        {
          v120 = [(RTPlaceTypeClassifier *)v210 replaceBusinessMapItemWithReverseGeocodedMapItem:v118];
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
              v127 = v126 = v112;
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

              v112 = v126;
              v115 = v125;
              v116 = MEMORY[0x277D86220];
            }

            v114 = v212;
          }

          v128 = [(__CFString *)v120 identifier];
          [v205 setObject:v120 forKeyedSubscript:v128];
        }

        objc_autoreleasePoolPop(v119);
        ++v117;
      }

      while (v114 != v117);
      v114 = [v112 countByEnumeratingWithState:&v227 objects:v247 count:16];
    }

    while (v114);
  }

  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v129 = [v205 allValues];
  v130 = [v129 countByEnumeratingWithState:&v223 objects:v246 count:16];
  if (v130)
  {
    v131 = v130;
    v132 = *v224;
    v133 = v210;
    while (2)
    {
      for (m = 0; m != v131; ++m)
      {
        if (*v224 != v132)
        {
          objc_enumerationMutation(v129);
        }

        v135 = *(*(&v223 + 1) + 8 * m);
        v136 = objc_autoreleasePoolPush();
        v137 = [v135 type];
        objc_autoreleasePoolPop(v136);
        if (v137 == 1)
        {
          v138 = 1;
          goto LABEL_87;
        }
      }

      v131 = [v129 countByEnumeratingWithState:&v223 objects:v246 count:16];
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
    v133 = v210;
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

    v149 = [v205 allValues];
    v222 = v192;
    v150 = [(RTPlaceTypeClassifier *)v133 _getClosestLearnedPlacesAtDestination:v149 source:v195 threshold:&v222 error:250.0];
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
    v153 = v195;
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
            v161 = [v157 identifier];
            [v205 setObject:v157 forKeyedSubscript:v161];

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
  v175 = [v205 allValues];
  v176 = [v175 countByEnumeratingWithState:&v214 objects:v244 count:16];
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
          objc_enumerationMutation(v175);
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

      v177 = [v175 countByEnumeratingWithState:&v214 objects:v244 count:16];
    }

    while (v177);
  }

  v186 = v205;
  return v205;
}

- (id)_getClosestLearnedPlacesAtDestination:(id)a3 source:(id)a4 threshold:(double)a5 error:(id *)a6
{
  v123 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v86 = v8;
  v78 = v9;
  if (!v8)
  {
    v70 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v70, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLearnedPlaces", buf, 2u);
    }

    v71 = a6;
    if (!a6)
    {
      goto LABEL_59;
    }

    v72 = @"destinationLearnedPlaces";
    goto LABEL_58;
  }

  if (!v9)
  {
    v73 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceLearnedPlaces", buf, 2u);
    }

    v71 = a6;
    if (!a6)
    {
      goto LABEL_59;
    }

    v72 = @"sourceLearnedPlaces";
LABEL_58:
    v74 = v71;
    *v74 = _RTErrorInvalidParameterCreate(v72);
LABEL_59:
    v11 = [MEMORY[0x277CBEAC0] dictionary];
    goto LABEL_64;
  }

  v10 = v9;
  v11 = objc_opt_new();
  v12 = [MEMORY[0x277CBEB18] array];
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
  v91 = v11;
  v85 = v12;
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
          v19 = [v14 identifier];
          v20 = [v17 identifier];
          v21 = [v19 isEqual:v20];

          if (v21)
          {
            v22 = &unk_28459F048;
          }

          else
          {
            v95 = v18;
            v23 = MEMORY[0x277CCABB0];
            v24 = [(RTPlaceTypeClassifier *)self distanceCalculator];
            v25 = [v14 mapItem];
            v26 = [v25 location];
            v27 = [v17 mapItem];
            v28 = [v27 location];
            v102 = v96;
            [v24 distanceFromLocation:v26 toLocation:v28 error:&v102];
            v30 = v29;
            v31 = v102;

            v22 = [v23 numberWithDouble:v30];

            if (v31)
            {
              v11 = v91;
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
              v11 = v91;
            }

            v14 = v93;
            v18 = v95;
          }

          [v22 doubleValue];
          if (v36 <= a5)
          {
            v37 = [v14 identifier];
            v38 = [v11 objectForKeyedSubscript:v37];
            if (!v38 || ([v15 doubleValue], v40 = v39, objc_msgSend(v22, "doubleValue"), v40 > v41))
            {
              v42 = v18;

LABEL_27:
              v43 = v22;

              v37 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:v17 secondObject:v43];
              v38 = [v14 identifier];
              [v11 setObject:v37 forKeyedSubscript:v38];
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
            v44 = [v17 type];
            v45 = [v14 type];

            v46 = v44 == v45;
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
          v52 = [v14 identifier];
          v53 = [v11 objectForKeyedSubscript:v52];
          v101 = [v53 firstObject];
          [v14 identifier];
          v55 = v54 = v11;
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
            v63 = v52;
            v64 = MEMORY[0x277CCACA8];
            v82 = [v57 identifier];
            v81 = [v54 objectForKeyedSubscript:?];
            v80 = [v81 secondObject];
            [v80 floatValue];
            v66 = v64;
            v52 = v63;
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
          v118 = v101;
          v119 = 2112;
          v120 = v67;
          _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@, %@, source learnedPlace, %{sensitive}@, closest learned place, %{sensitive}@, distance, %@", buf, 0x34u);
          if (v58)
          {
          }

          v11 = v91;
        }

        v12 = v85;
        v69 = v88;
        v68 = v89;

        v15 = v99;
      }

      else
      {
        v12 = v85;
        v69 = v88;
        v68 = v89;
      }

      objc_autoreleasePoolPop(v69);
    }

    v87 = [obj countByEnumeratingWithState:&v107 objects:v122 count:16];
  }

  while (v87);
LABEL_61:

  if (a6)
  {
    v75 = _RTSafeArray();
    *a6 = _RTMultiErrorCreate();
  }

LABEL_64:

  return v11;
}

- (id)mergeExistingPlaces:(id)a3 intoUpdatedPlace:(id)a4 typesInMeCard:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    v46 = *v50;
    v43 = v7;
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
        v13 = [v12 identifier];
        v14 = [v7 objectForKey:v13];

        if (!v14)
        {
          v17 = [v12 mapItem];
          if (([v17 source] & 4) != 0)
          {
            [v17 setExtendedAttributes:0];
            v26 = [v12 mapItem];
            [v17 setSource:{objc_msgSend(v26, "source") & 0xFFFFFFFFFFFFFFFBLL}];
          }

          if (([v17 source] & 8) != 0)
          {
            v27 = [v12 mapItem];
            [v17 setSource:{objc_msgSend(v27, "source") & 0xFFFFFFFFFFFFFFF7}];
          }

          if (([v17 source] & 0x20000) != 0)
          {
            v28 = [v12 mapItem];
            [v17 setSource:{objc_msgSend(v28, "source") & 0xFFFFFFFFFFFDFFFFLL}];
          }

          v29 = [RTLearnedPlace alloc];
          v30 = [v12 identifier];
          v31 = [v12 customLabel];
          v32 = [v12 creationDate];
          v33 = [v12 expirationDate];
          v14 = [(RTLearnedPlace *)v29 initWithIdentifier:v30 type:0 typeSource:0 mapItem:v17 customLabel:v31 creationDate:v32 expirationDate:v33];

          if (v14)
          {
            v34 = [(RTLearnedPlace *)v14 identifier];
            [v7 setObject:v14 forKey:v34];
          }

LABEL_21:
          v10 = v46;
          v9 = v47;
LABEL_22:

          goto LABEL_23;
        }

        v15 = [(RTLearnedPlace *)v14 type];
        if (v15 == [v12 type])
        {
          v16 = [(RTLearnedPlace *)v14 typeSource];
          if (v16 == [v12 typeSource])
          {
            v17 = [(RTLearnedPlace *)v14 mapItem];
            v18 = [v17 muid];
            v19 = [v12 mapItem];
            if (v18 != [v19 muid])
            {

              goto LABEL_22;
            }

            v45 = [(RTLearnedPlace *)v14 mapItem];
            v20 = [v45 address];
            v21 = [v12 mapItem];
            v22 = [v21 address];
            v44 = v20;
            if (![v20 isEqualToAddress:v22])
            {

              v7 = v43;
              goto LABEL_22;
            }

            v41 = [(RTLearnedPlace *)v14 mapItem];
            v23 = [v41 location];
            v24 = [v12 mapItem];
            v25 = [v24 location];
            v42 = [v23 isEqualToLocation:v25];

            if (v42)
            {
              v17 = [v12 identifier];
              v7 = v43;
              [v43 removeObjectForKey:v17];
              goto LABEL_21;
            }

            v7 = v43;
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
      v37 = [v7 count];
      *buf = 134217984;
      v54 = v37;
      _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "Finalized %lu places to be updated from merging the existing and coalesced places (from experts)", buf, 0xCu);
    }
  }

  v38 = [v7 allValues];
  [v38 enumerateObjectsUsingBlock:&__block_literal_global_55];

  v39 = [v7 allValues];

  return v39;
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [RTPlaceTypeClassifierExpertContacts alloc];
  v5 = [(RTPlaceTypeClassifier *)self contactsManager];
  v6 = [(RTPlaceTypeClassifier *)self distanceCalculator];
  v7 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v8 = [(RTPlaceTypeClassifier *)self mapServiceManager];
  v9 = [(RTPlaceTypeClassifier *)self mapsSupportManager];
  v10 = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
  v33 = [(RTPlaceTypeClassifierExpertContacts *)v4 initWithContactsManager:v5 distanceCalculator:v6 learnedLocationStore:v7 mapServiceManager:v8 mapsSupportManager:v9 placeTypeClassifierMetricsCalculator:v10];

  [v3 addObject:v33];
  v11 = [RTPlaceTypeClassifierExpertMaps alloc];
  v12 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v13 = [(RTPlaceTypeClassifier *)self mapsSupportManager];
  v14 = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
  v15 = [(RTPlaceTypeClassifierExpertMaps *)v11 initWithLearnedLocationStore:v12 mapsSupportManager:v13 placeTypeClassifierMetricsCalculator:v14];

  [v3 addObject:v15];
  v16 = [RTPlaceTypeClassifierExpertInferred alloc];
  v17 = [(RTPlaceTypeClassifier *)self biomeManager];
  v18 = [(RTPlaceTypeClassifier *)self defaultsManager];
  v19 = [(RTPlaceTypeClassifier *)self distanceCalculator];
  v20 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v21 = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
  v22 = [(RTPlaceTypeClassifier *)self platform];
  v23 = [(RTPlaceTypeClassifierExpertInferred *)v16 initWithBiomeManager:v17 defaultsManager:v18 distanceCalculator:v19 learnedLocationStore:v20 placeTypeClassifierMetricsCalculator:v21 platform:v22];

  [v3 addObject:v23];
  v24 = [RTPlaceTypeClassifierExpertFallback alloc];
  v25 = [(RTPlaceTypeClassifier *)self distanceCalculator];
  v26 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v27 = [(RTPlaceTypeClassifier *)self locationManager];
  v28 = [(RTPlaceTypeClassifier *)self mapServiceManager];
  v29 = [(RTPlaceTypeClassifier *)self visitManager];
  v30 = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
  v31 = [(RTPlaceTypeClassifierExpertFallback *)v24 initWithDistanceCalculator:v25 learnedLocationStore:v26 locationManager:v27 mapServiceManager:v28 visitManager:v29 placeTypeClassifierMetricsCalculator:v30];

  [v3 addObject:v31];

  return v3;
}

- (BOOL)updatePlaces:(id)a3 error:(id *)a4
{
  v432[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v363 = [MEMORY[0x277CBEB18] array];
  v264 = [MEMORY[0x277CBEB18] array];
  v357 = [MEMORY[0x277CBEB18] array];
  v263 = [MEMORY[0x277CBEB18] array];
  v265 = [MEMORY[0x277CBEB18] array];
  v5 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v362 = [v5 predicateForObjectsFromCurrentDevice];

  v6 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v361 = [v6 predicateForObjectsNotFromCurrentDevice];

  v414 = 0u;
  v415 = 0u;
  v412 = 0u;
  v413 = 0u;
  obj = v4;
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
        v11 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
        v12 = [v9 mapItem];
        v401[0] = MEMORY[0x277D85DD0];
        v401[1] = 3221225472;
        v401[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke;
        v401[3] = &unk_2788CEA88;
        v13 = v363;
        v405 = &v406;
        v402 = v13;
        v403 = v9;
        v14 = v10;
        v404 = v14;
        [v11 fetchPlaceWithMapItem:v12 predicate:v362 handler:v401];

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
          v23 = [MEMORY[0x277CCACC8] callStackSymbols];
          v24 = [v23 filteredArrayUsingPredicate:v22];
          v25 = [v24 firstObject];

          [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
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

        v33 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
        v34 = [v9 mapItem];
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
        [v33 fetchPlacesWithMapItem:v34 predicate:v361 handler:v396];

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
          v45 = [MEMORY[0x277CCACC8] callStackSymbols];
          v46 = [v45 filteredArrayUsingPredicate:v44];
          v47 = [v46 firstObject];

          [v43 submitToCoreAnalytics:v47 type:1 duration:v42];
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
            v54 = [v9 identifier];
            v55 = [v9 mapItem];
            v56 = [v9 customLabel];
            v57 = [v9 creationDate];
            v58 = [v9 expirationDate];
            v373 = [(RTLearnedPlace *)v53 initWithIdentifier:v54 type:0 typeSource:0 mapItem:v55 customLabel:v56 creationDate:v57 expirationDate:v58];

            [v357 addObject:v373];
            v59 = v407;
            v60 = v9;
            v61 = v59[5];
            v59[5] = v60;
            goto LABEL_34;
          }

          v84 = [v9 mapItem];
          v85 = [v84 address];
          v86 = [v407[5] mapItem];
          v87 = [v86 address];
          if ([v85 isEqualToAddress:v87])
          {
            v88 = [v9 mapItem];
            v89 = [v88 location];
            v90 = [v407[5] mapItem];
            v91 = [v90 location];
            v92 = [v89 isEqualToLocation:v91];

            if (v92)
            {
              v373 = 0;
LABEL_28:
              if ([v407[5] type] || objc_msgSend(v407[5], "typeSource") || (v104 = v373) != 0)
              {
                v98 = [RTLearnedPlace alloc];
                v99 = [v407[5] identifier];
                v100 = v373;
                if (!v373)
                {
                  v266 = [v407[5] mapItem];
                  v100 = v266;
                }

                v101 = [v407[5] customLabel];
                v102 = [v407[5] creationDate];
                v103 = [v407[5] expirationDate];
                v61 = [(RTLearnedPlace *)v98 initWithIdentifier:v99 type:0 typeSource:0 mapItem:v100 customLabel:v101 creationDate:v102 expirationDate:v103];

                if (!v373)
                {
                }

                [v357 addObject:v61];
                objc_storeStrong(v407 + 5, v61);
LABEL_34:

                v104 = v373;
              }

              goto LABEL_36;
            }

            v374 = objc_alloc(MEMORY[0x277D011A0]);
            v84 = [v407[5] mapItem];
            v85 = [v84 identifier];
            v86 = [v407[5] mapItem];
            v87 = [v86 name];
            v359 = [v407[5] mapItem];
            v322 = [v359 category];
            v355 = [v407[5] mapItem];
            v319 = [v355 categoryMUID];
            v352 = [v407[5] mapItem];
            v316 = [v352 address];
            v349 = [v9 mapItem];
            v313 = [v349 location];
            v346 = [v407[5] mapItem];
            v299 = [v346 source];
            v343 = [v407[5] mapItem];
            v297 = [v343 mapItemPlaceType];
            v340 = [v407[5] mapItem];
            v295 = [v340 muid];
            v337 = [v407[5] mapItem];
            v293 = [v337 resultProviderID];
            v334 = [v407[5] mapItem];
            v310 = [v334 geoMapItemHandle];
            v331 = [v407[5] mapItem];
            v307 = [v331 geoMapItemIdentifier];
            v328 = [v407[5] mapItem];
            v304 = [v328 creationDate];
            v325 = [v407[5] mapItem];
            v301 = [v325 expirationDate];
            v93 = [v407[5] mapItem];
            v94 = [v93 extendedAttributes];
            v95 = [v407[5] mapItem];
            v96 = [v95 displayLanguage];
            v97 = [v407[5] mapItem];
            LOBYTE(v260) = [v97 disputed];
            v373 = [v374 initWithIdentifier:v85 name:v87 category:v322 categoryMUID:v319 address:v316 location:v313 source:v299 mapItemPlaceType:v297 muid:v295 resultProviderID:v293 geoMapItemHandle:v310 geoMapItemIdentifier:v307 creationDate:v304 expirationDate:v301 extendedAttributes:v94 displayLanguage:v96 disputed:v260];
          }

          else
          {
            v373 = 0;
          }

          goto LABEL_28;
        }

        if (![*(*&v427[8] + 40) count])
        {
          v373 = [MEMORY[0x277CBEAA8] date];
          v358 = [v373 dateByAddingTimeInterval:4838400.0];
          v267 = objc_alloc(MEMORY[0x277D01060]);
          v269 = [MEMORY[0x277CCAD78] UUID];
          v353 = [v9 mapItem];
          v350 = [v353 address];
          v284 = [v350 geoAddressData];
          v347 = [v9 mapItem];
          v344 = [v347 address];
          v283 = [v344 subPremises];
          v341 = [v9 mapItem];
          v338 = [v341 address];
          v274 = [v338 subThoroughfare];
          v335 = [v9 mapItem];
          v332 = [v335 address];
          v282 = [v332 thoroughfare];
          v329 = [v9 mapItem];
          v326 = [v329 address];
          v273 = [v326 subLocality];
          v323 = [v9 mapItem];
          v320 = [v323 address];
          v281 = [v320 locality];
          v317 = [v9 mapItem];
          v314 = [v317 address];
          v280 = [v314 subAdministrativeArea];
          v311 = [v9 mapItem];
          v308 = [v311 address];
          v279 = [v308 administrativeArea];
          v305 = [v9 mapItem];
          v302 = [v305 address];
          v278 = [v302 administrativeAreaCode];
          v300 = [v9 mapItem];
          v298 = [v300 address];
          v272 = [v298 postalCode];
          v296 = [v9 mapItem];
          v294 = [v296 address];
          v277 = [v294 country];
          v292 = [v9 mapItem];
          v291 = [v292 address];
          v276 = [v291 countryCode];
          v290 = [v9 mapItem];
          v289 = [v290 address];
          v275 = [v289 inlandWater];
          v288 = [v9 mapItem];
          v287 = [v288 address];
          v271 = [v287 ocean];
          v286 = [v9 mapItem];
          v285 = [v286 address];
          v270 = [v285 areasOfInterest];
          v62 = [v9 mapItem];
          v63 = [v62 address];
          v64 = [v63 isIsland];
          v65 = [v9 mapItem];
          v66 = [v65 address];
          v67 = [v66 iso3166CountryCode];
          v68 = [v9 mapItem];
          v69 = [v68 address];
          v70 = [v69 iso3166SubdivisionCode];
          LOBYTE(v260) = v64;
          v268 = [v267 initWithIdentifier:v269 geoAddressData:v284 subPremises:v283 subThoroughfare:v274 thoroughfare:v282 subLocality:v273 locality:v281 subAdministrativeArea:v280 administrativeArea:v279 administrativeAreaCode:v278 postalCode:v272 country:v277 countryCode:v276 inlandWater:v275 ocean:v271 areasOfInterest:v270 isIsland:v260 creationDate:v373 expirationDate:v358 iso3166CountryCode:v67 iso3166SubdivisionCode:v70];

          v312 = objc_alloc(MEMORY[0x277D011A0]);
          v324 = [MEMORY[0x277CCAD78] UUID];
          v354 = [v9 mapItem];
          v321 = [v354 name];
          v351 = [v9 mapItem];
          v318 = [v351 category];
          v348 = [v9 mapItem];
          v315 = [v348 categoryMUID];
          v345 = [v9 mapItem];
          v327 = [v345 location];
          v342 = [v9 mapItem];
          v309 = [v342 source];
          v339 = [v9 mapItem];
          v306 = [v339 mapItemPlaceType];
          v336 = [v9 mapItem];
          v303 = [v336 muid];
          v333 = [v9 mapItem];
          v71 = [v333 resultProviderID];
          v330 = [v9 mapItem];
          v72 = [v330 geoMapItemHandle];
          v73 = [v9 mapItem];
          v74 = [v73 geoMapItemIdentifier];
          v75 = [v9 mapItem];
          v76 = [v75 extendedAttributes];
          v77 = [v9 mapItem];
          v78 = [v77 displayLanguage];
          v79 = [v9 mapItem];
          LOBYTE(v261) = [v79 disputed];
          v80 = [v312 initWithIdentifier:v324 name:v321 category:v318 categoryMUID:v315 address:v268 location:v327 source:v309 mapItemPlaceType:v306 muid:v303 resultProviderID:v71 geoMapItemHandle:v72 geoMapItemIdentifier:v74 creationDate:v373 expirationDate:v358 extendedAttributes:v76 displayLanguage:v78 disputed:v261];

          v81 = [RTLearnedPlace alloc];
          v82 = [MEMORY[0x277CCAD78] UUID];
          v83 = [(RTLearnedPlace *)v81 initWithIdentifier:v82 type:0 typeSource:0 mapItem:v80 customLabel:0 creationDate:v373 expirationDate:v358];

          [v264 addObject:v83];
          objc_storeStrong(v407 + 5, v83);

          v61 = v358;
          goto LABEL_34;
        }

LABEL_36:
        v105 = v407[5];
        if (v105)
        {
          v375 = v105;
        }

        else
        {
          v375 = [*(*&v427[8] + 40) firstObject];
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
        v107 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
        v108 = [v9 identifier];
        v392[0] = MEMORY[0x277D85DD0];
        v392[1] = 3221225472;
        v392[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_61;
        v392[3] = &unk_2788C4B58;
        v394 = v419;
        v395 = v423;
        v109 = v106;
        v393 = v109;
        [v107 fetchLocationOfInterestWithIdentifier:v108 handler:v392];

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
        v118 = [MEMORY[0x277CCACC8] callStackSymbols];
        v119 = [v118 filteredArrayUsingPredicate:v117];
        v120 = [v119 firstObject];

        [v116 submitToCoreAnalytics:v120 type:1 duration:v115];
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
            v132 = [v9 identifier];
            v133 = [v9 type];
            v134 = [v9 typeSource];
            v135 = [v375 mapItem];
            v136 = [v9 customLabel];
            v137 = [v9 creationDate];
            v138 = [v9 expirationDate];
            v139 = [(RTLearnedPlace *)v131 initWithIdentifier:v132 type:v133 typeSource:v134 mapItem:v135 customLabel:v136 creationDate:v137 expirationDate:v138];

            v140 = [RTLearnedLocationOfInterest alloc];
            v141 = [*(*&v419[8] + 40) identifier];
            v142 = [*(*&v419[8] + 40) location];
            v143 = [*(*&v419[8] + 40) visits];
            v144 = [*(*&v419[8] + 40) transitions];
            v145 = [(RTLearnedLocationOfInterest *)v140 initWithIdentifier:v141 location:v142 place:v139 visits:v143 transitions:v144];
            v146 = *(*&v419[8] + 40);
            *(*&v419[8] + 40) = v145;

            if (*(*&v419[8] + 40))
            {
              [v265 addObject:?];
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
            v139 = [v148 location];

            v372 = [[RTLearnedLocation alloc] initWithLocation:v139 dataPointCount:0 confidence:0.0];
            if (v372)
            {
              v149 = [RTLearnedPlace alloc];
              v366 = [v375 identifier];
              v150 = [v9 type];
              v151 = [v9 typeSource];
              v152 = [v375 mapItem];
              v153 = [v375 customLabel];
              v154 = [v375 creationDate];
              v155 = [v375 expirationDate];
              v156 = [(RTLearnedPlace *)v149 initWithIdentifier:v366 type:v150 typeSource:v151 mapItem:v152 customLabel:v153 creationDate:v154 expirationDate:v155];

              v157 = [RTLearnedLocationOfInterest alloc];
              v158 = [v156 identifier];
              v159 = [(RTLearnedLocationOfInterest *)v157 initWithIdentifier:v158 location:v372 place:v156 visits:0 transitions:0];
              v160 = *(*&v419[8] + 40);
              *(*&v419[8] + 40) = v159;

              if (*(*&v419[8] + 40))
              {
                [v263 addObject:?];
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

  if ([v363 count])
  {
    if (a4)
    {
      v161 = _RTSafeArray();
      *a4 = _RTMultiErrorCreate();
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
  v164 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v389[0] = MEMORY[0x277D85DD0];
  v389[1] = 3221225472;
  v389[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_64;
  v389[3] = &unk_2788C4618;
  v391 = &v406;
  v165 = v163;
  v390 = v165;
  [v164 storePlaces:v264 handler:v389];

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
  v173 = [MEMORY[0x277CCACC8] callStackSymbols];
  v174 = [v173 filteredArrayUsingPredicate:v172];
  v175 = [v174 firstObject];

  [v171 submitToCoreAnalytics:v175 type:1 duration:v170];
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
    [v363 addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v183 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
    {
      v184 = [v264 count];
      v185 = v407[5];
      *v427 = 134218242;
      *&v427[4] = v184;
      *&v427[12] = 2112;
      *&v427[14] = v185;
      _os_log_impl(&dword_2304B3000, v183, OS_LOG_TYPE_INFO, "added %lu placeholder places for meCard postalAddress mapItems, error, %@", v427, 0x16u);
    }
  }

  [v264 enumerateObjectsUsingBlock:&__block_literal_global_68_0];
  *v427 = 0;
  *&v427[8] = v427;
  *&v427[16] = 0x3032000000;
  v428 = __Block_byref_object_copy__123;
  v429 = __Block_byref_object_dispose__123;
  v430 = 0;
  v186 = dispatch_semaphore_create(0);
  v187 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v386[0] = MEMORY[0x277D85DD0];
  v386[1] = 3221225472;
  v386[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_69;
  v386[3] = &unk_2788C4618;
  v388 = v427;
  v188 = v186;
  v387 = v188;
  [v187 updatePlaces:v357 handler:v386];

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
  v196 = [MEMORY[0x277CCACC8] callStackSymbols];
  v197 = [v196 filteredArrayUsingPredicate:v195];
  v198 = [v197 firstObject];

  [v194 submitToCoreAnalytics:v198 type:1 duration:v193];
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
    [v363 addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v206 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
    {
      v207 = [v357 count];
      v208 = *(*&v427[8] + 40);
      *v423 = 134218242;
      *&v423[4] = v207;
      *&v423[12] = 2112;
      *&v423[14] = v208;
      _os_log_impl(&dword_2304B3000, v206, OS_LOG_TYPE_INFO, "updated %lu places, error, %@", v423, 0x16u);
    }
  }

  [v357 enumerateObjectsUsingBlock:&__block_literal_global_72];
  *v423 = 0;
  *&v423[8] = v423;
  *&v423[16] = 0x3032000000;
  v424 = __Block_byref_object_copy__123;
  v425 = __Block_byref_object_dispose__123;
  v426 = 0;
  v209 = dispatch_semaphore_create(0);
  v210 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v383[0] = MEMORY[0x277D85DD0];
  v383[1] = 3221225472;
  v383[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_73;
  v383[3] = &unk_2788C4618;
  v385 = v423;
  v211 = v209;
  v384 = v211;
  [v210 storeLocationsOfInterest:v263 handler:v383];

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
  v220 = [MEMORY[0x277CCACC8] callStackSymbols];
  v221 = [v220 filteredArrayUsingPredicate:v219];
  v222 = [v221 firstObject];

  [v218 submitToCoreAnalytics:v222 type:1 duration:v217];
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
    [v363 addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v230 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
    {
      v231 = [v263 count];
      v232 = *(*&v423[8] + 40);
      *v419 = 134218242;
      *&v419[4] = v231;
      *&v419[12] = 2112;
      *&v419[14] = v232;
      _os_log_impl(&dword_2304B3000, v230, OS_LOG_TYPE_INFO, "added %lu placeholder locations of interests for meCard postalAddress mapItems, error, %@", v419, 0x16u);
    }
  }

  [v263 enumerateObjectsUsingBlock:&__block_literal_global_76];
  *v419 = 0;
  *&v419[8] = v419;
  *&v419[16] = 0x3032000000;
  v420 = __Block_byref_object_copy__123;
  v421 = __Block_byref_object_dispose__123;
  v422 = 0;
  v233 = dispatch_semaphore_create(0);
  v234 = [(RTPlaceTypeClassifier *)self learnedLocationStore];
  v380[0] = MEMORY[0x277D85DD0];
  v380[1] = 3221225472;
  v380[2] = __44__RTPlaceTypeClassifier_updatePlaces_error___block_invoke_77;
  v380[3] = &unk_2788C4618;
  v382 = v419;
  v235 = v233;
  v381 = v235;
  [v234 updateLocationsOfInterest:v265 handler:v380];

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
  v244 = [MEMORY[0x277CCACC8] callStackSymbols];
  v245 = [v244 filteredArrayUsingPredicate:v243];
  v246 = [v245 firstObject];

  [v242 submitToCoreAnalytics:v246 type:1 duration:v241];
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
    [v363 addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v254 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v254, OS_LOG_TYPE_INFO))
    {
      v255 = [v265 count];
      v256 = *(*&v419[8] + 40);
      *buf = 134218242;
      *&buf[4] = v255;
      v417 = 2112;
      v418 = v256;
      _os_log_impl(&dword_2304B3000, v254, OS_LOG_TYPE_INFO, "updated %lu learnedLocationsOfInterest, error, %@", buf, 0x16u);
    }
  }

  [v265 enumerateObjectsUsingBlock:&__block_literal_global_80];
  v257 = [v363 count];
  v162 = v257 == 0;
  if (a4 && v257)
  {
    v258 = _RTSafeArray();
    *a4 = _RTMultiErrorCreate();
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

- (id)getClassificationsFromExperts:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7 = v5;
  v42 = [v7 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v42)
  {
    v41 = *v55;
    v37 = v7;
    v38 = v6;
    v40 = self;
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
        v13 = v6;
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
                      v6 = v38;
                      self = v40;
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
              self = v40;
            }

            v25 = [v13 countByEnumeratingWithState:&v50 objects:v65 count:16];
            v7 = v37;
            v6 = v38;
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
        if (a4)
        {
          v34 = v14;
          *a4 = v14;
        }

        v33 = 0;
        goto LABEL_43;
      }

      v18 = objc_opt_class();
      if (v18 != objc_opt_class())
      {
        goto LABEL_17;
      }

      v19 = [(RTPlaceTypeClassifier *)self platform];
      if ([v19 watchPlatform])
      {
        v20 = [(RTPlaceTypeClassifier *)self platform];
        v21 = [v20 isTinkerPaired];

        if (!v21)
        {
          goto LABEL_17;
        }

        v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_83];
        v22 = [v13 filteredArrayUsingPredicate:v19];

        v13 = v22;
      }

LABEL_17:
      if ([v13 count])
      {
        [v6 setObject:v13 forKey:v17];
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

  v33 = v6;
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

- (BOOL)processExpertClassifications:(id)a3 error:(id *)a4
{
  v104 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v80 = [MEMORY[0x277CBEB38] dictionary];
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
    if (a4)
    {
      v15 = v13;
      v16 = 0;
      *a4 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    aSelector = a2;
    v76 = a4;
    v17 = [(RTPlaceTypeClassifier *)self placeTypeClassifierMetricsCalculator];
    v78 = v12;
    [v17 storeMetricsData:v12 source:3];

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v79 = v7;
    v20 = [v7 objectForKey:v19];

    v21 = [MEMORY[0x277CBEB38] dictionary];
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
          [v21 setObject:v27 forKeyedSubscript:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v92 objects:v99 count:16];
      }

      while (v24);
    }

    v81 = self;
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
            [v80 setObject:&unk_28459F060 forKey:v39];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v88 objects:v98 count:16];
      }

      while (v33);
    }

    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = [v79 objectForKey:v41];

    v43 = [MEMORY[0x277CBEB18] array];
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
          v51 = [v21 objectForKey:v50];

          if (v51 && [(RTPlaceTypeClassifier *)v81 isRottedMeCard:v49 inferredPlace:v51])
          {
            [v43 addObject:v49];
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v84 objects:v97 count:16];
      }

      while (v46);
    }

    v52 = [(RTPlaceTypeClassifier *)v81 placeTypeClassifierMetricsCalculator];
    [v52 storeMetricsData:v43 source:10];

    v7 = v79;
    v53 = [(RTPlaceTypeClassifier *)v81 coalescePlacesFromExperts:v79];
    [(RTPlaceTypeClassifier *)v81 storeTruthMetricsWithExpertClassifications:v79 rottedPlaces:v43];
    v54 = [v53 allValues];
    [(RTPlaceTypeClassifier *)v81 donateInferredPlaces:v54];

    v55 = [(RTPlaceTypeClassifier *)v81 placeTypeClassifierMetricsCalculator];
    v56 = [v53 allValues];
    [v55 storeMetricsData:v56 source:1];

    v12 = v78;
    v57 = [(RTPlaceTypeClassifier *)v81 mergeExistingPlaces:v78 intoUpdatedPlace:v53 typesInMeCard:v80];
    v83 = 0;
    LOBYTE(v55) = [(RTPlaceTypeClassifier *)v81 updatePlaces:v57 error:&v83];
    v58 = v83;
    v59 = v58;
    if (v55)
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
      v65 = [(RTPlaceTypeClassifier *)v81 getStoredPlacesWithError:&v82];
      v66 = v82;
      v67 = v66;
      v16 = v66 == 0;
      if (v66)
      {
        v59 = v73;
        if (v76)
        {
          v68 = v66;
          *v76 = v67;
        }
      }

      else
      {
        [(RTPlaceTypeClassifier *)v81 placeTypeClassifierMetricsCalculator];
        v70 = v77 = v57;
        [v70 storeMetricsData:v65 source:14];

        v71 = [(RTPlaceTypeClassifier *)v81 placeTypeClassifierMetricsCalculator];
        [v71 submitMetrics];

        v57 = v77;
        v59 = v73;
      }

      v12 = v78;
    }

    else if (v76)
    {
      v69 = v58;
      v16 = 0;
      *v76 = v59;
    }

    else
    {
      v16 = 0;
    }

    v14 = 0;
  }

  return v16;
}

- (BOOL)classifyWithError:(id *)a3
{
  v5 = [(RTPlaceTypeClassifier *)self getExperts];
  v12 = 0;
  v6 = [(RTPlaceTypeClassifier *)self getClassificationsFromExperts:v5 error:&v12];
  v7 = v12;

  if (v7)
  {
    if (!a3)
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
  if (a3 && v11)
  {
LABEL_6:
    v9 = 0;
    *a3 = v7;
  }

LABEL_8:

  return v9;
}

- (void)storeTruthMetricsWithExpertClassifications:(id)a3 rottedPlaces:(id)a4
{
  v33 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v38 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v57[0] = v8;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v57[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v42 = self;
  v34 = v6;
  v12 = [(RTPlaceTypeClassifier *)self coalescePlacesFromSourcesOfTruth:v6 sourceOfTruthNames:v11];

  v35 = [MEMORY[0x277CBEB18] array];
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
        v41 = v38;
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
              v20 = [v14 identifier];
              v21 = [v19 identifier];
              v22 = [v20 isEqual:v21];

              if ((v22 & 1) == 0)
              {
                v23 = [(RTPlaceTypeClassifier *)v42 distanceCalculator];
                v24 = [v14 mapItem];
                v25 = [v24 location];
                v26 = [v19 mapItem];
                v27 = [v26 location];
                v46 = 0;
                [v23 distanceFromLocation:v25 toLocation:v27 error:&v46];
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

        [v35 addObject:v14];
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
  v43[4] = v42;
  v44 = v35;
  v45 = v33;
  v31 = v35;
  [v31 enumerateObjectsUsingBlock:v43];
  v32 = [(RTPlaceTypeClassifier *)v42 placeTypeClassifierMetricsCalculator];
  [v32 storeMetricsData:v31 source:19];
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