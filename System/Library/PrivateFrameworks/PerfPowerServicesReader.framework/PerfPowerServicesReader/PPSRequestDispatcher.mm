@interface PPSRequestDispatcher
- (NSDateInterval)timelineBoundaries;
- (PPSRequestDispatcher)initWithFilepath:(id)filepath;
- (id)_executeRequest:(id)request withError:(id *)error;
- (id)dataForRequest:(id)request withError:(id *)error;
- (int64_t)_readerTypeForSubsystem:(id)subsystem category:(id)category;
- (void)dealloc;
@end

@implementation PPSRequestDispatcher

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [&unk_2870180A8 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(&unk_2870180A8);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        filepath = [(PPSRequestDispatcher *)self filepath];
        +[PPSDataIngesterRegistry releaseDataIngesterForFilepath:requestType:](PPSDataIngesterRegistry, "releaseDataIngesterForFilepath:requestType:", filepath, [v7 intValue]);

        ++v6;
      }

      while (v4 != v6);
      v4 = [&unk_2870180A8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10.receiver = self;
  v10.super_class = PPSRequestDispatcher;
  [(PPSRequestDispatcher *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (PPSRequestDispatcher)initWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  v11.receiver = self;
  v11.super_class = PPSRequestDispatcher;
  v5 = [(PPSRequestDispatcher *)&v11 init];
  if (v5)
  {
    if ([PPSEntitlementChecker checkForEntitlement:@"com.apple.PerfPowerServices.data-read"])
    {
      v6 = [filepathCopy copy];
    }

    else
    {
      v7 = PPSReaderLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25E225000, v7, OS_LOG_TYPE_DEFAULT, "[dispatcher] Invalid filepath for on-device reading. Overwriting...", v10, 2u);
      }

      v6 = 0;
    }

    filepath = v5->_filepath;
    v5->_filepath = v6;
  }

  return v5;
}

- (NSDateInterval)timelineBoundaries
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PPSRequestDispatcher_timelineBoundaries__block_invoke;
  block[3] = &unk_279A11428;
  block[4] = self;
  if (timelineBoundaries_onceToken != -1)
  {
    dispatch_once(&timelineBoundaries_onceToken, block);
  }

  return timelineBoundaries_timelineBoundaries;
}

void __42__PPSRequestDispatcher_timelineBoundaries__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) filepath];
  v3 = [PPSDataIngesterCommonUtilities fileTypeForFilepath:v2];

  if (v3 == 1)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:@"timestamp"];
    v5 = PPSCreateSubsystemCategoryPredicate(@"PLBatteryAgent_EventBackward", @"Battery", 0);
    v6 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v4 predicate:v5 timeFilter:0];
    v7 = *(a1 + 32);
    v26 = 0;
    v8 = [v7 dataForRequest:v6 withError:&v26];
    v9 = v26;
    if (v9 || [v8 count] <= 1)
    {
      v10 = PPSCreateSubsystemCategoryPredicate(@"PLCoalitionAgent_EventInterval", @"CoalitionInterval", 0);

      v11 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v4 predicate:v10 timeFilter:0];
      v12 = *(a1 + 32);
      v25 = v9;
      v13 = [v12 dataForRequest:v11 withError:&v25];
      v14 = v25;

      if (v14)
      {
        v15 = [MEMORY[0x277CBEAA8] date];
        v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 endDate:v15];
        v17 = timelineBoundaries_timelineBoundaries;
        timelineBoundaries_timelineBoundaries = v16;

LABEL_9:
        return;
      }

      v8 = v13;
    }

    else
    {
      v13 = v8;
      v11 = v6;
      v10 = v5;
    }

    v18 = [v8 firstObject];
    [v18 monotonicTimestamp];
    v20 = v19;

    v21 = [v8 lastObject];
    [v21 monotonicTimestamp];
    v23 = v22;

    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v20];
    v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 duration:v23 - v20];
    v15 = timelineBoundaries_timelineBoundaries;
    timelineBoundaries_timelineBoundaries = v24;
    goto LABEL_9;
  }
}

