@interface RTRelabeler
+ (BOOL)placeholderCandidate:(id)candidate knownPlaceTypeThreshold:(double)threshold;
- (BOOL)dedupeRelabelingCandidate:(id)candidate nonRevGeoCandidates:(id)candidates deduper:(id)deduper inferredMapItemDeduperState:(id *)state dedupedRelabelingCandidate:(id *)relabelingCandidate dedupedNonRevGeoCandidates:(id *)geoCandidates error:(id *)error;
- (BOOL)partitionCandidates:(id)candidates intoNonRevGeoCandidates:(id *)geoCandidates revGeoCandidates:(id *)revGeoCandidates error:(id *)error;
- (BOOL)placeholderCandidate:(id)candidate;
- (RTRelabeler)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator;
- (RTRelabeler)initWithDistanceCalculator:(id)calculator parameters:(id)parameters;
- (id)combineProbabilityVector:(id)vector prior:(id)prior error:(id *)error;
- (id)convertAndNormalizeLogProbMap:(id)map error:(id *)error;
- (id)convertLowConfidenceCandidates:(id)candidates error:(id *)error;
- (id)createProbabilityVectorForCandidate:(id)candidate uniqueNonRevGeoMapItems:(id)items hallucinatedUUIDs:(id)ds error:(id *)error;
- (id)createProbabilityVectorForNonRevGeoCandidate:(id)candidate uniqueNonRevGeoMapItems:(id)items hallucinatedUUIDs:(id)ds placeholderUUID:(id)d placeholderWeight:(double)weight error:(id *)error;
- (id)createProbabilityVectorForRevGeoCandidate:(id)candidate uniqueNonRevGeoMapItems:(id)items hallucinatedUUIDs:(id)ds placeholderUUID:(id)d revGeoConfidence:(double)confidence clippingRadius:(double)radius sigma:(double)sigma error:(id *)self0;
- (id)createUUIDToPriorMapForContextNonRevGeoCandidates:(id)candidates contextRevGeoCandidates:(id)geoCandidates uniqueNonRevGeoMapItems:(id)items hallucinatedUUIDs:(id)ds baseCount:(double)count error:(id *)error;
- (id)filterAoiCandidates:(id)candidates error:(id *)error;
- (id)filterFarCandidates:(id)candidates referenceLocation:(id)location error:(id *)error;
- (id)filterOldCandidates:(id)candidates referenceDate:(id)date error:(id *)error;
- (id)generateRelabeledInferredMapItemsFromProbMap:(id)map inferredMapItemDeduperState:(id)state hallucinatedUUIDs:(id)ds originalCandidate:(id)candidate referenceLocation:(id)location error:(id *)error;
- (id)preprocessContextCandidates:(id)candidates relabelingCandidate:(id)candidate error:(id *)error;
- (id)relabelCandidate:(id)candidate usingContextCandidates:(id)candidates metrics:(id)metrics outPriorVector:(id *)vector outObservationVector:(id *)observationVector outPosteriorVector:(id *)posteriorVector error:(id *)error;
- (id)relabeledInferredMapItemFromProbVector:(id)vector error:(id *)error;
- (id)relabeledProbVectorForCandidate:(id)candidate usingContextNonRevGeoCandidates:(id)candidates contextRevGeoCandidates:(id)geoCandidates inferredMapItemDeduperState:(id)state referenceLocation:(id)location outPriorVector:(id *)vector outObservationVector:(id *)observationVector outPosteriorVector:(id *)self0 error:(id *)self1;
- (void)enableLogging:(BOOL)logging;
@end

@implementation RTRelabeler

- (RTRelabeler)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator
{
  calculatorCopy = calculator;
  managerCopy = manager;
  v8 = [[RTRelabelerParameters alloc] initWithDefaultsManager:managerCopy];

  v9 = [(RTRelabeler *)self initWithDistanceCalculator:calculatorCopy parameters:v8];
  return v9;
}

- (RTRelabeler)initWithDistanceCalculator:(id)calculator parameters:(id)parameters
{
  v37 = *MEMORY[0x277D85DE8];
  calculatorCopy = calculator;
  parametersCopy = parameters;
  v9 = parametersCopy;
  if (!calculatorCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

      selfCopy = 0;
      goto LABEL_17;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_16;
  }

  if (!parametersCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: parameters";
    goto LABEL_19;
  }

  v30.receiver = self;
  v30.super_class = RTRelabeler;
  v10 = [(RTRelabeler *)&v30 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_distanceCalculator, calculator);
    v12 = [RTInferredMapItemDeduper alloc];
    v13 = [(RTInferredMapItemDeduper *)v12 initWithDeduperFunction:deduperFunctionGroupedLabelType];
    deduper = v11->_deduper;
    v11->_deduper = v13;

    uUID = [MEMORY[0x277CCAD78] UUID];
    placeholderUUID = v11->_placeholderUUID;
    v11->_placeholderUUID = uUID;

    objc_storeStrong(&v11->_parameters, parameters);
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[RTRelabelerParameters minimumNumberPOIs](v11->_parameters, "minimumNumberPOIs")}];
    if ([(RTRelabelerParameters *)v11->_parameters minimumNumberPOIs])
    {
      v18 = 0;
      do
      {
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        [v17 addObject:uUID2];

        ++v18;
      }

      while (v18 < [(RTRelabelerParameters *)v11->_parameters minimumNumberPOIs]);
    }

    v20 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
    hallucinatedUUIDs = v11->_hallucinatedUUIDs;
    v11->_hallucinatedUUIDs = v20;

    v11->_loggingEnabled = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        parameters = v11->_parameters;
        v24 = v11->_placeholderUUID;
        v25 = v11->_hallucinatedUUIDs;
        *buf = 138412802;
        parametersCopy2 = parameters;
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = v25;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "created relabeler with parameters, %@, placeholderUUID, %@, hallucinatedUUIDs, %@", buf, 0x20u);
      }
    }
  }

  self = v11;
  selfCopy = self;
LABEL_17:

  return selfCopy;
}

- (void)enableLogging:(BOOL)logging
{
  v8 = *MEMORY[0x277D85DE8];
  self->_loggingEnabled = logging;
  if (logging)
  {
    v3 = @"enabling";
  }

  else
  {
    v3 = @"disabling";
  }

  v4 = [(__CFString *)v3 stringByAppendingString:@" logging for the relabeler"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@", &v6, 0xCu);
    }
  }
}

+ (BOOL)placeholderCandidate:(id)candidate knownPlaceTypeThreshold:(double)threshold
{
  candidateCopy = candidate;
  if (!candidateCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      v11 = 0;
      goto LABEL_17;
    }

    v22 = 0;
    v9 = "Invalid parameter not satisfying: candidate";
    v10 = &v22;
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_8;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v21 = 0;
    v9 = "Invalid parameter not satisfying: RTCommonValidConfidence(knownPlaceTypeThreshold)";
    v10 = &v21;
    goto LABEL_19;
  }

  firstObject = [candidateCopy firstObject];
  if ([firstObject placeSource] == 1)
  {
    v7 = 1;
  }

  else
  {
    firstObject2 = [candidateCopy firstObject];
    v7 = [firstObject2 placeSource] == 0;
  }

  firstObject3 = [candidateCopy firstObject];
  if ([firstObject3 placeSource] == 0x2000)
  {
    secondObject = [candidateCopy secondObject];
    v15 = ([secondObject source] & 0x3FDFDE) == 0;
  }

  else
  {
    v15 = 0;
  }

  firstObject4 = [candidateCopy firstObject];
  if ([firstObject4 placeSource] == 0x2000)
  {
    firstObject5 = [candidateCopy firstObject];
    [firstObject5 placeConfidence];
    v19 = v18 < threshold;
  }

  else
  {
    v19 = 0;
  }

  v11 = v7 || v15 && v19;
LABEL_17:

  return v11;
}

- (BOOL)placeholderCandidate:(id)candidate
{
  candidateCopy = candidate;
  v5 = objc_opt_class();
  [(RTRelabelerParameters *)self->_parameters passthroughThreshold];
  LOBYTE(self) = [v5 placeholderCandidate:candidateCopy knownPlaceTypeThreshold:?];

  return self;
}

- (id)filterOldCandidates:(id)candidates referenceDate:(id)date error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  dateCopy = date;
  v10 = dateCopy;
  if (!candidatesCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      v23 = @"candidates";
LABEL_21:
      _RTErrorInvalidParameterCreate(v23);
      *error = v12 = 0;
      goto LABEL_23;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  if (!dateCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceDate", buf, 2u);
    }

    if (error)
    {
      v23 = @"referenceDate";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v26 = dateCopy;
  v11 = [dateCopy dateByAddingTimeInterval:{-[RTRelabelerParameters weekThreshold](self->_parameters, "weekThreshold") * -604800.0}];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = candidatesCopy;
  v13 = candidatesCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        firstObject = [v18 firstObject];
        entryDate = [firstObject entryDate];
        v21 = [entryDate compare:v11];

        if (v21 != -1)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v15);
  }

  v10 = v26;
  candidatesCopy = v27;
LABEL_23:

  return v12;
}

- (id)filterAoiCandidates:(id)candidates error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v6 = candidatesCopy;
  if (candidatesCopy)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          secondObject = [v13 secondObject];
          mapItemPlaceType = [secondObject mapItemPlaceType];

          if (mapItemPlaceType != 1)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"candidates");
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)filterFarCandidates:(id)candidates referenceLocation:(id)location error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  locationCopy = location;
  v11 = locationCopy;
  if (!candidatesCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      v28 = @"candidates";
LABEL_28:
      _RTErrorInvalidParameterCreate(v28);
      *error = v26 = 0;
      goto LABEL_30;
    }

LABEL_29:
    v26 = 0;
    goto LABEL_30;
  }

  if (!locationCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", buf, 2u);
    }

    if (error)
    {
      v28 = @"referenceLocation";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  aSelector = a2;
  errorCopy = error;
  [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v40 = v39 = candidatesCopy;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = candidatesCopy;
  v12 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        distanceCalculator = self->_distanceCalculator;
        firstObject = [v16 firstObject];
        location = [firstObject location];
        v19Location = [location location];
        v42 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v19Location toLocation:v11 error:&v42];
        v22 = v21;
        v23 = v42;

        if (v23)
        {
          v29 = MEMORY[0x277CCA9B8];
          userInfo = [v23 userInfo];
          v31 = [v29 errorWithDomain:@"RTRelabelerErrorDomain" code:1 userInfo:userInfo];

          v32 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v36 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v48 = v36;
            v49 = 2112;
            v50 = v31;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }

          v25 = v40;
          if (errorCopy)
          {
            v33 = v31;
            *errorCopy = v31;
          }

          v26 = 0;
          goto LABEL_23;
        }

        [(RTRelabelerParameters *)self->_parameters contextDistanceThreshold];
        if (v22 <= v24)
        {
          [v40 addObject:v16];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v25 = v40;
  v26 = v40;
LABEL_23:
  candidatesCopy = v39;

LABEL_30:

  return v26;
}

