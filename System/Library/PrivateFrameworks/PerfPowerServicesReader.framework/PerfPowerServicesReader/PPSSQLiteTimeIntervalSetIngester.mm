@interface PPSSQLiteTimeIntervalSetIngester
+ (id)_filterIntervalSet:(id)set withTimeInterval:(id)interval;
+ (id)_stringForSourceName:(id)name metrics:(id)metrics predicate:(id)predicate;
- (PPSSQLiteTimeIntervalSetIngester)initWithFilepath:(id)filepath;
- (id)_computeIntervalSetForRequest:(id)request outError:(id *)error;
- (id)_computeIntervalSetMapForRequest:(id)request outError:(id *)error;
- (id)filterIntervalSet:(id)set withTimeFilter:(id)filter;
- (id)filterIntervalSetMap:(id)map withTimeFilter:(id)filter;
- (id)parseDataForRequest:(id)request outError:(id *)error;
- (id)responseForKey:(id)key withinTimeWindow:(id)window;
- (void)removeResponseForKey:(id)key;
- (void)setResponse:(id)response forKey:(id)key timeWindow:(id)window;
@end

@implementation PPSSQLiteTimeIntervalSetIngester

- (PPSSQLiteTimeIntervalSetIngester)initWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  v11.receiver = self;
  v11.super_class = PPSSQLiteTimeIntervalSetIngester;
  v6 = [(PPSSQLiteTimeIntervalSetIngester *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filepath, filepath);
    v8 = objc_opt_new();
    responseCache = v7->_responseCache;
    v7->_responseCache = v8;
  }

  return v7;
}

- (void)removeResponseForKey:(id)key
{
  keyCopy = key;
  responseCache = [(PPSSQLiteTimeIntervalSetIngester *)self responseCache];
  [responseCache removeObjectForKey:keyCopy];
}

