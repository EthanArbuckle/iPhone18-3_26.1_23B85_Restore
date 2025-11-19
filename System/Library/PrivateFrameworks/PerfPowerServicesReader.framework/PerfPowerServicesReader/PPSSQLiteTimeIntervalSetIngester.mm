@interface PPSSQLiteTimeIntervalSetIngester
+ (id)_filterIntervalSet:(id)a3 withTimeInterval:(id)a4;
+ (id)_stringForSourceName:(id)a3 metrics:(id)a4 predicate:(id)a5;
- (PPSSQLiteTimeIntervalSetIngester)initWithFilepath:(id)a3;
- (id)_computeIntervalSetForRequest:(id)a3 outError:(id *)a4;
- (id)_computeIntervalSetMapForRequest:(id)a3 outError:(id *)a4;
- (id)filterIntervalSet:(id)a3 withTimeFilter:(id)a4;
- (id)filterIntervalSetMap:(id)a3 withTimeFilter:(id)a4;
- (id)parseDataForRequest:(id)a3 outError:(id *)a4;
- (id)responseForKey:(id)a3 withinTimeWindow:(id)a4;
- (void)removeResponseForKey:(id)a3;
- (void)setResponse:(id)a3 forKey:(id)a4 timeWindow:(id)a5;
@end

@implementation PPSSQLiteTimeIntervalSetIngester

- (PPSSQLiteTimeIntervalSetIngester)initWithFilepath:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PPSSQLiteTimeIntervalSetIngester;
  v6 = [(PPSSQLiteTimeIntervalSetIngester *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filepath, a3);
    v8 = objc_opt_new();
    responseCache = v7->_responseCache;
    v7->_responseCache = v8;
  }

  return v7;
}

- (void)removeResponseForKey:(id)a3
{
  v4 = a3;
  v5 = [(PPSSQLiteTimeIntervalSetIngester *)self responseCache];
  [v5 removeObjectForKey:v4];
}

- (id)responseForKey:(id)a3 withinTimeWindow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PPSSQLiteTimeIntervalSetIngester *)self responseCache];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v10 = [v9 firstObject];
  v11 = [v9 lastObject];
  v12 = [MEMORY[0x277CBEB68] null];

  if (v11 == v12)
  {
    goto LABEL_11;
  }

  v13 = [v9 lastObject];
  if (v13)
  {
    v14 = [v6 startDate];
    if ([v13 containsDate:v14])
    {
      v15 = [v6 endDate];
      v16 = [v13 containsDate:v15];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v10 = 0;
  }

LABEL_10:

LABEL_11:

  return v10;
}

- (void)setResponse:(id)a3 forKey:(id)a4 timeWindow:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = v8;
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  if (!v10)
  {
  }

  v13 = [(PPSSQLiteTimeIntervalSetIngester *)self responseCache];
  [v13 setObject:v12 forKey:v9];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)parseDataForRequest:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [v6 dimensions];
  v8 = [v7 count];

  if (v8)
  {
    [(PPSSQLiteTimeIntervalSetIngester *)self _computeIntervalSetMapForRequest:v6 outError:a4];
  }

  else
  {
    [(PPSSQLiteTimeIntervalSetIngester *)self _computeIntervalSetForRequest:v6 outError:a4];
  }
  v9 = ;

  return v9;
}

