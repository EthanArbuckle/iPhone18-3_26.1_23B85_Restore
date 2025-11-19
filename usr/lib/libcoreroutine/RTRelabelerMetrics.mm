@interface RTRelabelerMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)a3;
- (RTRelabelerMetrics)initWithLoggingEnabled:(BOOL)a3;
- (RTRelabelerMetrics)initWithRelabeler:(id)a3;
- (double)calculateEntropyOfProbVector:(id)a3;
- (double)logMax2ConfidenceRatioOfRelabeledProbVector:(id)a3;
- (id)getUUIDForPotentialRelabelingItemUsingInputCandidate:(id)a3 relabeledProbVector:(id)a4;
- (id)maxUUIDOfProbVector:(id)a3;
- (void)setDerivedMetrics;
- (void)setErrorMetrics:(id)a3;
- (void)setFilteredInputMetricsUsingContextCandidates:(id)a3;
- (void)setNonRevGeoCandidates:(id)a3 revGeoCandidates:(id)a4;
- (void)setNumberOfUniqueMapItems:(id)a3;
- (void)setOutputMetricsUsingInputCandidate:(id)a3 priorVector:(id)a4 observationVector:(id)a5 posteriorVector:(id)a6 relabeledProbVector:(id)a7 relabeledInferredMapItem:(id)a8;
- (void)setPreprocessedMetricsUsingInputCandidate:(id)a3 contextCandidates:(id)a4;
@end

@implementation RTRelabelerMetrics

- (RTRelabelerMetrics)initWithLoggingEnabled:(BOOL)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v61.receiver = self;
  v61.super_class = RTRelabelerMetrics;
  v3 = [(RTMetric *)&v61 initWithLoggingEnabled:a3];
  if (v3)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v4 = [objc_opt_class() BOOLeanKeys];
    v5 = [v4 countByEnumeratingWithState:&v57 objects:v66 count:16];
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
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v57 + 1) + 8 * v9);
          v11 = [(RTMetric *)v3 metrics];
          [v11 setObject:v8 forKeyedSubscript:v10];

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v6);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = [objc_opt_class() unsignedIntegerKeys];
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v65 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v53 + 1) + 8 * v16);
          v18 = [(RTMetric *)v3 metrics];
          [v18 setObject:&unk_28459F378 forKeyedSubscript:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v14);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = [objc_opt_class() integerKeys];
    v20 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v49 + 1) + 8 * v23);
          v25 = [(RTMetric *)v3 metrics];
          [v25 setObject:&unk_28459F390 forKeyedSubscript:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v21);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = [objc_opt_class() doubleKeys];
    v27 = [v26 countByEnumeratingWithState:&v45 objects:v63 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v45 + 1) + 8 * v30);
          v32 = [(RTMetric *)v3 metrics];
          [v32 setObject:&unk_2845A1E98 forKeyedSubscript:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v45 objects:v63 count:16];
      }

      while (v28);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = [objc_opt_class() bucketedKeys];
    v34 = [v33 countByEnumeratingWithState:&v41 objects:v62 count:16];
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
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v41 + 1) + 8 * v37);
          v39 = [(RTMetric *)v3 metrics];
          [v39 setObject:&unk_28459F378 forKeyedSubscript:v38];

          ++v37;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v41 objects:v62 count:16];
      }

      while (v35);
    }
  }

  return v3;
}

- (RTRelabelerMetrics)initWithRelabeler:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_relabeler, a3);
    self = [(RTRelabelerMetrics *)self initWithLoggingEnabled:0];
    v6 = self;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeler", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)supportedMetricKeys
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [objc_opt_class() BOOLeanKeys];
  v4 = [v2 setWithSet:v3];

  v5 = [objc_opt_class() unsignedIntegerKeys];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  v7 = [objc_opt_class() integerKeys];
  v8 = [v7 allObjects];
  [v4 addObjectsFromArray:v8];

  v9 = [objc_opt_class() doubleKeys];
  v10 = [v9 allObjects];
  [v4 addObjectsFromArray:v10];

  v11 = [objc_opt_class() bucketedKeys];
  v12 = [v11 allObjects];
  [v4 addObjectsFromArray:v12];

  return v4;
}

