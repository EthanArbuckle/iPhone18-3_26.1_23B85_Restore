@interface RTPlaceInferenceMetrics
- (RTPlaceInferenceMetrics)initWithClientIdentifier:(id)a3 placeInferenceOptions:(id)a4;
- (double)entropyOfConflictFromTopResults:(id)a3;
- (id)description;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setPlaceInferenceOptions:(id)a3;
- (void)setPlaceInferences:(id)a3;
- (void)setTopPersonalizedLabelsInferredMapItems:(id)a3 topBluePOIInferredMapItem:(id)a4;
- (void)setTopPlaceInference:(id)a3;
- (void)submitMetrics;
@end

@implementation RTPlaceInferenceMetrics

- (void)submitMetrics
{
  v13 = [MEMORY[0x277CBEAA8] date];
  v3 = [(RTPlaceInferenceMetrics *)self startDate];
  [v13 timeIntervalSinceDate:v3];
  v5 = v4;

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10 * (v5 * 100.0)];
  v7 = [(RTPlaceInferenceMetrics *)self metrics];
  [v7 setObject:v6 forKeyedSubscript:@"latency"];

  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v8 initWithCString:RTAnalyticsEventPlaceInferenceQuery encoding:1];
  v10 = [(RTPlaceInferenceMetrics *)self metrics];
  log_analytics_submission(v9, v10);

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v9];
  v12 = [(RTPlaceInferenceMetrics *)self metrics];
  AnalyticsSendEvent();
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(RTPlaceInferenceMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTPlaceInferenceMetrics, %lu, ", objc_msgSend(v4, "count")];

  v6 = [(RTPlaceInferenceMetrics *)self metrics];
  v7 = [v6 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__RTPlaceInferenceMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __38__RTPlaceInferenceMetrics_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 metrics];
  v8 = [v5 valueForKey:v4];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@, ", v4, v8];

  [v6 appendString:v7];
}

- (RTPlaceInferenceMetrics)initWithClientIdentifier:(id)a3 placeInferenceOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v14 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: clientIdentifier";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: options";
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = RTPlaceInferenceMetrics;
  v9 = [(RTPlaceInferenceMetrics *)&v18 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    startDate = v9->_startDate;
    v9->_startDate = v10;

    v12 = objc_opt_new();
    metrics = v9->_metrics;
    v9->_metrics = v12;

    [(NSMutableDictionary *)v9->_metrics setObject:v6 forKeyedSubscript:@"clientID"];
    [(NSMutableDictionary *)v9->_metrics setObject:&unk_28459EF10 forKeyedSubscript:@"count"];
    [(RTPlaceInferenceMetrics *)v9 setPlaceInferenceOptions:v8];
  }

  self = v9;
  v14 = self;
LABEL_10:

  return v14;
}

- (void)setPlaceInferenceOptions:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "fidelityPolicy")}];
  v7 = [(RTPlaceInferenceMetrics *)self metrics];
  [v7 setObject:v6 forKeyedSubscript:@"fidelityPolicy"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 locations];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v11 = [(RTPlaceInferenceMetrics *)self metrics];
  [v11 setObject:v10 forKeyedSubscript:@"inputLocationCount"];

  v12 = MEMORY[0x277CCABB0];
  v15 = [v5 accessPoints];

  v13 = [v12 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  v14 = [(RTPlaceInferenceMetrics *)self metrics];
  [v14 setObject:v13 forKeyedSubscript:@"inputWiFiCount"];
}

