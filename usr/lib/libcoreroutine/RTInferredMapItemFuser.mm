@interface RTInferredMapItemFuser
- (BOOL)initializeEntriesForNonAoiDedupedInferredMapItems:(id)items aoiDedupedInferredMapItems:(id)mapItems nonAoiUUIDToLogProbMap:(id *)map aoiUUIDToProbArrayMap:(id *)arrayMap error:(id *)error;
- (BOOL)partitionDedupedInferredMapItems:(id)items intoNonAoiDedupedInferredMapItems:(id *)mapItems aoiDedupedInferredMapItems:(id *)inferredMapItems error:(id *)error;
- (BOOL)updateAoiUUIDToProbArrayMap:(id)map aoiDedupedInferredMapItems:(id)items error:(id *)error;
- (BOOL)updateNonAoiUUIDToLogProbMap:(id)map bluePOIDedupedInferredMapItems:(id)items error:(id *)error;
- (BOOL)updateNonAoiUUIDToLogProbMap:(id)map nonAoiDedupedInferredMapItems:(id)items error:(id *)error;
- (BOOL)updateNonAoiUUIDToLogProbMap:(id)map nonBluePOIDedupedInferredMapItems:(id)items error:(id *)error;
- (RTInferredMapItemFuser)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store;
- (RTInferredMapItemFuser)initWithDistanceCalculator:(id)calculator parameters:(id)parameters learnedLocationStore:(id)store;
- (double)logSumExpOfLogProbMap:(id)map error:(id *)error;
- (id)bestFromFusedInferredMapItems:(id)items;
- (id)filterCandidates:(id)candidates referenceLocation:(id)location error:(id *)error;
- (id)filterLearnedPlaceCandidates:(id)candidates referenceLocation:(id)location error:(id *)error;
- (id)filterUnknownLearnedPlaceCandidates:(id)candidates;
- (id)fusedInferredMapItemsFromUUIDToProbMap:(id)map inferredMapItemDeduperState:(id)state uuidToFusedMapItemSourceMap:(id)sourceMap referenceLocation:(id)location error:(id *)error;
- (id)fusedInferredMapItemsUsingCandidates:(id)candidates referenceLocation:(id)location snapToBestKnownPlace:(BOOL)place snapToBestAoi:(BOOL)aoi error:(id *)error;
- (id)highestConfidenceAoiMapItemFromFusedInferredMapItems:(id)items;
- (id)normalizeNonAoiUUIDToLogProbMap:(id)map aoiUUIDToProbArrayMap:(id)arrayMap error:(id *)error;
- (id)populateMapItemSourceEntriesForDedupedInferredMapItems:(id)items error:(id *)error;
- (id)preprocessCandidates:(id)candidates referenceLocation:(id)location snapToBestKnownPlace:(BOOL)place snapToBestAoi:(BOOL)aoi error:(id *)error;
- (id)snapToBestAOICandidate:(id)candidate error:(id *)error;
- (id)snapToBestKnownPlaceType:(id)type error:(id *)error;
- (id)subtractMaxLogarithmFromLogProbMap:(id)map error:(id *)error;
@end

@implementation RTInferredMapItemFuser

- (RTInferredMapItemFuser)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedLocationStore:(id)store
{
  storeCopy = store;
  calculatorCopy = calculator;
  managerCopy = manager;
  v11 = [[RTInferredMapItemFuserParameters alloc] initWithDefaultsManager:managerCopy];

  v12 = [(RTInferredMapItemFuser *)self initWithDistanceCalculator:calculatorCopy parameters:v11 learnedLocationStore:storeCopy];
  return v12;
}

- (RTInferredMapItemFuser)initWithDistanceCalculator:(id)calculator parameters:(id)parameters learnedLocationStore:(id)store
{
  v28 = *MEMORY[0x277D85DE8];
  calculatorCopy = calculator;
  parametersCopy = parameters;
  storeCopy = store;
  if (!calculatorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      selfCopy = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_12;
  }

  if (!parametersCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: parameters";
    goto LABEL_15;
  }

  v25.receiver = self;
  v25.super_class = RTInferredMapItemFuser;
  v12 = [(RTInferredMapItemFuser *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_distanceCalculator, calculator);
    uUID = [MEMORY[0x277CCAD78] UUID];
    placeholderUUID = v13->_placeholderUUID;
    v13->_placeholderUUID = uUID;

    v16 = [RTInferredMapItemDeduper alloc];
    v17 = [(RTInferredMapItemDeduper *)v16 initWithDeduperFunction:deduperFunctionGroupedLabelType];
    deduper = v13->_deduper;
    v13->_deduper = v17;

    objc_storeStrong(&v13->_parameters, parameters);
    objc_storeStrong(&v13->_learnedLocationStore, store);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        parameters = v13->_parameters;
        *buf = 138412290;
        parametersCopy2 = parameters;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "created fuser with parameters, %@", buf, 0xCu);
      }
    }
  }

  self = v13;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)filterCandidates:(id)candidates referenceLocation:(id)location error:(id *)error
{
  v115[1] = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  locationCopy = location;
  v82 = candidatesCopy;
  v85 = locationCopy;
  if (!candidatesCopy)
  {
    v69 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *v100 = 0;
      _os_log_error_impl(&dword_2304B3000, v69, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", v100, 2u);
    }

    if (error)
    {
      v70 = _RTErrorInvalidParameterCreate(@"candidates");
LABEL_55:
      v68 = 0;
      *error = v70;
      goto LABEL_62;
    }

LABEL_56:
    v68 = 0;
    goto LABEL_62;
  }

  if (!locationCopy)
  {
    v71 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      *v100 = 0;
      _os_log_error_impl(&dword_2304B3000, v71, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", v100, 2u);
    }

    if (error)
    {
      v70 = _RTErrorInvalidParameterCreate(@"referenceLocation");
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v88 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = candidatesCopy;
  v8 = [obj countByEnumeratingWithState:&v107 objects:v114 count:16];
  if (v8)
  {
    v10 = *v108;
    v78 = *MEMORY[0x277D01448];
    v79 = *MEMORY[0x277CCA450];
    *&v9 = 138412547;
    v77 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v108 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v107 + 1) + 8 * v11);
        firstObject = [v12 firstObject];
        if ([firstObject source] == 8)
        {

LABEL_11:
          [v88 addObject:v12];
          goto LABEL_19;
        }

        firstObject2 = [v12 firstObject];
        mapItem = [firstObject2 mapItem];
        v16 = [mapItem mapItemPlaceType] == 1;

        if (v16)
        {
          goto LABEL_11;
        }

        distanceCalculator = self->_distanceCalculator;
        firstObject3 = [v12 firstObject];
        mapItem2 = [firstObject3 mapItem];
        location = [mapItem2 location];
        v106 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:location toLocation:v85 error:&v106];
        v22 = v21;
        v23 = v106;

        if (v23)
        {
          v72 = MEMORY[0x277CCA9B8];
          userInfo = [v23 userInfo];
          v74 = [v72 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:1 userInfo:userInfo];

          if (error)
          {
            v75 = v74;
            *error = v74;
          }

LABEL_60:
          v68 = 0;
          v67 = v88;
          goto LABEL_61;
        }

        [(RTInferredMapItemFuserParameters *)self->_parameters distanceThreshold];
        if (v22 <= v24)
        {
          firstObject4 = 0;
LABEL_17:
          [v88 addObject:v12];
LABEL_18:

          goto LABEL_19;
        }

        firstObject4 = [v12 firstObject];
        mapItem3 = [firstObject4 mapItem];
        if (([mapItem3 source] & 0x2000) == 0)
        {

          goto LABEL_18;
        }

        learnedLocationStore = [(RTInferredMapItemFuser *)self learnedLocationStore];
        v28 = learnedLocationStore == 0;

        if (!v28)
        {
          *v100 = 0;
          v101 = v100;
          v102 = 0x3032000000;
          v103 = __Block_byref_object_copy__173;
          v104 = __Block_byref_object_dispose__173;
          v105 = 0;
          v94 = 0;
          v95 = &v94;
          v96 = 0x3032000000;
          v97 = __Block_byref_object_copy__173;
          v98 = __Block_byref_object_dispose__173;
          v99 = 0;
          v29 = dispatch_semaphore_create(0);
          learnedLocationStore2 = [(RTInferredMapItemFuser *)self learnedLocationStore];
          firstObject5 = [v12 firstObject];
          mapItem4 = [firstObject5 mapItem];
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __67__RTInferredMapItemFuser_filterCandidates_referenceLocation_error___block_invoke;
          v90[3] = &unk_2788C4B58;
          v92 = v100;
          v93 = &v94;
          v33 = v29;
          v91 = v33;
          [learnedLocationStore2 fetchLocationOfInterestWithMapItem:mapItem4 handler:v90];

          dsema = v33;
          v34 = [MEMORY[0x277CBEAA8] now];
          v35 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(dsema, v35))
          {
            v81 = [MEMORY[0x277CBEAA8] now];
            [v81 timeIntervalSinceDate:v34];
            v37 = v36;
            v38 = objc_opt_new();
            v39 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_210_0];
            callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
            v41 = [callStackSymbols filteredArrayUsingPredicate:v39];
            firstObject6 = [v41 firstObject];

            [v38 submitToCoreAnalytics:firstObject6 type:1 duration:v37];
            v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v43, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v44 = MEMORY[0x277CCA9B8];
            v115[0] = v79;
            *buf = @"semaphore wait timeout";
            v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v115 count:1];
            v46 = [v44 errorWithDomain:v78 code:15 userInfo:v45];

            if (v46)
            {
              v47 = v46;

              v48 = 0;
              goto LABEL_29;
            }
          }

          else
          {
            v46 = 0;
          }

          v48 = 1;
