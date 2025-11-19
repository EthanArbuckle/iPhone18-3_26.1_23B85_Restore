@interface PPSTimeIntervalSetGenerator
- (PPSTimeIntervalSetGenerator)initWithDispatcher:(id)a3 settings:(unint64_t)a4 directionality:(unint64_t)a5;
- (PPSTimeIntervalSetGenerator)initWithFilepath:(id)a3 settings:(unint64_t)a4 directionality:(unint64_t)a5;
- (id)fetchTimeSeriesForBatteryShutdown;
- (id)fetchTimeSeriesForBootTime;
- (id)intervalSetForTimeSeries:(id)a3 withIntervalStartCheckBlock:(id)a4 intervalEndCheckBlock:(id)a5 payloadBlock:(id)a6 coalescePolicy:(id)a7;
- (id)intervalSetMapForTimeSeries:(id)a3 withGroupingDimensions:(id)a4 withIntervalStartCheckBlock:(id)a5 intervalEndCheckBlock:(id)a6 payloadBlock:(id)a7 coalescePolicy:(id)a8;
@end

@implementation PPSTimeIntervalSetGenerator

- (PPSTimeIntervalSetGenerator)initWithFilepath:(id)a3 settings:(unint64_t)a4 directionality:(unint64_t)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PPSTimeIntervalSetGenerator;
  v9 = [(PPSTimeIntervalSetGenerator *)&v14 init];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [[PPSRequestDispatcher alloc] initWithFilepath:v8];
    dispatcher = v10->_dispatcher;
    v10->_dispatcher = v11;

    v10->_settings = a4;
    v10->_directionality = a5;
  }

  return v10;
}

- (PPSTimeIntervalSetGenerator)initWithDispatcher:(id)a3 settings:(unint64_t)a4 directionality:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PPSTimeIntervalSetGenerator;
  v10 = [(PPSTimeIntervalSetGenerator *)&v13 init];
  v11 = v10;
  if (v9 && v10)
  {
    objc_storeStrong(&v10->_dispatcher, a3);
    v11->_settings = a4;
    v11->_directionality = a5;
  }

  return v11;
}

- (id)intervalSetForTimeSeries:(id)a3 withIntervalStartCheckBlock:(id)a4 intervalEndCheckBlock:(id)a5 payloadBlock:(id)a6 coalescePolicy:(id)a7
{
  v96[1] = *MEMORY[0x277D85DE8];
  v88 = a3;
  v94 = a4;
  v89 = a5;
  v91 = a6;
  v87 = a7;
  v12 = +[PPSPerformanceProfiler sharedInstance];
  [v12 startProfilingForPhase:@"IntervalSetGeneration"];

  v93 = [v88 copy];
  settings = self->_settings;
  v90 = objc_opt_new();
  if (self->_directionality == 3)
  {
    goto LABEL_13;
  }

  if (settings)
  {
    v13 = [(PPSTimeIntervalSetGenerator *)self systemSleepTimeSeries];
    if (v13)
    {
      [v93 mergeWithTimeSeries:v13];
    }

    if ([v13 count])
    {
      v14 = [v13 firstObject];
      v15 = [v14 groupId];

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
      [v90 addObject:v16];
    }
  }

  if ((settings & 6) == 0)
  {
LABEL_13:
    v19 = -1;
  }

  else
  {
    v17 = [(PPSTimeIntervalSetGenerator *)self systemHaltTimeSeries];
    if (v17)
    {
      [v93 mergeWithTimeSeries:v17];
    }

    if ([v17 count])
    {
      v18 = [v17 firstObject];
      v19 = [v18 groupId];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
      [v90 addObject:v20];
    }

    else
    {
      v19 = -1;
    }
  }

  v21 = [v93 firstObject];
  [v21 monotonicTimestamp];
  v23 = v22;

  v24 = [v93 lastObject];
  [v24 monotonicTimestamp];
  v26 = v25;

  v27 = [(PPSTimeIntervalSetGenerator *)self timelineBoundaries];

  if (v27)
  {
    v28 = [(PPSTimeIntervalSetGenerator *)self timelineBoundaries];
    v29 = [v28 startDate];
    [v29 timeIntervalSince1970];
    v23 = v30;

    v31 = [(PPSTimeIntervalSetGenerator *)self timelineBoundaries];
    [v31 duration];
    v26 = v23 + v32;
  }

  v33 = [v93 objectEnumerator];
  directionality = self->_directionality;
  if (directionality == 1)
  {
    v34 = [v93 reverseObjectEnumerator];

    v33 = v34;
  }

  else
  {
    v23 = v26;
  }

  v92 = [[PPSTimeIntervalSet alloc] initWithCoalescePolicy:v87];
  v83 = v19;
  v95 = @"__directionality";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_directionality];
  v96[0] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:&v95 count:1];
  v37 = [v36 mutableCopy];

  v38 = 0;
  v39 = 0;
  v40 = 0;
