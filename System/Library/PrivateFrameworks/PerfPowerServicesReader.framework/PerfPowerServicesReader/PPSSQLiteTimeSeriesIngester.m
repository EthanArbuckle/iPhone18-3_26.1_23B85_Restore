@interface PPSSQLiteTimeSeriesIngester
+ (NSCache)databaseConnectionCache;
+ (id)_stringForSourceNames:(id)a3 metrics:(id)a4 predicate:(id)a5;
+ (id)cachedDatabaseForURL:(id)a3;
+ (id)databaseQueue;
+ (id)filterTimeSeries:(id)a3 withPredicate:(id)a4;
+ (unint64_t)_hashForStringArray:(id)a3;
+ (void)cache:(id)a3 willEvictObject:(id)a4;
+ (void)evicttriggering;
- (PPSSQLiteTimeSeriesIngester)initWithFilepath:(id)a3;
- (id)_convertSQLiteDataFromQuery:(id)a3 withMetricDefinitions:(id)a4 error:(id *)a5;
- (id)_validBaseMetricFromDefinitions:(id)a3;
- (id)parseDataForRequest:(id)a3 outError:(id *)a4;
- (id)responseForKey:(id)a3 withinTimeWindow:(id)a4;
- (void)dealloc;
- (void)removeResponseForKey:(id)a3;
- (void)setResponse:(id)a3 forKey:(id)a4 timeWindow:(id)a5;
@end

@implementation PPSSQLiteTimeSeriesIngester

+ (id)databaseQueue
{
  if (databaseQueue_onceToken != -1)
  {
    +[PPSSQLiteTimeSeriesIngester databaseQueue];
  }

  v3 = databaseQueue_databaseQueue;

  return v3;
}

uint64_t __44__PPSSQLiteTimeSeriesIngester_databaseQueue__block_invoke()
{
  databaseQueue_databaseQueue = dispatch_queue_create("com.apple.perfpowerservices.databaseQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (NSCache)databaseConnectionCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PPSSQLiteTimeSeriesIngester_databaseConnectionCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (databaseConnectionCache_onceToken != -1)
  {
    dispatch_once(&databaseConnectionCache_onceToken, block);
  }

  v2 = databaseConnectionCache_connectionCache;

  return v2;
}

void __54__PPSSQLiteTimeSeriesIngester_databaseConnectionCache__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v3 = databaseConnectionCache_connectionCache;
  databaseConnectionCache_connectionCache = v2;

  [databaseConnectionCache_connectionCache setTotalCostLimit:0x100000];
  [databaseConnectionCache_connectionCache setName:@"com.apple.perfpowerservices.databaseConnectionCache"];
  [databaseConnectionCache_connectionCache setDelegate:*(a1 + 32)];
  v4 = PPSReaderLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__PPSSQLiteTimeSeriesIngester_databaseConnectionCache__block_invoke_cold_1();
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [v5 addObserverForName:@"EvictionNotification" object:0 queue:0 usingBlock:&__block_literal_global_10];
}

+ (void)evicttriggering
{
  v3 = PPSReaderLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[PPSSQLiteTimeSeriesIngester evicttriggering];
  }

  v4 = [a1 databaseConnectionCache];
  v5 = [a1 databaseConnectionCache];
  v6 = MEMORY[0x277CBEBC0];
  v7 = [MEMORY[0x277D3A128] containerPath];
  v8 = [v7 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v9 = [v8 stringByAppendingString:@"BackgroundProcessing/"];
  v10 = [v9 stringByAppendingString:@"CurrentBackgroundProcessingDB.BGSQL"];
  v11 = [v6 fileURLWithPath:v10];
  v12 = [v5 objectForKey:v11];
  [a1 cache:v4 willEvictObject:v12];
}

