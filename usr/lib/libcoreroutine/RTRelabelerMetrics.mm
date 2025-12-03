@interface RTRelabelerMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (RTRelabelerMetrics)initWithLoggingEnabled:(BOOL)enabled;
- (RTRelabelerMetrics)initWithRelabeler:(id)relabeler;
- (double)calculateEntropyOfProbVector:(id)vector;
- (double)logMax2ConfidenceRatioOfRelabeledProbVector:(id)vector;
- (id)getUUIDForPotentialRelabelingItemUsingInputCandidate:(id)candidate relabeledProbVector:(id)vector;
- (id)maxUUIDOfProbVector:(id)vector;
- (void)setDerivedMetrics;
- (void)setErrorMetrics:(id)metrics;
- (void)setFilteredInputMetricsUsingContextCandidates:(id)candidates;
- (void)setNonRevGeoCandidates:(id)candidates revGeoCandidates:(id)geoCandidates;
- (void)setNumberOfUniqueMapItems:(id)items;
- (void)setOutputMetricsUsingInputCandidate:(id)candidate priorVector:(id)vector observationVector:(id)observationVector posteriorVector:(id)posteriorVector relabeledProbVector:(id)probVector relabeledInferredMapItem:(id)item;
- (void)setPreprocessedMetricsUsingInputCandidate:(id)candidate contextCandidates:(id)candidates;
@end

@implementation RTRelabelerMetrics

