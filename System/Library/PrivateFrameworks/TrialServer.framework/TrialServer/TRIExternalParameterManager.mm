@interface TRIExternalParameterManager
- (NSDate)siriDeviceAggregationIdRotationDate;
- (TRIExternalParameterManager)init;
- (TRIExternalParameterManager)initWithProvider:(id)provider paths:(id)paths;
- (id)_readParametersFromFile;
- (id)_readSiriDeviceAggregationIdRotationDateFromEvent:(id)event;
- (id)dictionary;
- (void)_fetchSiriDeviceAggregationIdRotationDate;
- (void)_writeParametersToFile;
@end

@implementation TRIExternalParameterManager

- (TRIExternalParameterManager)init
{
  v3 = objc_alloc_init(TRIBiomeDataStreamProvider);
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v5 = [(TRIExternalParameterManager *)self initWithProvider:v3 paths:mEMORY[0x277D737E0]];

  return v5;
}

- (TRIExternalParameterManager)initWithProvider:(id)provider paths:(id)paths
{
  v29 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  pathsCopy = paths;
  v26.receiver = self;
  v26.super_class = TRIExternalParameterManager;
  v9 = [(TRIExternalParameterManager *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paramProvider, provider);
    externalParametersFile = [pathsCopy externalParametersFile];
    plistPath = v10->_plistPath;
    v10->_plistPath = externalParametersFile;

    v13 = objc_opt_new();
    v14 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v13];
    lock = v10->_lock;
    v10->_lock = v14;

    _readParametersFromFile = [(TRIExternalParameterManager *)v10 _readParametersFromFile];
    v17 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = _readParametersFromFile;
      _os_log_debug_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEBUG, "Reading params from cache: %@", buf, 0xCu);
    }

    v18 = v10->_lock;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __54__TRIExternalParameterManager_initWithProvider_paths___block_invoke;
    v24[3] = &unk_279DE11C8;
    v25 = _readParametersFromFile;
    v19 = _readParametersFromFile;
    [(_PASLock *)v18 runWithLockAcquired:v24];
    [(TRIExternalParameterManager *)v10 _fetchSiriDeviceAggregationIdRotationDate];
    v20 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.ExternalParameterChangeQueue" qosClass:17];
    dispatchQueue = v10->_dispatchQueue;
    v10->_dispatchQueue = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

void __54__TRIExternalParameterManager_initWithProvider_paths___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"SiriDeviceAggregationIdRotationDate"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = MEMORY[0x277CBEAA8];
      [v3 doubleValue];
      v5 = [v4 dateWithTimeIntervalSince1970:?];
      v6 = v7[1];
      v7[1] = v5;
    }
  }
}

- (id)dictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__TRIExternalParameterManager_dictionary__block_invoke;
  v7[3] = &unk_279DE11C8;
  v5 = v3;
  v8 = v5;
  [(_PASLock *)lock runWithLockAcquired:v7];

  return v5;
}

void __41__TRIExternalParameterManager_dictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    [v3 timeIntervalSince1970];
    v5 = [v4 numberWithDouble:?];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"SiriDeviceAggregationIdRotationDate"];
  }
}