+ (id)cachedDatabaseForURL:(id)a3
{
  v4 = a3;
  v5 = [a1 databaseConnectionCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (void)cache:(id)a3 willEvictObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [a1 databaseConnectionCache];

    if (v8 == v6)
    {
      v9 = v7;
      v10 = [a1 databaseQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PPSSQLiteTimeSeriesIngester_cache_willEvictObject___block_invoke;
      block[3] = &unk_279A11428;
      v13 = v9;
      v11 = v9;
      dispatch_async(v10, block);
    }
  }
}

void __53__PPSSQLiteTimeSeriesIngester_cache_willEvictObject___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) close];
  v2 = PPSReaderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__PPSSQLiteTimeSeriesIngester_cache_willEvictObject___block_invoke_cold_1(v1);
  }
}

- (PPSSQLiteTimeSeriesIngester)initWithFilepath:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PPSSQLiteTimeSeriesIngester;
  v6 = [(PPSSQLiteTimeSeriesIngester *)&v11 init];
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

- (void)dealloc
{
  v3 = [objc_opt_class() databaseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PPSSQLiteTimeSeriesIngester_dealloc__block_invoke;
  block[3] = &unk_279A11428;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = PPSSQLiteTimeSeriesIngester;
  [(PPSSQLiteTimeSeriesIngester *)&v4 dealloc];
}

void __38__PPSSQLiteTimeSeriesIngester_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseConnectionCache];
  v4 = [*(a1 + 32) filepath];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    [v5 close];
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() databaseConnectionCache];
    v8 = [*(a1 + 32) filepath];
    [v7 removeObjectForKey:v8];

    v9 = PPSReaderLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __38__PPSSQLiteTimeSeriesIngester_dealloc__block_invoke_cold_1();
    }
  }
}

- (void)removeResponseForKey:(id)a3
{
  v4 = a3;
  v5 = [(PPSSQLiteTimeSeriesIngester *)self responseCache];
  [v5 removeObjectForKey:v4];
}