LABEL_29:

          v49 = v46;
          if ((v48 & 1) == 0)
          {
            objc_storeStrong(v95 + 5, v46);
          }

          if (v95[5])
          {
            v50 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v63 = NSStringFromSelector(a2);
              firstObject7 = [v12 firstObject];
              mapItem5 = [firstObject7 mapItem];
              *buf = v77;
              *&buf[4] = v63;
              v112 = 2117;
              v113 = mapItem5;
              _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "%@, Failed to fetch LOI with mapItem, %{sensitive}@", buf, 0x16u);
            }

LABEL_35:
            firstObject4 = 0;
            v51 = 0;
            v52 = 1;
          }

          else
          {
            v53 = self->_distanceCalculator;
            location2 = [*(v101 + 5) location];
            v54Location = [location2 location];
            v89 = 0;
            [(RTDistanceCalculator *)v53 distanceFromLocation:v54Location toLocation:v85 error:&v89];
            v57 = v56;
            firstObject4 = v89;

            if (firstObject4)
            {
              v58 = MEMORY[0x277CCA9B8];
              userInfo2 = [firstObject4 userInfo];
              v60 = [v58 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:1 userInfo:userInfo2];

              if (error)
              {
                v61 = v60;
                *error = v60;
              }

              v51 = 0;
              v52 = 0;
            }

            else
            {
              [(RTInferredMapItemFuserParameters *)self->_parameters distanceThreshold];
              if (v57 > v62)
              {
                goto LABEL_35;
              }

              firstObject4 = 0;
              v52 = 0;
              v51 = 1;
            }
          }

          _Block_object_dispose(&v94, 8);
          _Block_object_dispose(v100, 8);

          if (v51)
          {
            goto LABEL_17;
          }

          if (!v52)
          {
            goto LABEL_60;
          }
        }

LABEL_19:
        ++v11;
      }

      while (v8 != v11);
      v66 = [obj countByEnumeratingWithState:&v107 objects:v114 count:16];
      v8 = v66;
    }

    while (v66);
  }

  v67 = v88;
  v68 = v88;
LABEL_61:

LABEL_62:

  return v68;
}

void __67__RTInferredMapItemFuser_filterCandidates_referenceLocation_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)snapToBestKnownPlaceType:(id)type error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v6 = typeCopy;
  if (typeCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [typeCopy countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v26;
    v11 = -1.79769313e308;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        secondObject = [v13 secondObject];
        unsignedIntegerValue = [secondObject unsignedIntegerValue];

        if (unsignedIntegerValue)
        {
          firstObject = [v13 firstObject];
          [firstObject confidence];
          v18 = v17;

          if (v18 > v11)
          {
            firstObject2 = [v13 firstObject];
            [firstObject2 confidence];
            v11 = v20;

            v21 = v13;
            v9 = v21;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
    if (v9)
    {
      v30 = v9;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    }

    else
    {
LABEL_14:
      v22 = v6;
    }
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"candidates");
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (id)snapToBestAOICandidate:(id)candidate error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v6 = candidateCopy;
  if (candidateCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [candidateCopy countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v27;
    v11 = -1.79769313e308;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        firstObject = [v13 firstObject];
        mapItem = [firstObject mapItem];
        mapItemPlaceType = [mapItem mapItemPlaceType];

        if (mapItemPlaceType == 1)
        {
          firstObject2 = [v13 firstObject];
          [firstObject2 confidence];
          v19 = v18;

          if (v19 > v11)
          {
            v20 = v13;

            firstObject3 = [v20 firstObject];
            [firstObject3 confidence];
            v11 = v22;

            v9 = v20;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
    if (v9)
    {
      v31 = v9;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    }

    else
    {
LABEL_14:
      v23 = v6;
    }
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"candidates");
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (id)filterLearnedPlaceCandidates:(id)candidates referenceLocation:(id)location error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  locationCopy = location;
  v9 = locationCopy;
  if (!candidatesCopy)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      v39 = @"candidates";
LABEL_26:
      _RTErrorInvalidParameterCreate(v39);
      *error = v41 = 0;
      goto LABEL_37;
    }

LABEL_30:
    v41 = 0;
    goto LABEL_37;
  }

  if (!locationCopy)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", buf, 2u);
    }

    if (error)
    {
      v39 = @"referenceLocation";
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  errorCopy = error;
  v50 = locationCopy;
  array = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v48 = candidatesCopy;
  v11 = candidatesCopy;
  v12 = [v11 countByEnumeratingWithState:&v53 objects:v59 count:16];
  v49 = array;
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v54;
    v16 = -1.0;
    v17 = 1.79769313e308;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v54 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        firstObject = [v19 firstObject];
        source = [firstObject source];

        if ((source & 0x2000) != 0)
        {
          distanceCalculator = self->_distanceCalculator;
          firstObject2 = [v19 firstObject];
          mapItem = [firstObject2 mapItem];
          location = [mapItem location];
          v52 = 0;
          [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:location toLocation:v50 error:&v52];
          v27 = v26;
          v28 = v52;

          if (v28)
          {
            v42 = MEMORY[0x277CCA9B8];
            userInfo = [v28 userInfo];
            v44 = [v42 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:1 userInfo:userInfo];

            if (errorCopy)
            {
              v45 = v44;
              *errorCopy = v44;
            }

            v41 = 0;
            goto LABEL_34;
          }

          firstObject3 = [v19 firstObject];
          [firstObject3 confidence];
          v31 = v30;

          firstObject4 = [v19 firstObject];
          [firstObject4 confidence];
          v34 = v33;

          array = v49;
          if (v31 > v16 || v34 == v16 && v27 < v17)
          {
            firstObject5 = [v19 firstObject];
            [firstObject5 confidence];
            v16 = v36;

            v37 = v19;
            v14 = v37;
            v17 = v27;
          }
        }

        else
        {
          [array addObject:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

  if ([array count])
  {
    v41 = array;
LABEL_34:
    candidatesCopy = v48;
    v9 = v50;
  }

  else
  {
    v9 = v50;
    if (!v14)
    {
      v41 = MEMORY[0x277CBEBF8];
      candidatesCopy = v48;
      goto LABEL_36;
    }

    v58 = v14;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    candidatesCopy = v48;
  }

LABEL_36:
LABEL_37:

  return v41;
}

- (id)filterUnknownLearnedPlaceCandidates:(id)candidates
{
  v3 = MEMORY[0x277CCAC30];
  candidatesCopy = candidates;
  v5 = [v3 predicateWithBlock:&__block_literal_global_141];
  v6 = [candidatesCopy filteredArrayUsingPredicate:v5];

  return v6;
}

BOOL __62__RTInferredMapItemFuser_filterUnknownLearnedPlaceCandidates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  if (([v3 source] & 0x2000) != 0)
  {
    v5 = [v2 secondObject];
    v4 = [v5 unsignedIntegerValue] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)preprocessCandidates:(id)candidates referenceLocation:(id)location snapToBestKnownPlace:(BOOL)place snapToBestAoi:(BOOL)aoi error:(id *)error
{
  aoiCopy = aoi;
  placeCopy = place;
  v60 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  locationCopy = location;
  v15 = locationCopy;
  if (!candidatesCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      v22 = _RTErrorInvalidParameterCreate(@"candidates");
      candidatesCopy = 0;
LABEL_17:
      v20 = 0;
      *error = v22;
      goto LABEL_44;
    }

    candidatesCopy = 0;
LABEL_24:
    v20 = 0;
    goto LABEL_44;
  }

  if (!locationCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", buf, 2u);
    }

    if (error)
    {
      v22 = _RTErrorInvalidParameterCreate(@"referenceLocation");
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if ([candidatesCopy count] > 1)
  {
    v55 = 0;
    v24 = [(RTInferredMapItemFuser *)self filterCandidates:candidatesCopy referenceLocation:v15 error:&v55];
    v25 = v55;

    if (v25)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v42 = NSStringFromSelector(a2);
        *buf = 138412546;
        v57 = v42;
        v58 = 2112;
        v59 = v25;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@, filter candidate error, %@", buf, 0x16u);
      }

      if (error)
      {
        v27 = v25;
        v20 = 0;
        *error = v25;
      }

      else
      {
        v20 = 0;
      }

      candidatesCopy = v24;
      goto LABEL_43;
    }

    if ([v24 count] <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = NSStringFromSelector(a2);
          firstObject = [v24 firstObject];
          v30FirstObject = [firstObject firstObject];
          *buf = 138412547;
          v57 = v29;
          v58 = 2117;
          v59 = v30FirstObject;
          _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, exiting after filtering based on location, fused map item, %{sensitive}@", buf, 0x16u);
        }
      }

      v32 = v24;
LABEL_42:
      candidatesCopy = v32;
      v20 = v32;
LABEL_43:

      goto LABEL_44;
    }

    if (!placeCopy && !aoiCopy)
    {
      candidatesCopy = [(RTInferredMapItemFuser *)self filterUnknownLearnedPlaceCandidates:v24];

LABEL_36:
      if ([candidatesCopy count] <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = NSStringFromSelector(a2);
          firstObject2 = [candidatesCopy firstObject];
          v35FirstObject = [firstObject2 firstObject];
          *buf = 138412547;
          v57 = v34;
          v58 = 2117;
          v59 = v35FirstObject;
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, exiting after filtering learned place, fused map item, %{sensitive}@", buf, 0x16u);
        }
      }

      v32 = candidatesCopy;
      goto LABEL_42;
    }

    if (placeCopy)
    {
      v54 = 0;
      candidatesCopy = [(RTInferredMapItemFuser *)self snapToBestKnownPlaceType:v24 error:&v54];
      v38 = v54;

      if (v38)
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        v40 = NSStringFromSelector(a2);
        *buf = 138412546;
        v57 = v40;
        v58 = 2112;
        v59 = v38;
        v41 = "%@, snap to home work error, %@";
        goto LABEL_78;
      }

      if ([candidatesCopy count] <= 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = NSStringFromSelector(a2);
            firstObject3 = [candidatesCopy firstObject];
            v45FirstObject = [firstObject3 firstObject];
            *buf = 138412547;
            v57 = v44;
            v58 = 2117;
            v59 = v45FirstObject;
LABEL_66:
            _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, fused early, fused map item, %{sensitive}@", buf, 0x16u);

            goto LABEL_67;
          }

          goto LABEL_67;
        }

        goto LABEL_68;
      }

      v24 = candidatesCopy;
    }

    if (aoiCopy)
    {
      v53 = 0;
      candidatesCopy = [(RTInferredMapItemFuser *)self snapToBestAOICandidate:v24 error:&v53];
      v38 = v53;

      if (v38)
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        v40 = NSStringFromSelector(a2);
        *buf = 138412546;
        v57 = v40;
        v58 = 2112;
        v59 = v38;
        v41 = "%@, error, %@";
LABEL_78:
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);