- (RTRelabelerMetrics)initWithLoggingEnabled:(BOOL)enabled
{
  v67 = *MEMORY[0x277D85DE8];
  v61.receiver = self;
  v61.super_class = RTRelabelerMetrics;
  v3 = [(RTMetric *)&v61 initWithLoggingEnabled:enabled];
  if (v3)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
    v5 = [bOOLeanKeys countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v58;
      v8 = MEMORY[0x277CBEC28];
      do
      {
        v9 = 0;
        do
        {
          if (*v58 != v7)
          {
            objc_enumerationMutation(bOOLeanKeys);
          }

          v10 = *(*(&v57 + 1) + 8 * v9);
          metrics = [(RTMetric *)v3 metrics];
          [metrics setObject:v8 forKeyedSubscript:v10];

          ++v9;
        }

        while (v6 != v9);
        v6 = [bOOLeanKeys countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v6);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    unsignedIntegerKeys = [objc_opt_class() unsignedIntegerKeys];
    v13 = [unsignedIntegerKeys countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v54;
      do
      {
        v16 = 0;
        do
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(unsignedIntegerKeys);
          }

          v17 = *(*(&v53 + 1) + 8 * v16);
          metrics2 = [(RTMetric *)v3 metrics];
          [metrics2 setObject:&unk_28459F378 forKeyedSubscript:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [unsignedIntegerKeys countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v14);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    integerKeys = [objc_opt_class() integerKeys];
    v20 = [integerKeys countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v50;
      do
      {
        v23 = 0;
        do
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(integerKeys);
          }

          v24 = *(*(&v49 + 1) + 8 * v23);
          metrics3 = [(RTMetric *)v3 metrics];
          [metrics3 setObject:&unk_28459F390 forKeyedSubscript:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [integerKeys countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v21);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    doubleKeys = [objc_opt_class() doubleKeys];
    v27 = [doubleKeys countByEnumeratingWithState:&v45 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v46;
      do
      {
        v30 = 0;
        do
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(doubleKeys);
          }

          v31 = *(*(&v45 + 1) + 8 * v30);
          metrics4 = [(RTMetric *)v3 metrics];
          [metrics4 setObject:&unk_2845A1E98 forKeyedSubscript:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [doubleKeys countByEnumeratingWithState:&v45 objects:v63 count:16];
      }

      while (v28);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    bucketedKeys = [objc_opt_class() bucketedKeys];
    v34 = [bucketedKeys countByEnumeratingWithState:&v41 objects:v62 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v42;
      do
      {
        v37 = 0;
        do
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(bucketedKeys);
          }

          v38 = *(*(&v41 + 1) + 8 * v37);
          metrics5 = [(RTMetric *)v3 metrics];
          [metrics5 setObject:&unk_28459F378 forKeyedSubscript:v38];

          ++v37;
        }

        while (v35 != v37);
        v35 = [bucketedKeys countByEnumeratingWithState:&v41 objects:v62 count:16];
      }

      while (v35);
    }
  }

  return v3;
}

- (RTRelabelerMetrics)initWithRelabeler:(id)relabeler
{
  relabelerCopy = relabeler;
  if (relabelerCopy)
  {
    objc_storeStrong(&self->_relabeler, relabeler);
    self = [(RTRelabelerMetrics *)self initWithLoggingEnabled:0];
    selfCopy = self;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeler", v9, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)supportedMetricKeys
{
  v2 = MEMORY[0x277CBEB58];
  bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
  v4 = [v2 setWithSet:bOOLeanKeys];

  unsignedIntegerKeys = [objc_opt_class() unsignedIntegerKeys];
  allObjects = [unsignedIntegerKeys allObjects];
  [v4 addObjectsFromArray:allObjects];

  integerKeys = [objc_opt_class() integerKeys];
  allObjects2 = [integerKeys allObjects];
  [v4 addObjectsFromArray:allObjects2];

  doubleKeys = [objc_opt_class() doubleKeys];
  allObjects3 = [doubleKeys allObjects];
  [v4 addObjectsFromArray:allObjects3];

  bucketedKeys = [objc_opt_class() bucketedKeys];
  allObjects4 = [bucketedKeys allObjects];
  [v4 addObjectsFromArray:allObjects4];

  return v4;
}

- (void)setPreprocessedMetricsUsingInputCandidate:(id)candidate contextCandidates:(id)candidates
{
  candidateCopy = candidate;
  candidatesCopy = candidates;
  if (candidateCopy)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTRelabeler placeholderCandidate:](self->_relabeler, "placeholderCandidate:", candidateCopy)}];
    metrics = [(RTMetric *)self metrics];
    [metrics setObject:v8 forKeyedSubscript:@"relabelingCandidateIsPlaceholder"];

    v10 = MEMORY[0x277CCABB0];
    firstObject = [candidateCopy firstObject];
    [firstObject placeConfidence];
    v12 = [v10 numberWithDouble:?];
    metrics2 = [(RTMetric *)self metrics];
    [metrics2 setObject:v12 forKeyedSubscript:@"confidenceOfRelabelingCandidate"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(candidatesCopy, "count")}];
    metrics3 = [(RTMetric *)self metrics];
    [metrics3 setObject:v14 forKeyedSubscript:@"numberOfPreFilteredContextCandidates"];

    secondObject = [candidateCopy secondObject];
    mapItemPlaceType = [secondObject mapItemPlaceType];

    metrics4 = [(RTMetric *)self metrics];
    v19 = metrics4;
    if (mapItemPlaceType == 1)
    {
      v20 = &unk_28459F3C0;
    }

    else if (mapItemPlaceType == 2)
    {
      v20 = &unk_28459F3A8;
    }

    else
    {
      v20 = &unk_28459F3D8;
    }

    [metrics4 setObject:v20 forKeyedSubscript:@"relabelingCandidateMapItemType"];
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inputCandidate", v21, 2u);
    }
  }
}

- (void)setFilteredInputMetricsUsingContextCandidates:(id)candidates
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(candidates, "count")}];
  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v5 forKeyedSubscript:@"numberOfFilteredContextCandidates"];
}

- (void)setNonRevGeoCandidates:(id)candidates revGeoCandidates:(id)geoCandidates
{
  v6 = MEMORY[0x277CCABB0];
  geoCandidatesCopy = geoCandidates;
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(candidates, "count")}];
  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v8 forKeyedSubscript:@"numberOfNonPlaceholderCandidates"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [geoCandidatesCopy count];

  v13 = [v10 numberWithUnsignedInteger:v11];
  metrics2 = [(RTMetric *)self metrics];
  [metrics2 setObject:v13 forKeyedSubscript:@"numberOfPlaceholderCandidates"];
}

