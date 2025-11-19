@interface RTLearnedLocationEngineTrainingMetrics
- (RTLearnedLocationEngineTrainingMetrics)init;
- (double)latency;
- (id)collectCoreAnalyticsMetrics;
- (id)description;
- (void)startTrainingVisits;
- (void)stopTrainingVisits;
- (void)submitPlace:(id)a3 nearbyPlaces:(id)a4;
- (void)submitToCoreAnalytics;
- (void)submitVisit:(id)a3 possibleMapItems:(id)a4 selectedMapItem:(id)a5;
@end

@implementation RTLearnedLocationEngineTrainingMetrics

- (RTLearnedLocationEngineTrainingMetrics)init
{
  v12.receiver = self;
  v12.super_class = RTLearnedLocationEngineTrainingMetrics;
  v2 = [(RTLearnedLocationEngineTrainingMetrics *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    awdVisits = v2->_awdVisits;
    v2->_awdVisits = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    awdPlaces = v2->_awdPlaces;
    v2->_awdPlaces = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    visits = v2->_visits;
    v2->_visits = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    places = v2->_places;
    v2->_places = v9;
  }

  return v2;
}

- (void)submitVisit:(id)a3 possibleMapItems:(id)a4 selectedMapItem:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v23 = self;
    v11 = objc_opt_new();
    v12 = [v8 exitDate];
    v13 = [v8 entryDate];
    [v12 timeIntervalSinceDate:v13];
    [v11 setDwellTime:v14];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [objc_alloc(MEMORY[0x277D81880]) initWithMapItem:*(*(&v24 + 1) + 8 * v19)];
          if (v20)
          {
            [v11 addPossibleMapItems:v20];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    if (v10)
    {
      v21 = [objc_alloc(MEMORY[0x277D81880]) initWithMapItem:v10];
      [v11 setSelectedMapItem:v21];
    }

    v22 = [(RTLearnedLocationEngineTrainingMetrics *)v23 awdVisits];
    [v22 addObject:v11];
  }
}

- (void)submitPlace:(id)a3 nearbyPlaces:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277D81880]);
  v33 = v5;
  v9 = [v5 mapItem];
  v10 = [v8 initWithMapItem:v9];
  v30 = v7;
  [v7 setMapItem:v10];

  v11 = [MEMORY[0x277CCA940] set];
  v12 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v13 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * i);

        v19 = [v18 mapItem];
        v20 = [v19 location];
        v21 = [v33 mapItem];
        v22 = [v21 location];
        v37 = 0;
        [v12 distanceFromLocation:v20 toLocation:v22 error:&v37];
        v24 = v23;
        v15 = v37;

        if (v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v43 = v15;
            _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "Distance Calculator error, %@", buf, 0xCu);
          }
        }

        v26 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(floor(v24) / 10.0) * 10.0];
        [v11 addObject:v26];
      }

      v14 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __67__RTLearnedLocationEngineTrainingMetrics_submitPlace_nearbyPlaces___block_invoke;
  v34[3] = &unk_2788CE6E0;
  v35 = v11;
  v36 = v30;
  v27 = v30;
  v28 = v11;
  [v28 enumerateObjectsUsingBlock:v34];
  v29 = [(RTLearnedLocationEngineTrainingMetrics *)self awdPlaces];
  [v29 addObject:v27];
}

void __67__RTLearnedLocationEngineTrainingMetrics_submitPlace_nearbyPlaces___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_opt_new();
  [v7 setValue:{objc_msgSend(v3, "unsignedIntValue")}];
  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 32) countForObject:v3];

  v6 = [v4 numberWithUnsignedInteger:v5];
  [v7 setCount:{objc_msgSend(v6, "unsignedIntValue")}];

  [*(a1 + 40) addDistanceToOtherPlaces:v7];
}

- (void)startTrainingVisits
{
  self->_trainedVisits = 1;
  v3 = [MEMORY[0x277CBEAA8] date];
  trainVisitsStart = self->_trainVisitsStart;
  self->_trainVisitsStart = v3;

  self->_wasDeferred = 0;
}

- (void)stopTrainingVisits
{
  self->_trainVisitsStop = [MEMORY[0x277CBEAA8] date];

  MEMORY[0x2821F96F8]();
}