LABEL_59:
        if (error)
        {
          v47 = v38;
          v20 = 0;
          *error = v38;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_69;
      }

      if ([candidatesCopy count] <= 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = NSStringFromSelector(a2);
            firstObject3 = [candidatesCopy firstObject];
            v45FirstObject = [firstObject3 firstObject];
            *buf = 138412547;
            v57 = v44;
            v58 = 2117;
            v59 = v45FirstObject;
            goto LABEL_66;
          }

LABEL_67:
        }

LABEL_68:
        v20 = candidatesCopy;
LABEL_69:

        goto LABEL_43;
      }

      v24 = candidatesCopy;
    }

    v52 = 0;
    candidatesCopy = [(RTInferredMapItemFuser *)self filterLearnedPlaceCandidates:v24 referenceLocation:v15 error:&v52];
    v48 = v52;

    if (v48)
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v51 = NSStringFromSelector(a2);
        *buf = 138412546;
        v57 = v51;
        v58 = 2112;
        v59 = v48;
        _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@, filter learned place error, %@", buf, 0x16u);
      }

      if (error)
      {
        v50 = v48;
        *error = v48;
      }

      v20 = 0;
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      firstObject4 = [candidatesCopy firstObject];
      v18FirstObject = [firstObject4 firstObject];
      *buf = 138412547;
      v57 = v17;
      v58 = 2117;
      v59 = v18FirstObject;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, exiting before filtering based on location, fused map item, %{sensitive}@", buf, 0x16u);
    }
  }

  candidatesCopy = candidatesCopy;
  v20 = candidatesCopy;
LABEL_44:

  return v20;
}

- (id)populateMapItemSourceEntriesForDedupedInferredMapItems:(id)items error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if (itemsCopy)
  {
    selfCopy = self;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = itemsCopy;
    obj = itemsCopy;
    v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          mapItem = [v12 mapItem];
          identifier = [mapItem identifier];

          v15 = [dictionary objectForKeyedSubscript:identifier];

          if (!v15)
          {
            [dictionary setObject:&unk_2845A0260 forKeyedSubscript:identifier];
          }

          v16 = MEMORY[0x277CCABB0];
          v17 = [dictionary objectForKeyedSubscript:identifier];
          v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v12, "source") | objc_msgSend(v17, "unsignedIntegerValue")}];
          [dictionary setObject:v18 forKeyedSubscript:identifier];
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    [dictionary setObject:&unk_2845A0260 forKeyedSubscript:selfCopy->_placeholderUUID];
    itemsCopy = v22;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dedupedInferredMapItems", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"dedupedInferredMapItems");
      *error = dictionary = 0;
    }

    else
    {
      dictionary = 0;
    }
  }

  return dictionary;
}

- (BOOL)partitionDedupedInferredMapItems:(id)items intoNonAoiDedupedInferredMapItems:(id *)mapItems aoiDedupedInferredMapItems:(id *)inferredMapItems error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if (!itemsCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dedupedInferredMapItems", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_28;
    }

    v25 = @"dedupedInferredMapItems";
    goto LABEL_27;
  }

  if (!mapItems)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outNonAoiDedupedInferredMapItems", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_28;
    }

    v25 = @"outNonAoiDedupedInferredMapItems";
LABEL_27:
    _RTErrorInvalidParameterCreate(v25);
    *error = v23 = 0;
    goto LABEL_29;
  }

  if (!inferredMapItems)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outAoiDedupedInferredMapItems", buf, 2u);
    }

    if (error)
    {
      v25 = @"outAoiDedupedInferredMapItems";
      goto LABEL_27;
    }

LABEL_28:
    v23 = 0;
    goto LABEL_29;
  }

  inferredMapItemsCopy = inferredMapItems;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = itemsCopy;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        mapItem = [v17 mapItem];
        mapItemPlaceType = [mapItem mapItemPlaceType];

        if (mapItemPlaceType == 1)
        {
          v20 = array;
        }

        else
        {
          v20 = array2;
        }

        [v20 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  v21 = array2;
  *mapItems = array2;
  v22 = array;
  *inferredMapItemsCopy = array;

  v23 = 1;
  itemsCopy = v30;
LABEL_29:

  return v23;
}

- (BOOL)initializeEntriesForNonAoiDedupedInferredMapItems:(id)items aoiDedupedInferredMapItems:(id)mapItems nonAoiUUIDToLogProbMap:(id *)map aoiUUIDToProbArrayMap:(id *)arrayMap error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  mapItemsCopy = mapItems;
  v14 = mapItemsCopy;
  if (!itemsCopy)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nonAoiDedupedInferredMapItems", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v44 = @"nonAoiDedupedInferredMapItems";
    goto LABEL_40;
  }

  if (!mapItemsCopy)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: aoiDedupedInferredMapItems", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v44 = @"aoiDedupedInferredMapItems";
    goto LABEL_40;
  }

  if (!map)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outNonAoiUUIDToLogProbMap", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v44 = @"outNonAoiUUIDToLogProbMap";
LABEL_40:
    _RTErrorInvalidParameterCreate(v44);
    *error = v42 = 0;
    goto LABEL_42;
  }

  if (!arrayMap)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outAoiUUIDToProbArrayMap", buf, 2u);
    }

    if (error)
    {
      v44 = @"outAoiUUIDToProbArrayMap";
      goto LABEL_40;
    }