- (id)responseForKey:(id)key withinTimeWindow:(id)window
{
  windowCopy = window;
  keyCopy = key;
  responseCache = [(PPSSQLiteTimeIntervalSetIngester *)self responseCache];
  v9 = [responseCache objectForKey:keyCopy];

  if (!v9)
  {
    firstObject = 0;
    goto LABEL_11;
  }

  firstObject = [v9 firstObject];
  lastObject = [v9 lastObject];
  null = [MEMORY[0x277CBEB68] null];

  if (lastObject == null)
  {
    goto LABEL_11;
  }

  lastObject2 = [v9 lastObject];
  if (lastObject2)
  {
    startDate = [windowCopy startDate];
    if ([lastObject2 containsDate:startDate])
    {
      endDate = [windowCopy endDate];
      v16 = [lastObject2 containsDate:endDate];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    firstObject = 0;
  }

LABEL_10:

LABEL_11:

  return firstObject;
}

- (void)setResponse:(id)response forKey:(id)key timeWindow:(id)window
{
  v15[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  keyCopy = key;
  windowCopy = window;
  v15[0] = responseCopy;
  null = windowCopy;
  if (!windowCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = null;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  if (!windowCopy)
  {
  }

  responseCache = [(PPSSQLiteTimeIntervalSetIngester *)self responseCache];
  [responseCache setObject:v12 forKey:keyCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)parseDataForRequest:(id)request outError:(id *)error
{
  requestCopy = request;
  dimensions = [requestCopy dimensions];
  v8 = [dimensions count];

  if (v8)
  {
    [(PPSSQLiteTimeIntervalSetIngester *)self _computeIntervalSetMapForRequest:requestCopy outError:error];
  }

  else
  {
    [(PPSSQLiteTimeIntervalSetIngester *)self _computeIntervalSetForRequest:requestCopy outError:error];
  }
  v9 = ;

  return v9;
}

- (id)_computeIntervalSetMapForRequest:(id)request outError:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  subsystem = [requestCopy subsystem];
  category = [requestCopy category];
  metrics = [requestCopy metrics];
  allObjects = [metrics allObjects];
  v10 = [allObjects mutableCopy];

  timeFilter = [requestCopy timeFilter];
  valueFilter = [requestCopy valueFilter];
  filepath = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
  v14 = [PPSOffDeviceIngesterUtilities dataSourceForFilepath:filepath subsystem:subsystem category:category];

  v77 = v14;
  v73 = valueFilter;
  v15 = [objc_opt_class() _stringForSourceName:v14 metrics:v10 predicate:valueFilter];
  v81 = timeFilter;
  if ([(PPSSQLiteTimeIntervalSetIngester *)self shouldUseCache])
  {
    v80 = [(PPSSQLiteTimeIntervalSetIngester *)self responseForKey:v15 withinTimeWindow:timeFilter];
  }

  else
  {
    v80 = 0;
  }

  firstObject = [v10 firstObject];
  if (firstObject)
  {
    firstObject2 = [v10 firstObject];
  }

  else
  {
    firstObject2 = @"timestamp";
  }

  v18 = firstObject2;

  filepath2 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
  v76 = subsystem;
  v78 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:filepath2 subsystem:subsystem category:category metricName:v18];

  context = objc_autoreleasePoolPush();
  filepath3 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
  v21 = [PPSDataIngesterRegistry dataIngesterForFilepath:filepath3 requestType:0];

  v74 = v10;
  v75 = category;
  v72 = v15;
  v79 = v18;
  if (v81)
  {
    startDate = [v81 startDate];
    [startDate timeIntervalSince1970];
    v24 = v23 + -10800.0;

    endDate = [v81 endDate];
    [endDate timeIntervalSince1970];
    v27 = v26 + 10800.0;

    v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v24];
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v27];
    v30 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v28 endDate:v29];
  }

  else
  {
    v30 = 0;
  }

  v31 = MEMORY[0x277CBEB98];
  metrics2 = [requestCopy metrics];
  allObjects2 = [metrics2 allObjects];
  v34 = [v31 setWithArray:allObjects2];
  v35 = [v34 mutableCopy];

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  dimensions = [requestCopy dimensions];
  v37 = [dimensions countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v85;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v85 != v39)
        {
          objc_enumerationMutation(dimensions);
        }

        groupBy = [*(*(&v84 + 1) + 8 * i) groupBy];
        [v35 addObject:groupBy];
      }

      v38 = [dimensions countByEnumeratingWithState:&v84 objects:v90 count:16];
    }

    while (v38);
  }

  v42 = [PPSTimeSeriesRequest alloc];
  predicate = [requestCopy predicate];
  v68 = v30;
  v44 = [(PPSTimeSeriesRequest *)v42 initWithMetrics:v35 predicate:predicate timeFilter:v30];

  shouldUseCache = [v21 shouldUseCache];
  [v21 setShouldUseCache:0];
  v46 = [v21 parseDataForRequest:v44 outError:error];
  [v21 setShouldUseCache:shouldUseCache];
  if (*error)
  {
    v47 = 0;
  }

  else
  {
    dimensions2 = [requestCopy dimensions];
    v49 = [dimensions2 count];
    v47 = v49 != 0;

    if (v49)
    {
      v67 = [[PPSTimeIntervalSetGenerator alloc] initWithFilepath:self->_filepath settings:0 directionality:[PPSDataIngesterCommonUtilities directionalityForMetricDefinition:v78]];
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __78__PPSSQLiteTimeIntervalSetIngester__computeIntervalSetMapForRequest_outError___block_invoke;
      v82[3] = &unk_279A11798;
      v50 = v79;
      v83 = v50;
      v70 = MEMORY[0x25F8B0940](v82);
      if ([v78 auxiliaryType] == 2)
      {
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Dynamic.%@", v77, v50];

        v79 = v51;
      }

      else
      {
        v79 = v50;
      }

      dimensions3 = [requestCopy dimensions];
      v54 = v67;
      v56 = [(PPSTimeIntervalSetGenerator *)v67 intervalSetMapForTimeSeries:v46 withGroupingDimensions:dimensions3 withIntervalStartCheckBlock:0 intervalEndCheckBlock:0 payloadBlock:v70 coalescePolicy:0];

      if (v81)
      {
        v57 = [(PPSSQLiteTimeIntervalSetIngester *)self filterIntervalSetMap:v56 withTimeFilter:?];

        v56 = v57;
      }

      v80 = v56;
    }

    else
    {
      v52 = MEMORY[0x277CCA9B8];
      v88 = *MEMORY[0x277CCA470];
      v89 = @"No grouping dimensions provided for interval set map request.";
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      *error = [v52 errorWithDomain:@"com.apple.PerfPowerServicesReader" code:0 userInfo:v53];
      v54 = v53;
    }
  }

  objc_autoreleasePoolPop(context);
  if (v47)
  {
    v59 = v75;
    v58 = v76;
    v61 = v72;
    v60 = v73;
    v62 = v80;
    if (v80 && [(PPSSQLiteTimeIntervalSetIngester *)self shouldUseCache])
    {
      [(PPSSQLiteTimeIntervalSetIngester *)self setResponse:v80 forKey:v72 timeWindow:v81];
    }

    v63 = [v80 copy];
    v64 = v74;
  }

  else
  {
    v63 = 0;
    v59 = v75;
    v58 = v76;
    v60 = v73;
    v64 = v74;
    v61 = v72;
    v62 = v80;
  }

  v65 = *MEMORY[0x277D85DE8];

  return v63;
}