- (id)convertLowConfidenceCandidates:(id)candidates error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v8 = candidatesCopy;
  if (candidatesCopy)
  {
    aSelector = a2;
    errorCopy = error;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v53;
      selfCopy = self;
      v47 = v9;
      while (2)
      {
        v13 = 0;
        v48 = v11;
        do
        {
          if (*v53 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v52 + 1) + 8 * v13);
          firstObject = [v14 firstObject];
          firstObject2 = [v14 firstObject];
          [firstObject2 placeConfidence];
          v18 = v17;
          [(RTRelabelerParameters *)self->_parameters confidenceThreshold];
          v20 = v19;

          if (v18 < v20)
          {
            v51 = [RTLearnedVisit alloc];
            identifier = [firstObject identifier];
            location = [firstObject location];
            entryDate = [firstObject entryDate];
            exitDate = [firstObject exitDate];
            creationDate = [firstObject creationDate];
            [firstObject expirationDate];
            v26 = v25 = v12;
            [firstObject placeConfidence];
            v27 = [(RTLearnedVisit *)v51 initWithIdentifier:identifier location:location entryDate:entryDate exitDate:exitDate creationDate:creationDate expirationDate:v26 placeConfidence:1 placeSource:?];

            v12 = v25;
            v11 = v48;

            v9 = v47;
            self = selfCopy;

            firstObject = v27;
          }

          v28 = objc_alloc(MEMORY[0x277D011C0]);
          secondObject = [v14 secondObject];
          v30 = [v28 initWithFirstObject:firstObject secondObject:secondObject];

          if (!v30)
          {
            v32 = MEMORY[0x277CCACA8];
            firstObject3 = [v14 firstObject];
            v34 = [v32 stringWithFormat:@"could not create convertedCandidate for visit, %@", firstObject3];

            v35 = MEMORY[0x277CCA9B8];
            v60 = *MEMORY[0x277CCA450];
            v61 = v34;
            v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
            v37 = [v35 errorWithDomain:@"RTRelabelerErrorDomain" code:2 userInfo:v36];

            v38 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v42 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v57 = v42;
              v58 = 2112;
              v59 = v37;
              _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
            }

            if (errorCopy)
            {
              v39 = v37;
              *errorCopy = v37;
            }

            v31 = 0;
            goto LABEL_18;
          }

          [v9 addObject:v30];

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v31 = v9;
LABEL_18:

    v8 = v45;
  }

  else
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"candidates");
      *error = v31 = 0;
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

- (id)preprocessContextCandidates:(id)candidates relabelingCandidate:(id)candidate error:(id *)error
{
  candidatesCopy = candidates;
  candidateCopy = candidate;
  v10 = candidateCopy;
  if (!candidatesCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contextCandidates", buf, 2u);
    }

    if (error)
    {
      v18 = _RTErrorInvalidParameterCreate(@"contextCandidates");
      candidatesCopy = 0;
LABEL_14:
      v16 = 0;
      *error = v18;
      goto LABEL_31;
    }

    candidatesCopy = 0;
LABEL_19:
    v16 = 0;
    goto LABEL_31;
  }

  if (!candidateCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabelingCandidate", buf, 2u);
    }

    if (error)
    {
      v18 = _RTErrorInvalidParameterCreate(@"relabelingCandidate");
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  firstObject = [candidateCopy firstObject];
  entryDate = [firstObject entryDate];
  v28 = 0;
  v13 = [(RTRelabeler *)self filterOldCandidates:candidatesCopy referenceDate:entryDate error:&v28];
  v14 = v28;

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
    v27 = 0;
    v20 = [(RTRelabeler *)self filterAoiCandidates:v13 error:&v27];
    v21 = v27;

    if (v21)
    {
      if (error)
      {
        v22 = v21;
        v16 = 0;
        *error = v21;
      }

      else
      {
        v16 = 0;
      }

      v13 = v20;
    }

    else
    {
      v26 = 0;
      v13 = [(RTRelabeler *)self convertLowConfidenceCandidates:v20 error:&v26];
      v23 = v26;

      if (v23)
      {
        if (error)
        {
          v24 = v23;
          v16 = 0;
          *error = v23;
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
    }
  }

  candidatesCopy = v13;
LABEL_31:

  return v16;
}

- (BOOL)partitionCandidates:(id)candidates intoNonRevGeoCandidates:(id *)geoCandidates revGeoCandidates:(id *)revGeoCandidates error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  if (!candidatesCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidates", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_28;
    }

    v24 = @"candidates";
    goto LABEL_27;
  }

  if (!geoCandidates)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outNonRevGeoCandidates", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_28;
    }

    v24 = @"outNonRevGeoCandidates";
LABEL_27:
    _RTErrorInvalidParameterCreate(v24);
    *error = v22 = 0;
    goto LABEL_29;
  }

  if (!revGeoCandidates)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outRevGeoCandidates", buf, 2u);
    }

    if (error)
    {
      v24 = @"outRevGeoCandidates";
      goto LABEL_27;
    }

LABEL_28:
    v22 = 0;
    goto LABEL_29;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = candidatesCopy;
  v13 = candidatesCopy;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if ([(RTRelabeler *)self placeholderCandidate:v18])
        {
          v19 = array;
        }

        else
        {
          v19 = array2;
        }

        [v19 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v15);
  }

  v20 = array2;
  *geoCandidates = array2;
  v21 = array;
  *revGeoCandidates = array;

  v22 = 1;
  candidatesCopy = v28;
LABEL_29:

  return v22;
}

- (BOOL)dedupeRelabelingCandidate:(id)candidate nonRevGeoCandidates:(id)candidates deduper:(id)deduper inferredMapItemDeduperState:(id *)state dedupedRelabelingCandidate:(id *)relabelingCandidate dedupedNonRevGeoCandidates:(id *)geoCandidates error:(id *)error
{
  errorCopy2 = error;
  v115[1] = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidatesCopy = candidates;
  deduperCopy = deduper;
  v20 = deduperCopy;
  if (candidateCopy)
  {
    if (candidatesCopy)
    {
      if (deduperCopy)
      {
        if (state)
        {
          if (relabelingCandidate)
          {
            if (geoCandidates)
            {
              aSelector = a2;
              v21 = [[_RTMap alloc] initWithInput:candidatesCopy];
              v22 = [(_RTMap *)v21 withBlock:&__block_literal_global_60];

              v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count") + 1}];
              v102 = v23;
              v103 = v22;
              if (![(RTRelabeler *)self placeholderCandidate:candidateCopy])
              {
                v97 = v20;
                v24 = candidatesCopy;
                v25 = objc_alloc(MEMORY[0x277D01128]);
                secondObject = [candidateCopy secondObject];
                firstObject = [candidateCopy firstObject];
                [firstObject placeConfidence];
                v29 = v28;
                firstObject2 = [candidateCopy firstObject];
                v31 = [v25 initWithMapItem:secondObject confidence:objc_msgSend(firstObject2 source:{"placeSource"), v29}];

                if (!v31)
                {
                  v52 = MEMORY[0x277CCA9B8];
                  v114 = *MEMORY[0x277CCA450];
                  v115[0] = @"could not convert candidate to RTInferredMapItem";
                  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:&v114 count:1];
                  v39 = [v52 errorWithDomain:@"RTRelabelerErrorDomain" code:3 userInfo:v53];

                  v54 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    v89 = NSStringFromSelector(aSelector);
                    *buf = 138412546;
                    v111 = v89;
                    v112 = 2112;
                    v113 = v39;
                    _os_log_error_impl(&dword_2304B3000, v54, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
                  }

                  candidatesCopy = v24;
                  if (error)
                  {
                    v55 = v39;
                    v47 = 0;
                    *error = v39;
                  }

                  else
                  {
                    v47 = 0;
                  }

                  v20 = v97;
                  v78 = v102;
                  goto LABEL_71;
                }

                [v102 addObject:v31];

                v23 = v102;
                candidatesCopy = v24;
                v20 = v97;
                errorCopy2 = error;
                v22 = v103;
              }

              v100 = candidateCopy;
              [v23 addObjectsFromArray:v22];
              v99 = objc_alloc_init(RTInferredMapItemDeduperState);
              v32 = [v20 dedupeInferredMapItems:v23 state:? error:?];
              v33 = 0;
              v34 = v33;
              v101 = v32;
              if (v33)
              {
                v35 = MEMORY[0x277CCA9B8];
                userInfo = [v33 userInfo];
                v37 = [v35 errorWithDomain:@"RTRelabelerErrorDomain" code:5 userInfo:userInfo];

                v38 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                v39 = v34;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v84 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v111 = v84;
                  v112 = 2112;
                  v113 = v37;
                  _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
                }

                candidateCopy = v100;
                if (!errorCopy2)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v49 = [v32 count];
                if (v49 == [v23 count])
                {
                  v95 = errorCopy2;
                  v98 = v20;
                  candidateCopy = v100;
                  v96 = candidatesCopy;
                  if ([(RTRelabeler *)self placeholderCandidate:v100])
                  {
                    v50 = v100;
                    *relabelingCandidate = v100;
                    v51 = v101;
                  }

                  else
                  {
                    v60 = objc_alloc(MEMORY[0x277D011C0]);
                    firstObject3 = [v100 firstObject];
                    v51 = v101;
                    firstObject4 = [v101 firstObject];
                    mapItem = [firstObject4 mapItem];
                    v64 = [v60 initWithFirstObject:firstObject3 secondObject:mapItem];

                    if (!v64)
                    {
                      v85 = MEMORY[0x277CCA9B8];
                      v106 = *MEMORY[0x277CCA450];
                      v107 = @"dedupedRelabelingCandidate was nil";
                      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
                      v37 = [v85 errorWithDomain:@"RTRelabelerErrorDomain" code:2 userInfo:v86];

                      v87 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                      candidatesCopy = v96;
                      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                      {
                        v92 = NSStringFromSelector(aSelector);
                        *buf = 138412546;
                        v111 = v92;
                        v112 = 2112;
                        v113 = v37;
                        _os_log_error_impl(&dword_2304B3000, v87, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
                      }

                      v20 = v98;
                      if (v95)
                      {
                        v88 = v37;
                        v47 = 0;
                        *v95 = v37;
                      }

                      else
                      {
                        v47 = 0;
                      }

                      v78 = v102;
                      v39 = 0;
                      goto LABEL_69;
                    }

                    v65 = v64;
                    *relabelingCandidate = v64;

                    candidatesCopy = v96;
                  }

                  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v103, "count")}];
                  v66 = [(RTRelabeler *)self placeholderCandidate:v100]^ 1;
                  if ([v51 count] <= v66)
                  {
LABEL_59:
                    v75 = v37;
                    *geoCandidates = v37;
                    v76 = v99;
                    v77 = v99;
                    *state = v99;
                    v47 = 1;
                    v20 = v98;
                    v78 = v102;
                    v39 = 0;
                    candidateCopy = v100;
LABEL_70:

LABEL_71:
                    goto LABEL_41;
                  }

                  v67 = 0;
                  v94 = v37;
                  while (1)
                  {
                    v68 = objc_alloc(MEMORY[0x277D011C0]);
                    v69 = [candidatesCopy objectAtIndexedSubscript:v67];
                    firstObject5 = [v69 firstObject];
                    v71 = [v51 objectAtIndexedSubscript:v66];
                    [v71 mapItem];
                    v73 = v72 = v51;
                    v74 = [v68 initWithFirstObject:firstObject5 secondObject:v73];

                    if (!v74)
                    {
                      break;
                    }

                    v37 = v94;
                    [v94 addObject:v74];

                    ++v66;
                    ++v67;
                    candidatesCopy = v96;
                    v51 = v72;
                    if (v66 >= [v72 count])
                    {
                      goto LABEL_59;
                    }
                  }

                  v79 = MEMORY[0x277CCA9B8];
                  v104 = *MEMORY[0x277CCA450];
                  v105 = @"dedupedCandidate was nil";
                  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
                  v81 = [v79 errorWithDomain:@"RTRelabelerErrorDomain" code:2 userInfo:v80];

                  v82 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                  v37 = v94;
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    v91 = NSStringFromSelector(aSelector);
                    *buf = 138412546;
                    v111 = v91;
                    v112 = 2112;
                    v113 = v81;
                    _os_log_error_impl(&dword_2304B3000, v82, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
                  }

                  candidatesCopy = v96;
                  v20 = v98;
                  v39 = 0;
                  candidateCopy = v100;
                  if (v95)
                  {
                    v83 = v81;
                    *v95 = v81;
                  }

                  goto LABEL_67;
                }

                v56 = MEMORY[0x277CCA9B8];
                v108 = *MEMORY[0x277CCA450];
                v109 = @"dedupedInferredMapItems.count != dedupableInferredMapItems.count";
                v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
                v37 = [v56 errorWithDomain:@"RTRelabelerErrorDomain" code:5 userInfo:v57];

                v58 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                candidateCopy = v100;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v90 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v111 = v90;
                  v112 = 2112;
                  v113 = v37;
                  _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
                }

                v39 = 0;
                if (!errorCopy2)
                {
LABEL_67:
                  v47 = 0;
                  goto LABEL_68;
                }
              }

              v59 = v37;
              v47 = 0;
              *errorCopy2 = v37;
LABEL_68:
              v78 = v102;
LABEL_69:
              v76 = v99;
              goto LABEL_70;
            }

            v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outDedupedNonRevGeoCandidates", buf, 2u);
            }

            if (error)
            {
              v41 = @"outDedupedNonRevGeoCandidates";
              goto LABEL_39;
            }