LABEL_41:
    v42 = 0;
    goto LABEL_42;
  }

  selfCopy = self;
  mapCopy = map;
  arrayMapCopy = arrayMap;
  v53 = mapItemsCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v52 = itemsCopy;
  v16 = itemsCopy;
  v17 = [v16 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v58 + 1) + 8 * i);
        mapItem = [v21 mapItem];
        identifier = [mapItem identifier];
        v24 = [dictionary objectForKeyedSubscript:identifier];

        if (!v24)
        {
          mapItem2 = [v21 mapItem];
          identifier2 = [mapItem2 identifier];
          [dictionary setObject:&unk_2845A0278 forKeyedSubscript:identifier2];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v18);
  }

  [dictionary setObject:&unk_2845A0278 forKeyedSubscript:selfCopy->_placeholderUUID];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v28 = v53;
  v29 = [v28 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v55;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v55 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v54 + 1) + 8 * j);
        mapItem3 = [v33 mapItem];
        identifier3 = [mapItem3 identifier];
        v36 = [dictionary2 objectForKeyedSubscript:identifier3];

        if (!v36)
        {
          array = [MEMORY[0x277CBEB18] array];
          mapItem4 = [v33 mapItem];
          identifier4 = [mapItem4 identifier];
          [dictionary2 setObject:array forKeyedSubscript:identifier4];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v30);
  }

  v40 = dictionary;
  *mapCopy = dictionary;
  v41 = dictionary2;
  *arrayMapCopy = dictionary2;

  v42 = 1;
  itemsCopy = v52;
  v14 = v53;
LABEL_42:

  return v42;
}

- (BOOL)updateAoiUUIDToProbArrayMap:(id)map aoiDedupedInferredMapItems:(id)items error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  itemsCopy = items;
  v10 = itemsCopy;
  v42 = mapCopy;
  if (!mapCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: aoiUUIDToProbArrayMap", buf, 2u);
    }

    if (error)
    {
      v30 = @"aoiUUIDToProbArrayMap";
LABEL_20:
      _RTErrorInvalidParameterCreate(v30);
      *error = v17 = 0;
      goto LABEL_27;
    }

LABEL_21:
    v17 = 0;
    goto LABEL_27;
  }

  if (!itemsCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: aoiDedupedInferredMapItems", buf, 2u);
    }

    if (error)
    {
      v30 = @"aoiDedupedInferredMapItems";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v11 = [[_RTMap alloc] initWithInput:itemsCopy];
  v12 = [(_RTMap *)v11 withBlock:&__block_literal_global_65];

  v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
  v14 = MEMORY[0x277CBEB98];
  allKeys = [mapCopy allKeys];
  v16 = [v14 setWithArray:allKeys];

  v17 = [v13 isEqualToSet:v16];
  if (v17)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v38 = v16;
      v39 = v13;
      v40 = v12;
      v41 = v10;
      v21 = *v44;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v43 + 1) + 8 * i);
          mapItem = [v23 mapItem];
          identifier = [mapItem identifier];
          v26 = [v42 objectForKeyedSubscript:identifier];
          v27 = MEMORY[0x277CCABB0];
          [v23 confidence];
          v28 = [v27 numberWithDouble:?];
          [v26 addObject:v28];
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v20);
      v12 = v40;
      v10 = v41;
      v16 = v38;
      v13 = v39;
    }
  }

  else
  {
    v32 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    v53[0] = @"uniqueAoiUUIDsFromArray != uniqueAoiUUIDsFromMap";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v18 = [v32 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:7 userInfo:v33];

    v34 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138412546;
      v49 = v37;
      v50 = 2112;
      v51 = v18;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (error)
    {
      v35 = v18;
      *error = v18;
    }
  }

LABEL_27:
  return v17;
}

id __87__RTInferredMapItemFuser_updateAoiUUIDToProbArrayMap_aoiDedupedInferredMapItems_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)updateNonAoiUUIDToLogProbMap:(id)map bluePOIDedupedInferredMapItems:(id)items error:(id *)error
{
  v126[1] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  itemsCopy = items;
  v11 = itemsCopy;
  if (mapCopy)
  {
    if (itemsCopy)
    {
      v12 = [mapCopy objectForKeyedSubscript:self->_placeholderUUID];

      if (v12)
      {
        selfCopy = self;
        v13 = [[_RTMap alloc] initWithInput:v11];
        v14 = [(_RTMap *)v13 withBlock:&__block_literal_global_81];

        v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
        v16 = MEMORY[0x277CBEB98];
        v96 = mapCopy;
        allKeys = [mapCopy allKeys];
        v18 = [v16 setWithArray:allKeys];

        if ([v15 isSubsetOfSet:v18])
        {
          v93 = v15;
          v94 = v18;
          v92 = v14;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v19 = v11;
          v20 = [v19 countByEnumeratingWithState:&v109 objects:v118 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v110;
            v23 = 0.0;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v110 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [*(*(&v109 + 1) + 8 * i) confidence];
                v23 = v23 + v25;
              }

              v21 = [v19 countByEnumeratingWithState:&v109 objects:v118 count:16];
            }

            while (v21);

            if (v23 > 1.0)
            {
              v26 = MEMORY[0x277CCA9B8];
              v116 = *MEMORY[0x277CCA450];
              v117 = @"Blue POI candidates total confidence is > 1.0";
              v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
              v28 = [v26 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:6 userInfo:v27];

              v29 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v89 = NSStringFromSelector(a2);
                *buf = 138412546;
                v122 = v89;
                v123 = 2112;
                v124 = v28;
                _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
              }

              v14 = v92;
              v18 = v94;
              if (!error)
              {
LABEL_16:
                v30 = 0;
LABEL_66:

                mapCopy = v96;
                goto LABEL_67;
              }

LABEL_35:
              v42 = v28;
              v30 = 0;
              *error = v28;
              goto LABEL_66;
            }
          }

          else
          {
          }

          v28 = [MEMORY[0x277CBEB58] setWithSet:v94];
          [v28 minusSet:v15];
          if ([v19 count])
          {
            v90 = v28;
            v91 = v11;
            v43 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            v44 = v19;
            v45 = [v44 countByEnumeratingWithState:&v105 objects:v115 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v106;
              do
              {
                for (j = 0; j != v46; ++j)
                {
                  if (*v106 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v49 = *(*(&v105 + 1) + 8 * j);
                  mapItem = [v49 mapItem];
                  identifier = [mapItem identifier];

                  v52 = [v43 objectForKeyedSubscript:identifier];

                  if (!v52)
                  {
                    [v43 setObject:&unk_2845A2278 forKeyedSubscript:identifier];
                  }

                  v53 = MEMORY[0x277CCABB0];
                  v54 = [v43 objectForKeyedSubscript:identifier];
                  [v54 doubleValue];
                  v56 = v55;
                  [v49 confidence];
                  v58 = [v53 numberWithDouble:v56 + v57];
                  [v43 setObject:v58 forKeyedSubscript:identifier];
                }

                v46 = [v44 countByEnumeratingWithState:&v105 objects:v115 count:16];
              }

              while (v46);
            }

            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v59 = v43;
            v60 = [v59 countByEnumeratingWithState:&v101 objects:v114 count:16];
            if (v60)
            {
              v61 = v60;
              v62 = *v102;
              do
              {
                for (k = 0; k != v61; ++k)
                {
                  if (*v102 != v62)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v64 = *(*(&v101 + 1) + 8 * k);
                  v65 = MEMORY[0x277CCABB0];
                  v66 = [v96 objectForKeyedSubscript:v64];
                  [v66 doubleValue];
                  v68 = v67;
                  v69 = [v59 objectForKeyedSubscript:v64];
                  [v69 doubleValue];
                  RTCommonSafeLog();
                  v71 = [v65 numberWithDouble:v68 + v70];
                  [v96 setObject:v71 forKeyedSubscript:v64];
                }

                v61 = [v59 countByEnumeratingWithState:&v101 objects:v114 count:16];
              }

              while (v61);
            }

            [v90 count];
            [(RTInferredMapItemFuserParameters *)selfCopy->_parameters placeholderMultiplier];
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            v28 = v90;
            v72 = [v28 countByEnumeratingWithState:&v97 objects:v113 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v98;
              do
              {
                for (m = 0; m != v73; ++m)
                {
                  if (*v98 != v74)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v76 = *(*(&v97 + 1) + 8 * m);
                  v77 = [v76 isEqual:selfCopy->_placeholderUUID];
                  v78 = MEMORY[0x277CCABB0];
                  v79 = [v96 objectForKeyedSubscript:v76];
                  [v79 doubleValue];
                  v81 = v80;
                  RTCommonSafeLog();
                  v83 = v81 + v82;
                  if (v77)
                  {
                    [(RTInferredMapItemFuserParameters *)selfCopy->_parameters placeholderMultiplier];
                    RTCommonSafeLog();
                    v83 = v83 + v84;
                  }

                  v85 = [v78 numberWithDouble:v83];
                  [v96 setObject:v85 forKeyedSubscript:v76];
                }

                v73 = [v28 countByEnumeratingWithState:&v97 objects:v113 count:16];
              }

              while (v73);
            }

            v30 = 1;
            v11 = v91;
            v14 = v92;
            v15 = v93;
          }

          else
          {
            v30 = 1;
            v14 = v92;
          }

          v18 = v94;
          goto LABEL_66;
        }

        v39 = MEMORY[0x277CCA9B8];
        v119 = *MEMORY[0x277CCA450];
        v120 = @"uniqueBluePOIUUIDs is not a subset of uniqueNonAoiUUIDsFromMap";
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v28 = [v39 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:8 userInfo:v40];

        v41 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v88 = NSStringFromSelector(a2);
          *buf = 138412546;
          v122 = v88;
          v123 = 2112;
          v124 = v28;
          _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        if (!error)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }

      v34 = MEMORY[0x277CCA9B8];
      v125 = *MEMORY[0x277CCA450];
      v126[0] = @"nonAoiUUIDToLogProbMap must contain the placeholder UUID";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:&v125 count:1];
      v36 = [v34 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:9 userInfo:v35];

      v37 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v87 = NSStringFromSelector(a2);
        *buf = 138412546;
        v122 = v87;
        v123 = 2112;
        v124 = v36;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (error)
      {
        v38 = v36;
        *error = v36;
      }

      goto LABEL_31;
    }

    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIDedupedInferredMapItems", buf, 2u);
    }

    if (error)
    {
      v32 = @"bluePOIDedupedInferredMapItems";
      goto LABEL_25;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_67;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nonAoiUUIDToLogProbMap", buf, 2u);
  }

  if (!error)
  {
    goto LABEL_31;
  }

  v32 = @"nonAoiUUIDToLogProbMap";