- (void)setPreprocessedMetricsUsingInputCandidate:(id)a3 contextCandidates:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTRelabeler placeholderCandidate:](self->_relabeler, "placeholderCandidate:", v6)}];
    v9 = [(RTMetric *)self metrics];
    [v9 setObject:v8 forKeyedSubscript:@"relabelingCandidateIsPlaceholder"];

    v10 = MEMORY[0x277CCABB0];
    v11 = [v6 firstObject];
    [v11 placeConfidence];
    v12 = [v10 numberWithDouble:?];
    v13 = [(RTMetric *)self metrics];
    [v13 setObject:v12 forKeyedSubscript:@"confidenceOfRelabelingCandidate"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    v15 = [(RTMetric *)self metrics];
    [v15 setObject:v14 forKeyedSubscript:@"numberOfPreFilteredContextCandidates"];

    v16 = [v6 secondObject];
    v17 = [v16 mapItemPlaceType];

    v18 = [(RTMetric *)self metrics];
    v19 = v18;
    if (v17 == 1)
    {
      v20 = &unk_28459F3C0;
    }

    else if (v17 == 2)
    {
      v20 = &unk_28459F3A8;
    }

    else
    {
      v20 = &unk_28459F3D8;
    }

    [v18 setObject:v20 forKeyedSubscript:@"relabelingCandidateMapItemType"];
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

- (void)setFilteredInputMetricsUsingContextCandidates:(id)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  v4 = [(RTMetric *)self metrics];
  [v4 setObject:v5 forKeyedSubscript:@"numberOfFilteredContextCandidates"];
}

- (void)setNonRevGeoCandidates:(id)a3 revGeoCandidates:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  v9 = [(RTMetric *)self metrics];
  [v9 setObject:v8 forKeyedSubscript:@"numberOfNonPlaceholderCandidates"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [v7 count];

  v13 = [v10 numberWithUnsignedInteger:v11];
  v12 = [(RTMetric *)self metrics];
  [v12 setObject:v13 forKeyedSubscript:@"numberOfPlaceholderCandidates"];
}

- (void)setNumberOfUniqueMapItems:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCABB0];
    v8 = 0;
    v5 = [a3 allUniqueMapItemsWithError:&v8];
    v6 = [v4 numberWithUnsignedInteger:{-[NSObject count](v5, "count")}];
    v7 = [(RTMetric *)self metrics];
    [v7 setObject:v6 forKeyedSubscript:@"numberOfUniqueNonPlaceholderMapItems"];
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

- (double)calculateEntropyOfProbVector:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v9 = -1.0;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: probVector";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_17;
  }

  if (![v3 count])
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v9 = -1.0;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 doubleValue];
        v13 = v12;
        [v11 doubleValue];
        v9 = v9 - v13 * log(v14);
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (id)getUUIDForPotentialRelabelingItemUsingInputCandidate:(id)a3 relabeledProbVector:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v28 = v6;
  if (!v6)
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

  if (!v7)
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

  if (![v7 count])
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

  v9 = [(RTRelabeler *)self->_relabeler placeholderCandidate:v6];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v10)
  {
LABEL_24:
    v22 = 0;
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
        v15 = [*(*(&v29 + 1) + 8 * i) mapItem];
        v16 = [v15 identifier];
        v17 = [v28 secondObject];
        v18 = [v17 identifier];
        v19 = [v16 isEqual:v18];

        if (v19)
        {
          continue;
        }
      }

      v20 = [v14 mapItem];
      v21 = [v20 identifier];

      if (v21)
      {
        v24 = [v14 mapItem];
        v22 = [v24 identifier];

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

  v22 = 0;
LABEL_20:
  v8 = v26;
LABEL_25:

  return v22;
}

- (double)logMax2ConfidenceRatioOfRelabeledProbVector:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  if ([v3 count] <= 1)
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

- (id)maxUUIDOfProbVector:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  if (![v3 count])
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