LABEL_40:
            v47 = 0;
            goto LABEL_41;
          }

          v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outDedupedRelabelingCandidate", buf, 2u);
          }

          if (!error)
          {
            goto LABEL_40;
          }

          v41 = @"outDedupedRelabelingCandidate";
        }

        else
        {
          v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outInferredMapItemDeduperState", buf, 2u);
          }

          if (!error)
          {
            goto LABEL_40;
          }

          v41 = @"outInferredMapItemDeduperState";
        }
      }

      else
      {
        v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: deduper", buf, 2u);
        }

        if (!error)
        {
          goto LABEL_40;
        }

        v41 = @"deduper";
      }
    }

    else
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: nonRevGeoCandidates", buf, 2u);
      }

      if (!error)
      {
        goto LABEL_40;
      }

      v41 = @"nonRevGeoCandidates";
    }
  }

  else
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabelingCandidate", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_40;
    }

    v41 = @"relabelingCandidate";
  }

LABEL_39:
  _RTErrorInvalidParameterCreate(v41);
  *error = v47 = 0;
LABEL_41:

  return v47;
}

id __157__RTRelabeler_dedupeRelabelingCandidate_nonRevGeoCandidates_deduper_inferredMapItemDeduperState_dedupedRelabelingCandidate_dedupedNonRevGeoCandidates_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01128];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 secondObject];
  v6 = [v3 firstObject];
  [v6 placeConfidence];
  v8 = v7;
  v9 = [v3 firstObject];

  v10 = [v4 initWithMapItem:v5 confidence:objc_msgSend(v9 source:{"placeSource"), v8}];

  return v10;
}

- (id)createProbabilityVectorForNonRevGeoCandidate:(id)candidate uniqueNonRevGeoMapItems:(id)items hallucinatedUUIDs:(id)ds placeholderUUID:(id)d placeholderWeight:(double)weight error:(id *)error
{
  v86[1] = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  itemsCopy = items;
  dsCopy = ds;
  dCopy = d;
  if (!candidateCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidate", buf, 2u);
    }

    if (error)
    {
      v20 = @"candidate";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ([(RTRelabeler *)self placeholderCandidate:candidateCopy])
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: ![self placeholderCandidate:candidate]", buf, 2u);
    }

    if (error)
    {
      v20 = @"![self placeholderCandidate:candidate]";
LABEL_31:
      _RTErrorInvalidParameterCreate(v20);
      *error = v26 = 0;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (!itemsCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uniqueNonRevGeoMapItems", buf, 2u);
    }

    if (error)
    {
      v20 = @"uniqueNonRevGeoMapItems";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!dsCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hallucinatedUUIDs", buf, 2u);
    }

    if (error)
    {
      v20 = @"hallucinatedUUIDs";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!dCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeholderUUID", buf, 2u);
    }

    if (error)
    {
      v20 = @"placeholderUUID";
      goto LABEL_31;
    }

LABEL_32:
    v26 = 0;
    goto LABEL_33;
  }

  if (weight < 1.0)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeholderWeight >= 1", buf, 2u);
    }

    if (error)
    {
      v20 = @"placeholderWeight >= 1";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v28 = [[_RTMap alloc] initWithInput:itemsCopy];
  v29 = [(_RTMap *)v28 withBlock:&__block_literal_global_111];

  v72 = v29;
  v30 = [MEMORY[0x277CBEB98] setWithArray:v29];
  secondObject = [candidateCopy secondObject];
  identifier = [secondObject identifier];
  v73 = v30;
  v33 = [v30 member:identifier];

  if (v33)
  {
    v71 = dCopy;
    v34 = [itemsCopy count];
    v35 = (v34 + [dsCopy count] - 1) + weight;
    if (v35 <= 0.0)
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v82 = "[RTRelabeler createProbabilityVectorForNonRevGeoCandidate:uniqueNonRevGeoMapItems:hallucinatedUUIDs:placeholderUUID:placeholderWeight:error:]";
        v83 = 1024;
        LODWORD(v84) = 423;
        _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "divisor was less than or equal to zero (in %s:%d)", buf, 0x12u);
      }
    }

    firstObject = [candidateCopy firstObject];
    [firstObject placeConfidence];
    v39 = v38;

    v40 = (1.0 - v39) / v35;
    if (v40 >= 0.0)
    {
      v69 = dsCopy;
      v70 = itemsCopy;
      v53 = candidateCopy;
      v54 = [v73 setByAddingObjectsFromSet:dsCopy];
      v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v54, "count") + 1}];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v55 = v54;
      v56 = [v55 countByEnumeratingWithState:&v74 objects:v78 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v75;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v75 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v74 + 1) + 8 * i);
            secondObject2 = [v53 secondObject];
            identifier2 = [secondObject2 identifier];
            v63 = [v60 isEqual:identifier2];

            if (v63)
            {
              v64 = v39;
            }

            else
            {
              v64 = v40;
            }

            v65 = [MEMORY[0x277CCABB0] numberWithDouble:v64];
            [v26 setObject:v65 forKeyedSubscript:v60];
          }

          v57 = [v55 countByEnumeratingWithState:&v74 objects:v78 count:16];
        }

        while (v57);
      }

      weight = [MEMORY[0x277CCABB0] numberWithDouble:v40 * weight];
      dCopy = v71;
      [v26 setObject:weight forKeyedSubscript:v71];

      candidateCopy = v53;
      v43 = v55;
      dsCopy = v69;
      itemsCopy = v70;
    }

    else
    {
      v41 = MEMORY[0x277CCA9B8];
      v79 = *MEMORY[0x277CCA450];
      v80 = @"remainder < 0";
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      v43 = [v41 errorWithDomain:@"RTRelabelerErrorDomain" code:7 userInfo:v42];

      v44 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v68 = NSStringFromSelector(a2);
        *buf = 138412546;
        v82 = v68;
        v83 = 2112;
        v84 = v43;
        _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      dCopy = v71;
      if (error)
      {
        v45 = v43;
        v26 = 0;
        *error = v43;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v46 = dCopy;
    candidateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"setNonRevGeoUUIDs does not contain the identifier of candidate, %@", candidateCopy];
    v48 = MEMORY[0x277CCA9B8];
    v85 = *MEMORY[0x277CCA450];
    v86[0] = candidateCopy;
    v43 = candidateCopy;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    v50 = [v48 errorWithDomain:@"RTRelabelerErrorDomain" code:6 userInfo:v49];

    v51 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v67 = NSStringFromSelector(a2);
      *buf = 138412546;
      v82 = v67;
      v83 = 2112;
      v84 = v50;
      _os_log_error_impl(&dword_2304B3000, v51, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (error)
    {
      v52 = v50;
      *error = v50;
    }

    v26 = 0;
    dCopy = v46;
  }

LABEL_33:

  return v26;
}