id __78__PPSSQLiteTimeIntervalSetIngester__computeIntervalSetMapForRequest_outError___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [a4 valueForKey:@"__directionality"];
  v10 = [v9 intValue];

  if (v10 == 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = [v11 metricValueForKey:*(a1 + 32)];
  v13 = v12;
  if (v12)
  {
    v17 = *(a1 + 32);
    v18[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_computeIntervalSetForRequest:(id)request outError:(id *)error
{
  requestCopy = request;
  subsystem = [requestCopy subsystem];
  category = [requestCopy category];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@:%@", @"QueryExecution", subsystem, category];
  v9 = +[PPSPerformanceProfiler sharedInstance];
  [v9 startProfilingForPhase:v8];

  metrics = [requestCopy metrics];
  allObjects = [metrics allObjects];

  timeFilter = [requestCopy timeFilter];
  valueFilter = [requestCopy valueFilter];
  filepath = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
  v15 = [PPSOffDeviceIngesterUtilities dataSourceForFilepath:filepath subsystem:subsystem category:category];

  v60 = v15;
  v61 = valueFilter;
  v62 = allObjects;
  v16 = [objc_opt_class() _stringForSourceName:v15 metrics:allObjects predicate:valueFilter];
  if ([(PPSSQLiteTimeIntervalSetIngester *)self shouldUseCache]&& ([(PPSSQLiteTimeIntervalSetIngester *)self responseForKey:v16 withinTimeWindow:timeFilter], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [(PPSSQLiteTimeIntervalSetIngester *)self filterIntervalSet:v17 withTimeFilter:timeFilter];
    v20 = v62;
  }

  else
  {
    v54 = v16;
    context = objc_autoreleasePoolPush();
    filepath2 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
    v22 = [PPSDataIngesterRegistry dataIngesterForFilepath:filepath2 requestType:0];

    v56 = category;
    v57 = subsystem;
    v55 = v8;
    if (timeFilter)
    {
      startDate = [timeFilter startDate];
      [startDate timeIntervalSince1970];
      v25 = v24 + -10800.0;

      endDate = [timeFilter endDate];
      [endDate timeIntervalSince1970];
      v28 = v27 + 10800.0;

      v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v25];
      v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v28];
      v31 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v29 endDate:v30];
    }

    else
    {
      v31 = 0;
    }

    v32 = [PPSTimeSeriesRequest alloc];
    metrics2 = [requestCopy metrics];
    predicate = [requestCopy predicate];
    v52 = v31;
    v35 = [(PPSTimeSeriesRequest *)v32 initWithMetrics:metrics2 predicate:predicate timeFilter:v31];

    shouldUseCache = [v22 shouldUseCache];
    [v22 setShouldUseCache:0];
    v51 = v35;
    v37 = [v22 parseDataForRequest:v35 outError:error];
    [v22 setShouldUseCache:shouldUseCache];
    v38 = *error;
    if (*error)
    {
      v18 = 0;
    }

    else
    {
      firstObject = [v62 firstObject];
      if (firstObject)
      {
        firstObject2 = [v62 firstObject];
      }

      else
      {
        firstObject2 = @"timestamp";
      }

      v41 = firstObject2;

      filepath3 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
      v59 = v41;
      v43 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:filepath3 subsystem:v57 category:v56 metricName:v41];

      v50 = v43;
      v44 = [[PPSTimeIntervalSetGenerator alloc] initWithDispatcher:self->_dispatcher settings:0 directionality:[PPSDataIngesterCommonUtilities directionalityForMetricDefinition:v43]];
      v64 = 0;
      v65 = &v64;
      v66 = 0x3032000000;
      v67 = __Block_byref_object_copy__4;
      v68 = __Block_byref_object_dispose__4;
      firstObject3 = [v62 firstObject];
      if (v65[5])
      {
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __75__PPSSQLiteTimeIntervalSetIngester__computeIntervalSetForRequest_outError___block_invoke;
        v63[3] = &unk_279A117C0;
        v63[4] = &v64;
        v45 = MEMORY[0x25F8B0940](v63);
      }

      else
      {
        v45 = 0;
      }

      v46 = v44;
      v18 = [(PPSTimeIntervalSetGenerator *)v44 intervalSetForTimeSeries:v37 withIntervalStartCheckBlock:0 intervalEndCheckBlock:0 payloadBlock:v45 coalescePolicy:0];
      if (timeFilter)
      {
        v47 = [(PPSSQLiteTimeIntervalSetIngester *)self filterIntervalSet:v18 withTimeFilter:timeFilter];

        v18 = v47;
      }

      _Block_object_dispose(&v64, 8);
    }

    v20 = v62;

    objc_autoreleasePoolPop(context);
    if (v38)
    {
      v19 = 0;
      category = v56;
      subsystem = v57;
      v16 = v54;
      v8 = v55;
    }

    else
    {
      v16 = v54;
      v8 = v55;
      if (v18 && [(PPSSQLiteTimeIntervalSetIngester *)self shouldUseCache])
      {
        [(PPSSQLiteTimeIntervalSetIngester *)self setResponse:v18 forKey:v54 timeWindow:timeFilter];
      }

      v48 = +[PPSPerformanceProfiler sharedInstance];
      [v48 endProfilingForPhase:v55];

      v18 = v18;
      v19 = v18;
      category = v56;
      subsystem = v57;
    }
  }

  return v19;
}