LABEL_22:
  v41 = v40;
  while (1)
  {
    v40 = [v33 nextObject];

    v42 = self->_directionality;
    if (!v40)
    {
      break;
    }

    if (v42 == 3)
    {
      v43 = [v40 metricValueForKey:@"timestampEnd"];
      [v43 doubleValue];
      v45 = v44;

      v41 = v40;
      if (PPSValidateIntervalStart(v94, v40, v37))
      {
        if (v91)
        {
          v46 = v91[2]();
        }

        else
        {
          v46 = 0;
        }

        [v40 monotonicTimestamp];
        v38 = v46;
        PPSAddInterval(v92, v58, v45, v46);
        goto LABEL_22;
      }
    }

    else
    {
      v41 = v40;
      if (v42 < 3)
      {
        v47 = [v40 groupId];
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v47];
        v49 = [v90 containsObject:v48];

        if (v49)
        {
          if (v39)
          {
            v50 = 0;
            if ([v39 groupId] != v47 && ((v47 == v83) & (settings >> 2)) == 0)
            {
              if (v91)
              {
                v51 = v91[2]();
              }

              else
              {
                v51 = 0;
              }

              [v39 monotonicTimestamp];
              v68 = v67;
              [v40 monotonicTimestamp];
              if (directionality == 1)
              {
                v70 = v69;
              }

              else
              {
                v70 = v68;
              }

              if (directionality == 1)
              {
                v71 = v68;
              }

              else
              {
                v71 = v69;
              }

              PPSAddInterval(v92, v70, v71, v51);
              v50 = 0;
              v38 = v51;
            }
          }

          else
          {
            v50 = 0;
          }

          goto LABEL_67;
        }

        if (v39)
        {
          v82 = v38;
          v52 = v89;
          v53 = v40;
          v54 = v37;
          v55 = v54;
          v84 = v53;
          if (v89)
          {
            v56 = (*(v89 + 2))(v52, v53, v54);

            v38 = v82;
            v57 = v84;
            if ((v56 & 1) == 0 && !PPSValidateIntervalStart(v94, v84, v55))
            {
              goto LABEL_55;
            }
          }

          else
          {

            v38 = v82;
            v57 = v84;
          }

          [v39 monotonicTimestamp];
          v60 = v59;
          [v57 monotonicTimestamp];
          v62 = v61;
          if (v91)
          {
            v63 = v91[2]();
          }

          else
          {
            v63 = 0;
          }

          if (directionality == 1)
          {
            v64 = v62;
          }

          else
          {
            v64 = v60;
          }

          if (directionality == 1)
          {
            v65 = v60;
          }

          else
          {
            v65 = v62;
          }

          v38 = v63;
          PPSAddInterval(v92, v64, v65, v63);
        }

LABEL_55:
        if (PPSValidateIntervalStart(v94, v40, v37))
        {
          v66 = v40;
        }

        else
        {
          v66 = 0;
        }

        v50 = v66;
LABEL_67:

        v39 = v50;
        goto LABEL_22;
      }
    }
  }

  if (v42 == 3 || v39 == 0)
  {
    v73 = v38;
  }

  else
  {
    [v39 monotonicTimestamp];
    v75 = v74;
    if (v91)
    {
      v73 = v91[2]();
    }

    else
    {
      v73 = 0;
    }

    if (directionality == 1)
    {
      v76 = v23;
    }

    else
    {
      v76 = v75;
    }

    if (directionality == 1)
    {
      v77 = v75;
    }

    else
    {
      v77 = v23;
    }

    PPSAddInterval(v92, v76, v77, v73);
  }

  v78 = +[PPSPerformanceProfiler sharedInstance];
  [v78 endProfilingForPhase:@"IntervalSetGeneration"];

  v79 = v92;
  v80 = *MEMORY[0x277D85DE8];
  return v92;
}