- (void)setNumberOfUniqueMapItems:(id)items
{
  if (items)
  {
    v4 = MEMORY[0x277CCABB0];
    v8 = 0;
    v5 = [items allUniqueMapItemsWithError:&v8];
    v6 = [v4 numberWithUnsignedInteger:{-[NSObject count](v5, "count")}];
    metrics = [(RTMetric *)self metrics];
    [metrics setObject:v6 forKeyedSubscript:@"numberOfUniqueNonPlaceholderMapItems"];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemDeduperState", buf, 2u);
    }
  }
}

- (double)calculateEntropyOfProbVector:(id)vector
{
  v23 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v4 = vectorCopy;
  if (!vectorCopy)
  {
    allValues = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v9 = -1.0;
    if (!os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: probVector";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, allValues, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_17;
  }

  if (![vectorCopy count])
  {
    allValues = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v9 = -1.0;
    if (!os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: probVector.count > 0";
    goto LABEL_15;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [v4 allValues];
  v6 = [allValues countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 doubleValue];
        v13 = v12;
        [v11 doubleValue];
        v9 = v9 - v13 * log(v14);
      }

      v7 = [allValues countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

LABEL_17:

  return v9;
}

- (id)getUUIDForPotentialRelabelingItemUsingInputCandidate:(id)candidate relabeledProbVector:(id)vector
{
  v35 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  vectorCopy = vector;
  v8 = vectorCopy;
  v28 = candidateCopy;
  if (!candidateCopy)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: inputCandidate";
LABEL_23:
    _os_log_error_impl(&dword_2304B3000, obj, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_24;
  }

  if (!vectorCopy)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: relabeledProbVector";
    goto LABEL_23;
  }

  if (![vectorCopy count])
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: relabeledProbVector.count > 0";
    goto LABEL_23;
  }

  v9 = [(RTRelabeler *)self->_relabeler placeholderCandidate:candidateCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v10)
  {
LABEL_24:
    identifier4 = 0;
    goto LABEL_25;
  }

  v11 = v10;
  v26 = v8;
  v12 = *v30;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      if (!v9)
      {
        mapItem = [*(*(&v29 + 1) + 8 * i) mapItem];
        identifier = [mapItem identifier];
        secondObject = [v28 secondObject];
        identifier2 = [secondObject identifier];
        v19 = [identifier isEqual:identifier2];

        if (v19)
        {
          continue;
        }
      }

      mapItem2 = [v14 mapItem];
      identifier3 = [mapItem2 identifier];

      if (identifier3)
      {
        mapItem3 = [v14 mapItem];
        identifier4 = [mapItem3 identifier];

        goto LABEL_20;
      }
    }

    v11 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  identifier4 = 0;
LABEL_20:
  v8 = v26;
LABEL_25:

  return identifier4;
}

- (double)logMax2ConfidenceRatioOfRelabeledProbVector:(id)vector
{
  vectorCopy = vector;
  v4 = vectorCopy;
  if (!vectorCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      v10 = -1.0;
      goto LABEL_8;
    }

    v16 = 0;
    v12 = "Invalid parameter not satisfying: relabeledProbVector";
    v13 = &v16;
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_7;
  }

  if ([vectorCopy count] <= 1)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v15 = 0;
    v12 = "Invalid parameter not satisfying: relabeledProbVector.count > 1";
    v13 = &v15;
    goto LABEL_10;
  }

  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 confidence];
  v7 = log(v6);
  v8 = [v4 objectAtIndexedSubscript:1];
  [v8 confidence];
  v10 = v7 - log(v9);

LABEL_8:
  return v10;
}