- (id)createProbabilityVectorForRevGeoCandidate:(id)candidate uniqueNonRevGeoMapItems:(id)items hallucinatedUUIDs:(id)ds placeholderUUID:(id)d revGeoConfidence:(double)confidence clippingRadius:(double)radius sigma:(double)sigma error:(id *)self0
{
  v99 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  itemsCopy = items;
  dsCopy = ds;
  dCopy = d;
  if (!candidateCopy)
  {
    v60 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidate", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_68;
    }

    v61 = @"candidate";
    goto LABEL_67;
  }

  if (![(RTRelabeler *)self placeholderCandidate:candidateCopy])
  {
    v62 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [self placeholderCandidate:candidate]", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_68;
    }

    v61 = @"[self placeholderCandidate:candidate]";
    goto LABEL_67;
  }

  if (!itemsCopy)
  {
    v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uniqueNonRevGeoMapItems", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_68;
    }

    v61 = @"uniqueNonRevGeoMapItems";
    goto LABEL_67;
  }

  if (!dsCopy)
  {
    v64 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v64, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hallucinatedUUIDs", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_68;
    }

    v61 = @"hallucinatedUUIDs";
    goto LABEL_67;
  }

  if (!dCopy)
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeholderUUID", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_68;
    }

    v61 = @"placeholderUUID";
    goto LABEL_67;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v66 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTCommonValidConfidence(revGeoConfidence)", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_68;
    }

    v61 = @"RTCommonValidConfidence(revGeoConfidence)";
    goto LABEL_67;
  }

  if (radius <= 0.0)
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v67, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clippingRadius > 0", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_68;
    }

    v61 = @"clippingRadius > 0";
LABEL_67:
    _RTErrorInvalidParameterCreate(v61);
    *error = v48 = 0;
    goto LABEL_69;
  }

  if (sigma <= 0.0)
  {
    v68 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v68, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sigma > 0", buf, 2u);
    }

    if (error)
    {
      v61 = @"sigma > 0";
      goto LABEL_67;
    }

LABEL_68:
    v48 = 0;
    goto LABEL_69;
  }

  errorCopy = error;
  v74 = dCopy;
  v22 = (sigma + sigma) * sigma;
  v23 = log(v22 * 3.14159265) * -0.5;
  v75 = dsCopy;
  v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count") + objc_msgSend(itemsCopy, "count")}];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v25 = itemsCopy;
  obj = v25;
  v78 = [v25 countByEnumeratingWithState:&v91 objects:v98 count:16];
  v80 = candidateCopy;
  if (v78)
  {
    v77 = *v92;
    while (2)
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v92 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v91 + 1) + 8 * i);
        distanceCalculator = self->_distanceCalculator;
        firstObject = [candidateCopy firstObject];
        location = [firstObject location];
        v30Location = [location location];
        location2 = [v27 location];
        v90 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v30Location toLocation:location2 error:&v90];
        v34 = v33;
        v35 = v90;

        if (v35)
        {
          v70 = MEMORY[0x277CCA9B8];
          userInfo = [v35 userInfo];
          v58 = [v70 errorWithDomain:@"RTRelabelerErrorDomain" code:1 userInfo:userInfo];

          if (errorCopy)
          {
            v72 = v58;
            v48 = 0;
            *errorCopy = v58;
          }

          else
          {
            v48 = 0;
          }

          candidateCopy = v80;
          dsCopy = v75;
          dCopy = v74;
          v59 = obj;
          goto LABEL_76;
        }

        if (v34 <= radius)
        {
          radiusCopy = v34;
        }

        else
        {
          radiusCopy = radius;
        }

        v37 = [MEMORY[0x277CCABB0] numberWithDouble:v23 - radiusCopy * radiusCopy / v22];
        identifier = [v27 identifier];
        [v24 setObject:v37 forKeyedSubscript:identifier];

        candidateCopy = v80;
      }

      v25 = obj;
      v78 = [obj countByEnumeratingWithState:&v91 objects:v98 count:16];
      if (v78)
      {
        continue;
      }

      break;
    }
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v39 = v75;
  v40 = [v39 countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v87;
    v43 = v23 - radius * radius / v22;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v87 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v45 = *(*(&v86 + 1) + 8 * j);
        v46 = [MEMORY[0x277CCABB0] numberWithDouble:{v43, errorCopy}];
        [v24 setObject:v46 forKeyedSubscript:v45];
      }

      v41 = [v39 countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v41);
  }

  v85 = 0;
  v47 = [(RTRelabeler *)self convertAndNormalizeLogProbMap:v24 error:&v85];
  v79 = v85;
  v48 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(obj, "count") + objc_msgSend(v39, "count") + 1}];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v35 = v47;
  v49 = [v35 countByEnumeratingWithState:&v81 objects:v96 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v82;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v82 != v51)
        {
          objc_enumerationMutation(v35);
        }

        v53 = *(*(&v81 + 1) + 8 * k);
        v54 = MEMORY[0x277CCABB0];
        v55 = [v35 objectForKeyedSubscript:{v53, errorCopy}];
        [v55 doubleValue];
        v57 = [v54 numberWithDouble:(1.0 - confidence) * v56];
        [v48 setObject:v57 forKeyedSubscript:v53];
      }

      v50 = [v35 countByEnumeratingWithState:&v81 objects:v96 count:16];
    }

    while (v50);
  }

  v58 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
  dCopy = v74;
  [v48 setObject:v58 forKeyedSubscript:v74];
  v59 = v79;
  candidateCopy = v80;
  dsCopy = v75;
LABEL_76:

LABEL_69:

  return v48;
}

- (id)createProbabilityVectorForCandidate:(id)candidate uniqueNonRevGeoMapItems:(id)items hallucinatedUUIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  itemsCopy = items;
  candidateCopy = candidate;
  v13 = [(RTRelabeler *)self placeholderCandidate:candidateCopy];
  parameters = self->_parameters;
  placeholderUUID = self->_placeholderUUID;
  if (v13)
  {
    [(RTRelabelerParameters *)parameters revGeoConfidence];
    v17 = v16;
    [(RTRelabelerParameters *)self->_parameters clippingRadius];
    v19 = v18;
    [(RTRelabelerParameters *)self->_parameters sigma];
    [(RTRelabeler *)self createProbabilityVectorForRevGeoCandidate:candidateCopy uniqueNonRevGeoMapItems:itemsCopy hallucinatedUUIDs:dsCopy placeholderUUID:placeholderUUID revGeoConfidence:error clippingRadius:v17 sigma:v19 error:v20];
  }

  else
  {
    [(RTRelabelerParameters *)parameters placeholderWeight];
    [(RTRelabeler *)self createProbabilityVectorForNonRevGeoCandidate:candidateCopy uniqueNonRevGeoMapItems:itemsCopy hallucinatedUUIDs:dsCopy placeholderUUID:placeholderUUID placeholderWeight:error error:?];
  }
  v21 = ;

  return v21;
}

