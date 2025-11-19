@interface RTPointOfInterestMonitorEventMetrics
- (RTPointOfInterestMonitorEventMetrics)initWithDistanceCalculator:(id)a3;
- (double)calculateMaximumDistanceFromLocation:(id)a3 toLocations:(id)a4;
- (double)calculateMinimumDistanceFromLocation:(id)a3 toLocations:(id)a4;
- (id)description;
- (id)objectForKey:(id)a3;
- (void)reset;
- (void)saveBuildingPolygons:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)submit;
- (void)updateBuildingPolygonMetricsForRegionIdentifer:(id)a3;
@end

@implementation RTPointOfInterestMonitorEventMetrics

- (RTPointOfInterestMonitorEventMetrics)initWithDistanceCalculator:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v19.receiver = self;
    v19.super_class = RTPointOfInterestMonitorEventMetrics;
    v6 = [(RTPointOfInterestMonitorEventMetrics *)&v19 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_distanceCalculator, a3);
      v8 = objc_opt_new();
      metrics = v7->_metrics;
      v7->_metrics = v8;

      arrivalEventLocation = v7->_arrivalEventLocation;
      v7->_arrivalEventLocation = 0;

      arrivalEventDate = v7->_arrivalEventDate;
      v7->_arrivalEventDate = 0;

      v12 = objc_opt_new();
      buildingPolygons = v7->_buildingPolygons;
      v7->_buildingPolygons = v12;

      locationRequestTimerStartDate = v7->_locationRequestTimerStartDate;
      v7->_locationRequestTimerStartDate = 0;

      highAccuracyLocationRequestStartDate = v7->_highAccuracyLocationRequestStartDate;
      v7->_highAccuracyLocationRequestStartDate = 0;

      [(RTPointOfInterestMonitorEventMetrics *)v7 reset];
    }

    self = v7;
    v16 = self;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)reset
{
  [(RTPointOfInterestMonitorEventMetrics *)self setArrivalEventLocation:0];
  [(RTPointOfInterestMonitorEventMetrics *)self setArrivalEventDate:0];
  [(RTPointOfInterestMonitorEventMetrics *)self setLocationRequestTimerStartDate:0];
  [(RTPointOfInterestMonitorEventMetrics *)self setHighAccuracyLocationRequestStartDate:0];
  v3 = [(RTPointOfInterestMonitorEventMetrics *)self buildingPolygons];
  [v3 removeAllObjects];

  v4 = [(RTPointOfInterestMonitorEventMetrics *)self metrics];
  [v4 removeAllObjects];

  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C528 forKey:@"arrivalEvent"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"nearbyAppClipCount"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"distanceFromArrivalLocationToClosestAppClipLocation"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"buildingFenceCount"];
  v5 = MEMORY[0x277CBEC28];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:MEMORY[0x277CBEC28] forKey:@"shouldRequestGPS"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:v5 forKey:@"exceedDailyPowerBudget"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"highAccuracyLocationRequestLatency"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"highAccuracyLocationRequestDuration"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:v5 forKey:@"isFenceBreak"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"buildingPolygonRadius"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"distanceFromArrivalLocationToBuildingPolygonCentroid"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"fenceBreakLatency"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:v5 forKey:@"isGPSRunningWhenFenceBreak"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"BluePOIQueryCount"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:v5 forKey:@"bluePOIHasResult"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C558 forKey:@"bluePOIConfidenceScore"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"bluePOILatency"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:v5 forKey:@"pOIHasAppClip"];
  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C540 forKey:@"pOIVisitDetectionLatency"];

  [(RTPointOfInterestMonitorEventMetrics *)self setObject:&unk_28459C558 forKey:@"signalEnvironment"];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTPointOfInterestMonitorEventMetrics *)self metrics];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(RTPointOfInterestMonitorEventMetrics *)self metrics];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)submit
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventPointOfInterestMonitorEvent encoding:1];
  v5 = [(RTPointOfInterestMonitorEventMetrics *)self metrics];
  log_analytics_submission(v4, v5);

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
  v7 = [(RTPointOfInterestMonitorEventMetrics *)self metrics];
  AnalyticsSendEvent();

  [(RTPointOfInterestMonitorEventMetrics *)self reset];
}