- (id)responseForKey:(id)a3 withinTimeWindow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PPSSQLiteTimeSeriesIngester *)self responseCache];
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

  v13 = [(PPSSQLiteTimeSeriesIngester *)self responseCache];
  [v13 setObject:v12 forKey:v9];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)parseDataForRequest:(id)a3 outError:(id *)a4
{
  v103[2] = *MEMORY[0x277D85DE8];
  v63 = a3;
  v65 = [v63 subsystem];
  v64 = [v63 category];
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__2;
  v98 = __Block_byref_object_dispose__2;
  v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@_Prepare", @"QueryExecution", v65, v64];
  v4 = +[PPSPerformanceProfiler sharedInstance];
  [v4 startProfilingForPhase:v95[5]];

  v62 = [v63 valueFilter];
  v61 = [v63 timeFilter];
  if (v61)
  {
    v5 = [(PPSSQLiteTimeSeriesIngester *)self filepath];
    v6 = [PPSTimestampConverterRegistry converterForFilepath:v5];

    v7 = [v61 startDate];
    [v7 timeIntervalSince1970];
    v9 = v8;

    [v6 monotonicTimeFromEpochTime:v9];
    v11 = v10;
    v12 = [v61 endDate];
    [v12 timeIntervalSince1970];
    v14 = v13;

    [v6 monotonicTimeFromEpochTime:v14];
    v59 = [PPSPredicateUtilities predicateForStartTimestamp:@"timestamp" endTimestamp:v11 withKeyPath:v15];
    if (v62)
    {
      v16 = MEMORY[0x277CCA920];
      v103[0] = v62;
      v103[1] = v59;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
      v60 = [v16 andPredicateWithSubpredicates:v17];
    }

    else
    {
      v60 = v59;
    }
  }

  else
  {
    v59 = 0;
    v60 = v62;
  }

  v18 = [v63 metrics];
  v19 = [v18 allObjects];

  if (([v19 containsObject:@"timestamp"] & 1) == 0)
  {
    v20 = [v19 arrayByAddingObject:@"timestamp"];

    v19 = v20;
  }

  v21 = [(PPSSQLiteTimeSeriesIngester *)self filepath];
  v22 = [PPSOffDeviceIngesterUtilities metricDefinitionsForFilepath:v21 subsystem:v65 category:v64 metricNames:v19];
  v23 = [v22 mutableCopy];

  v67 = [MEMORY[0x277CBEB58] set];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v19;
  v24 = 0;
  v25 = [obj countByEnumeratingWithState:&v90 objects:v102 count:16];
  if (v25)
  {
    v26 = *v91;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v91 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v90 + 1) + 8 * i);
        v29 = [v23 objectForKeyedSubscript:v28];
        if (v29)
        {
          v24 |= [PPSDataIngesterCommonUtilities directionalityForMetricDefinition:v29]== 3;
          if ([v29 datatype] == 10)
          {
            [v67 addObject:v28];
          }
        }

        else
        {
          v31 = [v28 rangeOfString:@"_[0-9.]+$" options:1024];
          if (v31 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v32 = [MEMORY[0x277CBEB68] null];
            [v23 setObject:v32 forKeyedSubscript:v28];
          }

          else
          {
            v32 = [v28 stringByReplacingCharactersInRange:v31 withString:{v30, &stru_286FFF1D8}];
            v33 = [(PPSSQLiteTimeSeriesIngester *)self filepath];
            v34 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:v33 subsystem:v65 category:v64 metricName:v32];
            [v23 setObject:v34 forKeyedSubscript:v32];
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v90 objects:v102 count:16];
    }

    while (v25);
  }

  v35 = [PPSPredicateUtilities predicateByReplacingUnsignedIntegerWithSignedInteger:v60 legalMetricNames:v67];

  if ((v24 & 1) != 0 && ([obj containsObject:@"timestampEnd"] & 1) == 0)
  {
    v36 = [obj arrayByAddingObject:@"timestampEnd"];

    v37 = [MEMORY[0x277CBEB68] null];
    [v23 setObject:v37 forKeyedSubscript:@"timestampEnd"];

    obj = v36;
  }

  v38 = @"ASC";
  if ([v63 readDirection] == 1)
  {
    v39 = @"DESC";

    v38 = v39;
  }

  v40 = [(PPSSQLiteTimeSeriesIngester *)self filepath];
  v41 = [PPSOffDeviceIngesterUtilities allDataSourcesForFilepath:v40 subsystem:v65 category:v64];

  v42 = [objc_opt_class() _stringForSourceNames:v41 metrics:obj predicate:v62];
  if ([(PPSSQLiteTimeSeriesIngester *)self shouldUseCache]&& ([(PPSSQLiteTimeSeriesIngester *)self responseForKey:v42 withinTimeWindow:v61], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v44 = [objc_opt_class() filterTimeSeries:v43 withPredicate:v59];
  }

  else
  {
    v45 = [[PPSSQLiteEntity alloc] initWithTableNames:v41];
    v46 = [PPSSQLiteQueryDescriptor alloc];
    v47 = [v35 pps_sqlPredicateForSelect];
    v48 = -[PPSSQLiteQueryDescriptor initWithEntity:predicate:limitCount:offsetCount:](v46, "initWithEntity:predicate:limitCount:offsetCount:", v45, v47, [v63 limitCount], objc_msgSend(v63, "offsetCount"));

    v101 = @"timestamp";
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
    [(PPSSQLiteQueryDescriptor *)v48 setOrderByProperties:v49];

    v100 = v38;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
    [(PPSSQLiteQueryDescriptor *)v48 setOrderByDirections:v50];

    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = __Block_byref_object_copy__2;
    v88 = __Block_byref_object_dispose__2;
    v89 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__2;
    v82 = __Block_byref_object_dispose__2;
    v83 = 0;
    v51 = [objc_opt_class() databaseQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PPSSQLiteTimeSeriesIngester_parseDataForRequest_outError___block_invoke;
    block[3] = &unk_279A11668;
    block[4] = self;
    v75 = &v78;
    v52 = v48;
    v70 = v52;
    v71 = obj;
    v76 = &v94;
    v72 = v65;
    v73 = v64;
    v77 = &v84;
    v74 = v23;
    dispatch_sync(v51, block);

    v53 = v79[5];
    if (v53)
    {
      v43 = 0;
      *a4 = v53;
    }

    else
    {
      v54 = v85[5];
      if (v54 && [(PPSSQLiteTimeSeriesIngester *)self shouldUseCache])
      {
        [(PPSSQLiteTimeSeriesIngester *)self setResponse:v54 forKey:v42 timeWindow:v61];
      }

      v55 = +[PPSPerformanceProfiler sharedInstance];
      [v55 endProfilingForPhase:v95[5]];

      v43 = v54;
    }

    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v84, 8);

    v44 = v43;
  }

  _Block_object_dispose(&v94, 8);
  v56 = *MEMORY[0x277D85DE8];

  return v44;
}

