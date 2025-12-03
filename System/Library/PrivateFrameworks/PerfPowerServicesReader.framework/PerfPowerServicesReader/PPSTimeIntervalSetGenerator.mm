@interface PPSTimeIntervalSetGenerator
- (PPSTimeIntervalSetGenerator)initWithDispatcher:(id)dispatcher settings:(unint64_t)settings directionality:(unint64_t)directionality;
- (PPSTimeIntervalSetGenerator)initWithFilepath:(id)filepath settings:(unint64_t)settings directionality:(unint64_t)directionality;
- (id)fetchTimeSeriesForBatteryShutdown;
- (id)fetchTimeSeriesForBootTime;
- (id)intervalSetForTimeSeries:(id)series withIntervalStartCheckBlock:(id)block intervalEndCheckBlock:(id)checkBlock payloadBlock:(id)payloadBlock coalescePolicy:(id)policy;
- (id)intervalSetMapForTimeSeries:(id)series withGroupingDimensions:(id)dimensions withIntervalStartCheckBlock:(id)block intervalEndCheckBlock:(id)checkBlock payloadBlock:(id)payloadBlock coalescePolicy:(id)policy;
@end

@implementation PPSTimeIntervalSetGenerator

- (PPSTimeIntervalSetGenerator)initWithFilepath:(id)filepath settings:(unint64_t)settings directionality:(unint64_t)directionality
{
  filepathCopy = filepath;
  v14.receiver = self;
  v14.super_class = PPSTimeIntervalSetGenerator;
  v9 = [(PPSTimeIntervalSetGenerator *)&v14 init];
  v10 = v9;
  if (filepathCopy && v9)
  {
    v11 = [[PPSRequestDispatcher alloc] initWithFilepath:filepathCopy];
    dispatcher = v10->_dispatcher;
    v10->_dispatcher = v11;

    v10->_settings = settings;
    v10->_directionality = directionality;
  }

  return v10;
}

- (PPSTimeIntervalSetGenerator)initWithDispatcher:(id)dispatcher settings:(unint64_t)settings directionality:(unint64_t)directionality
{
  dispatcherCopy = dispatcher;
  v13.receiver = self;
  v13.super_class = PPSTimeIntervalSetGenerator;
  v10 = [(PPSTimeIntervalSetGenerator *)&v13 init];
  v11 = v10;
  if (dispatcherCopy && v10)
  {
    objc_storeStrong(&v10->_dispatcher, dispatcher);
    v11->_settings = settings;
    v11->_directionality = directionality;
  }

  return v11;
}

- (id)intervalSetForTimeSeries:(id)series withIntervalStartCheckBlock:(id)block intervalEndCheckBlock:(id)checkBlock payloadBlock:(id)payloadBlock coalescePolicy:(id)policy
{
  v96[1] = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  blockCopy = block;
  checkBlockCopy = checkBlock;
  payloadBlockCopy = payloadBlock;
  policyCopy = policy;
  v12 = +[PPSPerformanceProfiler sharedInstance];
  [v12 startProfilingForPhase:@"IntervalSetGeneration"];

  v93 = [seriesCopy copy];
  settings = self->_settings;
  v90 = objc_opt_new();
  if (self->_directionality == 3)
  {
    goto LABEL_13;
  }

  if (settings)
  {
    systemSleepTimeSeries = [(PPSTimeIntervalSetGenerator *)self systemSleepTimeSeries];
    if (systemSleepTimeSeries)
    {
      [v93 mergeWithTimeSeries:systemSleepTimeSeries];
    }

    if ([systemSleepTimeSeries count])
    {
      firstObject = [systemSleepTimeSeries firstObject];
      groupId = [firstObject groupId];

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:groupId];
      [v90 addObject:v16];
    }
  }

  if ((settings & 6) == 0)
  {
LABEL_13:
    groupId2 = -1;
  }

  else
  {
    systemHaltTimeSeries = [(PPSTimeIntervalSetGenerator *)self systemHaltTimeSeries];
    if (systemHaltTimeSeries)
    {
      [v93 mergeWithTimeSeries:systemHaltTimeSeries];
    }

    if ([systemHaltTimeSeries count])
    {
      firstObject2 = [systemHaltTimeSeries firstObject];
      groupId2 = [firstObject2 groupId];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:groupId2];
      [v90 addObject:v20];
    }

    else
    {
      groupId2 = -1;
    }
  }

  firstObject3 = [v93 firstObject];
  [firstObject3 monotonicTimestamp];
  v23 = v22;

  lastObject = [v93 lastObject];
  [lastObject monotonicTimestamp];
  v26 = v25;

  timelineBoundaries = [(PPSTimeIntervalSetGenerator *)self timelineBoundaries];

  if (timelineBoundaries)
  {
    timelineBoundaries2 = [(PPSTimeIntervalSetGenerator *)self timelineBoundaries];
    startDate = [timelineBoundaries2 startDate];
    [startDate timeIntervalSince1970];
    v23 = v30;

    timelineBoundaries3 = [(PPSTimeIntervalSetGenerator *)self timelineBoundaries];
    [timelineBoundaries3 duration];
    v26 = v23 + v32;
  }

  objectEnumerator = [v93 objectEnumerator];
  directionality = self->_directionality;
  if (directionality == 1)
  {
    reverseObjectEnumerator = [v93 reverseObjectEnumerator];

    objectEnumerator = reverseObjectEnumerator;
  }

  else
  {
    v23 = v26;
  }

  v92 = [[PPSTimeIntervalSet alloc] initWithCoalescePolicy:policyCopy];
  v83 = groupId2;
  v95 = @"__directionality";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_directionality];
  v96[0] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:&v95 count:1];
  v37 = [v36 mutableCopy];

  v38 = 0;
  v39 = 0;
  nextObject = 0;