- (id)createUUIDToPriorMapForContextNonRevGeoCandidates:(id)candidates contextRevGeoCandidates:(id)geoCandidates uniqueNonRevGeoMapItems:(id)items hallucinatedUUIDs:(id)ds baseCount:(double)count error:(id *)error
{
  v154 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  geoCandidatesCopy = geoCandidates;
  itemsCopy = items;
  dsCopy = ds;
  v19 = dsCopy;
  if (!candidatesCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contextNonRevGeoCandidates", buf, 2u);
    }

    if (error)
    {
      v21 = @"contextNonRevGeoCandidates";
      goto LABEL_26;
    }

LABEL_27:
    v26 = 0;
    goto LABEL_28;
  }

  if (!geoCandidatesCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contextRevGeoCandidates", buf, 2u);
    }

    if (error)
    {
      v21 = @"contextRevGeoCandidates";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (!itemsCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uniqueNonRevGeoMapItems", buf, 2u);
    }

    if (error)
    {
      v21 = @"uniqueNonRevGeoMapItems";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (!dsCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hallucinatedUUIDs", buf, 2u);
    }

    if (error)
    {
      v21 = @"hallucinatedUUIDs";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (count < 0.0)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: baseCount >= 0", buf, 2u);
    }

    if (error)
    {
      v21 = @"baseCount >= 0";
LABEL_26:
      _RTErrorInvalidParameterCreate(v21);
      *error = v26 = 0;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  aSelector = a2;
  errorCopy = error;
  v109 = dsCopy;
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(candidatesCopy, "count") + objc_msgSend(dsCopy, "count") + 1}];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v108 = itemsCopy;
  obj = itemsCopy;
  v29 = [obj countByEnumeratingWithState:&v137 objects:v153 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v138;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v138 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v137 + 1) + 8 * i);
        v34 = [MEMORY[0x277CCABB0] numberWithDouble:count];
        identifier = [v33 identifier];
        [v28 setObject:v34 forKeyedSubscript:identifier];
      }

      v30 = [obj countByEnumeratingWithState:&v137 objects:v153 count:16];
    }

    while (v30);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v117 = v109;
  v36 = [v117 countByEnumeratingWithState:&v133 objects:v152 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v134;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v134 != v38)
        {
          objc_enumerationMutation(v117);
        }

        v40 = *(*(&v133 + 1) + 8 * j);
        v41 = [MEMORY[0x277CCABB0] numberWithDouble:count];
        [v28 setObject:v41 forKeyedSubscript:v40];
      }

      v37 = [v117 countByEnumeratingWithState:&v133 objects:v152 count:16];
    }

    while (v37);
  }

  v42 = [MEMORY[0x277CCABB0] numberWithDouble:count];
  [v28 setObject:v42 forKeyedSubscript:self->_placeholderUUID];

  v43 = MEMORY[0x277CBEB98];
  allKeys = [v28 allKeys];
  v114 = [v43 setWithArray:allKeys];

  v45 = [[_RTMap alloc] initWithInput:candidatesCopy];
  v46 = [(_RTMap *)v45 withBlock:&__block_literal_global_144];

  v47 = [[_RTMap alloc] initWithInput:obj];
  v48 = [(_RTMap *)v47 withBlock:&__block_literal_global_146];

  v49 = [MEMORY[0x277CBEB98] setWithArray:v46];
  v107 = v48;
  v105 = [MEMORY[0x277CBEB98] setWithArray:v48];
  v106 = v49;
  if (([v49 isSubsetOfSet:v105] & 1) == 0)
  {
    v74 = MEMORY[0x277CCA9B8];
    v150 = *MEMORY[0x277CCA450];
    v151 = @"uniqueContextNonRevGeoUUIDs is not a subset of uniqueNonRevGeoUUIDs";
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
    v113 = [v74 errorWithDomain:@"RTRelabelerErrorDomain" code:9 userInfo:v75];

    v76 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v98 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v147 = v98;
      v148 = 2112;
      v149 = v113;
      _os_log_error_impl(&dword_2304B3000, v76, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v77 = v107;
    itemsCopy = v108;
    v26 = 0;
    if (error)
    {
      *error = v113;
    }

    v19 = v109;
    goto LABEL_90;
  }

  v103 = v46;
  v100 = geoCandidatesCopy;
  v101 = candidatesCopy;
  [candidatesCopy arrayByAddingObjectsFromArray:geoCandidatesCopy];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v113 = v132 = 0u;
  v112 = [v113 countByEnumeratingWithState:&v129 objects:v145 count:16];
  if (!v112)
  {
    v73 = 0;
    v55 = 0;
    goto LABEL_74;
  }

  selfCopy = self;
  v111 = *v130;
  while (2)
  {
    v50 = 0;
    do
    {
      if (*v130 != v111)
      {
        objc_enumerationMutation(v113);
      }

      v51 = *(*(&v129 + 1) + 8 * v50);
      v52 = objc_autoreleasePoolPush();
      v128 = 0;
      v53 = [(RTRelabeler *)self createProbabilityVectorForCandidate:v51 uniqueNonRevGeoMapItems:obj hallucinatedUUIDs:v117 error:&v128];
      v54 = v128;
      v55 = v54;
      if (v54)
      {
        v78 = v54;
        v73 = 0;
LABEL_73:

        objc_autoreleasePoolPop(v52);
        goto LABEL_74;
      }

      v56 = MEMORY[0x277CBEB98];
      allKeys2 = [v53 allKeys];
      v58 = [v56 setWithArray:allKeys2];
      v59 = [v58 isEqualToSet:v114];

      if ((v59 & 1) == 0)
      {
        v79 = MEMORY[0x277CCA9B8];
        v143 = *MEMORY[0x277CCA450];
        v144 = @"the probability vector obtained had different UUIDs than the prior map built";
        v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v73 = [v79 errorWithDomain:@"RTRelabelerErrorDomain" code:8 userInfo:v80];

        v81 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v99 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v147 = v99;
          v148 = 2112;
          v149 = v73;
          _os_log_error_impl(&dword_2304B3000, v81, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        goto LABEL_73;
      }

      v115 = v50;
      context = v52;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      allKeys3 = [v28 allKeys];
      v61 = [allKeys3 countByEnumeratingWithState:&v124 objects:v142 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v125;
        do
        {
          for (k = 0; k != v62; ++k)
          {
            if (*v125 != v63)
            {
              objc_enumerationMutation(allKeys3);
            }

            v65 = *(*(&v124 + 1) + 8 * k);
            v66 = MEMORY[0x277CCABB0];
            v67 = [v28 objectForKeyedSubscript:v65];
            [v67 doubleValue];
            v69 = v68;
            v70 = [v53 objectForKeyedSubscript:v65];
            [v70 doubleValue];
            v72 = [v66 numberWithDouble:v69 + v71];
            [v28 setObject:v72 forKeyedSubscript:v65];
          }

          v62 = [allKeys3 countByEnumeratingWithState:&v124 objects:v142 count:16];
        }

        while (v62);
      }

      objc_autoreleasePoolPop(context);
      v50 = v115 + 1;
      self = selfCopy;
    }

    while (v115 + 1 != v112);
    v73 = 0;
    v55 = 0;
    v112 = [v113 countByEnumeratingWithState:&v129 objects:v145 count:16];
    if (v112)
    {
      continue;
    }

    break;
  }

LABEL_74:

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  allKeys4 = [v28 allKeys];
  v83 = [allKeys4 countByEnumeratingWithState:&v120 objects:v141 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v121;
    do
    {
      for (m = 0; m != v84; ++m)
      {
        if (*v121 != v85)
        {
          objc_enumerationMutation(allKeys4);
        }

        v87 = *(*(&v120 + 1) + 8 * m);
        v88 = [v28 objectForKeyedSubscript:v87];
        [v88 doubleValue];
        v90 = v89;

        v91 = [MEMORY[0x277CCABB0] numberWithDouble:log(v90)];
        [v28 setObject:v91 forKeyedSubscript:v87];
      }

      v84 = [allKeys4 countByEnumeratingWithState:&v120 objects:v141 count:16];
    }

    while (v84);
  }

  if (v55)
  {
    itemsCopy = v108;
    v19 = v109;
    v46 = v103;
    if (errorCopy)
    {
      v92 = v55;
      v26 = 0;
      *errorCopy = v55;
      goto LABEL_88;
    }

LABEL_87:
    v26 = 0;
    goto LABEL_88;
  }

  itemsCopy = v108;
  v19 = v109;
  v46 = v103;
  if (v73)
  {
    if (!errorCopy)
    {
      goto LABEL_87;
    }

    v93 = v73;
    v26 = 0;
    *errorCopy = v73;
LABEL_88:
    v77 = v107;
  }

  else
  {
    v119 = 0;
    v94 = [(RTRelabeler *)self convertAndNormalizeLogProbMap:v28 error:&v119];
    v95 = v119;
    v96 = v95;
    if (v95)
    {
      v77 = v107;
      if (errorCopy)
      {
        v97 = v95;
        v26 = 0;
        *errorCopy = v96;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = v94;
      v77 = v107;
    }

    v46 = v103;
  }

  geoCandidatesCopy = v100;
  candidatesCopy = v101;
LABEL_90:

LABEL_28:

  return v26;
}

id __147__RTRelabeler_createUUIDToPriorMapForContextNonRevGeoCandidates_contextRevGeoCandidates_uniqueNonRevGeoMapItems_hallucinatedUUIDs_baseCount_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 secondObject];
  v3 = [v2 identifier];

  return v3;
}

- (id)convertAndNormalizeLogProbMap:(id)map error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v6 = mapCopy;
  if (mapCopy)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v7 = [mapCopy countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      v10 = -1.79769313e308;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v53 + 1) + 8 * i);
          v13 = [v6 objectForKeyedSubscript:v12];
          [v13 doubleValue];
          v15 = v14;

          if (v15 > v10)
          {
            v16 = [v6 objectForKeyedSubscript:v12];
            [v16 doubleValue];
            v10 = v17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = -1.79769313e308;
    }

    v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    allKeys = [v6 allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      v24 = 0.0;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v26 = *(*(&v49 + 1) + 8 * j);
          v27 = MEMORY[0x277CCABB0];
          v28 = [v6 objectForKeyedSubscript:v26];
          [v28 doubleValue];
          v30 = [v27 numberWithDouble:v29 - v10];
          [v19 setObject:v30 forKeyedSubscript:v26];

          v31 = [v19 objectForKeyedSubscript:v26];
          [v31 doubleValue];
          v24 = v24 + exp(v32);
        }

        v22 = [allKeys countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v22);
    }

    else
    {
      v24 = 0.0;
    }

    v33 = log(v24);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    allKeys2 = [v19 allKeys];
    v35 = [allKeys2 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v46;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(allKeys2);
          }

          v39 = *(*(&v45 + 1) + 8 * k);
          v40 = MEMORY[0x277CCABB0];
          v41 = [v19 objectForKeyedSubscript:v39];
          [v41 doubleValue];
          v43 = [v40 numberWithDouble:exp(v42 - v33)];
          [v19 setObject:v43 forKeyedSubscript:v39];
        }

        v36 = [allKeys2 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v36);
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: logProbMap", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"logProbMap");
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)combineProbabilityVector:(id)vector prior:(id)prior error:(id *)error
{
  v63[1] = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  priorCopy = prior;
  v11 = priorCopy;
  if (!vectorCopy)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: probabilityVector", buf, 2u);
    }

    if (error)
    {
      v38 = @"probabilityVector";
LABEL_24:
      _RTErrorInvalidParameterCreate(v38);
      *error = v36 = 0;
      goto LABEL_36;
    }

LABEL_25:
    v36 = 0;
    goto LABEL_36;
  }

  if (!priorCopy)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: prior", buf, 2u);
    }

    if (error)
    {
      v38 = @"prior";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v12 = MEMORY[0x277CBEB98];
  allKeys = [vectorCopy allKeys];
  v14 = [v12 setWithArray:allKeys];

  v15 = MEMORY[0x277CBEB98];
  allKeys2 = [v11 allKeys];
  v17 = [v15 setWithArray:allKeys2];

  if ([v14 isEqualToSet:v17])
  {
    selfCopy = self;
    aSelector = a2;
    errorCopy = error;
    v49 = v14;
    v18 = v11;
    [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(vectorCopy, "count")}];
    v51 = v50 = vectorCopy;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v19 = vectorCopy;
    v20 = [v19 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v54;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v54 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v53 + 1) + 8 * i);
          v25 = MEMORY[0x277CCABB0];
          v26 = [v19 objectForKeyedSubscript:v24];
          [v26 doubleValue];
          v28 = log(v27);
          v29 = [v18 objectForKeyedSubscript:v24];
          [v29 doubleValue];
          v31 = [v25 numberWithDouble:(v28 + log(v30))];
          [v51 setObject:v31 forKeyedSubscript:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v21);
    }

    v52 = 0;
    v32 = [(RTRelabeler *)selfCopy convertAndNormalizeLogProbMap:v51 error:&v52];
    v33 = v52;
    if (v33)
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      v14 = v49;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v45 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v59 = v45;
        v60 = 2112;
        v61 = v33;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (errorCopy)
      {
        v35 = v33;
        v36 = 0;
        *errorCopy = v33;
      }

      else
      {
        v36 = 0;
      }

      v11 = v18;
    }

    else
    {
      v36 = v32;
      v11 = v18;
      v14 = v49;
    }

    vectorCopy = v50;
  }

  else
  {
    v40 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA450];
    v63[0] = @"probUUIDs != priorUUIDs";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v51 = [v40 errorWithDomain:@"RTRelabelerErrorDomain" code:8 userInfo:v41];

    v42 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(a2);
      *buf = 138412546;
      v59 = v44;
      v60 = 2112;
      v61 = v51;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v36 = 0;
    if (error)
    {
      *error = v51;
    }
  }

LABEL_36:

  return v36;
}

- (id)generateRelabeledInferredMapItemsFromProbMap:(id)map inferredMapItemDeduperState:(id)state hallucinatedUUIDs:(id)ds originalCandidate:(id)candidate referenceLocation:(id)location error:(id *)error
{
  v85[1] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  stateCopy = state;
  dsCopy = ds;
  candidateCopy = candidate;
  locationCopy = location;
  v20 = locationCopy;
  if (!mapCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: probMap", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_32;
    }

    v32 = _RTErrorInvalidParameterCreate(@"probMap");
    goto LABEL_31;
  }

  if (!stateCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemDeduperState", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_32;
    }

    v32 = _RTErrorInvalidParameterCreate(@"inferredMapItemDeduperState");
    goto LABEL_31;
  }

  if (!dsCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hallucinatedUUIDs", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_32;
    }

    v32 = _RTErrorInvalidParameterCreate(@"hallucinatedUUIDs");
    goto LABEL_31;
  }

  if (!candidateCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: originalCandidate", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_32;
    }

    v32 = _RTErrorInvalidParameterCreate(@"originalCandidate");