LABEL_25:
  _RTErrorInvalidParameterCreate(v32);
  *error = v30 = 0;
LABEL_67:

  return v30;
}

id __92__RTInferredMapItemFuser_updateNonAoiUUIDToLogProbMap_bluePOIDedupedInferredMapItems_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)updateNonAoiUUIDToLogProbMap:(id)map nonBluePOIDedupedInferredMapItems:(id)items error:(id *)error
{
  v110[1] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  itemsCopy = items;
  v11 = itemsCopy;
  if (!mapCopy)
  {
    v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v59, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nonAoiUUIDToLogProbMap", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v60 = @"nonAoiUUIDToLogProbMap";
    goto LABEL_35;
  }

  if (!itemsCopy)
  {
    v61 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nonBluePOIDedupedInferredMapItems", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v60 = @"nonBluePOIDedupedInferredMapItems";
LABEL_35:
    _RTErrorInvalidParameterCreate(v60);
    *error = v58 = 0;
    goto LABEL_54;
  }

  v12 = [mapCopy objectForKeyedSubscript:self->_placeholderUUID];

  if (!v12)
  {
    v62 = MEMORY[0x277CCA9B8];
    v109 = *MEMORY[0x277CCA450];
    v110[0] = @"nonAoiUUIDToLogProbMap must contain the placeholder UUID";
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:&v109 count:1];
    v64 = [v62 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:9 userInfo:v63];

    v65 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v76 = NSStringFromSelector(a2);
      *buf = 138412546;
      v106 = v76;
      v107 = 2112;
      v108 = v64;
      _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (error)
    {
      v66 = v64;
      *error = v64;
    }

LABEL_41:
    v58 = 0;
    goto LABEL_54;
  }

  selfCopy = self;
  v14 = [[_RTMap alloc] initWithInput:v11];
  v15 = [(_RTMap *)v14 withBlock:&__block_literal_global_93];

  v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
  v17 = MEMORY[0x277CBEB98];
  allKeys = [mapCopy allKeys];
  v19 = [v17 setWithArray:allKeys];

  if ([v16 isSubsetOfSet:v19])
  {
    v20 = [mapCopy count];
    [(RTInferredMapItemFuserParameters *)selfCopy->_parameters placeholderMultiplier];
    v22 = v21;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v11;
    v87 = [obj countByEnumeratingWithState:&v95 objects:v102 count:16];
    if (v87)
    {
      v81 = v19;
      v82 = v16;
      aSelector = a2;
      errorCopy = error;
      v83 = v15;
      v84 = v11;
      v86 = *v96;
      v23 = v22 + (v20 - 1) + -1.0;
      v24 = 0x277CCA000uLL;
      v25 = selfCopy;
      while (2)
      {
        v26 = 0;
        do
        {
          if (*v96 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v95 + 1) + 8 * v26);
          mapItem = [v27 mapItem];
          identifier = [mapItem identifier];

          [v27 confidence];
          if ((1.0 - v30) / v23 < 0.0)
          {
            v70 = MEMORY[0x277CCA9B8];
            v100 = *MEMORY[0x277CCA450];
            v101 = @"remainder < 0.0";
            v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
            v72 = [v70 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:6 userInfo:v71];

            v73 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v78 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v106 = v78;
              v107 = 2112;
              v108 = v72;
              _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
            }

            if (errorCopy)
            {
              v74 = v72;
              *errorCopy = v72;
            }

            v58 = 0;
            goto LABEL_51;
          }

          v88 = v26;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          allKeys2 = [mapCopy allKeys];
          v31 = [allKeys2 countByEnumeratingWithState:&v91 objects:v99 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v92;
            do
            {
              v34 = 0;
              v89 = v32;
              do
              {
                if (*v92 != v33)
                {
                  objc_enumerationMutation(allKeys2);
                }

                v35 = *(*(&v91 + 1) + 8 * v34);
                if ([v35 isEqual:identifier])
                {
                  v36 = *(v24 + 2992);
                  v37 = [mapCopy objectForKeyedSubscript:v35];
                  [v37 doubleValue];
                  v39 = v38;
                  RTCommonSafeLog();
                  v41 = [v36 numberWithDouble:v39 + v40];
                }

                else
                {
                  v42 = v33;
                  v43 = identifier;
                  v44 = [v35 isEqual:v25->_placeholderUUID];
                  v45 = mapCopy;
                  v46 = v25;
                  v47 = v44;
                  v48 = v24;
                  v49 = *(v24 + 2992);
                  v50 = v45;
                  v37 = [v45 objectForKeyedSubscript:v35];
                  [v37 doubleValue];
                  v52 = v51;
                  RTCommonSafeLog();
                  v54 = v52 + v53;
                  if (v47)
                  {
                    [(RTInferredMapItemFuserParameters *)v46->_parameters placeholderMultiplier];
                    RTCommonSafeLog();
                    v56 = v54 + v55;
                    v57 = v49;
                  }

                  else
                  {
                    v57 = v49;
                    v56 = v54;
                  }

                  v41 = [v57 numberWithDouble:v56];
                  v25 = v46;
                  mapCopy = v50;
                  v24 = v48;
                  identifier = v43;
                  v33 = v42;
                  v32 = v89;
                }

                [mapCopy setObject:v41 forKeyedSubscript:v35];

                ++v34;
              }

              while (v32 != v34);
              v32 = [allKeys2 countByEnumeratingWithState:&v91 objects:v99 count:16];
            }

            while (v32);
          }

          v26 = v88 + 1;
        }

        while (v88 + 1 != v87);
        v58 = 1;
        v87 = [obj countByEnumeratingWithState:&v95 objects:v102 count:16];
        if (v87)
        {
          continue;
        }

        break;
      }

LABEL_51:
      v15 = v83;
      v11 = v84;
      v19 = v81;
      v16 = v82;
    }

    else
    {
      v58 = 1;
    }
  }

  else
  {
    v67 = MEMORY[0x277CCA9B8];
    v103 = *MEMORY[0x277CCA450];
    v104 = @"uniqueNonBluePOIUUIDs is not a subset of uniqueNonAoiUUIDs";
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    obj = [v67 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:8 userInfo:v68];

    v69 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v77 = NSStringFromSelector(a2);
      *buf = 138412546;
      v106 = v77;
      v107 = 2112;
      v108 = obj;
      _os_log_error_impl(&dword_2304B3000, v69, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v58 = 0;
    if (error)
    {
      *error = obj;
    }
  }

LABEL_54:
  return v58;
}