- (id)dataForRequest:(id)request withError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  subsystem = [requestCopy subsystem];
  category = [requestCopy category];
  v9 = [(PPSRequestDispatcher *)self _readerTypeForSubsystem:subsystem category:category];
  if (!v9)
  {
LABEL_6:
    error = [(PPSRequestDispatcher *)self _executeRequest:requestCopy withError:error];
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v10 = PPSReaderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PPSRequestDispatcher dataForRequest:v10 withError:?];
    }

    goto LABEL_6;
  }

  if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"No available reader backend.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:0 userInfo:v12];

    error = 0;
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)_executeRequest:(id)request withError:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = MEMORY[0x277CCACA8];
  subsystem = [requestCopy subsystem];
  category = [requestCopy category];
  v10 = [v7 stringWithFormat:@"%@:%@:%@", @"QueryInitialization", subsystem, category];

  v11 = +[PPSPerformanceProfiler sharedInstance];
  [v11 startProfilingForPhase:v10];

  v12 = +[PPSRequestValidator sharedInstance];
  filepath = [(PPSRequestDispatcher *)self filepath];
  v14 = [v12 validateDataRequest:requestCopy filepath:filepath withError:error];

  if (!v14)
  {
    v18 = 0;
    goto LABEL_34;
  }

  subsystem2 = [requestCopy subsystem];
  category2 = [requestCopy category];
  filepath2 = [(PPSRequestDispatcher *)self filepath];

  v51 = filepath2;
  selfCopy = self;
  v53 = category2;
  v54 = subsystem2;
  if (filepath2)
  {
    filepath3 = [(PPSRequestDispatcher *)self filepath];
    [PPSOffDeviceIngesterUtilities allDataSourcesForFilepath:"allDataSourcesForFilepath:subsystem:category:" subsystem:? category:?];
  }

  else
  {
    filepath3 = [PPSOnDeviceIngesterUtilities filepathForSubsystem:subsystem2 category:category2];
    [PPSOnDeviceIngesterUtilities allDataSourcesForSubsystem:subsystem2 category:category2];
  }
  v19 = ;
  metrics = [requestCopy metrics];
  if (!metrics || (v21 = metrics, [requestCopy metrics], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21, !v23))
  {
    errorCopy = error;
    v49 = v12;
    v50 = requestCopy;
    v24 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v25 = v19;
    v26 = [v25 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v57;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v57 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [PPSDataIngesterCommonUtilities columnNamesForFilepath:filepath3 dataSource:*(*(&v56 + 1) + 8 * i)];
          v31 = [v30 mutableCopy];

          [v31 removeObject:@"ID"];
          [v31 removeObject:@"FK_ID"];
          [v24 addObjectsFromArray:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v27);
    }

    v32 = [MEMORY[0x277CBEB98] setWithArray:v24];
    requestCopy = v50;
    [v50 setMetrics:v32];

    v12 = v49;
    error = errorCopy;
  }

  v33 = PPSReaderLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [PPSRequestDispatcher _executeRequest:v19 withError:v33];
  }

  v34 = PPSReaderLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [PPSRequestDispatcher _executeRequest:filepath3 withError:v34];
  }

  v35 = PPSReaderLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    [PPSRequestDispatcher _executeRequest:requestCopy withError:v35];
  }

  if (v19 && filepath3)
  {
    v36 = +[PPSPerformanceProfiler sharedInstance];
    [v36 endProfilingForPhase:v10];

    v37 = +[PPSDataIngesterRegistry dataIngesterForFilepath:requestType:](PPSDataIngesterRegistry, "dataIngesterForFilepath:requestType:", filepath3, [requestCopy requestType]);
    v38 = v37;
    if (v37)
    {
      [v37 setShouldUseCache:v51 != 0];
      [v38 setDispatcher:selfCopy];
      v18 = [v38 parseDataForRequest:requestCopy outError:error];
LABEL_32:

      goto LABEL_33;
    }

    if (error)
    {
      v42 = MEMORY[0x277CCA9B8];
      v43 = MEMORY[0x277CBEAC0];
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request type isn't supported."];
      v45 = [v43 dictionaryWithObject:v44 forKey:*MEMORY[0x277CCA450]];
      *error = [v42 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:2 userInfo:v45];
    }

LABEL_31:
    v18 = 0;
    goto LABEL_32;
  }

  if (error)
  {
    v39 = MEMORY[0x277CCA9B8];
    v40 = MEMORY[0x277CBEAC0];
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data source."];
    v41 = [v40 dictionaryWithObject:v38 forKey:*MEMORY[0x277CCA450]];
    *error = [v39 errorWithDomain:@"com.apple.PerfPowerServicesReader.request" code:5 userInfo:v41];

    goto LABEL_31;
  }

  v18 = 0;
LABEL_33:

LABEL_34:
  v46 = *MEMORY[0x277D85DE8];

  return v18;
}

- (int64_t)_readerTypeForSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  filepath = [(PPSRequestDispatcher *)self filepath];

  if (filepath)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = MEMORY[0x277D3A120];
    filepath2 = [(PPSRequestDispatcher *)self filepath];
    v12 = [v10 getMetadataHistoryForFilepath:filepath2 subsystem:subsystemCopy category:categoryCopy];

    v13 = [v12 count] != 0;
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v14 = [MEMORY[0x277D3A120] getMetadataForSubsystem:subsystemCopy category:categoryCopy];
    v13 = v14 != 0;
  }

  return !v13;
}

- (void)_executeRequest:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "Requested data source: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_executeRequest:(uint64_t)a1 withError:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "Requested data path: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_executeRequest:(void *)a1 withError:(NSObject *)a2 .cold.3(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 metrics];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "SELECT metrics: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end