LABEL_31:
    v30 = 0;
    *error = v32;
    goto LABEL_59;
  }

  if (!locationCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", buf, 2u);
    }

    if (error)
    {
      v32 = _RTErrorInvalidParameterCreate(@"referenceLocation");
      goto LABEL_31;
    }

LABEL_32:
    v30 = 0;
    goto LABEL_59;
  }

  v21 = MEMORY[0x277CBEB98];
  allKeys = [mapCopy allKeys];
  v23 = [v21 setWithArray:allKeys];

  v73 = 0;
  v65 = [stateCopy allDedupedUUIDsWithError:&v73];
  v24 = v73;
  v64 = v24;
  if (v24)
  {
    v25 = MEMORY[0x277CCA9B8];
    userInfo = [v24 userInfo];
    v27 = [v25 errorWithDomain:@"RTRelabelerErrorDomain" code:5 userInfo:userInfo];

    v28 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v46;
      *&buf[12] = 2112;
      *&buf[14] = v27;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, error when fetching all dedupedUUIDs, %@", buf, 0x16u);
    }

    if (error)
    {
      v29 = v27;
      v30 = 0;
      *error = v27;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v63 = [MEMORY[0x277CBEB58] setWithSet:v65];
    allObjects = [dsCopy allObjects];
    [v63 addObjectsFromArray:allObjects];

    [v63 addObject:self->_placeholderUUID];
    if ([v63 isEqualToSet:v23])
    {
      v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(mapCopy, "count")}];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v81 = __Block_byref_object_copy__77;
      v82 = __Block_byref_object_dispose__77;
      v83 = 0;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __148__RTRelabeler_generateRelabeledInferredMapItemsFromProbMap_inferredMapItemDeduperState_hallucinatedUUIDs_originalCandidate_referenceLocation_error___block_invoke;
      v67[3] = &unk_2788CB028;
      v59 = mapCopy;
      v68 = v59;
      v71 = buf;
      v72 = a2;
      v69 = candidateCopy;
      v62 = v38;
      v70 = v62;
      v66 = 0;
      [stateCopy enumerateDedupedUUIDToMapItemMapUsingBlock:v67 error:&v66];
      v61 = v66;
      if (v61)
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v54 = NSStringFromSelector(a2);
          *v76 = 138412546;
          v77 = v54;
          v78 = 2112;
          v79 = v61;
          v58 = v54;
          _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, enumeration error, %@", v76, 0x16u);
        }
      }

      v40 = *(*&buf[8] + 40);
      if (v40)
      {
        v30 = 0;
        if (error)
        {
          *error = v40;
        }
      }

      else
      {
        v56 = [RTFusedInferredMapItem alloc];
        v45 = [v59 objectForKeyedSubscript:self->_placeholderUUID];
        [v45 doubleValue];
        v60 = [(RTFusedInferredMapItem *)v56 initWithMapItem:0 confidence:0 source:?];

        if (v60)
        {
          [v62 addObject:?];
          [(RTRelabelerParameters *)self->_parameters confidenceEqualityEpsilon];
          v30 = [RTFusedInferredMapItem sortFusedInferredMapItems:v62 confidenceEqualityEpsilon:v20 referenceLocation:self->_distanceCalculator distanceCalculator:0 ascending:?];
        }

        else
        {
          v47 = MEMORY[0x277CCA9B8];
          v74 = *MEMORY[0x277CCA450];
          v75 = @"relabeledInferredMapItem was nil";
          v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v57 = [v47 errorWithDomain:@"RTRelabelerErrorDomain" code:4 userInfo:v48];

          v49 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v55 = NSStringFromSelector(a2);
            *v76 = 138412546;
            v77 = v55;
            v78 = 2112;
            v79 = v57;
            _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@, error, %@", v76, 0x16u);
          }

          v50 = v57;
          if (error)
          {
            v51 = v57;
            v50 = v57;
            *error = v57;
          }

          v30 = 0;
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v41 = MEMORY[0x277CCA9B8];
      v84 = *MEMORY[0x277CCA450];
      v85[0] = @"inputUUIDs != probMapUUIDs";
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:&v84 count:1];
      v62 = [v41 errorWithDomain:@"RTRelabelerErrorDomain" code:8 userInfo:v42];

      v43 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v53 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v53;
        *&buf[12] = 2112;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (error)
      {
        v44 = v62;
        v30 = 0;
        *error = v62;
      }

      else
      {
        v30 = 0;
      }
    }

    v27 = v63;
  }

LABEL_59:

  return v30;
}

void __148__RTRelabeler_generateRelabeledInferredMapItemsFromProbMap_inferredMapItemDeduperState_hallucinatedUUIDs_originalCandidate_referenceLocation_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a2;
  v9 = [RTFusedInferredMapItem alloc];
  v10 = [*(a1 + 32) objectForKeyedSubscript:v8];

  [v10 doubleValue];
  v12 = v11;
  v13 = [*(a1 + 40) firstObject];
  v14 = -[RTFusedInferredMapItem initWithMapItem:confidence:source:](v9, "initWithMapItem:confidence:source:", v7, [v13 placeSource], v12);

  if (v14)
  {
    [*(a1 + 48) addObject:v14];
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"relabeledInferredMapItem was nil during enumeration";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v17 = [v15 errorWithDomain:@"RTRelabelerErrorDomain" code:4 userInfo:v16];

    v18 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(*(a1 + 64));
      v22 = 138412546;
      v23 = v21;
      v24 = 2112;
      v25 = v17;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%@, error, %@", &v22, 0x16u);
    }

    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v17;

    *a4 = 1;
  }
}

- (id)relabeledProbVectorForCandidate:(id)candidate usingContextNonRevGeoCandidates:(id)candidates contextRevGeoCandidates:(id)geoCandidates inferredMapItemDeduperState:(id)state referenceLocation:(id)location outPriorVector:(id *)vector outObservationVector:(id *)observationVector outPosteriorVector:(id *)self0 error:(id *)self1
{
  v99 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidatesCopy = candidates;
  geoCandidatesCopy = geoCandidates;
  stateCopy = state;
  locationCopy = location;
  v22 = locationCopy;
  if (!candidateCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidate", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_60;
    }

    v35 = @"candidate";
    goto LABEL_59;
  }

  if (!candidatesCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contextNonRevGeoCandidates", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_60;
    }

    v35 = @"contextNonRevGeoCandidates";
    goto LABEL_59;
  }

  if (!geoCandidatesCopy)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contextRevGeoCandidates", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_60;
    }

    v35 = @"contextRevGeoCandidates";
    goto LABEL_59;
  }

  if (!stateCopy)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemDeduperState", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_60;
    }

    v35 = @"inferredMapItemDeduperState";
    goto LABEL_59;
  }

  if (!locationCopy)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_60;
    }

    v35 = @"referenceLocation";
    goto LABEL_59;
  }

  if (!vector)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outPriorVector", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_60;
    }

    v35 = @"outPriorVector";
    goto LABEL_59;
  }

  if (!observationVector)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outObservationVector", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_60;
    }

    v35 = @"outObservationVector";
LABEL_59:
    _RTErrorInvalidParameterCreate(v35);
    *error = v33 = 0;
    goto LABEL_61;
  }

  if (!posteriorVector)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outPosteriorVector", buf, 2u);
    }

    if (error)
    {
      v35 = @"outPosteriorVector";
      goto LABEL_59;
    }

LABEL_60:
    v33 = 0;
    goto LABEL_61;
  }

  if (self->_loggingEnabled)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      log = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v96 = [candidatesCopy count];
        _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_INFO, "contextNonRevGeoCandidates count, %lu", buf, 0xCu);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      [candidatesCopy enumerateObjectsUsingBlock:&__block_literal_global_197];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      loga = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
      {
        v23 = [geoCandidatesCopy count];
        *buf = 134217984;
        v96 = v23;
        _os_log_impl(&dword_2304B3000, loga, OS_LOG_TYPE_INFO, "contextRevGeoCandidates count, %lu", buf, 0xCu);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      [geoCandidatesCopy enumerateObjectsUsingBlock:&__block_literal_global_200];
    }
  }

  v94 = 0;
  v24 = [stateCopy allUniqueMapItemsWithError:&v94];
  v25 = v94;
  logb = v24;
  if (v25)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = v25;
    userInfo = [v25 userInfo];
    v29 = [v26 errorWithDomain:@"RTRelabelerErrorDomain" code:5 userInfo:userInfo];

    v30 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v96 = v27;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "error when fetching all unique mapItems, %@", buf, 0xCu);
    }

    v31 = logb;
    if (error)
    {
      v32 = v29;
      v33 = 0;
      *error = v29;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v44 = [v24 count];
    if (v44 <= [(RTRelabelerParameters *)self->_parameters minimumNumberPOIs])
    {
      v45 = [(RTRelabelerParameters *)self->_parameters minimumNumberPOIs]- v44;
    }

    else
    {
      v45 = 0;
    }

    v46 = MEMORY[0x277CBEB98];
    v47 = [(NSArray *)self->_hallucinatedUUIDs subarrayWithRange:0, v45];
    v48 = v46;
    v49 = v47;
    v86 = [v48 setWithArray:?];

    [(RTRelabelerParameters *)self->_parameters baseCount];
    v93 = 0;
    v85 = [(RTRelabeler *)self createUUIDToPriorMapForContextNonRevGeoCandidates:candidatesCopy contextRevGeoCandidates:geoCandidatesCopy uniqueNonRevGeoMapItems:logb hallucinatedUUIDs:v86 baseCount:&v93 error:?];
    v50 = v93;
    v51 = v50;
    if (self->_loggingEnabled)
    {
      v84 = v50;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v52 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = [v86 count];
          *buf = 134217984;
          v96 = v53;
          _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, "hallucinated UUIDs count, %lu", buf, 0xCu);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v54 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = [v85 count];
          *buf = 134218242;
          v96 = v55;
          v97 = 2112;
          v98 = v84;
          _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "prior count, %lu, error, %@", buf, 0x16u);
        }
      }

      v56 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      v51 = v84;
      if (v56)
      {
        [v85 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_204];
        v51 = v84;
      }
    }

    if (v51)
    {
      if (error)
      {
        v57 = v51;
        v58 = v51;
        v33 = 0;
        *error = v57;
        v29 = v86;
        v31 = logb;
      }

      else
      {
        v33 = 0;
        v29 = v86;
        v31 = logb;
        v57 = v51;
      }
    }

    else
    {
      v92 = 0;
      v83 = [(RTRelabeler *)self createProbabilityVectorForCandidate:candidateCopy uniqueNonRevGeoMapItems:logb hallucinatedUUIDs:v86 error:&v92];
      v59 = v92;
      v60 = v59;
      if (self->_loggingEnabled)
      {
        v61 = v59;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v81 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            v62 = [v83 count];
            *buf = 134218242;
            v96 = v62;
            v97 = 2112;
            v98 = v61;
            _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_INFO, "observation count, %lu, error, %@", buf, 0x16u);
          }
        }

        v63 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        v60 = v61;
        if (v63)
        {
          [v83 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_207];
          v60 = v61;
        }
      }

      if (v60)
      {
        if (error)
        {
          v64 = v60;
          v65 = v60;
          v33 = 0;
          *error = v64;
          v29 = v86;
          v31 = logb;
        }

        else
        {
          v33 = 0;
          v29 = v86;
          v31 = logb;
          v64 = v60;
        }
      }

      else
      {
        v91 = 0;
        v66 = [(RTRelabeler *)self combineProbabilityVector:v83 prior:v85 error:&v91];
        v67 = v91;
        v68 = v67;
        if (self->_loggingEnabled)
        {
          v82 = v67;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v78 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
            {
              v69 = [v66 count];
              *buf = 134218242;
              v96 = v69;
              v97 = 2112;
              v98 = v82;
              _os_log_impl(&dword_2304B3000, v78, OS_LOG_TYPE_INFO, "posterior count, %lu, error, %@", buf, 0x16u);
            }
          }

          v70 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          v68 = v82;
          if (v70)
          {
            [v66 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_210];
            v68 = v82;
          }
        }

        v80 = v66;
        if (v68)
        {
          if (error)
          {
            v71 = v68;
            v72 = v68;
            v33 = 0;
            *error = v71;
            v29 = v86;
            v31 = logb;
          }

          else
          {
            v33 = 0;
            v29 = v86;
            v31 = logb;
            v71 = v68;
          }
        }

        else
        {
          v90 = 0;
          v79 = [(RTRelabeler *)self generateRelabeledInferredMapItemsFromProbMap:v66 inferredMapItemDeduperState:stateCopy hallucinatedUUIDs:v86 originalCandidate:candidateCopy referenceLocation:v22 error:&v90];
          v73 = v90;
          v74 = v73;
          if (v73)
          {
            if (error)
            {
              v75 = v73;
              v33 = 0;
              *error = v74;
            }

            else
            {
              v33 = 0;
            }

            v29 = v86;
            v31 = logb;
            v77 = v79;
          }

          else
          {
            *vector = v85;
            *observationVector = v83;
            v76 = v66;
            *posteriorVector = v66;
            v77 = v79;
            v33 = v79;
            v29 = v86;
            v31 = logb;
          }

          v71 = 0;
        }

        v64 = 0;
      }

      v57 = 0;
    }

    v27 = 0;
  }