id __95__RTInferredMapItemFuser_updateNonAoiUUIDToLogProbMap_nonBluePOIDedupedInferredMapItems_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)updateNonAoiUUIDToLogProbMap:(id)map nonAoiDedupedInferredMapItems:(id)items error:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  itemsCopy = items;
  v11 = itemsCopy;
  if (!mapCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nonAoiUUIDToLogProbMap", buf, 2u);
    }

    if (error)
    {
      v20 = @"nonAoiUUIDToLogProbMap";
LABEL_13:
      _RTErrorInvalidParameterCreate(v20);
      *error = v22 = 0;
      goto LABEL_42;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_42;
  }

  if (!itemsCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nonAoiDedupedInferredMapItems", buf, 2u);
    }

    if (error)
    {
      v20 = @"nonAoiDedupedInferredMapItems";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  context = objc_autoreleasePoolPush();
  v12 = [[_RTMap alloc] initWithInput:v11];
  v13 = [(_RTMap *)v12 withBlock:&__block_literal_global_101_0];

  v14 = [MEMORY[0x277CBEB58] setWithArray:v13];
  [v14 addObject:self->_placeholderUUID];
  v15 = MEMORY[0x277CBEB98];
  allKeys = [mapCopy allKeys];
  v17 = [v15 setWithArray:allKeys];

  if ([v14 isEqualToSet:v17])
  {
    v18 = 0;
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA450];
    v57[0] = @"uniqueNonAoiUUIDsFromArray is not equal to uniqueNonAoiUUIDsFromMap";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v18 = [v23 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:7 userInfo:v24];

    v25 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      v53 = v42;
      v54 = 2112;
      v55 = v18;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(context);
  if (v18)
  {
    if (error)
    {
      v26 = v18;
      v22 = 0;
      *error = v18;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    contexta = self;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v29 = v11;
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v48;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v47 + 1) + 8 * i);
          if ([v34 source] == 0x4000)
          {
            v35 = array;
          }

          else
          {
            v35 = array2;
          }

          [v35 addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v31);
    }

    v46 = 0;
    v36 = [(RTInferredMapItemFuser *)contexta updateNonAoiUUIDToLogProbMap:mapCopy bluePOIDedupedInferredMapItems:array error:&v46];
    v37 = v46;
    v38 = v37;
    if (v36)
    {
      v45 = 0;
      v22 = [(RTInferredMapItemFuser *)contexta updateNonAoiUUIDToLogProbMap:mapCopy nonBluePOIDedupedInferredMapItems:array2 error:&v45];
      v39 = v45;
      if (error && !v22)
      {
        v39 = v39;
        *error = v39;
      }
    }

    else if (error)
    {
      v40 = v37;
      v22 = 0;
      *error = v38;
    }

    else
    {
      v22 = 0;
    }

    v18 = 0;
  }

LABEL_42:
  return v22;
}

id __91__RTInferredMapItemFuser_updateNonAoiUUIDToLogProbMap_nonAoiDedupedInferredMapItems_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 identifier];

  return v3;
}

- (id)subtractMaxLogarithmFromLogProbMap:(id)map error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v6 = mapCopy;
  if (mapCopy)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(mapCopy, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      v12 = -1.79769313e308;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v37 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:v14];
          [v15 doubleValue];
          v17 = v16;

          if (v17 > v12)
          {
            v18 = [v8 objectForKeyedSubscript:v14];
            [v18 doubleValue];
            v12 = v19;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = -1.79769313e308;
    }

    v32 = v6;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    allKeys = [v8 allKeys];
    v22 = [allKeys countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(allKeys);
          }

          v26 = *(*(&v33 + 1) + 8 * j);
          v27 = MEMORY[0x277CCABB0];
          v28 = [v8 objectForKeyedSubscript:v26];
          [v28 doubleValue];
          v30 = [v27 numberWithDouble:v29 - v12];
          [v7 setObject:v30 forKeyedSubscript:v26];
        }

        v23 = [allKeys countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v23);
    }

    v6 = v32;
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: logProbMap", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"logProbMap");
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (double)logSumExpOfLogProbMap:(id)map error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v6 = mapCopy;
  if (mapCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [mapCopy countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [v6 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
          [v12 doubleValue];
          v10 = v10 + exp(v13);
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    v15 = log(v10);
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: logProbMap", buf, 2u);
    }

    v15 = 0.0;
    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"logProbMap");
    }
  }

  return v15;
}

- (id)normalizeNonAoiUUIDToLogProbMap:(id)map aoiUUIDToProbArrayMap:(id)arrayMap error:(id *)error
{
  v90 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  arrayMapCopy = arrayMap;
  v11 = arrayMapCopy;
  if (mapCopy)
  {
    if (arrayMapCopy)
    {
      v80 = 0;
      v12 = [(RTInferredMapItemFuser *)self subtractMaxLogarithmFromLogProbMap:mapCopy error:&v80];
      v13 = v80;

      if (v13)
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v59 = NSStringFromSelector(a2);
          *buf = 138412546;
          v87 = v59;
          v88 = 2112;
          v89 = v13;
          _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        if (error)
        {
          v15 = v13;
          v16 = 0;
          *error = v13;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v79 = 0;
        [(RTInferredMapItemFuser *)self logSumExpOfLogProbMap:v12 error:&v79];
        v20 = v19;
        v21 = v79;
        if (v21)
        {
          v22 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v60 = NSStringFromSelector(a2);
            *buf = 138412546;
            v87 = v60;
            v88 = 2112;
            v89 = v21;
            _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }

          if (error)
          {
            v23 = v21;
            v16 = 0;
            *error = v21;
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
          v65 = v11;
          v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count") + objc_msgSend(v12, "count")}];
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v64 = v12;
          v25 = v12;
          v26 = [v25 countByEnumeratingWithState:&v75 objects:v85 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v76;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v76 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v75 + 1) + 8 * i);
                v31 = MEMORY[0x277CCABB0];
                v32 = [v25 objectForKeyedSubscript:v30];
                [v32 doubleValue];
                v34 = [v31 numberWithDouble:exp(v33 - v20)];
                [v24 setObject:v34 forKeyedSubscript:v30];
              }

              v27 = [v25 countByEnumeratingWithState:&v75 objects:v85 count:16];
            }

            while (v27);
          }

          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v35 = v65;
          v36 = [v35 countByEnumeratingWithState:&v71 objects:v84 count:16];
          if (v36)
          {
            v37 = v36;
            v66 = *v72;
            while (2)
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v72 != v66)
                {
                  objc_enumerationMutation(v35);
                }

                v39 = *(*(&v71 + 1) + 8 * j);
                v40 = [v35 objectForKeyedSubscript:v39];
                v41 = [v40 count];

                if (!v41)
                {
                  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"entry %@ in aoiUUIDToProbArrayMap has count 0", v39];
                  v53 = MEMORY[0x277CCA9B8];
                  v82 = *MEMORY[0x277CCA450];
                  v83 = v52;
                  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
                  v55 = [v53 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:0 userInfo:v54];

                  v56 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    v61 = NSStringFromSelector(aSelector);
                    *buf = 138412546;
                    v87 = v61;
                    v88 = 2112;
                    v89 = v55;
                    _os_log_error_impl(&dword_2304B3000, v56, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
                  }

                  v12 = v64;
                  v11 = v65;
                  if (errorCopy)
                  {
                    v57 = v55;
                    *errorCopy = v55;
                  }

                  v16 = 0;
                  goto LABEL_56;
                }

                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v42 = [v35 objectForKeyedSubscript:v39];
                v43 = [v42 countByEnumeratingWithState:&v67 objects:v81 count:16];
                if (v43)
                {
                  v44 = v43;
                  v45 = *v68;
                  v46 = 0.0;
                  do
                  {
                    for (k = 0; k != v44; ++k)
                    {
                      if (*v68 != v45)
                      {
                        objc_enumerationMutation(v42);
                      }

                      [*(*(&v67 + 1) + 8 * k) doubleValue];
                      v46 = v46 + v48;
                    }

                    v44 = [v42 countByEnumeratingWithState:&v67 objects:v81 count:16];
                  }

                  while (v44);
                }

                else
                {
                  v46 = 0.0;
                }

                v49 = MEMORY[0x277CCABB0];
                v50 = [v35 objectForKeyedSubscript:v39];
                v51 = [v49 numberWithDouble:{v46 / objc_msgSend(v50, "count")}];
                [v24 setObject:v51 forKeyedSubscript:v39];
              }

              v37 = [v35 countByEnumeratingWithState:&v71 objects:v84 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }

          v16 = v24;
          v12 = v64;
          v11 = v65;
LABEL_56:
          v21 = 0;
        }
      }
    }

    else
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: aoiUUIDToProbArrayMap", buf, 2u);
      }

      if (error)
      {
        _RTErrorInvalidParameterCreate(@"aoiUUIDToProbArrayMap");
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      v12 = mapCopy;
    }
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nonAoiUUIDToLogProbMap", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"nonAoiUUIDToLogProbMap");
      v12 = 0;
      *error = v16 = 0;
    }

    else
    {
      v12 = 0;
      v16 = 0;
    }
  }

  return v16;
}

- (id)fusedInferredMapItemsFromUUIDToProbMap:(id)map inferredMapItemDeduperState:(id)state uuidToFusedMapItemSourceMap:(id)sourceMap referenceLocation:(id)location error:(id *)error
{
  v98[1] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  stateCopy = state;
  sourceMapCopy = sourceMap;
  locationCopy = location;
  v17 = locationCopy;
  if (!mapCopy)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuidToProbMap", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v46 = @"uuidToProbMap";
    goto LABEL_35;
  }

  if (!stateCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemDeduperState", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v46 = @"inferredMapItemDeduperState";
    goto LABEL_35;
  }

  if (!sourceMapCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v48, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuidToFusedMapItemSourceMap", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v46 = @"uuidToFusedMapItemSourceMap";
    goto LABEL_35;
  }

  if (!locationCopy)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_41;
    }

    v46 = @"referenceLocation";