id __75__PPSSQLiteTimeIntervalSetIngester__computeIntervalSetForRequest_outError___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [a4 valueForKey:@"__directionality"];
  v10 = [v9 intValue];

  if (v10 == 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = [v11 metricValueForKey:*(*(*(a1 + 32) + 8) + 40)];
  v13 = v12;
  if (v12)
  {
    v17 = *(*(*(a1 + 32) + 8) + 40);
    v18[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_filterIntervalSet:(id)set withTimeInterval:(id)interval
{
  v27 = *MEMORY[0x277D85DE8];
  setCopy = set;
  intervalCopy = interval;
  if (intervalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[PPSTimeIntervalSet alloc] initWithTimeInterval:intervalCopy];
      v7 = [setCopy intersectionFromIntervalSet:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(setCopy, "count")}];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v20 = setCopy;
        v8 = setCopy;
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v23;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v22 + 1) + 8 * i);
              v14 = objc_autoreleasePoolPush();
              v15 = objc_opt_class();
              v16 = [v8 objectForKeyedSubscript:v13];
              v17 = [v15 _filterIntervalSet:v16 withTimeInterval:intervalCopy];

              [v7 setObject:v17 forKeyedSubscript:v13];
              objc_autoreleasePoolPop(v14);
            }

            v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v10);
        }

        setCopy = v20;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = setCopy;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_stringForSourceName:(id)name metrics:(id)metrics predicate:(id)predicate
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  metricsCopy = metrics;
  predicateCopy = predicate;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [metricsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(metricsCopy);
        }

        v12 ^= (v12 << 6) + 2654435769u + (v12 >> 2) + [*(*(&v19 + 1) + 8 * i) hash];
      }

      v11 = [metricsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v15 = [predicateCopy hash];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@::%lu", nameCopy, ((v12 << 6) + 2654435769u + (v12 >> 2) + v15) ^ v12];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)filterIntervalSet:(id)set withTimeFilter:(id)filter
{
  setCopy = set;
  filterCopy = filter;
  v8 = filterCopy;
  if (setCopy)
  {
    if (filterCopy)
    {
      filepath = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
      v10 = [PPSTimestampConverterRegistry converterForFilepath:filepath];

      startDate = [v8 startDate];
      [startDate timeIntervalSince1970];
      v13 = v12;

      [v10 monotonicTimeFromEpochTime:v13];
      v15 = v14;
      endDate = [v8 endDate];
      [endDate timeIntervalSince1970];
      v18 = v17;

      [v10 monotonicTimeFromEpochTime:v18];
      v20 = [[PPSTimeInterval alloc] initWithStartTimestamp:0 endTimestamp:v15 payload:v19];
      v21 = [objc_opt_class() _filterIntervalSet:setCopy withTimeInterval:v20];
    }

    else
    {
      v21 = setCopy;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)filterIntervalSetMap:(id)map withTimeFilter:(id)filter
{
  mapCopy = map;
  filterCopy = filter;
  if (mapCopy)
  {
    v8 = [mapCopy mutableCopy];
    if ([mapCopy count] >= 1)
    {
      v9 = 0;
      do
      {
        allKeys = [mapCopy allKeys];
        v11 = [allKeys objectAtIndexedSubscript:v9];

        v12 = [mapCopy objectForKeyedSubscript:v11];
        v13 = [(PPSSQLiteTimeIntervalSetIngester *)self filterIntervalSet:v12 withTimeFilter:filterCopy];
        [v8 setObject:v13 forKeyedSubscript:v11];

        ++v9;
      }

      while (v9 < [mapCopy count]);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end