- (id)intervalSetMapForTimeSeries:(id)a3 withGroupingDimensions:(id)a4 withIntervalStartCheckBlock:(id)a5 intervalEndCheckBlock:(id)a6 payloadBlock:(id)a7 coalescePolicy:(id)a8
{
  v59 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v44 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v41 = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v13;
  v43 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v43)
  {
    v42 = *v54;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        if (v14)
        {
          if (![v44 count])
          {
            goto LABEL_22;
          }

          v46 = objc_opt_new();
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v15 = v44;
          v16 = [v15 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v16)
          {
            v17 = *v50;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v50 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v49 + 1) + 8 * j);
                v20 = MEMORY[0x277CCACA8];
                v21 = [v14 metricKeysAndValues];
                v22 = [v19 groupBy];
                v23 = [v21 objectForKeyedSubscript:v22];
                v24 = [v20 stringWithFormat:@"%@", v23];

                if (v24)
                {
                  v25 = [v19 groupBy];
                  [v46 setObject:v24 forKeyedSubscript:v25];
                }
              }

              v16 = [v15 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v16);
          }

          v26 = [v41 objectForKeyedSubscript:v46];
          v27 = v26 == 0;

          if (v27)
          {
            v28 = MEMORY[0x277CCAC30];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __160__PPSTimeIntervalSetGenerator_intervalSetMapForTimeSeries_withGroupingDimensions_withIntervalStartCheckBlock_intervalEndCheckBlock_payloadBlock_coalescePolicy___block_invoke;
            v47[3] = &unk_279A114F8;
            v29 = v46;
            v48 = v29;
            v30 = [v28 predicateWithBlock:v47];
            v31 = [obj filteredTimeSeriesUsingPredicate:v30];
            v32 = [(PPSTimeIntervalSetGenerator *)self intervalSetForTimeSeries:v31 withIntervalStartCheckBlock:v36 intervalEndCheckBlock:v37 payloadBlock:v38 coalescePolicy:v39];
            [v41 setObject:v32 forKeyedSubscript:v29];
          }
        }
      }

      v43 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v43);
  }

LABEL_22:

  v33 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __160__PPSTimeIntervalSetGenerator_intervalSetMapForTimeSeries_withGroupingDimensions_withIntervalStartCheckBlock_intervalEndCheckBlock_payloadBlock_coalescePolicy___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [v3 metricKeysAndValues];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [*(a1 + 32) objectForKeyedSubscript:v8];
        LOBYTE(v8) = [v10 isEqual:v11];

        if ((v8 & 1) == 0)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)fetchTimeSeriesForBootTime
{
  v3 = PPSCreateSubsystemCategoryPredicate(@"ConfigMetrics", @"DeviceConfig", 0);
  v4 = [PPSTimeSeriesRequest alloc];
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2870180C0];
  v6 = [(PPSTimeSeriesRequest *)v4 initWithMetrics:v5 predicate:v3 timeFilter:0];

  dispatcher = self->_dispatcher;
  v10 = 0;
  v8 = [(PPSRequestDispatcher *)dispatcher dataForRequest:v6 withError:&v10];

  return v8;
}

- (id)fetchTimeSeriesForBatteryShutdown
{
  v3 = PPSCreateSubsystemCategoryPredicate(@"BatteryMetrics", @"BatteryShutdown", 0);
  v4 = [PPSTimeSeriesRequest alloc];
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2870180D8];
  v6 = [(PPSTimeSeriesRequest *)v4 initWithMetrics:v5 predicate:v3 timeFilter:0];

  dispatcher = self->_dispatcher;
  v10 = 0;
  v8 = [(PPSRequestDispatcher *)dispatcher dataForRequest:v6 withError:&v10];

  return v8;
}

@end