void __60__PPSSQLiteTimeSeriesIngester_parseDataForRequest_outError___block_invoke(uint64_t a1)
{
  v28[3] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() databaseConnectionCache];
  v5 = [*v3 filepath];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v20 = [PPSSQLiteDatabase alloc];
    v21 = [*(a1 + 32) filepath];
    v6 = [(PPSSQLiteDatabase *)v20 initWithDatabaseURL:v21];

    v22 = *(*(a1 + 80) + 8);
    v28[0] = *(v22 + 40);
    [(PPSSQLiteDatabase *)v6 openForReadingWithError:v28];
    objc_storeStrong((v22 + 40), v28[0]);
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      goto LABEL_6;
    }

    v24 = *(a1 + 32);
    v25 = [objc_opt_class() databaseConnectionCache];
    v26 = [*(a1 + 32) filepath];
    [v25 setObject:v6 forKey:v26];
  }

  v7 = [[PPSSQLiteQuery alloc] initWithDatabase:v6 descriptor:*(a1 + 40)];
  v8 = PPSReaderLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __60__PPSSQLiteTimeSeriesIngester_parseDataForRequest_outError___block_invoke_cold_1(a1, v7, v8);
  }

  v9 = +[PPSPerformanceProfiler sharedInstance];
  [v9 endProfilingForPhase:*(*(*(a1 + 88) + 8) + 40)];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@_SQLEnumerate", @"QueryExecution", *(a1 + 56), *(a1 + 64)];
  v11 = *(*(a1 + 88) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = +[PPSPerformanceProfiler sharedInstance];
  [v13 startProfilingForPhase:*(*(*(a1 + 88) + 8) + 40)];

  v14 = *(a1 + 32);
  v15 = *(a1 + 72);
  v16 = *(*(a1 + 80) + 8);
  obj = *(v16 + 40);
  v17 = [v14 _convertSQLiteDataFromQuery:v7 withMetricDefinitions:v15 error:&obj];
  objc_storeStrong((v16 + 40), obj);
  v18 = *(*(a1 + 96) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

LABEL_6:
  v23 = *MEMORY[0x277D85DE8];
}

- (id)_validBaseMetricFromDefinitions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v3 objectForKeyedSubscript:{v7, v13}];
        v9 = [MEMORY[0x277CBEB68] null];
        v10 = [v8 isEqual:v9];

        if (!v10)
        {
          v4 = [v3 objectForKeyedSubscript:v7];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_convertSQLiteDataFromQuery:(id)a3 withMetricDefinitions:(id)a4 error:(id *)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v40 = v7;
  if (v7)
  {
    v38 = a5;
    v43 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v37 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v9)
    {
      v41 = 0;
      v10 = *v72;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v72 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v71 + 1) + 8 * i);
          if (([v12 isEqualToString:@"timestamp"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"timestampEnd"))
          {
            [v43 addObject:v12];
          }

          else
          {
            v13 = [obj objectForKeyedSubscript:v12];
            v14 = [v13 auxiliaryType] == 3;
            v15 = [v13 auxiliaryType] == 2;
            if ([v13 auxiliaryType] == 3 && objc_msgSend(v13, "fixedArraySize"))
            {
              if ([v13 fixedArraySize])
              {
                v16 = 0;
                do
                {
                  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v12, v16];
                  [v43 addObject:v17];

                  v16 = (v16 + 1);
                }

                while (v16 < [v13 fixedArraySize]);
              }
            }

            else
            {
              [v43 addObject:v12];
            }

            LOBYTE(v41) = v14 | v41;
            BYTE4(v41) |= v15;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v9);
    }

    else
    {
      v41 = 0;
    }

    v18 = [v40 columnNamesForProperties:v43];
    v19 = PPSReaderLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PPSSQLiteTimeSeriesIngester _convertSQLiteDataFromQuery:withMetricDefinitions:error:];
    }

    v20 = [v18 count];
    if (v20 != [v43 count])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Number of column and metric names should be the same."];
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__2;
    v69 = __Block_byref_object_dispose__2;
    v70 = [(PPSSQLiteTimeSeriesIngester *)self _validBaseMetricFromDefinitions:obj];
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__2;
    v63 = __Block_byref_object_dispose__2;
    v64 = objc_opt_new();
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = __Block_byref_object_copy__2;
    v57[4] = __Block_byref_object_dispose__2;
    v21 = [(PPSSQLiteTimeSeriesIngester *)self filepath];
    v58 = [PPSTimestampConverterRegistry converterForFilepath:v21];

    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v56[3] = -1;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke;
    v45[3] = &unk_279A116B8;
    v22 = v18;
    v46 = v22;
    v50 = v57;
    v23 = obj;
    v47 = v23;
    v48 = v40;
    v49 = self;
    v51 = &v65;
    v52 = v56;
    v53 = &v59;
    v54 = v41 & 1;
    v55 = BYTE4(v41) & 1;
    [v48 enumerateProperties:v43 error:v38 enumerationHandler:v45];
    v24 = v66[5];
    if (v24)
    {
      v25 = [MEMORY[0x277CBEB68] null];
      v26 = [v24 isEqual:v25];

      if ((v26 & 1) == 0)
      {
        v27 = +[PPSRecipeEngine sharedInstance];
        v28 = [v27 createTimeSeriesRecipeForMetric:v66[5]];

        if (v28)
        {
          v29 = +[PPSRecipeEngine sharedInstance];
          v30 = v60[5];
          v44 = 0;
          v31 = [v29 executeTimeSeriesRecipe:v28 on:v30 metrics:v23 error:&v44];
          v32 = v44;
          v33 = v60[5];
          v60[5] = v31;

          if (v32)
          {
            v34 = PPSReaderLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [PPSSQLiteTimeSeriesIngester _convertSQLiteDataFromQuery:withMetricDefinitions:error:];
            }
          }
        }
      }
    }

    v7 = v60[5];

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(v57, 8);

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v65, 8);

    v8 = v37;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke(uint64_t a1, void *a2, PPSSQLiteRow *a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v55 = objc_autoreleasePoolPush();
  v59 = objc_opt_new();
  v56 = PPSSQLiteColumnValueWithNameAsInt(a3, @"ID");
  v58 = v6;
  if ([*(a1 + 32) count])
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0;
    while (1)
    {
      v10 = [v6 objectAtIndexedSubscript:v7];
      v11 = [v10 isEqualToString:@"timestamp"];

      if (!v11)
      {
        break;
      }

      v12 = [v6 objectAtIndexedSubscript:v7];
      v8 = PPSSQLiteColumnValueWithNameAsDouble(a3, v12);

      [*(*(*(a1 + 64) + 8) + 40) systemOffsetFromMonotonicTime:v8];
      v9 = v13;
LABEL_28:
      if (++v7 >= [*(a1 + 32) count])
      {
        goto LABEL_31;
      }
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) objectAtIndexedSubscript:v7];
    v16 = [v14 objectForKeyedSubscript:v15];

    v17 = [v6 objectAtIndexedSubscript:v7];
    v18 = PPSSQLiteColumnValueWithNameAsFoundationType(a3, v17);

    if (v16)
    {
      v19 = [MEMORY[0x277CBEB68] null];
      v20 = [v16 isEqual:v19];

      if ((v20 & 1) == 0)
      {
        if ([v16 datatype] == 10)
        {
          v21 = [v18 longLongValue];
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];

          v23 = PPSReaderLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218498;
            v72 = v21;
            v73 = 2048;
            v74 = v21;
            v75 = 2112;
            v76 = v22;
            _os_log_debug_impl(&dword_25E225000, v23, OS_LOG_TYPE_DEBUG, "The readback for Uint64 path is triggered with values for signedVal= %lld, unsignedVal=%llu and correctedVal=%@", buf, 0x20u);
          }
        }

        else
        {
          v22 = v18;
        }

        if ([PPSEnumerationDecoder isDecodableMetric:v16])
        {
          v24 = [PPSEnumerationDecoder decodeValue:v22 withMetric:v16];

          v22 = v24;
        }

        v25 = +[PPSRecipeEngine sharedInstance];
        v26 = [v25 createMetricRecipeForMetric:v16];

        if (v26)
        {
          v27 = +[PPSRecipeEngine sharedInstance];
          v70 = 0;
          v57 = [v27 executeMetricRecipe:v26 on:v22 metric:v16 error:&v70];
          v28 = v70;

          if (v28)
          {
            v29 = PPSReaderLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v72 = v26;
              _os_log_error_impl(&dword_25E225000, v29, OS_LOG_TYPE_ERROR, "Metric Recipe '%@' failed during time series ingestion", buf, 0xCu);
            }
          }

          v22 = v57;
        }

        v18 = v22;
      }
    }

    if ([v16 auxiliaryType] == 3)
    {
      v30 = [MEMORY[0x277CBEB18] arrayWithObjects:{v18, 0}];
      v31 = [*(a1 + 32) objectAtIndexedSubscript:v7];
      [v59 setValue:v30 forKey:v31];
    }

    else
    {
      v32 = v18;
      if (!v18)
      {
        v3 = [MEMORY[0x277CBEB68] null];
        v32 = v3;
      }

      v33 = [*(a1 + 32) objectAtIndexedSubscript:v7];
      [v59 setValue:v32 forKey:v33];

      v30 = v3;
      if (v18)
      {
        goto LABEL_27;
      }
    }