- (void)setPlaceInferences:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "count") != 0}];
  v5 = [(RTPlaceInferenceMetrics *)self metrics];
  [v5 setObject:v4 forKeyedSubscript:@"hasFinalResults"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v7 = [(RTPlaceInferenceMetrics *)self metrics];
  [v7 setObject:v6 forKeyedSubscript:@"resultCount"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v9 = [(RTPlaceInferenceMetrics *)self metrics];
  [v9 setObject:v8 forKeyedSubscript:@"resultFidelityPolicyNoneCount"];

  if ([v11 count])
  {
    v10 = [v11 firstObject];
    [(RTPlaceInferenceMetrics *)self setTopPlaceInference:v10];
  }
}

- (void)setTopPlaceInference:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v26 = v4;
  if (v4)
  {
    v6 = [v4 placeType];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 numberWithUnsignedInteger:v6];
  v8 = [(RTPlaceInferenceMetrics *)self metrics];
  [v8 setObject:v7 forKeyedSubscript:@"placeType"];

  v9 = MEMORY[0x277CCABB0];
  if (v26)
  {
    v10 = [v26 userType];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [(RTPlaceInferenceMetrics *)self metrics];
  [v12 setObject:v11 forKeyedSubscript:@"userSpecificPlaceType"];

  v13 = MEMORY[0x277CCABB0];
  if (v26)
  {
    [v26 confidence];
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [v13 numberWithDouble:v14];
  v16 = [(RTPlaceInferenceMetrics *)self metrics];
  [v16 setObject:v15 forKeyedSubscript:@"topConfidence"];

  v17 = MEMORY[0x277CCABB0];
  if (v26)
  {
    [v26 confidence];
    v19 = (v18 * 100.0);
  }

  else
  {
    v19 = 0;
  }

  v20 = [v17 numberWithInt:v19];
  v21 = [(RTPlaceInferenceMetrics *)self metrics];
  [v21 setObject:v20 forKeyedSubscript:@"confidenceScore"];

  v22 = MEMORY[0x277CCABB0];
  if (v26)
  {
    v23 = [v26 userTypeSource];
  }

  else
  {
    v23 = 0;
  }

  v24 = [v22 numberWithUnsignedInteger:v23];
  v25 = [(RTPlaceInferenceMetrics *)self metrics];
  [v25 setObject:v24 forKeyedSubscript:@"userTypeSource"];
}

- (void)setTopPersonalizedLabelsInferredMapItems:(id)a3 topBluePOIInferredMapItem:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v41 = self;
  v43 = v6;
  if ([v6 count] < 2)
  {
    v12 = 0;
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          if (v11)
          {
            v16 = [v11 mapItem];
            v17 = [v15 mapItem];
            v18 = [v16 isEqual:v17];

            v12 |= v18 ^ 1;
          }

          else
          {
            v11 = v15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    self = v41;
    v6 = v43;
  }

  v19 = [v6 count];
  v20 = 0;
  if (v7 && v19)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      LODWORD(v20) = 1;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v45 + 1) + 8 * j);
          v27 = [v7 mapItem];
          v28 = [v26 mapItem];
          v29 = [v27 isEqual:v28];

          v20 = (v29 ^ 1) & v20;
        }

        v23 = [v21 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v23);
    }

    else
    {
      v20 = 1;
    }

    self = v42;
    v6 = v44;
  }

  v30 = MEMORY[0x277CCABB0];
  [(RTPlaceInferenceMetrics *)self entropyOfConflictFromTopResults:v6];
  v31 = [v30 numberWithDouble:?];
  v32 = [(RTPlaceInferenceMetrics *)self metrics];
  [v32 setObject:v31 forKeyedSubscript:@"entropyOfConflict"];

  v33 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "count") != 0}];
  v34 = [(RTPlaceInferenceMetrics *)self metrics];
  [v34 setObject:v33 forKeyedSubscript:@"hasLocalHints"];

  v35 = [MEMORY[0x277CCABB0] numberWithInt:v7 != 0];
  v36 = [(RTPlaceInferenceMetrics *)self metrics];
  [v36 setObject:v35 forKeyedSubscript:@"hasBluePOIResults"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:v20];
  v38 = [(RTPlaceInferenceMetrics *)self metrics];
  [v38 setObject:v37 forKeyedSubscript:@"hasFusionConflictBluePOI"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:v12 & 1];
  v40 = [(RTPlaceInferenceMetrics *)self metrics];
  [v40 setObject:v39 forKeyedSubscript:@"hasFusionConflictLocalHints"];
}

- (double)entropyOfConflictFromTopResults:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__RTPlaceInferenceMetrics_entropyOfConflictFromTopResults___block_invoke;
    v17[3] = &unk_2788CE5F0;
    v5 = v4;
    v18 = v5;
    v19 = v20;
    [v3 enumerateObjectsUsingBlock:v17];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__RTPlaceInferenceMetrics_entropyOfConflictFromTopResults___block_invoke_3;
    v9[3] = &unk_2788CE618;
    v6 = v5;
    v10 = v6;
    v11 = v20;
    v12 = &v13;
    [v6 enumerateObjectsUsingBlock:v9];
    v7 = v14[3];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(v20, 8);
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

void __59__RTPlaceInferenceMetrics_entropyOfConflictFromTopResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__RTPlaceInferenceMetrics_entropyOfConflictFromTopResults___block_invoke_2;
  v9[3] = &unk_2788CE5C8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v9];
  v7 = *(a1 + 32);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 mapItem];
  }

  else
  {
    [v4 objectAtIndexedSubscript:v6];
  }
  v8 = ;
  [v7 addObject:v8];

  ++*(*(*(a1 + 40) + 8) + 24);
}

uint64_t __59__RTPlaceInferenceMetrics_entropyOfConflictFromTopResults___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 mapItem];
  v8 = [v7 isEqualToMapItem:v6];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

long double __59__RTPlaceInferenceMetrics_entropyOfConflictFromTopResults___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) countForObject:a2] / *(*(*(a1 + 40) + 8) + 24);
  v4 = log2(v3);
  v5 = *(*(a1 + 48) + 8);
  result = *(v5 + 24) - v3 * v4;
  *(v5 + 24) = result;
  return result;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTPlaceInferenceMetrics *)self metrics];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(RTPlaceInferenceMetrics *)self metrics];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end