- (id)_computeIntervalSetMapForRequest:(id)a3 outError:(id *)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 subsystem];
  v7 = [v5 category];
  v8 = [v5 metrics];
  v9 = [v8 allObjects];
  v10 = [v9 mutableCopy];

  v11 = [v5 timeFilter];
  v12 = [v5 valueFilter];
  v13 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
  v14 = [PPSOffDeviceIngesterUtilities dataSourceForFilepath:v13 subsystem:v6 category:v7];

  v77 = v14;
  v73 = v12;
  v15 = [objc_opt_class() _stringForSourceName:v14 metrics:v10 predicate:v12];
  v81 = v11;
  if ([(PPSSQLiteTimeIntervalSetIngester *)self shouldUseCache])
  {
    v80 = [(PPSSQLiteTimeIntervalSetIngester *)self responseForKey:v15 withinTimeWindow:v11];
  }

  else
  {
    v80 = 0;
  }

  v16 = [v10 firstObject];
  if (v16)
  {
    v17 = [v10 firstObject];
  }

  else
  {
    v17 = @"timestamp";
  }

  v18 = v17;

  v19 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
  v76 = v6;
  v78 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:v19 subsystem:v6 category:v7 metricName:v18];

  context = objc_autoreleasePoolPush();
  v20 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
  v21 = [PPSDataIngesterRegistry dataIngesterForFilepath:v20 requestType:0];

  v74 = v10;
  v75 = v7;
  v72 = v15;
  v79 = v18;
  if (v81)
  {
    v22 = [v81 startDate];
    [v22 timeIntervalSince1970];
    v24 = v23 + -10800.0;

    v25 = [v81 endDate];
    [v25 timeIntervalSince1970];
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
  v32 = [v5 metrics];
  v33 = [v32 allObjects];
  v34 = [v31 setWithArray:v33];
  v35 = [v34 mutableCopy];

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v36 = [v5 dimensions];
  v37 = [v36 countByEnumeratingWithState:&v84 objects:v90 count:16];
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
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v84 + 1) + 8 * i) groupBy];
        [v35 addObject:v41];
      }

      v38 = [v36 countByEnumeratingWithState:&v84 objects:v90 count:16];
    }

    while (v38);
  }

  v42 = [PPSTimeSeriesRequest alloc];
  v43 = [v5 predicate];
  v68 = v30;
  v44 = [(PPSTimeSeriesRequest *)v42 initWithMetrics:v35 predicate:v43 timeFilter:v30];

  v45 = [v21 shouldUseCache];
  [v21 setShouldUseCache:0];
  v46 = [v21 parseDataForRequest:v44 outError:a4];
  [v21 setShouldUseCache:v45];
  if (*a4)
  {
    v47 = 0;
  }

  else
  {
    v48 = [v5 dimensions];
    v49 = [v48 count];
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

      v55 = [v5 dimensions];
      v54 = v67;
      v56 = [(PPSTimeIntervalSetGenerator *)v67 intervalSetMapForTimeSeries:v46 withGroupingDimensions:v55 withIntervalStartCheckBlock:0 intervalEndCheckBlock:0 payloadBlock:v70 coalescePolicy:0];

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
      *a4 = [v52 errorWithDomain:@"com.apple.PerfPowerServicesReader" code:0 userInfo:v53];
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

- (id)_computeIntervalSetForRequest:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [v5 subsystem];
  v7 = [v5 category];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@:%@", @"QueryExecution", v6, v7];
  v9 = +[PPSPerformanceProfiler sharedInstance];
  [v9 startProfilingForPhase:v8];

  v10 = [v5 metrics];
  v11 = [v10 allObjects];

  v12 = [v5 timeFilter];
  v13 = [v5 valueFilter];
  v14 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
  v15 = [PPSOffDeviceIngesterUtilities dataSourceForFilepath:v14 subsystem:v6 category:v7];

  v60 = v15;
  v61 = v13;
  v62 = v11;
  v16 = [objc_opt_class() _stringForSourceName:v15 metrics:v11 predicate:v13];
  if ([(PPSSQLiteTimeIntervalSetIngester *)self shouldUseCache]&& ([(PPSSQLiteTimeIntervalSetIngester *)self responseForKey:v16 withinTimeWindow:v12], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [(PPSSQLiteTimeIntervalSetIngester *)self filterIntervalSet:v17 withTimeFilter:v12];
    v20 = v62;
  }

  else
  {
    v54 = v16;
    context = objc_autoreleasePoolPush();
    v21 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
    v22 = [PPSDataIngesterRegistry dataIngesterForFilepath:v21 requestType:0];

    v56 = v7;
    v57 = v6;
    v55 = v8;
    if (v12)
    {
      v23 = [v12 startDate];
      [v23 timeIntervalSince1970];
      v25 = v24 + -10800.0;

      v26 = [v12 endDate];
      [v26 timeIntervalSince1970];
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
    v33 = [v5 metrics];
    v34 = [v5 predicate];
    v52 = v31;
    v35 = [(PPSTimeSeriesRequest *)v32 initWithMetrics:v33 predicate:v34 timeFilter:v31];

    v36 = [v22 shouldUseCache];
    [v22 setShouldUseCache:0];
    v51 = v35;
    v37 = [v22 parseDataForRequest:v35 outError:a4];
    [v22 setShouldUseCache:v36];
    v38 = *a4;
    if (*a4)
    {
      v18 = 0;
    }

    else
    {
      v39 = [v62 firstObject];
      if (v39)
      {
        v40 = [v62 firstObject];
      }

      else
      {
        v40 = @"timestamp";
      }

      v41 = v40;

      v42 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
      v59 = v41;
      v43 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:v42 subsystem:v57 category:v56 metricName:v41];

      v50 = v43;
      v44 = [[PPSTimeIntervalSetGenerator alloc] initWithDispatcher:self->_dispatcher settings:0 directionality:[PPSDataIngesterCommonUtilities directionalityForMetricDefinition:v43]];
      v64 = 0;
      v65 = &v64;
      v66 = 0x3032000000;
      v67 = __Block_byref_object_copy__4;
      v68 = __Block_byref_object_dispose__4;
      v69 = [v62 firstObject];
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
      if (v12)
      {
        v47 = [(PPSSQLiteTimeIntervalSetIngester *)self filterIntervalSet:v18 withTimeFilter:v12];

        v18 = v47;
      }

      _Block_object_dispose(&v64, 8);
    }

    v20 = v62;

    objc_autoreleasePoolPop(context);
    if (v38)
    {
      v19 = 0;
      v7 = v56;
      v6 = v57;
      v16 = v54;
      v8 = v55;
    }

    else
    {
      v16 = v54;
      v8 = v55;
      if (v18 && [(PPSSQLiteTimeIntervalSetIngester *)self shouldUseCache])
      {
        [(PPSSQLiteTimeIntervalSetIngester *)self setResponse:v18 forKey:v54 timeWindow:v12];
      }

      v48 = +[PPSPerformanceProfiler sharedInstance];
      [v48 endProfilingForPhase:v55];

      v18 = v18;
      v19 = v18;
      v7 = v56;
      v6 = v57;
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

+ (id)_filterIntervalSet:(id)a3 withTimeInterval:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[PPSTimeIntervalSet alloc] initWithTimeInterval:v21];
      v7 = [v5 intersectionFromIntervalSet:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v20 = v5;
        v8 = v5;
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
              v17 = [v15 _filterIntervalSet:v16 withTimeInterval:v21];

              [v7 setObject:v17 forKeyedSubscript:v13];
              objc_autoreleasePoolPop(v14);
            }

            v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v10);
        }

        v5 = v20;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = v5;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_stringForSourceName:(id)a3 metrics:(id)a4 predicate:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v12 ^= (v12 << 6) + 2654435769u + (v12 >> 2) + [*(*(&v19 + 1) + 8 * i) hash];
      }

      v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v15 = [v9 hash];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@::%lu", v7, ((v12 << 6) + 2654435769u + (v12 >> 2) + v15) ^ v12];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)filterIntervalSet:(id)a3 withTimeFilter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(PPSSQLiteTimeIntervalSetIngester *)self filepath];
      v10 = [PPSTimestampConverterRegistry converterForFilepath:v9];

      v11 = [v8 startDate];
      [v11 timeIntervalSince1970];
      v13 = v12;

      [v10 monotonicTimeFromEpochTime:v13];
      v15 = v14;
      v16 = [v8 endDate];
      [v16 timeIntervalSince1970];
      v18 = v17;

      [v10 monotonicTimeFromEpochTime:v18];
      v20 = [[PPSTimeInterval alloc] initWithStartTimestamp:0 endTimestamp:v15 payload:v19];
      v21 = [objc_opt_class() _filterIntervalSet:v6 withTimeInterval:v20];
    }

    else
    {
      v21 = v6;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)filterIntervalSetMap:(id)a3 withTimeFilter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    if ([v6 count] >= 1)
    {
      v9 = 0;
      do
      {
        v10 = [v6 allKeys];
        v11 = [v10 objectAtIndexedSubscript:v9];

        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [(PPSSQLiteTimeIntervalSetIngester *)self filterIntervalSet:v12 withTimeFilter:v7];
        [v8 setObject:v13 forKeyedSubscript:v11];

        ++v9;
      }

      while (v9 < [v6 count]);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end