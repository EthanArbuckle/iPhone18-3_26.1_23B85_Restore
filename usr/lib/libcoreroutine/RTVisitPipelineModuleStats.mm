@interface RTVisitPipelineModuleStats
- (RTVisitPipelineModuleStats)init;
- (double)cumulativeLocationIntervalForDirection:(id)a3;
- (double)cumulativeMaxLocationOutageIntervalForDirection:(id)a3;
- (double)cumulativeProcessingDuration;
- (double)lastLocationIntervalForDirection:(id)a3;
- (double)lastMaxLocationOutageIntervalForDirection:(id)a3;
- (double)lastProcessingDuration;
- (double)maxLocationIntervalForDirection:(id)a3;
- (double)maxLocationOutageIntervalForDirection:(id)a3;
- (double)maxProcessingDuration;
- (id)description;
- (unint64_t)cumulativeLocationCountForDirection:(id)a3;
- (unint64_t)cumulativeVisitCountForDirection:(id)a3;
- (unint64_t)lastLocationCountForDirection:(id)a3;
- (unint64_t)lastVisitCountForDirection:(id)a3;
- (unint64_t)maxLocationCountForDirection:(id)a3;
- (unint64_t)maxVisitCountForDirection:(id)a3;
- (void)setLocationCountForVisitCluster:(id)a3 direction:(id)a4;
- (void)setLocationIntervalForVisitCluster:(id)a3 direction:(id)a4;
- (void)setMaxLocationOutageIntervalForVisitCluster:(id)a3 direction:(id)a4;
- (void)setVisitCountForVisitCluster:(id)a3 direction:(id)a4;
- (void)startIterationWithVisitClusters:(id)a3;
- (void)stopIterationWithVisitClusters:(id)a3;
@end

@implementation RTVisitPipelineModuleStats

