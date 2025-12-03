@interface RTPlaceInferenceMetrics
- (RTPlaceInferenceMetrics)initWithClientIdentifier:(id)identifier placeInferenceOptions:(id)options;
- (double)entropyOfConflictFromTopResults:(id)results;
- (id)description;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setPlaceInferenceOptions:(id)options;
- (void)setPlaceInferences:(id)inferences;
- (void)setTopPersonalizedLabelsInferredMapItems:(id)items topBluePOIInferredMapItem:(id)item;
- (void)setTopPlaceInference:(id)inference;
- (void)submitMetrics;
@end

@implementation RTPlaceInferenceMetrics

- (void)submitMetrics
{
  date = [MEMORY[0x277CBEAA8] date];
  startDate = [(RTPlaceInferenceMetrics *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v5 = v4;

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10 * (v5 * 100.0)];
  metrics = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics setObject:v6 forKeyedSubscript:@"latency"];

  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v8 initWithCString:RTAnalyticsEventPlaceInferenceQuery encoding:1];
  metrics2 = [(RTPlaceInferenceMetrics *)self metrics];
  log_analytics_submission(v9, metrics2);

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v9];
  metrics3 = [(RTPlaceInferenceMetrics *)self metrics];
  AnalyticsSendEvent();
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  metrics = [(RTPlaceInferenceMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTPlaceInferenceMetrics, %lu, ", objc_msgSend(metrics, "count")];

  metrics2 = [(RTPlaceInferenceMetrics *)self metrics];
  allKeys = [metrics2 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__RTPlaceInferenceMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [allKeys enumerateObjectsUsingBlock:v12];

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

- (RTPlaceInferenceMetrics)initWithClientIdentifier:(id)identifier placeInferenceOptions:(id)options
{
  identifierCopy = identifier;
  optionsCopy = options;
  v8 = optionsCopy;
  if (!identifierCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: clientIdentifier";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!optionsCopy)
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
    date = [MEMORY[0x277CBEAA8] date];
    startDate = v9->_startDate;
    v9->_startDate = date;

    v12 = objc_opt_new();
    metrics = v9->_metrics;
    v9->_metrics = v12;

    [(NSMutableDictionary *)v9->_metrics setObject:identifierCopy forKeyedSubscript:@"clientID"];
    [(NSMutableDictionary *)v9->_metrics setObject:&unk_28459EF10 forKeyedSubscript:@"count"];
    [(RTPlaceInferenceMetrics *)v9 setPlaceInferenceOptions:v8];
  }

  self = v9;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)setPlaceInferenceOptions:(id)options
{
  v4 = MEMORY[0x277CCABB0];
  optionsCopy = options;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "fidelityPolicy")}];
  metrics = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics setObject:v6 forKeyedSubscript:@"fidelityPolicy"];

  v8 = MEMORY[0x277CCABB0];
  locations = [optionsCopy locations];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(locations, "count")}];
  metrics2 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics2 setObject:v10 forKeyedSubscript:@"inputLocationCount"];

  v12 = MEMORY[0x277CCABB0];
  accessPoints = [optionsCopy accessPoints];

  v13 = [v12 numberWithUnsignedInteger:{objc_msgSend(accessPoints, "count")}];
  metrics3 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics3 setObject:v13 forKeyedSubscript:@"inputWiFiCount"];
}

- (void)setPlaceInferences:(id)inferences
{
  inferencesCopy = inferences;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(inferencesCopy, "count") != 0}];
  metrics = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics setObject:v4 forKeyedSubscript:@"hasFinalResults"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(inferencesCopy, "count")}];
  metrics2 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics2 setObject:v6 forKeyedSubscript:@"resultCount"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(inferencesCopy, "count")}];
  metrics3 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics3 setObject:v8 forKeyedSubscript:@"resultFidelityPolicyNoneCount"];

  if ([inferencesCopy count])
  {
    firstObject = [inferencesCopy firstObject];
    [(RTPlaceInferenceMetrics *)self setTopPlaceInference:firstObject];
  }
}

- (void)setTopPlaceInference:(id)inference
{
  inferenceCopy = inference;
  v5 = MEMORY[0x277CCABB0];
  v26 = inferenceCopy;
  if (inferenceCopy)
  {
    placeType = [inferenceCopy placeType];
  }

  else
  {
    placeType = 0;
  }

  v7 = [v5 numberWithUnsignedInteger:placeType];
  metrics = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics setObject:v7 forKeyedSubscript:@"placeType"];

  v9 = MEMORY[0x277CCABB0];
  if (v26)
  {
    userType = [v26 userType];
  }

  else
  {
    userType = 0;
  }

  v11 = [v9 numberWithUnsignedInteger:userType];
  metrics2 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics2 setObject:v11 forKeyedSubscript:@"userSpecificPlaceType"];

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
  metrics3 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics3 setObject:v15 forKeyedSubscript:@"topConfidence"];

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
  metrics4 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics4 setObject:v20 forKeyedSubscript:@"confidenceScore"];

  v22 = MEMORY[0x277CCABB0];
  if (v26)
  {
    userTypeSource = [v26 userTypeSource];
  }

  else
  {
    userTypeSource = 0;
  }

  v24 = [v22 numberWithUnsignedInteger:userTypeSource];
  metrics5 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics5 setObject:v24 forKeyedSubscript:@"userTypeSource"];
}

- (void)setTopPersonalizedLabelsInferredMapItems:(id)items topBluePOIInferredMapItem:(id)item
{
  v55 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  itemCopy = item;
  selfCopy = self;
  v43 = itemsCopy;
  if ([itemsCopy count] < 2)
  {
    v12 = 0;
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = itemsCopy;
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
            mapItem = [v11 mapItem];
            mapItem2 = [v15 mapItem];
            v18 = [mapItem isEqual:mapItem2];

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

    self = selfCopy;
    itemsCopy = v43;
  }

  v19 = [itemsCopy count];
  v20 = 0;
  if (itemCopy && v19)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = itemsCopy;
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
          mapItem3 = [itemCopy mapItem];
          mapItem4 = [v26 mapItem];
          v29 = [mapItem3 isEqual:mapItem4];

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
    itemsCopy = v44;
  }

  v30 = MEMORY[0x277CCABB0];
  [(RTPlaceInferenceMetrics *)self entropyOfConflictFromTopResults:itemsCopy];
  v31 = [v30 numberWithDouble:?];
  metrics = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics setObject:v31 forKeyedSubscript:@"entropyOfConflict"];

  v33 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(itemsCopy, "count") != 0}];
  metrics2 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics2 setObject:v33 forKeyedSubscript:@"hasLocalHints"];

  v35 = [MEMORY[0x277CCABB0] numberWithInt:itemCopy != 0];
  metrics3 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics3 setObject:v35 forKeyedSubscript:@"hasBluePOIResults"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:v20];
  metrics4 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics4 setObject:v37 forKeyedSubscript:@"hasFusionConflictBluePOI"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:v12 & 1];
  metrics5 = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics5 setObject:v39 forKeyedSubscript:@"hasFusionConflictLocalHints"];
}

- (double)entropyOfConflictFromTopResults:(id)results
{
  resultsCopy = results;
  if ([resultsCopy count])
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
    [resultsCopy enumerateObjectsUsingBlock:v17];
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

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  metrics = [(RTPlaceInferenceMetrics *)self metrics];
  [metrics setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  metrics = [(RTPlaceInferenceMetrics *)self metrics];
  v6 = [metrics objectForKey:keyCopy];

  return v6;
}

@end