LABEL_27:
    v6 = v58;
    goto LABEL_28;
  }

  v9 = 0;
  v8 = 0.0;
LABEL_31:
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke_69;
  v62[3] = &unk_279A11690;
  v34 = *(a1 + 48);
  v35 = *(a1 + 56);
  v63 = v34;
  v64 = v35;
  v68 = v8;
  v69 = v9;
  v36 = v59;
  v37 = *(a1 + 72);
  v65 = v36;
  v67 = v37;
  v66 = *(a1 + 40);
  v38 = MEMORY[0x25F8B0940](v62);
  v39 = v38;
  v40 = v56;
  if (*(*(*(a1 + 80) + 8) + 24) != v56)
  {
    v52 = (*(v38 + 16))(v38);
    if (v52)
    {
      [*(*(*(a1 + 88) + 8) + 40) addEvent:v52];
    }

    v51 = v55;
    goto LABEL_46;
  }

  v60 = v38;
  if (*(a1 + 96) == 1 && [*(a1 + 32) count])
  {
    v41 = 0;
    v42 = @"timestampEnd";
    do
    {
      v43 = [*(a1 + 32) objectAtIndexedSubscript:v41];
      if (([v43 isEqualToString:@"timestamp"] & 1) == 0 && (objc_msgSend(v43, "isEqualToString:", v42) & 1) == 0)
      {
        v44 = [*(a1 + 40) objectForKeyedSubscript:v43];
        if ([v44 auxiliaryType] == 3)
        {
          v45 = [*(*(*(a1 + 88) + 8) + 40) array];
          v61 = [v45 lastObject];

          v46 = [v61 metrics];
          v47 = [v46 objectForKeyedSubscript:v43];
          [v36 objectForKeyedSubscript:v43];
          v48 = v42;
          v50 = v49 = v36;
          [v47 addObjectsFromArray:v50];

          v36 = v49;
          v42 = v48;
        }
      }

      ++v41;
    }

    while (v41 < [*(a1 + 32) count]);
  }

  v51 = v55;
  v40 = v56;
  v6 = v58;
  v39 = v60;
  if (*(a1 + 97) == 1)
  {
    v52 = v60[2](v60);
    [*(*(*(a1 + 88) + 8) + 40) addEvent:v52];
LABEL_46:
  }

  *(*(*(a1 + 80) + 8) + 24) = v40;

  objc_autoreleasePoolPop(v51);
  v53 = *MEMORY[0x277D85DE8];
  return 1;
}