- (double)lastProcessingDuration
{
  v2 = [(NSMutableDictionary *)self->_iterationDurations objectForKeyedSubscript:@"last"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)cumulativeProcessingDuration
{
  v2 = [(NSMutableDictionary *)self->_iterationDurations objectForKeyedSubscript:@"cumulative"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)maxProcessingDuration
{
  v2 = [(NSMutableDictionary *)self->_iterationDurations objectForKeyedSubscript:@"max"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)description
{
  v45 = MEMORY[0x277CCACA8];
  v44 = [(RTVisitPipelineModuleStats *)self lastLocationCountForDirection:@"in"];
  v43 = [(RTVisitPipelineModuleStats *)self lastLocationCountForDirection:@"out"];
  v42 = [(RTVisitPipelineModuleStats *)self cumulativeLocationCountForDirection:@"in"];
  v3 = [(RTVisitPipelineModuleStats *)self cumulativeLocationCountForDirection:@"out"];
  v4 = [(RTVisitPipelineModuleStats *)self maxLocationCountForDirection:@"in"];
  v5 = [(RTVisitPipelineModuleStats *)self maxLocationCountForDirection:@"out"];
  [(RTVisitPipelineModuleStats *)self lastLocationIntervalForDirection:@"in"];
  v41 = v6;
  [(RTVisitPipelineModuleStats *)self lastLocationIntervalForDirection:@"out"];
  v40 = v7;
  [(RTVisitPipelineModuleStats *)self cumulativeLocationIntervalForDirection:@"in"];
  v39 = v8;
  [(RTVisitPipelineModuleStats *)self cumulativeLocationIntervalForDirection:@"out"];
  v38 = v9;
  [(RTVisitPipelineModuleStats *)self maxLocationIntervalForDirection:@"in"];
  v37 = v10;
  [(RTVisitPipelineModuleStats *)self maxLocationIntervalForDirection:@"out"];
  v36 = v11;
  [(RTVisitPipelineModuleStats *)self lastMaxLocationOutageIntervalForDirection:@"in"];
  v13 = v12;
  [(RTVisitPipelineModuleStats *)self lastMaxLocationOutageIntervalForDirection:@"out"];
  v15 = v14;
  [(RTVisitPipelineModuleStats *)self cumulativeMaxLocationOutageIntervalForDirection:@"in"];
  v17 = v16;
  [(RTVisitPipelineModuleStats *)self cumulativeMaxLocationOutageIntervalForDirection:@"out"];
  v19 = v18;
  [(RTVisitPipelineModuleStats *)self maxLocationOutageIntervalForDirection:@"in"];
  v21 = v20;
  [(RTVisitPipelineModuleStats *)self maxLocationOutageIntervalForDirection:@"out"];
  v23 = v22;
  v24 = [(RTVisitPipelineModuleStats *)self lastVisitCountForDirection:@"in"];
  v25 = [(RTVisitPipelineModuleStats *)self lastVisitCountForDirection:@"out"];
  v26 = [(RTVisitPipelineModuleStats *)self cumulativeVisitCountForDirection:@"in"];
  v27 = [(RTVisitPipelineModuleStats *)self cumulativeVisitCountForDirection:@"out"];
  v28 = [(RTVisitPipelineModuleStats *)self maxVisitCountForDirection:@"in"];
  v29 = [(RTVisitPipelineModuleStats *)self maxVisitCountForDirection:@"out"];
  [(RTVisitPipelineModuleStats *)self lastProcessingDuration];
  v31 = v30;
  [(RTVisitPipelineModuleStats *)self cumulativeProcessingDuration];
  v33 = v32;
  [(RTVisitPipelineModuleStats *)self maxProcessingDuration];
  return [v45 stringWithFormat:@"lastLocationCount(in/out), %lu/%lu, cumulativeLocationCount(in/out), %lu/%lu, maxLocationsCount(in/out), %lu/%lu, lastLocationInterval(in/out), %.2f/%.2f, cumulativeLocationInterval(in/out), %.2f/%.2f, maxLocationInterval(in/out), %.2f/%.2f, lastMaxLocationOutageInterval(in/out), %.2f/%.2f, maxLocationOutageInterval(in/out), %.2f/%.2f, maxLocationOutageInterval(in/out), %.2f/%.2f, lastVisitCount(in/out), %lu/%lu, cumulativeVisitCount(in/out), %lu/%lu, maxVisitCount(in/out), %lu/%lu, lastProcessingDuration, %.2f, cumulativeProcessingDuration, %.2f, maxProcessingDuration, %.2f", v44, v43, v42, v3, v4, v5, v41, v40, v39, v38, v37, v36, v13, v15, v17, v19, v21, v23, v24, v25, v26, v27, v28, v29, v31, v33, v34];
}

- (RTVisitPipelineModuleStats)init
{
  v22.receiver = self;
  v22.super_class = RTVisitPipelineModuleStats;
  v2 = [(RTVisitPipelineModuleStats *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    iterationDurations = v2->_iterationDurations;
    v2->_iterationDurations = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    iterationLocationIntervals = v2->_iterationLocationIntervals;
    v2->_iterationLocationIntervals = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)v2->_iterationLocationIntervals setObject:v7 forKeyedSubscript:@"in"];

    v8 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)v2->_iterationLocationIntervals setObject:v8 forKeyedSubscript:@"out"];

    v9 = [MEMORY[0x277CBEB38] dictionary];
    iterationLocationCounts = v2->_iterationLocationCounts;
    v2->_iterationLocationCounts = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)v2->_iterationLocationCounts setObject:v11 forKeyedSubscript:@"in"];

    v12 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)v2->_iterationLocationCounts setObject:v12 forKeyedSubscript:@"out"];

    v13 = [MEMORY[0x277CBEB38] dictionary];
    iterationMaxLocationOutageIntervals = v2->_iterationMaxLocationOutageIntervals;
    v2->_iterationMaxLocationOutageIntervals = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)v2->_iterationMaxLocationOutageIntervals setObject:v15 forKeyedSubscript:@"in"];

    v16 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)v2->_iterationMaxLocationOutageIntervals setObject:v16 forKeyedSubscript:@"out"];

    v17 = [MEMORY[0x277CBEB38] dictionary];
    iterationVistCount = v2->_iterationVistCount;
    v2->_iterationVistCount = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)v2->_iterationVistCount setObject:v19 forKeyedSubscript:@"in"];

    v20 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)v2->_iterationVistCount setObject:v20 forKeyedSubscript:@"out"];
  }

  return v2;
}