- (id)maxUUIDOfProbVector:(id)vector
{
  v27 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v4 = vectorCopy;
  if (!vectorCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: probabilityVector";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_16;
  }

  if (![vectorCopy count])
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: probabilityVector.count > 0";
    goto LABEL_21;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (!v6)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v22;
  v10 = -1.79769313e308;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      v13 = [v5 objectForKeyedSubscript:v12, v21];
      [v13 doubleValue];
      v15 = v14;

      if (v15 > v10)
      {
        v16 = v12;

        v17 = [v5 objectForKeyedSubscript:v16];
        [v17 doubleValue];
        v10 = v18;

        v8 = v16;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  }

  while (v7);
LABEL_17:

  return v8;
}

- (void)setOutputMetricsUsingInputCandidate:(id)candidate priorVector:(id)vector observationVector:(id)observationVector posteriorVector:(id)posteriorVector relabeledProbVector:(id)probVector relabeledInferredMapItem:(id)item
{
  candidateCopy = candidate;
  vectorCopy = vector;
  observationVectorCopy = observationVector;
  posteriorVectorCopy = posteriorVector;
  probVectorCopy = probVector;
  itemCopy = item;
  if (!candidateCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: inputCandidate";
LABEL_40:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v41, buf, 2u);
    goto LABEL_52;
  }

  if (!vectorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: priorVector";
    goto LABEL_40;
  }

  if (!observationVectorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: observationVector";
    goto LABEL_40;
  }

  if (!posteriorVectorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: posteriorVector";
    goto LABEL_40;
  }

  if (!probVectorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: relabeledProbVector";
    goto LABEL_40;
  }

  if (![probVectorCopy count])
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: relabeledProbVector.count > 0";
    goto LABEL_40;
  }

  if (itemCopy)
  {
    selfCopy = self;
    v20 = MEMORY[0x277CBEB98];
    allKeys = [vectorCopy allKeys];
    v22 = [v20 setWithArray:allKeys];

    v23 = MEMORY[0x277CBEB98];
    allKeys2 = [observationVectorCopy allKeys];
    v25 = [v23 setWithArray:allKeys2];

    v26 = MEMORY[0x277CBEB98];
    allKeys3 = [posteriorVectorCopy allKeys];
    v28 = [v26 setWithArray:allKeys3];

    v129 = v25;
    v130 = v28;
    if (([v22 isEqualToSet:v25]& 1) != 0)
    {
      if (([v22 isEqualToSet:v28]& 1) != 0)
      {
        v29 = selfCopy;
        v126 = [(RTRelabeler *)selfCopy->_relabeler placeholderCandidate:candidateCopy];
        if (v126 || ([candidateCopy secondObject], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "identifier"), v31 = objc_claimAutoreleasedReturnValue(), v123 = -[NSObject containsObject:](v22, "containsObject:", v31), v31, v29 = selfCopy, v30, (v123 & 1) != 0))
        {
          placeholderUUID = [(RTRelabeler *)v29->_relabeler placeholderUUID];
          v33 = [v22 containsObject:placeholderUUID];

          if (v33)
          {
            mapItem = [itemCopy mapItem];

            if (mapItem)
            {
              v35 = 1;
            }

            else
            {
              v35 = v126;
            }

            if (v35)
            {
              if (mapItem)
              {
                v36 = v126;
              }

              else
              {
                v36 = 1;
              }

              if (v36)
              {
                if (mapItem)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v126;
                }

                metrics = [(RTMetric *)selfCopy metrics];
                v39 = metrics;
                if (v37)
                {
                  v40 = &unk_28459F408;
                }

                else
                {
                  v40 = &unk_28459F420;
                }

                [metrics setObject:v40 forKeyedSubscript:@"relabelerAction"];
                v44 = selfCopy;
                goto LABEL_60;
              }

              secondObject = [candidateCopy secondObject];
              mapItem2 = [itemCopy mapItem];
              v124 = [secondObject isEqualToMapItem:mapItem2];

              v44 = selfCopy;
              metrics2 = [(RTMetric *)selfCopy metrics];
              v39 = metrics2;
              if (v124)
              {
                v46 = &unk_28459F3F0;
              }

              else
              {
                v46 = &unk_28459F3C0;
              }
            }

            else
            {
              v44 = selfCopy;
              metrics2 = [(RTMetric *)selfCopy metrics];
              v39 = metrics2;
              v46 = &unk_28459F3A8;
            }

            [metrics2 setObject:v46 forKeyedSubscript:@"relabelerAction"];
LABEL_60:

            v49 = MEMORY[0x277CCABB0];
            [itemCopy confidence];
            v50 = [v49 numberWithDouble:?];
            [(RTMetric *)v44 metrics];
            v52 = p_isa = &v44->super.super.isa;
            [v52 setObject:v50 forKeyedSubscript:@"relabeledConfidence"];

            if (v126)
            {
              placeholderUUID2 = [p_isa[3] placeholderUUID];
            }

            else
            {
              secondObject2 = [candidateCopy secondObject];
              placeholderUUID2 = [secondObject2 identifier];
            }

            v54 = p_isa;
            v125 = [p_isa getUUIDForPotentialRelabelingItemUsingInputCandidate:candidateCopy relabeledProbVector:probVectorCopy];
            if (v125)
            {
              metrics3 = [p_isa metrics];
              [metrics3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasSomethingToRelabelTo"];

              v56 = MEMORY[0x277CCABB0];
              v117 = [observationVectorCopy objectForKeyedSubscript:placeholderUUID2];
              [v117 doubleValue];
              v58 = log(v57);
              v59 = [observationVectorCopy objectForKeyedSubscript:v125];
              [v59 doubleValue];
              v61 = [v56 numberWithDouble:(v58 - log(v60))];
              metrics4 = [v54 metrics];
              [metrics4 setObject:v61 forKeyedSubscript:@"logObservationNonPlaceholderRatio"];

              v63 = MEMORY[0x277CCABB0];
              v118 = [vectorCopy objectForKeyedSubscript:placeholderUUID2];
              [v118 doubleValue];
              v65 = log(v64);
              v112 = [vectorCopy objectForKeyedSubscript:v125];
              [v112 doubleValue];
              v67 = [v63 numberWithDouble:(v65 - log(v66))];
              metrics5 = [(RTMetric *)selfCopy metrics];
              [metrics5 setObject:v67 forKeyedSubscript:@"logPriorNonPlaceholderRatio"];

              v69 = MEMORY[0x277CCABB0];
              v119 = [posteriorVectorCopy objectForKeyedSubscript:placeholderUUID2];
              [v119 doubleValue];
              v71 = log(v70);
              v113 = [posteriorVectorCopy objectForKeyedSubscript:v125];
              [v113 doubleValue];
              v73 = [v69 numberWithDouble:(v71 - log(v72))];
              metrics6 = [(RTMetric *)selfCopy metrics];
              [metrics6 setObject:v73 forKeyedSubscript:@"logPosteriorNonPlaceholderRatio"];

              v54 = &selfCopy->super.super.isa;
            }

            v75 = MEMORY[0x277CCABB0];
            v120 = [observationVectorCopy objectForKeyedSubscript:placeholderUUID2];
            [v120 doubleValue];
            v77 = log(v76);
            placeholderUUID3 = [v54[3] placeholderUUID];
            v109 = [observationVectorCopy objectForKeyedSubscript:placeholderUUID3];
            [v109 doubleValue];
            v79 = [v75 numberWithDouble:(v77 - log(v78))];
            [v54 metrics];
            v81 = v80 = v54;
            [v81 setObject:v79 forKeyedSubscript:@"logObservationPlaceholderRatio"];

            v82 = MEMORY[0x277CCABB0];
            v121 = [vectorCopy objectForKeyedSubscript:placeholderUUID2];
            [v121 doubleValue];
            v84 = log(v83);
            placeholderUUID4 = [v80[3] placeholderUUID];
            v110 = [vectorCopy objectForKeyedSubscript:placeholderUUID4];
            [v110 doubleValue];
            v86 = [v82 numberWithDouble:(v84 - log(v85))];
            metrics7 = [v80 metrics];
            [metrics7 setObject:v86 forKeyedSubscript:@"logPriorPlaceholderRatio"];

            v88 = MEMORY[0x277CCABB0];
            v122 = [posteriorVectorCopy objectForKeyedSubscript:placeholderUUID2];
            [v122 doubleValue];
            v90 = log(v89);
            placeholderUUID5 = [v80[3] placeholderUUID];
            v111 = [posteriorVectorCopy objectForKeyedSubscript:placeholderUUID5];
            [v111 doubleValue];
            v92 = [v88 numberWithDouble:(v90 - log(v91))];
            metrics8 = [v80 metrics];
            [metrics8 setObject:v92 forKeyedSubscript:@"logPosteriorPlaceholderRatio"];

            if ([probVectorCopy count] >= 2)
            {
              [(RTRelabelerMetrics *)selfCopy logMax2ConfidenceRatioOfRelabeledProbVector:probVectorCopy];
              v95 = v94;
              v96 = [MEMORY[0x277CCABB0] numberWithDouble:?];
              metrics9 = [(RTMetric *)selfCopy metrics];
              [metrics9 setObject:v96 forKeyedSubscript:@"logMax2ConfidenceRatio"];

              parameters = [(RTRelabeler *)selfCopy->_relabeler parameters];
              [parameters minimumConfidenceRatio];
              v100 = log(v99);

              v101 = selfCopy;
              if (v95 <= v100)
              {
                v102 = [(RTRelabelerMetrics *)selfCopy maxUUIDOfProbVector:posteriorVectorCopy];
                placeholderUUID6 = [(RTRelabeler *)selfCopy->_relabeler placeholderUUID];
                v104 = [v102 isEqual:placeholderUUID6];

                v101 = selfCopy;
                if ((v104 & 1) == 0)
                {
                  metrics10 = [(RTMetric *)selfCopy metrics];
                  [metrics10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"madePlaceholderBecauseOfConfidenceRatioThreshold"];
                }
              }

              v106 = MEMORY[0x277CCABB0];
              [(RTRelabelerMetrics *)v101 calculateEntropyOfProbVector:posteriorVectorCopy];
              v107 = [v106 numberWithDouble:?];
              metrics11 = [(RTMetric *)v101 metrics];
              [metrics11 setObject:v107 forKeyedSubscript:@"predictionEntropy"];
            }

            goto LABEL_51;
          }

          v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v43 = "Invalid parameter not satisfying: [priorUUIDs containsObject:_relabeler.placeholderUUID]";
            goto LABEL_49;
          }
        }

        else
        {
          v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v43 = "Invalid parameter not satisfying: [priorUUIDs containsObject:inputCandidate.secondObject.identifier]";
            goto LABEL_49;
          }
        }