id __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke_69(uint64_t a1)
{
  v2 = [*(a1 + 32) descriptor];
  v3 = [v2 entity];
  v4 = [v3 tableNames];

  v5 = *(a1 + 40);
  v6 = +[PPSEvent eventWithMonotonicTimestamp:timeOffset:dictionary:groupId:](PPSEvent, "eventWithMonotonicTimestamp:timeOffset:dictionary:groupId:", *(a1 + 48), [objc_opt_class() _hashForStringArray:v4], *(a1 + 72), *(a1 + 80));
  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [*(*(*(a1 + 64) + 8) + 40) subsystem];
      v12 = [*(*(*(a1 + 64) + 8) + 40) category];
      v13 = [v10 stringWithFormat:@"%@:%@", v11, v12];
      [v6 setLabel:v13];

      v14 = +[PPSRecipeEngine sharedInstance];
      v15 = [v14 createEventRecipeForMetric:*(*(*(a1 + 64) + 8) + 40)];

      if (v15)
      {
        v16 = +[PPSRecipeEngine sharedInstance];
        v17 = *(a1 + 56);
        v22 = 0;
        v18 = [v16 executeEventRecipe:v15 on:v6 metrics:v17 error:&v22];
        v19 = v22;

        if (v19)
        {
          v20 = PPSReaderLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke_69_cold_1();
          }
        }

        v6 = v18;
      }
    }
  }

  return v6;
}