- (void)setLocationCountForVisitCluster:(id)a3 direction:(id)a4
{
  v18 = a4;
  v6 = [a3 valueForKeyPath:@"@sum.points.locations.@count"];
  v7 = [(NSMutableDictionary *)self->_iterationLocationCounts objectForKeyedSubscript:v18];
  [v7 setObject:v6 forKeyedSubscript:@"last"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(NSMutableDictionary *)self->_iterationLocationCounts objectForKeyedSubscript:v18];
  v10 = [v9 objectForKeyedSubscript:@"cumulative"];
  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") + objc_msgSend(v10, "unsignedIntegerValue")}];
  v12 = [(NSMutableDictionary *)self->_iterationLocationCounts objectForKeyedSubscript:v18];
  [v12 setObject:v11 forKeyedSubscript:@"cumulative"];

  v13 = [v6 unsignedIntegerValue];
  v14 = [(NSMutableDictionary *)self->_iterationLocationCounts objectForKeyedSubscript:v18];
  v15 = [v14 objectForKeyedSubscript:@"max"];
  v16 = [v15 unsignedIntegerValue];

  if (v13 > v16)
  {
    v17 = [(NSMutableDictionary *)self->_iterationLocationCounts objectForKeyedSubscript:v18];
    [v17 setObject:v6 forKeyedSubscript:@"max"];
  }
}

- (void)setLocationIntervalForVisitCluster:(id)a3 direction:(id)a4
{
  v36 = self;
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v38 = a4;
  obj = v5;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v40 = *v42;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [v10 points];
        v12 = [v11 locations];
        v13 = [v12 lastObject];
        v14 = [v13 date];
        v15 = [v10 points];
        v16 = [v15 locations];
        v17 = [v16 firstObject];
        v18 = [v17 date];
        [v14 timeIntervalSinceDate:v18];
        v8 = v8 + v19;
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0.0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:{v8, v36}];
  v21 = [*(v37 + 24) objectForKeyedSubscript:v38];
  [v21 setObject:v20 forKeyedSubscript:@"last"];

  [v20 doubleValue];
  v23 = v22;
  v24 = [*(v37 + 32) objectForKeyedSubscript:v38];
  v25 = [v24 objectForKeyedSubscript:@"max"];
  [v25 doubleValue];
  v27 = v26;

  if (v23 > v27)
  {
    v28 = [*(v37 + 32) objectForKeyedSubscript:v38];
    [v28 setObject:v20 forKeyedSubscript:@"max"];
  }

  [v20 doubleValue];
  v30 = v29;
  v31 = [*(v37 + 24) objectForKeyedSubscript:v38];
  v32 = [v31 objectForKeyedSubscript:@"max"];
  [v32 doubleValue];
  v34 = v33;

  if (v30 > v34)
  {
    v35 = [*(v37 + 24) objectForKeyedSubscript:v38];
    [v35 setObject:v20 forKeyedSubscript:@"max"];
  }
}

- (void)setMaxLocationOutageIntervalForVisitCluster:(id)a3 direction:(id)a4
{
  v41 = self;
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v43 = a4;
  obj = v5;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v45 = *v51;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v11 = [v10 points];
        v12 = [v11 locations];

        v13 = [v12 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v47;
          do
          {
            v17 = 0;
            v18 = v15;
            do
            {
              if (*v47 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v46 + 1) + 8 * v17);
              if (v18)
              {
                v20 = [*(*(&v46 + 1) + 8 * v17) date];
                v21 = [v18 date];
                [v20 timeIntervalSinceDate:v21];
                v23 = v22;

                if (v23 > v8)
                {
                  v8 = v23;
                }
              }

              v15 = v19;

              ++v17;
              v18 = v15;
            }

            while (v14 != v17);
            v14 = [v12 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v14);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0.0;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:{v8, v41}];
  v25 = [*(v42 + 32) objectForKeyedSubscript:v43];
  [v25 setObject:v24 forKeyedSubscript:@"last"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [*(v42 + 32) objectForKeyedSubscript:v43];
  v28 = [v27 objectForKeyedSubscript:@"cumulative"];
  [v28 doubleValue];
  v30 = v29;
  [v24 doubleValue];
  v32 = [v26 numberWithDouble:v30 + v31];
  v33 = [*(v42 + 32) objectForKeyedSubscript:v43];
  [v33 setObject:v32 forKeyedSubscript:@"cumulative"];

  [v24 doubleValue];
  v35 = v34;
  v36 = [*(v42 + 32) objectForKeyedSubscript:v43];
  v37 = [v36 objectForKeyedSubscript:@"max"];
  [v37 doubleValue];
  v39 = v38;

  if (v35 > v39)
  {
    v40 = [*(v42 + 32) objectForKeyedSubscript:v43];
    [v40 setObject:v24 forKeyedSubscript:@"max"];
  }
}

- (void)setVisitCountForVisitCluster:(id)a3 direction:(id)a4
{
  v18 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  v7 = [(NSMutableDictionary *)self->_iterationVistCount objectForKeyedSubscript:v18];
  [v7 setObject:v6 forKeyedSubscript:@"last"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(NSMutableDictionary *)self->_iterationVistCount objectForKeyedSubscript:v18];
  v10 = [v9 objectForKeyedSubscript:@"cumulative"];
  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") + objc_msgSend(v10, "unsignedIntegerValue")}];
  v12 = [(NSMutableDictionary *)self->_iterationVistCount objectForKeyedSubscript:v18];
  [v12 setObject:v11 forKeyedSubscript:@"cumulative"];

  v13 = [v6 unsignedIntegerValue];
  v14 = [(NSMutableDictionary *)self->_iterationVistCount objectForKeyedSubscript:v18];
  v15 = [v14 objectForKeyedSubscript:@"max"];
  v16 = [v15 unsignedIntegerValue];

  if (v13 > v16)
  {
    v17 = [(NSMutableDictionary *)self->_iterationVistCount objectForKeyedSubscript:v18];
    [v17 setObject:v6 forKeyedSubscript:@"max"];
  }
}

- (void)startIterationWithVisitClusters:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_startDate)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[RTVisitPipelineModuleStats startIterationWithVisitClusters:]";
      v10 = 1024;
      v11 = 163;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "iteration already started (in %s:%d)", &v8, 0x12u);
    }
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  startDate = self->_startDate;
  self->_startDate = v6;

  [(RTVisitPipelineModuleStats *)self setLocationCountForVisitCluster:v4 direction:@"in"];
  [(RTVisitPipelineModuleStats *)self setLocationIntervalForVisitCluster:v4 direction:@"in"];
  [(RTVisitPipelineModuleStats *)self setMaxLocationOutageIntervalForVisitCluster:v4 direction:@"in"];
  [(RTVisitPipelineModuleStats *)self setVisitCountForVisitCluster:v4 direction:@"in"];
}