- (double)latency
{
  if (!self->_trainVisitsStart)
  {
    return 0.0;
  }

  trainVisitsStop = self->_trainVisitsStop;
  if (!trainVisitsStop)
  {
    return 0.0;
  }

  [(NSDate *)trainVisitsStop timeIntervalSinceDate:?];
  return result;
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  v4 = [(RTLearnedLocationEngineTrainingMetrics *)self trainedVisits];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  v18 = v5;
  [(RTLearnedLocationEngineTrainingMetrics *)self latency];
  v7 = v6;
  [(RTLearnedLocationEngineTrainingMetrics *)self intervalSinceLastAttempt];
  v9 = v8;
  v17 = [(RTLearnedLocationEngineTrainingMetrics *)self locationsProcessed];
  [(RTLearnedLocationEngineTrainingMetrics *)self maxIntervalBetweenLocations];
  v11 = v10;
  v12 = [(RTLearnedLocationEngineTrainingMetrics *)self awdVisits];
  v13 = [v12 count];
  v14 = [(RTLearnedLocationEngineTrainingMetrics *)self awdPlaces];
  v15 = [v20 stringWithFormat:@"%@, trainedVisits, %@, latency, %.2f, intervalSinceLastAttempt, %.2f, locationsProcessed, %u, maxIntervalBetweenLocations, %.2f, new visits, %lu, places from visits, %lu, visitCountDevice, %lu, visitCountTotal, %lu, placeCountDevice, %lu, placeCountTotal, %lu, mode, %lu, reason, %lu", v19, v18, v7, v9, v17, v11, v13, objc_msgSend(v14, "count"), -[RTLearnedLocationEngineTrainingMetrics visitCountDevice](self, "visitCountDevice"), -[RTLearnedLocationEngineTrainingMetrics visitCountTotal](self, "visitCountTotal"), -[RTLearnedLocationEngineTrainingMetrics placeCountDevice](self, "placeCountDevice"), -[RTLearnedLocationEngineTrainingMetrics placeCountTotal](self, "placeCountTotal"), -[RTLearnedLocationEngineTrainingMetrics mode](self, "mode"), -[RTLearnedLocationEngineTrainingMetrics reason](self, "reason")];

  return v15;
}

- (id)collectCoreAnalyticsMetrics
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedLocationEngineTrainingMetrics wasDeferred](self, "wasDeferred")}];
  [v3 setObject:v4 forKeyedSubscript:@"_deferralReason"];

  v5 = MEMORY[0x277CCABB0];
  [(RTLearnedLocationEngineTrainingMetrics *)self intervalSinceLastAttempt];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"_intervalSinceLastAttempt"];

  v7 = MEMORY[0x277CCABB0];
  [(RTLearnedLocationEngineTrainingMetrics *)self latency];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"_duration"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [(RTLearnedLocationEngineTrainingMetrics *)self visits];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  [v3 setObject:v11 forKeyedSubscript:@"_visitCountTrainingEvent"];

  v12 = MEMORY[0x277CCABB0];
  v13 = [(RTLearnedLocationEngineTrainingMetrics *)self places];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
  [v3 setObject:v14 forKeyedSubscript:@"_placeCountTrainingEvent"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedLocationEngineTrainingMetrics visitCountDevice](self, "visitCountDevice")}];
  [v3 setObject:v15 forKeyedSubscript:@"_visitCountDevice"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedLocationEngineTrainingMetrics placeCountDevice](self, "placeCountDevice")}];
  [v3 setObject:v16 forKeyedSubscript:@"_placeCountDevice"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedLocationEngineTrainingMetrics placeCountTotal](self, "placeCountTotal")}];
  [v3 setObject:v17 forKeyedSubscript:@"_placeCountTotal"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedLocationEngineTrainingMetrics visitCountTotal](self, "visitCountTotal")}];
  [v3 setObject:v18 forKeyedSubscript:@"_visitCountTotal"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedLocationEngineTrainingMetrics mode](self, "mode")}];
  [v3 setObject:v19 forKeyedSubscript:@"_trainMode"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTLearnedLocationEngineTrainingMetrics reason](self, "reason")}];
  [v3 setObject:v20 forKeyedSubscript:@"_trainReason"];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = self->_visits;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v21);
        }

        if (![*(*(&v29 + 1) + 8 * i) placeSource])
        {
          ++v24;
        }
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
  [v3 setObject:v27 forKeyedSubscript:@"_unlabeledVisitCountTrainingEvent"];

  return v3;
}

- (void)submitToCoreAnalytics
{
  v5 = [(RTLearnedLocationEngineTrainingMetrics *)self collectCoreAnalyticsMetrics];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v2 initWithCString:RTAnalyticsEventTraining encoding:1];
  log_analytics_submission(v3, v5);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v3];
  AnalyticsSendEvent();
}

@end