+ (unint64_t)_hashForStringArray:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 ^= (v6 << 6) + (v6 >> 2) + 2654435769u + [*(*(&v11 + 1) + 8 * i) hash];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)_stringForSourceNames:(id)a3 metrics:(id)a4 predicate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _hashForStringArray:v8];

  v11 = [v7 hash];
  v12 = (v11 + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v13 = MEMORY[0x277CCACA8];
  v14 = [v9 componentsJoinedByString:{@", "}];

  v15 = [v13 stringWithFormat:@"%@::%lu", v14, v12];

  return v15;
}

+ (id)filterTimeSeries:(id)a3 withPredicate:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  if (!v21)
  {
    v6 = v5;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 filteredTimeSeriesUsingPredicate:v21];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = objc_opt_class();
          v18 = [v10 objectForKeyedSubscript:v15];
          v19 = [v17 filterTimeSeries:v18 withPredicate:v21];

          [v7 setObject:v19 forKeyedSubscript:v15];
          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v5 = v20;
  }

  else
  {
    v7 = 0;
  }

LABEL_6:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __53__PPSSQLiteTimeSeriesIngester_cache_willEvictObject___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PPSSQLiteTimeSeriesIngester_dealloc__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__PPSSQLiteTimeSeriesIngester_parseDataForRequest_outError___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 selectSQLWithProperties:*(a1 + 48)];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_25E225000, a3, OS_LOG_TYPE_DEBUG, "Query before value-binding: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_convertSQLiteDataFromQuery:withMetricDefinitions:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_25E225000, v1, OS_LOG_TYPE_DEBUG, "Column Names %@ Properties %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_convertSQLiteDataFromQuery:withMetricDefinitions:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_25E225000, v0, OS_LOG_TYPE_ERROR, "Time Series Recipe '%@' failed during time series ingestion", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke_69_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_25E225000, v0, OS_LOG_TYPE_ERROR, "Event Recipe '%@' failed during time series ingestion", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end