LABEL_50:

LABEL_51:
        goto LABEL_52;
      }

      v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 0;
      v43 = "Invalid parameter not satisfying: [priorUUIDs isEqualToSet:posteriorUUIDs]";
    }

    else
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 0;
      v43 = "Invalid parameter not satisfying: [priorUUIDs isEqualToSet:observationUUIDs]";
    }

LABEL_49:
    _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_50;
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v41 = "Invalid parameter not satisfying: relabeledInferredMapItem";
    goto LABEL_40;
  }

LABEL_52:
}

- (void)setErrorMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (metricsCopy)
  {
    v15 = metricsCopy;
    metrics = [(RTMetric *)self metrics];
    [metrics setObject:&unk_28459F3D8 forKeyedSubscript:@"relabelerAction"];

    domain = [v15 domain];
    v7 = [domain isEqualToString:*MEMORY[0x277D01448]];

    if (v7)
    {
      metrics2 = [(RTMetric *)self metrics];
      v9 = metrics2;
      v10 = &unk_28459F3A8;
    }

    else
    {
      domain2 = [v15 domain];
      v12 = [domain2 isEqualToString:@"RTRelabelerErrorDomain"];

      metrics2 = [(RTMetric *)self metrics];
      v9 = metrics2;
      if (v12)
      {
        v10 = &unk_28459F3C0;
      }

      else
      {
        v10 = &unk_28459F3D8;
      }
    }

    [metrics2 setObject:v10 forKeyedSubscript:@"errorDomain"];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}];
    metrics3 = [(RTMetric *)self metrics];
    [metrics3 setObject:v13 forKeyedSubscript:@"errorCode"];

    metricsCopy = v15;
  }
}