LABEL_61:

  return v33;
}

void __210__RTRelabeler_relabeledProbVectorForCandidate_usingContextNonRevGeoCandidates_contextRevGeoCandidates_inferredMapItemDeduperState_referenceLocation_outPriorVector_outObservationVector_outPosteriorVector_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 firstObject];
      v7 = [v6 identifier];
      v8 = [v4 secondObject];
      v9 = [v8 identifier];
      v10 = 134218498;
      v11 = a3;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "nonRevGeoCandidate, %lu, visit identifier, %@, mapItem identifier, %@", &v10, 0x20u);
    }
  }
}

void __210__RTRelabeler_relabeledProbVectorForCandidate_usingContextNonRevGeoCandidates_contextRevGeoCandidates_inferredMapItemDeduperState_referenceLocation_outPriorVector_outObservationVector_outPosteriorVector_error___block_invoke_198(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 firstObject];
      v7 = [v6 identifier];
      v8 = [v4 secondObject];
      v9 = [v8 identifier];
      v10 = 134218498;
      v11 = a3;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "revGeoCandidate, %lu, visit identifier, %@, mapItem identifier, %@", &v10, 0x20u);
    }
  }
}

void __210__RTRelabeler_relabeledProbVectorForCandidate_usingContextNonRevGeoCandidates_contextRevGeoCandidates_inferredMapItemDeduperState_referenceLocation_outPriorVector_outObservationVector_outPosteriorVector_error___block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "UUID, %@, prior, %@", &v7, 0x16u);
    }
  }
}

void __210__RTRelabeler_relabeledProbVectorForCandidate_usingContextNonRevGeoCandidates_contextRevGeoCandidates_inferredMapItemDeduperState_referenceLocation_outPriorVector_outObservationVector_outPosteriorVector_error___block_invoke_205(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "UUID, %@, observation, %@", &v7, 0x16u);
    }
  }
}

void __210__RTRelabeler_relabeledProbVectorForCandidate_usingContextNonRevGeoCandidates_contextRevGeoCandidates_inferredMapItemDeduperState_referenceLocation_outPriorVector_outObservationVector_outPosteriorVector_error___block_invoke_208(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "UUID, %@, posterior, %@", &v7, 0x16u);
    }
  }
}

- (id)relabeledInferredMapItemFromProbVector:(id)vector error:(id *)error
{
  vectorCopy = vector;
  v7 = vectorCopy;
  if (!vectorCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeledProbVector", buf, 2u);
    }

    if (error)
    {
      v15 = @"relabeledProbVector";
LABEL_14:
      _RTErrorInvalidParameterCreate(v15);
      *error = v17 = 0;
      goto LABEL_25;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_25;
  }

  if (![vectorCopy count])
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeledProbVector.count >= 1", v30, 2u);
    }

    if (error)
    {
      v15 = @"relabeledProbVector.count >= 1";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 confidence];
  v10 = v9;
  [(RTRelabelerParameters *)self->_parameters confidenceThreshold];
  v12 = v11;

  if (v10 <= v12)
  {
    goto LABEL_23;
  }

  if ([v7 count] > 1)
  {
    v18 = [v7 objectAtIndexedSubscript:0];
    [v18 confidence];
    v20 = v19;
    [(RTRelabelerParameters *)self->_parameters minimumConfidenceRatio];
    v22 = v21;
    v23 = [v7 objectAtIndexedSubscript:1];
    [v23 confidence];
    v25 = v22 * v24;

    if (v20 > v25)
    {
      firstObject = [v7 objectAtIndexedSubscript:0];
      goto LABEL_24;
    }

    if (self->_loggingEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *v29 = 0;
        _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "demoted because does not satisfy minimum confidence ratio", v29, 2u);
      }
    }

LABEL_23:
    v27 = [RTFusedInferredMapItem alloc];
    [(RTRelabelerParameters *)self->_parameters revGeoConfidence];
    firstObject = [(RTFusedInferredMapItem *)v27 initWithMapItem:0 confidence:0 source:?];
    goto LABEL_24;
  }

  firstObject = [v7 firstObject];
LABEL_24:
  v17 = firstObject;
LABEL_25:

  return v17;
}

- (id)relabelCandidate:(id)candidate usingContextCandidates:(id)candidates metrics:(id)metrics outPriorVector:(id *)vector outObservationVector:(id *)observationVector outPosteriorVector:(id *)posteriorVector error:(id *)error
{
  errorCopy2 = error;
  v190 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidatesCopy = candidates;
  metricsCopy = metrics;
  v19 = metricsCopy;
  if (!candidateCopy)
  {
    v58 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: candidate", buf, 2u);
    }

    if (!error)
    {
LABEL_52:
      candidateCopy = 0;
LABEL_53:
      v57 = 0;
      goto LABEL_54;
    }

    v59 = _RTErrorInvalidParameterCreate(@"candidate");
    candidateCopy = 0;
LABEL_32:
    v57 = 0;
    *error = v59;
    goto LABEL_54;
  }

  if (!metricsCopy)
  {
    v60 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metrics", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_53;
    }

    v59 = _RTErrorInvalidParameterCreate(@"metrics");
    goto LABEL_32;
  }

  if (self->_loggingEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      firstObject = [candidateCopy firstObject];
      [firstObject identifier];
      v22 = v160 = self;
      [candidateCopy secondObject];
      posteriorVectorCopy = posteriorVector;
      v23 = v157 = observationVector;
      [v23 identifier];
      vectorCopy = vector;
      v26 = v25 = candidatesCopy;
      *buf = 138412546;
      v187 = v22;
      v188 = 2112;
      v189 = v26;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "relabeling visit identifier, %@, mapItem identifier, %@", buf, 0x16u);

      candidatesCopy = v25;
      vector = vectorCopy;

      posteriorVector = posteriorVectorCopy;
      observationVector = v157;

      self = v160;
    }
  }

  [v19 setPreprocessedMetricsUsingInputCandidate:candidateCopy contextCandidates:candidatesCopy];
  firstObject2 = [candidateCopy firstObject];
  [firstObject2 placeConfidence];
  v29 = v28;
  [(RTRelabelerParameters *)self->_parameters confidenceThreshold];
  v31 = v30;

  if (v29 < v31)
  {
    v148 = v19;
    vectorCopy2 = vector;
    posteriorVectorCopy2 = posteriorVector;
    observationVectorCopy = observationVector;
    v146 = candidatesCopy;
    v138 = [RTLearnedVisit alloc];
    firstObject3 = [candidateCopy firstObject];
    identifier = [firstObject3 identifier];
    firstObject4 = [candidateCopy firstObject];
    location = [firstObject4 location];
    firstObject5 = [candidateCopy firstObject];
    entryDate = [firstObject5 entryDate];
    firstObject6 = [candidateCopy firstObject];
    exitDate = [firstObject6 exitDate];
    firstObject7 = [candidateCopy firstObject];
    [firstObject7 creationDate];
    v36 = v161 = self;
    firstObject8 = [candidateCopy firstObject];
    expirationDate = [firstObject8 expirationDate];
    firstObject9 = [candidateCopy firstObject];
    [firstObject9 placeConfidence];
    v40 = [(RTLearnedVisit *)v138 initWithIdentifier:identifier location:location entryDate:entryDate exitDate:exitDate creationDate:v36 expirationDate:expirationDate placeConfidence:1 placeSource:?];

    self = v161;
    errorCopy2 = error;

    v41 = objc_alloc(MEMORY[0x277D011C0]);
    secondObject = [candidateCopy secondObject];
    v43 = [v41 initWithFirstObject:v40 secondObject:secondObject];

    if (v161->_loggingEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v44 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "converting candidate to reverse geocode", buf, 2u);
      }
    }

    v19 = v148;
    if (v43)
    {

      candidateCopy = v43;
      candidatesCopy = v146;
      posteriorVector = posteriorVectorCopy2;
      observationVector = observationVectorCopy;
      vector = vectorCopy2;
      goto LABEL_16;
    }

    v74 = MEMORY[0x277CCA9B8];
    v184 = *MEMORY[0x277CCA450];
    v185 = @"candidate was nil";
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
    v76 = [v74 errorWithDomain:@"RTRelabelerErrorDomain" code:2 userInfo:v75];

    v77 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    candidatesCopy = v146;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v109 = NSStringFromSelector(a2);
      *buf = 138412546;
      v187 = v109;
      v188 = 2112;
      v189 = v76;
      _os_log_error_impl(&dword_2304B3000, v77, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (error)
    {
      v78 = v76;
      *error = v76;
    }

    goto LABEL_52;
  }