LABEL_35:
    _RTErrorInvalidParameterCreate(v46);
    *error = v44 = 0;
    goto LABEL_59;
  }

  v18 = [mapCopy objectForKeyedSubscript:self->_placeholderUUID];

  if (!v18)
  {
    v50 = MEMORY[0x277CCA9B8];
    v97 = *MEMORY[0x277CCA450];
    v98[0] = @"uuidToProbMap must contain the placeholder UUID";
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:&v97 count:1];
    v52 = [v50 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:9 userInfo:v51];

    v53 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v70 = NSStringFromSelector(a2);
      *buf = 138412546;
      v94 = v70;
      v95 = 2112;
      v96 = v52;
      _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (error)
    {
      v54 = v52;
      *error = v52;
    }

LABEL_41:
    v44 = 0;
    goto LABEL_59;
  }

  aSelector = a2;
  v19 = MEMORY[0x277CBEB98];
  allKeys = [mapCopy allKeys];
  v21 = [v19 setWithArray:allKeys];

  v22 = MEMORY[0x277CBEB98];
  allKeys2 = [sourceMapCopy allKeys];
  v24 = [v22 setWithArray:allKeys2];

  if (([v21 isEqualToSet:v24] & 1) == 0)
  {
    v55 = MEMORY[0x277CCA9B8];
    v91 = *MEMORY[0x277CCA450];
    v92 = @"probMapUUIDs != sourceMapUUIDs";
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v57 = [v55 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:7 userInfo:v56];

    v58 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v71 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v94 = v71;
      v95 = 2112;
      v96 = v57;
      _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (error)
    {
      v59 = v57;
      v44 = 0;
      *error = v57;
    }

    else
    {
      v44 = 0;
    }

    v25 = v57;
    goto LABEL_58;
  }

  v75 = v24;
  v76 = v21;
  errorCopy = error;
  v77 = v17;
  v82 = sourceMapCopy;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(mapCopy, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v78 = mapCopy;
  v26 = mapCopy;
  v27 = [v26 countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  v29 = *v85;
  v80 = v26;
  v81 = v25;
  while (2)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v85 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v84 + 1) + 8 * i);
      if (([v31 isEqual:self->_placeholderUUID] & 1) == 0)
      {
        v83 = 0;
        v32 = [stateCopy mapItemForDedupedUUID:v31 error:&v83];
        v33 = v83;
        v34 = v33;
        if (v33)
        {
          v60 = MEMORY[0x277CCA9B8];
          userInfo = [v33 userInfo];
          v62 = [v60 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:5 userInfo:userInfo];

          v63 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v72 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v94 = v72;
            v95 = 2112;
            v96 = v62;
            _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }

          v17 = v77;
          mapCopy = v78;
          sourceMapCopy = v82;
          v64 = errorCopy;
          v21 = v76;
          if (!errorCopy)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v35 = v28;
          v36 = stateCopy;
          v37 = [RTFusedInferredMapItem alloc];
          v38 = [v26 objectForKeyedSubscript:v31];
          [v38 doubleValue];
          v40 = v39;
          v41 = [v82 objectForKeyedSubscript:v31];
          v42 = -[RTFusedInferredMapItem initWithMapItem:confidence:source:](v37, "initWithMapItem:confidence:source:", v32, [v41 unsignedIntegerValue], v40);

          v43 = v32;
          if (v42)
          {
            v25 = v81;
            [v81 addObject:v42];

            stateCopy = v36;
            v26 = v80;
            v28 = v35;
            continue;
          }

          v65 = MEMORY[0x277CCA9B8];
          v88 = *MEMORY[0x277CCA450];
          v89 = @"fusedInferredMapItem was nil";
          v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v62 = [v65 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:4 userInfo:v66];

          v67 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v73 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v94 = v73;
            v95 = 2112;
            v96 = v62;
            _os_log_error_impl(&dword_2304B3000, v67, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }

          v17 = v77;
          mapCopy = v78;
          stateCopy = v36;
          sourceMapCopy = v82;
          v64 = errorCopy;
          v21 = v76;
          v34 = 0;
          if (!errorCopy)
          {
            v34 = 0;
            goto LABEL_57;
          }
        }

        v68 = v62;
        *v64 = v62;
LABEL_57:

        v44 = 0;
        v24 = v75;
        v25 = v81;
        goto LABEL_58;
      }
    }

    v28 = [v26 countByEnumeratingWithState:&v84 objects:v90 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_18:

  [(RTInferredMapItemFuserParameters *)self->_parameters confidenceEqualityEpsilon];
  v17 = v77;
  v44 = [RTFusedInferredMapItem sortFusedInferredMapItems:v25 confidenceEqualityEpsilon:v77 referenceLocation:self->_distanceCalculator distanceCalculator:0 ascending:?];
  mapCopy = v78;
  sourceMapCopy = v82;
  v24 = v75;
  v21 = v76;
LABEL_58:

LABEL_59:

  return v44;
}