- (void)stopIterationWithVisitClusters:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_startDate)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[RTVisitPipelineModuleStats stopIterationWithVisitClusters:]";
      v19 = 1024;
      v20 = 180;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "iteration not started (in %s:%d)", &v17, 0x12u);
    }
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSinceDate:self->_startDate];
  v8 = [v6 numberWithDouble:?];

  [(NSMutableDictionary *)self->_iterationDurations setObject:v8 forKeyedSubscript:@"last"];
  v9 = [(NSMutableDictionary *)self->_iterationDurations objectForKeyedSubscript:@"max"];

  if (v8 > v9)
  {
    [(NSMutableDictionary *)self->_iterationDurations setObject:v8 forKeyedSubscript:@"max"];
  }

  v10 = MEMORY[0x277CCABB0];
  v11 = [(NSMutableDictionary *)self->_iterationDurations objectForKeyedSubscript:@"cumulative"];
  [v11 doubleValue];
  v13 = v12;
  [v8 doubleValue];
  v15 = [v10 numberWithDouble:v13 + v14];
  [(NSMutableDictionary *)self->_iterationDurations setObject:v15 forKeyedSubscript:@"cumulative"];

  startDate = self->_startDate;
  self->_startDate = 0;

  [(RTVisitPipelineModuleStats *)self setLocationCountForVisitCluster:v4 direction:@"out"];
  [(RTVisitPipelineModuleStats *)self setLocationIntervalForVisitCluster:v4 direction:@"out"];
  [(RTVisitPipelineModuleStats *)self setMaxLocationOutageIntervalForVisitCluster:v4 direction:@"out"];
  [(RTVisitPipelineModuleStats *)self setVisitCountForVisitCluster:v4 direction:@"out"];
}

- (unint64_t)lastLocationCountForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationLocationCounts objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"last"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (unint64_t)cumulativeLocationCountForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationLocationCounts objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"cumulative"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (unint64_t)maxLocationCountForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationLocationCounts objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"max"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)lastLocationIntervalForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationLocationIntervals objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"last"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)cumulativeLocationIntervalForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationLocationIntervals objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"cumulative"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)maxLocationIntervalForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationLocationIntervals objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"max"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)lastMaxLocationOutageIntervalForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationMaxLocationOutageIntervals objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"last"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)cumulativeMaxLocationOutageIntervalForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationMaxLocationOutageIntervals objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"cumulative"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)maxLocationOutageIntervalForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationMaxLocationOutageIntervals objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"max"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (unint64_t)lastVisitCountForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationVistCount objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"last"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (unint64_t)cumulativeVisitCountForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationVistCount objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"cumulative"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (unint64_t)maxVisitCountForDirection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iterationVistCount objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"max"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

@end