- (void)setOutputMetricsUsingInputCandidate:(id)a3 priorVector:(id)a4 observationVector:(id)a5 posteriorVector:(id)a6 relabeledProbVector:(id)a7 relabeledInferredMapItem:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
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

  if (!v15)
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

  if (!v16)
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

  if (!v17)
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

  if (!v18)
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

  if (![v18 count])
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

  if (v19)
  {
    v128 = self;
    v20 = MEMORY[0x277CBEB98];
    v21 = [v15 allKeys];
    v22 = [v20 setWithArray:v21];

    v23 = MEMORY[0x277CBEB98];
    v24 = [v16 allKeys];
    v25 = [v23 setWithArray:v24];

    v26 = MEMORY[0x277CBEB98];
    v27 = [v17 allKeys];
    v28 = [v26 setWithArray:v27];

    v129 = v25;
    v130 = v28;
    if (([v22 isEqualToSet:v25]& 1) != 0)
    {
      if (([v22 isEqualToSet:v28]& 1) != 0)
      {
        v29 = v128;
        v126 = [(RTRelabeler *)v128->_relabeler placeholderCandidate:v14];
        if (v126 || ([v14 secondObject], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "identifier"), v31 = objc_claimAutoreleasedReturnValue(), v123 = -[NSObject containsObject:](v22, "containsObject:", v31), v31, v29 = v128, v30, (v123 & 1) != 0))
        {
          v32 = [(RTRelabeler *)v29->_relabeler placeholderUUID];
          v33 = [v22 containsObject:v32];

          if (v33)
          {
            v34 = [v19 mapItem];

            if (v34)
            {
              v35 = 1;
            }

            else
            {
              v35 = v126;
            }

            if (v35)
            {
              if (v34)
              {
                v36 = v126;
              }

              else
              {
                v36 = 1;
              }

              if (v36)
              {
                if (v34)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v126;
                }

                v38 = [(RTMetric *)v128 metrics];
                v39 = v38;
                if (v37)
                {
                  v40 = &unk_28459F408;
                }

                else
                {
                  v40 = &unk_28459F420;
                }

                [v38 setObject:v40 forKeyedSubscript:@"relabelerAction"];
                v44 = v128;
                goto LABEL_60;
              }

              v47 = [v14 secondObject];
              v48 = [v19 mapItem];
              v124 = [v47 isEqualToMapItem:v48];

              v44 = v128;
              v45 = [(RTMetric *)v128 metrics];
              v39 = v45;
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
              v44 = v128;
              v45 = [(RTMetric *)v128 metrics];
              v39 = v45;
              v46 = &unk_28459F3A8;
            }

            [v45 setObject:v46 forKeyedSubscript:@"relabelerAction"];
LABEL_60:

            v49 = MEMORY[0x277CCABB0];
            [v19 confidence];
            v50 = [v49 numberWithDouble:?];
            [(RTMetric *)v44 metrics];
            v52 = p_isa = &v44->super.super.isa;
            [v52 setObject:v50 forKeyedSubscript:@"relabeledConfidence"];

            if (v126)
            {
              v127 = [p_isa[3] placeholderUUID];
            }

            else
            {
              v53 = [v14 secondObject];
              v127 = [v53 identifier];
            }

            v54 = p_isa;
            v125 = [p_isa getUUIDForPotentialRelabelingItemUsingInputCandidate:v14 relabeledProbVector:v18];
            if (v125)
            {
              v55 = [p_isa metrics];
              [v55 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasSomethingToRelabelTo"];

              v56 = MEMORY[0x277CCABB0];
              v117 = [v16 objectForKeyedSubscript:v127];
              [v117 doubleValue];
              v58 = log(v57);
              v59 = [v16 objectForKeyedSubscript:v125];
              [v59 doubleValue];
              v61 = [v56 numberWithDouble:(v58 - log(v60))];
              v62 = [v54 metrics];
              [v62 setObject:v61 forKeyedSubscript:@"logObservationNonPlaceholderRatio"];

              v63 = MEMORY[0x277CCABB0];
              v118 = [v15 objectForKeyedSubscript:v127];
              [v118 doubleValue];
              v65 = log(v64);
              v112 = [v15 objectForKeyedSubscript:v125];
              [v112 doubleValue];
              v67 = [v63 numberWithDouble:(v65 - log(v66))];
              v68 = [(RTMetric *)v128 metrics];
              [v68 setObject:v67 forKeyedSubscript:@"logPriorNonPlaceholderRatio"];

              v69 = MEMORY[0x277CCABB0];
              v119 = [v17 objectForKeyedSubscript:v127];
              [v119 doubleValue];
              v71 = log(v70);
              v113 = [v17 objectForKeyedSubscript:v125];
              [v113 doubleValue];
              v73 = [v69 numberWithDouble:(v71 - log(v72))];
              v74 = [(RTMetric *)v128 metrics];
              [v74 setObject:v73 forKeyedSubscript:@"logPosteriorNonPlaceholderRatio"];

              v54 = &v128->super.super.isa;
            }

            v75 = MEMORY[0x277CCABB0];
            v120 = [v16 objectForKeyedSubscript:v127];
            [v120 doubleValue];
            v77 = log(v76);
            v114 = [v54[3] placeholderUUID];
            v109 = [v16 objectForKeyedSubscript:v114];
            [v109 doubleValue];
            v79 = [v75 numberWithDouble:(v77 - log(v78))];
            [v54 metrics];
            v81 = v80 = v54;
            [v81 setObject:v79 forKeyedSubscript:@"logObservationPlaceholderRatio"];

            v82 = MEMORY[0x277CCABB0];
            v121 = [v15 objectForKeyedSubscript:v127];
            [v121 doubleValue];
            v84 = log(v83);
            v115 = [v80[3] placeholderUUID];
            v110 = [v15 objectForKeyedSubscript:v115];
            [v110 doubleValue];
            v86 = [v82 numberWithDouble:(v84 - log(v85))];
            v87 = [v80 metrics];
            [v87 setObject:v86 forKeyedSubscript:@"logPriorPlaceholderRatio"];

            v88 = MEMORY[0x277CCABB0];
            v122 = [v17 objectForKeyedSubscript:v127];
            [v122 doubleValue];
            v90 = log(v89);
            v116 = [v80[3] placeholderUUID];
            v111 = [v17 objectForKeyedSubscript:v116];
            [v111 doubleValue];
            v92 = [v88 numberWithDouble:(v90 - log(v91))];
            v93 = [v80 metrics];
            [v93 setObject:v92 forKeyedSubscript:@"logPosteriorPlaceholderRatio"];

            if ([v18 count] >= 2)
            {
              [(RTRelabelerMetrics *)v128 logMax2ConfidenceRatioOfRelabeledProbVector:v18];
              v95 = v94;
              v96 = [MEMORY[0x277CCABB0] numberWithDouble:?];
              v97 = [(RTMetric *)v128 metrics];
              [v97 setObject:v96 forKeyedSubscript:@"logMax2ConfidenceRatio"];

              v98 = [(RTRelabeler *)v128->_relabeler parameters];
              [v98 minimumConfidenceRatio];
              v100 = log(v99);

              v101 = v128;
              if (v95 <= v100)
              {
                v102 = [(RTRelabelerMetrics *)v128 maxUUIDOfProbVector:v17];
                v103 = [(RTRelabeler *)v128->_relabeler placeholderUUID];
                v104 = [v102 isEqual:v103];

                v101 = v128;
                if ((v104 & 1) == 0)
                {
                  v105 = [(RTMetric *)v128 metrics];
                  [v105 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"madePlaceholderBecauseOfConfidenceRatioThreshold"];
                }
              }

              v106 = MEMORY[0x277CCABB0];
              [(RTRelabelerMetrics *)v101 calculateEntropyOfProbVector:v17];
              v107 = [v106 numberWithDouble:?];
              v108 = [(RTMetric *)v101 metrics];
              [v108 setObject:v107 forKeyedSubscript:@"predictionEntropy"];
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

- (void)setErrorMetrics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = v4;
    v5 = [(RTMetric *)self metrics];
    [v5 setObject:&unk_28459F3D8 forKeyedSubscript:@"relabelerAction"];

    v6 = [v15 domain];
    v7 = [v6 isEqualToString:*MEMORY[0x277D01448]];

    if (v7)
    {
      v8 = [(RTMetric *)self metrics];
      v9 = v8;
      v10 = &unk_28459F3A8;
    }

    else
    {
      v11 = [v15 domain];
      v12 = [v11 isEqualToString:@"RTRelabelerErrorDomain"];

      v8 = [(RTMetric *)self metrics];
      v9 = v8;
      if (v12)
      {
        v10 = &unk_28459F3C0;
      }

      else
      {
        v10 = &unk_28459F3D8;
      }
    }

    [v8 setObject:v10 forKeyedSubscript:@"errorDomain"];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}];
    v14 = [(RTMetric *)self metrics];
    [v14 setObject:v13 forKeyedSubscript:@"errorCode"];

    v4 = v15;
  }
}

- (void)setDerivedMetrics
{
  v31 = [RTMetric binsFromStart:&unk_2845A1EA8 toEnd:&unk_2845A1EB8 gap:&unk_2845A1EC8];
  v3 = [(RTMetric *)self metrics];
  v4 = [v3 objectForKeyedSubscript:@"confidenceOfRelabelingCandidate"];
  v5 = [RTMetric binForNumber:v4 bins:v31];
  v6 = [(RTMetric *)self metrics];
  [v6 setObject:v5 forKeyedSubscript:@"bucketedConfidenceOfRelabelingCandidate"];

  v7 = [(RTMetric *)self metrics];
  v8 = [v7 objectForKeyedSubscript:@"numberOfNonPlaceholderCandidates"];
  v9 = [RTMetric binForNumber:v8 bins:&unk_2845A1568];
  v10 = [(RTMetric *)self metrics];
  [v10 setObject:v9 forKeyedSubscript:@"bucketedNumberOfNonPlaceholderCandidates"];

  v11 = [(RTMetric *)self metrics];
  v12 = [v11 objectForKeyedSubscript:@"numberOfPlaceholderCandidates"];
  v13 = [RTMetric binForNumber:v12 bins:&unk_2845A1568];
  v14 = [(RTMetric *)self metrics];
  [v14 setObject:v13 forKeyedSubscript:@"bucketedNumberOfPlaceholderCandidates"];

  v15 = [(RTMetric *)self metrics];
  v16 = [v15 objectForKeyedSubscript:@"numberOfUniqueNonPlaceholderMapItems"];
  v17 = [RTMetric binForNumber:v16 bins:&unk_2845A1568];
  v18 = [(RTMetric *)self metrics];
  [v18 setObject:v17 forKeyedSubscript:@"bucketedNumberOfUniqueNonPlaceholderMapItems"];

  v19 = [(RTMetric *)self metrics];
  v20 = [v19 objectForKeyedSubscript:@"relabeledConfidence"];
  v21 = [RTMetric binForNumber:v20 bins:v31];
  v22 = [(RTMetric *)self metrics];
  [v22 setObject:v21 forKeyedSubscript:@"bucketedRelabeledConfidence"];

  v23 = [(RTMetric *)self metrics];
  v24 = [v23 objectForKeyedSubscript:@"logPriorNonPlaceholderRatio"];
  v25 = [RTMetric binForNumber:v24 bins:&unk_2845A1580];
  v26 = [(RTMetric *)self metrics];
  [v26 setObject:v25 forKeyedSubscript:@"bucketedLogPriorNonPlaceholderRatio"];

  v27 = [(RTMetric *)self metrics];
  v28 = [v27 objectForKeyedSubscript:@"logPriorPlaceholderRatio"];
  v29 = [RTMetric binForNumber:v28 bins:&unk_2845A1580];
  v30 = [(RTMetric *)self metrics];
  [v30 setObject:v29 forKeyedSubscript:@"bucketedLogPriorPlaceholderRatio"];
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  [(RTRelabelerMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = RTRelabelerMetrics;
  return [(RTMetric *)&v6 submitMetricsWithError:a3];
}

@end