- (id)fusedInferredMapItemsUsingCandidates:(id)candidates referenceLocation:(id)location snapToBestKnownPlace:(BOOL)place snapToBestAoi:(BOOL)aoi error:(id *)error
{
  aoiCopy = aoi;
  placeCopy = place;
  v127 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  locationCopy = location;
  if (locationCopy)
  {
    if (candidatesCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v16;
          v125 = 2048;
          v126 = [candidatesCopy count];
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, original candidates count, %lu", buf, 0x16u);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v121[0] = MEMORY[0x277D85DD0];
        v121[1] = 3221225472;
        v121[2] = __122__RTInferredMapItemFuser_fusedInferredMapItemsUsingCandidates_referenceLocation_snapToBestKnownPlace_snapToBestAoi_error___block_invoke;
        v121[3] = &__block_descriptor_40_e23_v32__0__RTPair_8Q16_B24l;
        v121[4] = a2;
        [candidatesCopy enumerateObjectsUsingBlock:v121];
      }

      v120 = 0;
      v17 = [(RTInferredMapItemFuser *)self preprocessCandidates:candidatesCopy referenceLocation:locationCopy snapToBestKnownPlace:placeCopy snapToBestAoi:aoiCopy error:&v120];
      v18 = v120;

      if (v18)
      {
        if (error)
        {
          v19 = v18;
          v20 = 0;
          *error = v18;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_106;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = NSStringFromSelector(a2);
          v25 = [v17 count];
          *buf = 138412546;
          v124 = v24;
          v125 = 2048;
          v126 = v25;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, preprocessed candidates count, %lu", buf, 0x16u);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v119[0] = MEMORY[0x277D85DD0];
        v119[1] = 3221225472;
        v119[2] = __122__RTInferredMapItemFuser_fusedInferredMapItemsUsingCandidates_referenceLocation_snapToBestKnownPlace_snapToBestAoi_error___block_invoke_132;
        v119[3] = &__block_descriptor_40_e23_v32__0__RTPair_8Q16_B24l;
        v119[4] = a2;
        [v17 enumerateObjectsUsingBlock:v119];
      }

      v26 = [v17 count];
      v27 = [[_RTMap alloc] initWithInput:v17];
      v28 = v27;
      if (v26 <= 1)
      {
        v20 = [(_RTMap *)v27 withBlock:&__block_literal_global_136];

LABEL_106:
        goto LABEL_107;
      }

      v29 = [(_RTMap *)v27 withBlock:&__block_literal_global_139];

      v30 = objc_alloc_init(RTInferredMapItemDeduperState);
      deduper = self->_deduper;
      v118 = 0;
      v102 = v29;
      v32 = [(RTInferredMapItemDeduper *)deduper dedupeInferredMapItems:v29 state:v30 error:&v118];
      v33 = v118;
      v34 = v33;
      if (v33)
      {
        v100 = v30;
        v35 = v32;
        v36 = MEMORY[0x277CCA9B8];
        v37 = v33;
        userInfo = [v33 userInfo];
        v39 = [v36 errorWithDomain:@"RTInferredMapItemFuserErrorDomain" code:5 userInfo:userInfo];

        v40 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v59 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v59;
          v125 = 2112;
          v126 = v39;
          _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, deduping error, %@", buf, 0x16u);
        }

        if (error)
        {
          v41 = v39;
          v42 = v39;
          v20 = 0;
          *error = v39;
          v34 = v37;
          v32 = v35;
        }

        else
        {
          v20 = 0;
          v34 = v37;
          v32 = v35;
          v41 = v39;
        }

        v30 = v100;
        v45 = v102;
        goto LABEL_105;
      }

      v117 = 0;
      v98 = [(RTInferredMapItemFuser *)self populateMapItemSourceEntriesForDedupedInferredMapItems:v32 error:&v117];
      v99 = v117;
      if (v99)
      {
        v43 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v62 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v62;
          v125 = 2112;
          v126 = v99;
          _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, populate error, %@", buf, 0x16u);

          v34 = 0;
        }

        if (error)
        {
          v41 = v99;
          v44 = v99;
          v20 = 0;
          *error = v99;
        }

        else
        {
          v20 = 0;
          v41 = v99;
        }

        v45 = v102;
        goto LABEL_104;
      }

      v96 = v32;
      v115 = 0;
      v116 = 0;
      v114 = 0;
      v46 = [(RTInferredMapItemFuser *)self partitionDedupedInferredMapItems:v32 intoNonAoiDedupedInferredMapItems:&v116 aoiDedupedInferredMapItems:&v115 error:&v114];
      v47 = v116;
      v48 = v115;
      v97 = v114;
      v95 = v48;
      if (!v46)
      {
        v58 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v64 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v64;
          v125 = 2112;
          v126 = v97;
          _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, partition error, %@", buf, 0x16u);
        }

        v32 = v96;
        v20 = 0;
        if (error)
        {
          *error = v97;
        }

        v34 = 0;
        v41 = 0;
        v45 = v102;
        goto LABEL_103;
      }

      v112 = 0;
      v113 = 0;
      v111 = 0;
      v92 = v47;
      v49 = [(RTInferredMapItemFuser *)self initializeEntriesForNonAoiDedupedInferredMapItems:v47 aoiDedupedInferredMapItems:v48 nonAoiUUIDToLogProbMap:&v113 aoiUUIDToProbArrayMap:&v112 error:&v111];
      v91 = v113;
      v50 = v112;
      v93 = v111;
      v90 = v50;
      if (!v49)
      {
        v60 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        v32 = v96;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v69 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v69;
          v125 = 2112;
          v126 = v93;
          _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "%@, initialize error, %@", buf, 0x16u);
        }

        v20 = 0;
        if (error)
        {
          *error = v93;
        }

        v34 = 0;
        v41 = 0;
        v45 = v102;
        v47 = v92;
        goto LABEL_102;
      }

      v110 = 0;
      v51 = [(RTInferredMapItemFuser *)self updateAoiUUIDToProbArrayMap:v50 aoiDedupedInferredMapItems:v48 error:&v110];
      v89 = v110;
      v32 = v96;
      if (!v51)
      {
        v61 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v79 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v79;
          v125 = 2112;
          v126 = v89;
          _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "%@, update aoi error, %@", buf, 0x16u);
        }

        v20 = 0;
        if (error)
        {
          *error = v89;
        }

        v34 = 0;
        v41 = 0;
        v45 = v102;
        v47 = v92;
        goto LABEL_101;
      }

      v109 = 0;
      v52 = [(RTInferredMapItemFuser *)self updateNonAoiUUIDToLogProbMap:v91 nonAoiDedupedInferredMapItems:v92 error:&v109];
      v88 = v109;
      if (!v52)
      {
        v63 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v81 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v81;
          v125 = 2112;
          v126 = v88;
          _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "%@, update non aoi error, %@", buf, 0x16u);
        }

        v34 = 0;
        v20 = 0;
        if (error)
        {
          *error = v88;
        }

        v41 = 0;
        v45 = v102;
        v47 = v92;
        goto LABEL_100;
      }

      v108 = 0;
      v53 = [(RTInferredMapItemFuser *)self normalizeNonAoiUUIDToLogProbMap:v91 aoiUUIDToProbArrayMap:v50 error:&v108];
      v54 = v108;
      v86 = v54;
      v87 = v53;
      if (v54)
      {
        v55 = v54;
        v56 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v82 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v82;
          v125 = 2112;
          v126 = v55;
          _os_log_error_impl(&dword_2304B3000, v56, OS_LOG_TYPE_ERROR, "%@, normalize error, %@", buf, 0x16u);
        }

        v34 = 0;
        if (error)
        {
          v57 = v55;
          v20 = 0;
          *error = v55;
        }

        else
        {
          v20 = 0;
        }

        v41 = 0;
        v45 = v102;
        goto LABEL_99;
      }

      v107 = 0;
      v65 = [(RTInferredMapItemFuser *)self fusedInferredMapItemsFromUUIDToProbMap:v53 inferredMapItemDeduperState:v30 uuidToFusedMapItemSourceMap:v98 referenceLocation:locationCopy error:&v107];
      v84 = v107;
      v85 = v65;
      if (v84)
      {
        v66 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
        v34 = 0;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v83 = NSStringFromSelector(a2);
          *buf = 138412546;
          v124 = v83;
          v125 = 2112;
          v126 = v84;
          _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "%@, generate error, %@", buf, 0x16u);

          v34 = 0;
        }

        if (error)
        {
          v67 = v84;
          v68 = v84;
          v20 = 0;
          *error = v84;
          v41 = 0;
          v45 = v102;
LABEL_98:

LABEL_99:
          v47 = v92;

LABEL_100:
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
LABEL_105:

          goto LABEL_106;
        }

        v20 = 0;
        v41 = 0;
        v45 = v102;
      }

      else
      {
        v45 = v102;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v101 = v30;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          obj = v65;
          v70 = [obj countByEnumeratingWithState:&v103 objects:v122 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v104;
            v73 = MEMORY[0x277D86220];
            do
            {
              for (i = 0; i != v71; ++i)
              {
                if (*v104 != v72)
                {
                  objc_enumerationMutation(obj);
                }

                v75 = *(*(&v103 + 1) + 8 * i);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                {
                  v76 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                  {
                    NSStringFromSelector(a2);
                    v78 = v77 = v72;
                    *buf = 138412547;
                    v124 = v78;
                    v125 = 2117;
                    v126 = v75;
                    _os_log_impl(&dword_2304B3000, v76, OS_LOG_TYPE_INFO, "%@, fused map item, %{sensitive}@", buf, 0x16u);

                    v72 = v77;
                    v73 = MEMORY[0x277D86220];
                  }
                }
              }

              v71 = [obj countByEnumeratingWithState:&v103 objects:v122 count:16];
            }

            while (v71);
          }

          v30 = v101;
          v45 = v102;
          v32 = v96;
          v65 = v85;
        }

        v20 = v65;
        v34 = 0;
        v41 = 0;
      }

      v67 = v84;
      goto LABEL_98;
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"candidates");
      v17 = 0;
      *error = v20 = 0;
    }

    else
    {
      v17 = 0;
      v20 = 0;
    }
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"referenceLocation");
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }

    v17 = candidatesCopy;
  }

LABEL_107:

  return v20;
}

void __122__RTInferredMapItemFuser_fusedInferredMapItemsUsingCandidates_referenceLocation_snapToBestKnownPlace_snapToBestAoi_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, original candidate, %lu, %{sensitive}@", &v8, 0x20u);
    }
  }
}

void __122__RTInferredMapItemFuser_fusedInferredMapItemsUsingCandidates_referenceLocation_snapToBestKnownPlace_snapToBestAoi_error___block_invoke_132(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
      v12 = 2117;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, input candidate, %lu, %{sensitive}@", &v8, 0x20u);
    }
  }
}

RTFusedInferredMapItem *__122__RTInferredMapItemFuser_fusedInferredMapItemsUsingCandidates_referenceLocation_snapToBestKnownPlace_snapToBestAoi_error___block_invoke_133(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [RTFusedInferredMapItem alloc];
  v4 = [v2 firstObject];

  v5 = [(RTFusedInferredMapItem *)v3 initWithInferredMapItem:v4];

  return v5;
}

- (id)highestConfidenceAoiMapItemFromFusedInferredMapItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = itemsCopy;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          mapItem = [v10 mapItem];
          mapItemPlaceType = [mapItem mapItemPlaceType];

          if (mapItemPlaceType == 1)
          {
            if (v7)
            {
              [v10 confidence];
              v14 = v13;
              [v7 confidence];
              if (v14 > v15)
              {
                v16 = v10;

                v7 = v16;
              }
            }

            else
            {
              v7 = v10;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)bestFromFusedInferredMapItems:(id)items
{
  v25 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = itemsCopy;
  if (!itemsCopy)
  {
    firstObject3 = 0;
    goto LABEL_13;
  }

  firstObject = [itemsCopy firstObject];

  if (!firstObject)
  {
    goto LABEL_12;
  }

  firstObject2 = [v6 firstObject];
  [firstObject2 confidence];
  v10 = v9;
  [(RTInferredMapItemFuserParameters *)self->_parameters aoiConsiderThreshold];
  v12 = v11;

  if (v10 >= v12)
  {
    goto LABEL_12;
  }

  v13 = [(RTInferredMapItemFuser *)self highestConfidenceAoiMapItemFromFusedInferredMapItems:v6];
  firstObject3 = v13;
  if (!v13 || ([v13 confidence], v16 = v15, -[RTInferredMapItemFuserParameters aoiUseThreshold](self->_parameters, "aoiUseThreshold"), v16 <= v17))
  {

LABEL_12:
    firstObject3 = [v6 firstObject];
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityFusion);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(a2);
      v21 = 138412547;
      v22 = v19;
      v23 = 2117;
      v24 = firstObject3;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, using AOI fusedInferredMapItem, %{sensitive}@", &v21, 0x16u);
    }
  }

LABEL_13:

  return firstObject3;
}

@end