- (void)setDerivedMetrics
{
  v31 = [RTMetric binsFromStart:&unk_2845A1EA8 toEnd:&unk_2845A1EB8 gap:&unk_2845A1EC8];
  metrics = [(RTMetric *)self metrics];
  v4 = [metrics objectForKeyedSubscript:@"confidenceOfRelabelingCandidate"];
  v5 = [RTMetric binForNumber:v4 bins:v31];
  metrics2 = [(RTMetric *)self metrics];
  [metrics2 setObject:v5 forKeyedSubscript:@"bucketedConfidenceOfRelabelingCandidate"];

  metrics3 = [(RTMetric *)self metrics];
  v8 = [metrics3 objectForKeyedSubscript:@"numberOfNonPlaceholderCandidates"];
  v9 = [RTMetric binForNumber:v8 bins:&unk_2845A1568];
  metrics4 = [(RTMetric *)self metrics];
  [metrics4 setObject:v9 forKeyedSubscript:@"bucketedNumberOfNonPlaceholderCandidates"];

  metrics5 = [(RTMetric *)self metrics];
  v12 = [metrics5 objectForKeyedSubscript:@"numberOfPlaceholderCandidates"];
  v13 = [RTMetric binForNumber:v12 bins:&unk_2845A1568];
  metrics6 = [(RTMetric *)self metrics];
  [metrics6 setObject:v13 forKeyedSubscript:@"bucketedNumberOfPlaceholderCandidates"];

  metrics7 = [(RTMetric *)self metrics];
  v16 = [metrics7 objectForKeyedSubscript:@"numberOfUniqueNonPlaceholderMapItems"];
  v17 = [RTMetric binForNumber:v16 bins:&unk_2845A1568];
  metrics8 = [(RTMetric *)self metrics];
  [metrics8 setObject:v17 forKeyedSubscript:@"bucketedNumberOfUniqueNonPlaceholderMapItems"];

  metrics9 = [(RTMetric *)self metrics];
  v20 = [metrics9 objectForKeyedSubscript:@"relabeledConfidence"];
  v21 = [RTMetric binForNumber:v20 bins:v31];
  metrics10 = [(RTMetric *)self metrics];
  [metrics10 setObject:v21 forKeyedSubscript:@"bucketedRelabeledConfidence"];

  metrics11 = [(RTMetric *)self metrics];
  v24 = [metrics11 objectForKeyedSubscript:@"logPriorNonPlaceholderRatio"];
  v25 = [RTMetric binForNumber:v24 bins:&unk_2845A1580];
  metrics12 = [(RTMetric *)self metrics];
  [metrics12 setObject:v25 forKeyedSubscript:@"bucketedLogPriorNonPlaceholderRatio"];

  metrics13 = [(RTMetric *)self metrics];
  v28 = [metrics13 objectForKeyedSubscript:@"logPriorPlaceholderRatio"];
  v29 = [RTMetric binForNumber:v28 bins:&unk_2845A1580];
  metrics14 = [(RTMetric *)self metrics];
  [metrics14 setObject:v29 forKeyedSubscript:@"bucketedLogPriorPlaceholderRatio"];
}

- (BOOL)submitMetricsWithError:(id *)error
{
  [(RTRelabelerMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = RTRelabelerMetrics;
  return [(RTMetric *)&v6 submitMetricsWithError:error];
}

@end