LABEL_22:
  v41 = nextObject;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    v42 = self->_directionality;
    if (!nextObject)
    {
      break;
    }

    if (v42 == 3)
    {
      v43 = [nextObject metricValueForKey:@"timestampEnd"];
      [v43 doubleValue];
      v45 = v44;

      v41 = nextObject;
      if (PPSValidateIntervalStart(blockCopy, nextObject, v37))
      {
        if (payloadBlockCopy)
        {
          v46 = payloadBlockCopy[2]();
        }

        else
        {
          v46 = 0;
        }

        [nextObject monotonicTimestamp];
        v38 = v46;
        PPSAddInterval(v92, v58, v45, v46);
        goto LABEL_22;
      }
    }

    else
    {
      v41 = nextObject;
      if (v42 < 3)
      {
        groupId3 = [nextObject groupId];
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:groupId3];
        v49 = [v90 containsObject:v48];

        if (v49)
        {
          if (v39)
          {
            v50 = 0;
            if ([v39 groupId] != groupId3 && ((groupId3 == v83) & (settings >> 2)) == 0)
            {
              if (payloadBlockCopy)
              {
                v51 = payloadBlockCopy[2]();
              }

              else
              {
                v51 = 0;
              }

              [v39 monotonicTimestamp];
              v68 = v67;
              [nextObject monotonicTimestamp];
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
          v52 = checkBlockCopy;
          v53 = nextObject;
          v54 = v37;
          v55 = v54;
          v84 = v53;
          if (checkBlockCopy)
          {
            v56 = (*(checkBlockCopy + 2))(v52, v53, v54);

            v38 = v82;
            v57 = v84;
            if ((v56 & 1) == 0 && !PPSValidateIntervalStart(blockCopy, v84, v55))
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
          if (payloadBlockCopy)
          {
            v63 = payloadBlockCopy[2]();
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
        if (PPSValidateIntervalStart(blockCopy, nextObject, v37))
        {
          v66 = nextObject;
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
    if (payloadBlockCopy)
    {
      v73 = payloadBlockCopy[2]();
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

- (id)intervalSetMapForTimeSeries:(id)series withGroupingDimensions:(id)dimensions withIntervalStartCheckBlock:(id)block intervalEndCheckBlock:(id)checkBlock payloadBlock:(id)payloadBlock coalescePolicy:(id)policy
{
  v59 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  dimensionsCopy = dimensions;
  blockCopy = block;
  checkBlockCopy = checkBlock;
  payloadBlockCopy = payloadBlock;
  policyCopy = policy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = seriesCopy;
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
          if (![dimensionsCopy count])
          {
            goto LABEL_22;
          }

          v46 = objc_opt_new();
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v15 = dimensionsCopy;
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
                metricKeysAndValues = [v14 metricKeysAndValues];
                groupBy = [v19 groupBy];
                v23 = [metricKeysAndValues objectForKeyedSubscript:groupBy];
                v24 = [v20 stringWithFormat:@"%@", v23];

                if (v24)
                {
                  groupBy2 = [v19 groupBy];
                  [v46 setObject:v24 forKeyedSubscript:groupBy2];
                }
              }

              v16 = [v15 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v16);
          }

          v26 = [dictionary objectForKeyedSubscript:v46];
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
            v32 = [(PPSTimeIntervalSetGenerator *)self intervalSetForTimeSeries:v31 withIntervalStartCheckBlock:blockCopy intervalEndCheckBlock:checkBlockCopy payloadBlock:payloadBlockCopy coalescePolicy:policyCopy];
            [dictionary setObject:v32 forKeyedSubscript:v29];
          }
        }
      }

      v43 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v43);
  }

LABEL_22:

  v33 = *MEMORY[0x277D85DE8];

  return dictionary;
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