- (NSDate)siriDeviceAggregationIdRotationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__TRIExternalParameterManager_siriDeviceAggregationIdRotationDate__block_invoke;
  v5[3] = &unk_279DE11F0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_fetchSiriDeviceAggregationIdRotationDate
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__TRIExternalParameterManager__fetchSiriDeviceAggregationIdRotationDate__block_invoke;
  v6[3] = &unk_279DE1240;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v3 = MEMORY[0x2743948D0](v6);
  paramProvider = self->_paramProvider;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__TRIExternalParameterManager__fetchSiriDeviceAggregationIdRotationDate__block_invoke_35;
  v5[3] = &unk_279DE1268;
  v5[4] = self;
  [(TRIExternalParameterProviding *)paramProvider readLastDataStreamEventForIdentifier:@"Siri.AnalyticsIdentifiers.UserAggregationId" withFilter:v5 eventHandler:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __72__TRIExternalParameterManager__fetchSiriDeviceAggregationIdRotationDate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v6)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v6;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Error reading Siri.AnalyticsIdentifiers.UserAggregationId data stream %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *(WeakRetained + 2);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__TRIExternalParameterManager__fetchSiriDeviceAggregationIdRotationDate__block_invoke_33;
    v12[3] = &unk_279DE1218;
    v12[4] = *(a1 + 32);
    v13 = v5;
    v14 = &v15;
    [v10 runWithLockAcquired:v12];
    if (*(v16 + 24) == 1)
    {
      [v8 _writeParametersToFile];
      [v8 _updateSystemInfo];
    }
  }

  _Block_object_dispose(&v15, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void __72__TRIExternalParameterManager__fetchSiriDeviceAggregationIdRotationDate__block_invoke_33(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  v5 = [*(a1 + 32) _readSiriDeviceAggregationIdRotationDateFromEvent:*(a1 + 40)];
  if (v5)
  {
    objc_storeStrong(v3 + 1, v5);
    *(*(*(a1 + 48) + 8) + 24) = [v4 isEqualToDate:v5] ^ 1;
  }

  else
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "UserAggregationId rotation date is null, eventBody: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

BOOL __72__TRIExternalParameterManager__fetchSiriDeviceAggregationIdRotationDate__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 objectForKeyedSubscript:@"effectiveFrom"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [v4 objectForKeyedSubscript:@"validityDays"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  [v8 timeIntervalSince1970];
  v10 = v9;

  v11 = [v4 objectForKeyedSubscript:@"effectiveFrom"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [*(a1 + 32) _readSiriDeviceAggregationIdRotationDateFromEvent:v4];
  [v14 timeIntervalSince1970];
  v16 = v15;

  v17 = v10 < v16 && v10 >= v13;
LABEL_9:

  return v17;
}

- (id)_readSiriDeviceAggregationIdRotationDateFromEvent:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = eventCopy;
  if (!eventCopy)
  {
    v17 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    LOWORD(v23) = 0;
    v18 = "Invalid event body for Siri.AnalyticsIdentifiers.UserAggregationId data stream";
    v19 = v17;
    v20 = 2;
LABEL_14:
    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, v18, &v23, v20);
    goto LABEL_9;
  }

  v5 = [eventCopy objectForKeyedSubscript:@"effectiveFrom"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:@"validityDays"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v4 objectForKeyedSubscript:@"effectiveFrom"];
      [v8 doubleValue];
      v10 = v9;

      v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
      v12 = [v4 objectForKeyedSubscript:@"validityDays"];
      integerValue = [v12 integerValue];
      v14 = objc_opt_new();
      [v14 setDay:integerValue];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v16 = [currentCalendar dateByAddingComponents:v14 toDate:v11 options:0];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v17 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v23 = 138412290;
    v24 = v4;
    v18 = "Invalid type for Siri.AnalyticsIdentifiers.UserAggregationId event %@";
    v19 = v17;
    v20 = 12;
    goto LABEL_14;
  }

LABEL_9:

  v16 = 0;
LABEL_10:

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_readParametersFromFile
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_plistPath isDirectory:0];
  v12 = 0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v2 error:&v12];
  v4 = v12;
  v5 = v4;
  if (!v4)
  {
    v9 = v3;
    goto LABEL_11;
  }

  domain = [v4 domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

LABEL_8:
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v2;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "failed to parse external parameter dictionary from file: %@ (%@)", buf, 0x16u);
    }

    goto LABEL_10;
  }

  code = [v5 code];

  if (code != 260)
  {
    goto LABEL_8;
  }

  v8 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "No cached external parameters.", buf, 2u);
  }

LABEL_10:

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_writeParametersToFile
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCAC58];
  dictionary = [(TRIExternalParameterManager *)self dictionary];
  v6 = [v4 dataWithPropertyList:dictionary format:100 options:0 error:0];

  plistPath = self->_plistPath;
  v13 = 0;
  v8 = [v6 writeToFile:plistPath options:1 error:&v13];
  v9 = v13;
  if ((v8 & 1) == 0)
  {
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_plistPath;
      *buf = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "unable to write external parameters to file %@ -- %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v3);
  v11 = *MEMORY[0x277D85DE8];
}

@end