- (double)calculateMinimumDistanceFromLocation:(id)a3 toLocations:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    v12 = 1.79769313e308;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        v16 = [(RTPointOfInterestMonitorEventMetrics *)self distanceCalculator];
        v21 = v14;
        [v16 distanceFromLocation:v6 toLocation:v15 error:&v21];
        v18 = v17;
        v10 = v21;

        if (v18 < v12 && v10 == 0)
        {
          v12 = v18;
        }

        ++v13;
        v14 = v10;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  else
  {
    v12 = 1.79769313e308;
  }

  return v12;
}

- (double)calculateMaximumDistanceFromLocation:(id)a3 toLocations:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    v12 = 2.22507386e-308;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        v16 = [(RTPointOfInterestMonitorEventMetrics *)self distanceCalculator];
        v21 = v14;
        [v16 distanceFromLocation:v6 toLocation:v15 error:&v21];
        v18 = v17;
        v10 = v21;

        if (v18 > v12 && v10 == 0)
        {
          v12 = v18;
        }

        ++v13;
        v14 = v10;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  else
  {
    v12 = 2.22507386e-308;
  }

  return v12;
}

- (void)saveBuildingPolygons:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277D01160]);
        v10 = [v8 centroid];
        [v10 latitude];
        v12 = v11;
        v13 = [v8 centroid];
        [v13 longitude];
        v15 = [v9 initWithLatitude:0 longitude:v12 horizontalUncertainty:v14 date:-1.0];

        v16 = [_RTMap alloc];
        v17 = [v8 vertices];
        v18 = [(_RTMap *)v16 initWithInput:v17];
        v19 = [(_RTMap *)v18 withBlock:&__block_literal_global_2];

        [(RTPointOfInterestMonitorEventMetrics *)self calculateMaximumDistanceFromLocation:v15 toLocations:v19];
        v21 = v20;
        v22 = objc_alloc(MEMORY[0x277D011C0]);
        v23 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
        v24 = [v22 initWithFirstObject:v15 secondObject:v23];

        if (v24)
        {
          v25 = [(RTPointOfInterestMonitorEventMetrics *)self buildingPolygons];
          [v25 addObject:v24];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }
}

id __61__RTPointOfInterestMonitorEventMetrics_saveBuildingPolygons___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01160];
  v3 = a2;
  v4 = [v2 alloc];
  [v3 latitude];
  v6 = v5;
  [v3 longitude];
  v8 = v7;

  v9 = [v4 initWithLatitude:0 longitude:v6 horizontalUncertainty:v8 date:-1.0];

  return v9;
}

- (void)updateBuildingPolygonMetricsForRegionIdentifer:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 componentsSeparatedByString:@"-"];
  v5 = [v4 objectAtIndex:1];
  v6 = [v5 unsignedIntValue];

  v7 = [(RTPointOfInterestMonitorEventMetrics *)self buildingPolygons];
  v8 = [v7 count];

  if (v8 > v6)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [(RTPointOfInterestMonitorEventMetrics *)self buildingPolygons];
    v11 = [v10 objectAtIndexedSubscript:v6];
    v12 = [v11 secondObject];
    [v12 doubleValue];
    v14 = [v9 numberWithUnsignedInteger:vcvtad_u64_f64(v13)];
    [(RTPointOfInterestMonitorEventMetrics *)self setObject:v14 forKey:@"buildingPolygonRadius"];

    v15 = [(RTPointOfInterestMonitorEventMetrics *)self arrivalEventLocation];
    v16 = [(RTPointOfInterestMonitorEventMetrics *)self buildingPolygons];
    v17 = [v16 objectAtIndexedSubscript:v6];
    v18 = [v17 firstObject];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [(RTPointOfInterestMonitorEventMetrics *)self calculateMinimumDistanceFromLocation:v15 toLocations:v19];
    v21 = v20;

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vcvtad_u64_f64(v21)];
    [(RTPointOfInterestMonitorEventMetrics *)self setObject:v22 forKey:@"distanceFromArrivalLocationToBuildingPolygonCentroid"];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(RTPointOfInterestMonitorEventMetrics *)self metrics];
  v5 = [v3 stringWithFormat:@"RTPointOfInterestMonitorEventMetrics, %lu, ", objc_msgSend(v4, "count")];

  v6 = [(RTPointOfInterestMonitorEventMetrics *)self metrics];
  v7 = [v6 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__RTPointOfInterestMonitorEventMetrics_description__block_invoke;
  v12[3] = &unk_2788C4A48;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __51__RTPointOfInterestMonitorEventMetrics_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 metrics];
  v8 = [v5 valueForKey:v4];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@, ", v4, v8];

  [v6 appendString:v7];
}

@end