LABEL_16:
  firstObject10 = [candidateCopy firstObject];
  [firstObject10 placeConfidence];
  v47 = v46;
  [(RTRelabelerParameters *)self->_parameters passthroughThreshold];
  if (v47 > v48)
  {
LABEL_21:

LABEL_22:
    v52 = [(RTRelabeler *)self placeholderCandidate:candidateCopy];
    v53 = [RTFusedInferredMapItem alloc];
    if (v52)
    {
      [(RTRelabelerParameters *)self->_parameters revGeoConfidence];
      v55 = v54;
      firstObject11 = [candidateCopy firstObject];
      v57 = -[RTFusedInferredMapItem initWithMapItem:confidence:source:](v53, "initWithMapItem:confidence:source:", 0, [firstObject11 placeSource], v55);
    }

    else
    {
      firstObject11 = [candidateCopy secondObject];
      firstObject12 = [candidateCopy firstObject];
      [firstObject12 placeConfidence];
      v63 = v62;
      [candidateCopy firstObject];
      v64 = v19;
      v66 = v65 = self;
      v57 = -[RTFusedInferredMapItem initWithMapItem:confidence:source:](v53, "initWithMapItem:confidence:source:", firstObject11, [v66 placeSource], v63);

      self = v65;
      v19 = v64;
    }

    if (self->_loggingEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v67 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 138739971;
        v187 = v57;
        _os_log_impl(&dword_2304B3000, v67, OS_LOG_TYPE_INFO, "passing through relabeler, relabeledInferredMapItem, %{sensitive}@", buf, 0xCu);
      }
    }

    if (v57)
    {
      v68 = v57;
    }

    else
    {
      v69 = MEMORY[0x277CCA9B8];
      v182 = *MEMORY[0x277CCA450];
      v183 = @"relabeledInferredMapItem was nil";
      v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
      v71 = [v69 errorWithDomain:@"RTRelabelerErrorDomain" code:4 userInfo:v70];

      v72 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v108 = NSStringFromSelector(a2);
        *buf = 138412546;
        v187 = v108;
        v188 = 2112;
        v189 = v71;
        _os_log_error_impl(&dword_2304B3000, v72, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (errorCopy2)
      {
        v73 = v71;
        *errorCopy2 = v71;
      }
    }

    goto LABEL_54;
  }

  secondObject2 = [candidateCopy secondObject];
  if ([secondObject2 mapItemPlaceType] == 1)
  {
LABEL_20:

    goto LABEL_21;
  }

  vectorCopy3 = vector;
  selfCopy = self;
  secondObject3 = [candidateCopy secondObject];
  if ([secondObject3 source] == 8)
  {

    self = selfCopy;
    goto LABEL_20;
  }

  observationVectorCopy2 = observationVector;
  v80 = [candidatesCopy count];

  self = selfCopy;
  if (!v80)
  {
    goto LABEL_22;
  }

  v153 = errorCopy2;
  posteriorVectorCopy3 = posteriorVector;
  v179 = 0;
  [(RTRelabeler *)selfCopy preprocessContextCandidates:candidatesCopy relabelingCandidate:candidateCopy error:&v179];
  candidatesCopy = v81 = candidatesCopy;
  v82 = v179;

  if (selfCopy->_loggingEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v83 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      v84 = [candidatesCopy count];
      *buf = 134218242;
      v187 = v84;
      v188 = 2112;
      v189 = v82;
      _os_log_impl(&dword_2304B3000, v83, OS_LOG_TYPE_INFO, "preprocessed contextCandidates count, %lu, preprocessError, %@", buf, 0x16u);
    }
  }

  if (v82)
  {
    if (v153)
    {
      v85 = v82;
      v57 = 0;
      *v153 = v82;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    [v19 setFilteredInputMetricsUsingContextCandidates:candidatesCopy];
    v86 = [candidatesCopy count];
    if (v86 >= [(RTRelabelerParameters *)selfCopy->_parameters contextCandidateAmountThreshold]|| [(RTRelabeler *)selfCopy placeholderCandidate:candidateCopy])
    {
      v177 = 0;
      v178 = 0;
      v176 = 0;
      v87 = [(RTRelabeler *)selfCopy partitionCandidates:candidatesCopy intoNonRevGeoCandidates:&v178 revGeoCandidates:&v177 error:&v176];
      v88 = v178;
      v89 = v177;
      v90 = v176;
      if (v87)
      {
        aSelectora = v90;
        [v19 setNonRevGeoCandidates:v88 revGeoCandidates:v89];
        deduper = selfCopy->_deduper;
        v174 = 0;
        v175 = 0;
        v172 = 0;
        v173 = 0;
        v162 = selfCopy;
        v92 = [(RTRelabeler *)selfCopy dedupeRelabelingCandidate:candidateCopy nonRevGeoCandidates:v88 deduper:deduper inferredMapItemDeduperState:&v175 dedupedRelabelingCandidate:&v174 dedupedNonRevGeoCandidates:&v173 error:&v172];
        v93 = v175;
        v94 = v89;
        v95 = v174;
        v96 = v173;
        v97 = v172;
        v147 = v96;
        v149 = v93;
        if (v92)
        {
          v135 = v97;
          v137 = v88;
          [v19 setNumberOfUniqueMapItems:v93];
          firstObject13 = [candidateCopy firstObject];
          location2 = [firstObject13 location];
          v98Location = [location2 location];
          v170 = 0;
          v171 = 0;
          v168 = 0;
          v169 = 0;
          v141 = v95;
          v100 = [(RTRelabeler *)v162 relabeledProbVectorForCandidate:v95 usingContextNonRevGeoCandidates:v96 contextRevGeoCandidates:v94 inferredMapItemDeduperState:v93 referenceLocation:v98Location outPriorVector:&v171 outObservationVector:&v170 outPosteriorVector:&v169 error:&v168];
          v101 = v171;
          v145 = v170;
          v143 = v169;
          v102 = v168;

          v103 = v102;
          v89 = v94;
          v133 = v101;
          v139 = v100;
          if (v103)
          {
            v104 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v187 = v103;
              _os_log_error_impl(&dword_2304B3000, v104, OS_LOG_TYPE_ERROR, "relabeldProbVector error, %@", buf, 0xCu);
            }

            v105 = v103;

            v88 = v137;
            v106 = v149;
            if (v153)
            {
              v107 = v105;
              v57 = 0;
              *v153 = v105;
            }

            else
            {
              v57 = 0;
            }

            v127 = v147;
          }

          else
          {
            v167 = 0;
            v124 = [(RTRelabeler *)v162 relabeledInferredMapItemFromProbVector:v100 error:&v167];
            v132 = v167;
            if (v132)
            {
              v163 = v124;
              v125 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
              if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v187 = v132;
                _os_log_error_impl(&dword_2304B3000, v125, OS_LOG_TYPE_ERROR, "relabeling pick error, %@", buf, 0xCu);
              }

              v88 = v137;
              v106 = v149;
              v57 = 0;
              if (v153)
              {
                *v153 = v132;
              }

              v127 = v147;
              v124 = v163;
            }

            else
            {
              if (v162->_loggingEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v164 = v124;
                v128 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v187 = v164;
                  _os_log_impl(&dword_2304B3000, v128, OS_LOG_TYPE_INFO, "relabeledInferredMapItem, %{sensitive}@", buf, 0xCu);
                }

                v124 = v164;
              }

              [v19 setOutputMetricsUsingInputCandidate:v141 priorVector:v101 observationVector:v145 posteriorVector:v143 relabeledProbVector:v100 relabeledInferredMapItem:v124];
              if (vectorCopy3)
              {
                v129 = v101;
                *vectorCopy3 = v101;
              }

              if (observationVectorCopy2)
              {
                *observationVectorCopy2 = v145;
              }

              v127 = v147;
              if (posteriorVectorCopy3)
              {
                *posteriorVectorCopy3 = v143;
              }

              v57 = v124;
              v88 = v137;
              v106 = v149;
            }

            v105 = 0;
          }

          v97 = v135;
          v126 = v141;
        }

        else
        {
          if (v153)
          {
            v97 = v97;
            v57 = 0;
            *v153 = v97;
          }

          else
          {
            v57 = 0;
          }

          v126 = v95;
          v89 = v94;
          v127 = v96;
          v106 = v149;
        }

        v90 = aSelectora;
      }

      else if (v153)
      {
        v90 = v90;
        v57 = 0;
        *v153 = v90;
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      v150 = v19;
      v110 = [RTFusedInferredMapItem alloc];
      secondObject4 = [candidateCopy secondObject];
      firstObject14 = [candidateCopy firstObject];
      [firstObject14 placeConfidence];
      v114 = v113;
      [candidateCopy firstObject];
      v116 = v115 = selfCopy;
      v57 = -[RTFusedInferredMapItem initWithMapItem:confidence:source:](v110, "initWithMapItem:confidence:source:", secondObject4, [v116 placeSource], v114);

      if (v115->_loggingEnabled && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v117 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v187 = v57;
          _os_log_impl(&dword_2304B3000, v117, OS_LOG_TYPE_INFO, "returning early since insufficient amount of context candidates, relabeledInferredMapItem, %{sensitive}@", buf, 0xCu);
        }
      }

      if (v57)
      {
        v118 = v57;
        v19 = v150;
      }

      else
      {
        v119 = MEMORY[0x277CCA9B8];
        v180 = *MEMORY[0x277CCA450];
        v181 = @"relabeledInferredMapItem was nil";
        v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
        v121 = [v119 errorWithDomain:@"RTRelabelerErrorDomain" code:4 userInfo:v120];

        v122 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        v19 = v150;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          v130 = NSStringFromSelector(a2);
          *buf = 138412546;
          v187 = v130;
          v188 = 2112;
          v189 = v121;
          _os_log_error_impl(&dword_2304B3000, v122, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        if (v153)
        {
          v123 = v121;
          *v153 = v121;
        }
      }
    }
  }

LABEL_54:

  return v57;
}

@end