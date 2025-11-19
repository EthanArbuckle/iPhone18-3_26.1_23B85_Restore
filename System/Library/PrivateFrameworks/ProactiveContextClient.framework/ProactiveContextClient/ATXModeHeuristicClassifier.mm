@interface ATXModeHeuristicClassifier
- (ATXModeClassifierClientModelDelegate)delegate;
- (ATXModeHeuristicClassifier)initWithConfiguredModeService:(id)a3 locationManager:(id)a4 miloProvider:(id)a5;
- (ATXModeHeuristicClassifier)initWithFeaturizers:(id)a3 minUpdateInterval:(double)a4 configuredModeService:(id)a5;
- (BOOL)_isUserWorkingFromHomeWithAggregateFeatures:(id)a3;
- (id)_triggersForMode:(int)a3 fromAggregateFeatures:(id)a4;
- (id)currentFeaturesInDictionary;
- (int)_originForMode:(int)a3 fromAggregateFeatures:(id)a4;
- (int)_predictModeWithFeature:(id)a3;
- (int)currentMode;
- (void)_currentModeUUID:(id *)a3 userModeName:(id *)a4 modeType:(int *)a5 confidenceScore:(double *)a6 origin:(int *)a7 originBundleId:(id *)a8 serializedTrigger:(id *)a9 allowsSmartEntry:(BOOL *)a10 guardedData:(id)a11;
- (void)_requestFeaturesFromAllFeaturizersAndUpdate;
- (void)_updateIfNeededWithGuardedData:(id)a3;
- (void)_updateWithGuardedData:(id)a3;
- (void)currentModeUUID:(id *)a3 userModeName:(id *)a4 modeType:(int *)a5 confidenceScore:(double *)a6 origin:(int *)a7 originBundleId:(id *)a8 serializedTrigger:(id *)a9 allowsSmartEntry:(BOOL *)a10;
- (void)dealloc;
- (void)featurizer:(id)a3 didUpdateFeatures:(id)a4;
- (void)reset;
- (void)updateWithFeatureSet:(id)a3 immediately:(BOOL)a4 reply:(id)a5;
@end

@implementation ATXModeHeuristicClassifier

- (ATXModeHeuristicClassifier)initWithConfiguredModeService:(id)a3 locationManager:(id)a4 miloProvider:(id)a5
{
  v27[12] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v26 = objc_opt_new();
  v27[0] = v26;
  v25 = objc_opt_new();
  v27[1] = v25;
  v24 = objc_opt_new();
  v27[2] = v24;
  v22 = objc_opt_new();
  v27[3] = v22;
  v21 = objc_opt_new();
  v27[4] = v21;
  v10 = [[ATXModeCalendarFeaturizer alloc] initWithLocationManager:v8 andMiloProvider:v7];

  v27[5] = v10;
  v11 = objc_opt_new();
  v27[6] = v11;
  v12 = objc_opt_new();
  v27[7] = v12;
  v13 = objc_opt_new();
  v27[8] = v13;
  v14 = objc_opt_new();
  v27[9] = v14;
  v15 = objc_opt_new();
  v27[10] = v15;
  v16 = [[ATXModeMicrolocationFeaturizer alloc] initWithMiloProvider:v7];

  v27[11] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:12];
  v18 = [(ATXModeHeuristicClassifier *)self initWithFeaturizers:v17 minUpdateInterval:v9 configuredModeService:15.0];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (ATXModeHeuristicClassifier)initWithFeaturizers:(id)a3 minUpdateInterval:(double)a4 configuredModeService:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v47.receiver = self;
  v47.super_class = ATXModeHeuristicClassifier;
  v11 = [(ATXModeHeuristicClassifier *)&v47 init];
  if (v11)
  {
    if ([MEMORY[0x277D42598] isClassCLocked])
    {
      [ATXModeHeuristicClassifier initWithFeaturizers:a2 minUpdateInterval:v11 configuredModeService:?];
    }

    v12 = [v9 copy];
    featurizers = v11->_featurizers;
    v11->_featurizers = v12;

    v11->_minUpdateInterval = a4;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = v15;
    v17 = [v15 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    queue = v11->_queue;
    v11->_queue = v19;

    objc_storeStrong(&v11->_modeService, a5);
    v21 = objc_opt_new();
    *(v21 + 32) = -1;
    v22 = objc_opt_new();
    v23 = *(v21 + 8);
    *(v21 + 8) = v22;

    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v25 = *(v21 + 24);
    *(v21 + 24) = v24;

    v26 = [objc_alloc(MEMORY[0x277D42610]) initWithGuardedData:v21 serialQueue:v11->_queue];
    lock = v11->_lock;
    v11->_lock = v26;

    objc_initWeak(&location, v11);
    v28 = [ATXModeScheduler alloc];
    v29 = v11->_queue;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __90__ATXModeHeuristicClassifier_initWithFeaturizers_minUpdateInterval_configuredModeService___block_invoke;
    v44[3] = &unk_279AB7B90;
    objc_copyWeak(&v45, &location);
    v30 = [(ATXModeScheduler *)v28 initWithQueue:v29 operationBlock:v44 andLeeway:5.0];
    scheduler = v11->_scheduler;
    v11->_scheduler = v30;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v11->_featurizers;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v33)
    {
      v34 = *v41;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v41 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v40 + 1) + 8 * i);
          [v36 setDelegate:{v11, v40}];
          [v36 beginListening];
        }

        v33 = [(NSArray *)v32 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v33);
    }

    [(ATXModeHeuristicClassifier *)v11 _requestFeaturesFromAllFeaturizersAndUpdate];
    v37 = __atxlog_handle_modes();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [ATXModeHeuristicClassifier initWithFeaturizers:v37 minUpdateInterval:? configuredModeService:?];
    }

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v11;
}

void __90__ATXModeHeuristicClassifier_initWithFeaturizers_minUpdateInterval_configuredModeService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __90__ATXModeHeuristicClassifier_initWithFeaturizers_minUpdateInterval_configuredModeService___block_invoke_2;
    v4[3] = &unk_279AB8AE8;
    v5 = WeakRetained;
    [v3 runAsyncWithLockAcquired:v4];
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_featurizers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) stopListening];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = ATXModeHeuristicClassifier;
  [(ATXModeHeuristicClassifier *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestFeaturesFromAllFeaturizersAndUpdate
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__ATXModeHeuristicClassifier__requestFeaturesFromAllFeaturizersAndUpdate__block_invoke;
  v3[3] = &unk_279AB8AE8;
  v3[4] = self;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v3];
}

void __73__ATXModeHeuristicClassifier__requestFeaturesFromAllFeaturizersAndUpdate__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(v3 + 1);
  *(v3 + 1) = v4;

  [*(v3 + 3) removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(*(a1 + 32) + 24);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) provideFeatures];
        if (v11)
        {
          [*(v3 + 3) addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) _updateIfNeededWithGuardedData:v3];
  v12 = *(v3 + 2);
  *(v3 + 2) = 0;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateIfNeededWithGuardedData:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5[3] count];
    *buf = 67109120;
    LODWORD(v28) = v7;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "ATXModeHeuristicClassifier update with %d feature sets in buffer", buf, 8u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5[3];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v5[1] mergeWithFeatures:{*(*(&v23 + 1) + 8 * v12++), v23}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [(ATXModeHeuristicClassifier *)self _predictModeWithFeature:v5[1]];
  v15 = __atxlog_handle_modes();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = NSStringFromSelector(a2);
    v19 = BMUserFocusInferredModeTypeAsString();
    *buf = 138412802;
    v28 = v16;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_260C9F000, v15, OS_LOG_TYPE_DEFAULT, "[%@][%@] Predicted mode: %@", buf, 0x20u);
  }

  if (v14 != *(v5 + 8))
  {
    *(v5 + 8) = v14;
    [(ATXModeHeuristicClassifier *)self _updateWithGuardedData:v5];
  }

  v20 = v5[2];
  v5[2] = v13;
  v21 = v13;

  [v5[3] removeAllObjects];
  [(ATXModeScheduler *)self->_scheduler cancelPendingOperation];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_triggersForMode:(int)a3 fromAggregateFeatures:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  v8 = a3 - 1;
  v9 = 0;
  switch(v8)
  {
    case 0:
    case 1:
    case 9:
    case 10:
    case 11:
    case 13:
    case 16:
      goto LABEL_24;
    case 2:
      v10 = [[ATXLocationEnteredTrigger alloc] initWithLocationIdentifier:0 namedLOI:2];
      v19 = v10;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v19;
      goto LABEL_22;
    case 3:
      if ([v6 BOOLValueForFeatureType:2])
      {
        v10 = [[ATXLocationEnteredTrigger alloc] initWithLocationIdentifier:0 namedLOI:1];
        v18 = v10;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v18;
      }

      else
      {
        if (([v7 BOOLValueForFeatureType:26] & 1) == 0 && !-[ATXModeHeuristicClassifier _isUserWorkingFromHomeWithAggregateFeatures:](self, "_isUserWorkingFromHomeWithAggregateFeatures:", v7))
        {
LABEL_20:
          v9 = 0;
          goto LABEL_24;
        }

        v10 = objc_opt_new();
        v17 = v10;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v17;
      }

LABEL_22:
      v9 = [v11 arrayWithObjects:v12 count:{1, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26}];
LABEL_23:

LABEL_24:
      v13 = *MEMORY[0x277D85DE8];

      return v9;
    case 4:
      v10 = objc_opt_new();
      v24 = v10;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v24;
      goto LABEL_22;
    case 5:
      if (![v6 BOOLValueForFeatureType:4])
      {
        goto LABEL_20;
      }

      v10 = objc_opt_new();
      v25 = v10;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v25;
      goto LABEL_22;
    case 6:
      v10 = objc_opt_new();
      v20 = v10;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v20;
      goto LABEL_22;
    case 7:
      if ([v6 BOOLValueForFeatureType:19])
      {
        v10 = objc_opt_new();
        v23 = v10;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v23;
      }

      else
      {
        v10 = [[ATXAppCategoryTrigger alloc] initWithiTunesCategoryId:6014];
        v22 = v10;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v22;
      }

      goto LABEL_22;
    case 8:
      v10 = [[ATXAppCategoryTrigger alloc] initWithiTunesCategoryId:6018];
      v21 = v10;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v21;
      goto LABEL_22;
    case 12:
    case 15:
      v10 = objc_opt_new();
      v16 = v10;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v16;
      goto LABEL_22;
    case 14:
      v10 = objc_opt_new();
      v15 = v10;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v15;
      goto LABEL_22;
    default:
      v10 = __atxlog_handle_modes();
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_FAULT))
      {
        [ATXModeHeuristicClassifier _triggersForMode:&v10->super fromAggregateFeatures:?];
      }

      v9 = 0;
      goto LABEL_23;
  }
}

- (BOOL)_isUserWorkingFromHomeWithAggregateFeatures:(id)a3
{
  v3 = a3;
  if ([v3 BOOLValueForFeatureType:1] && objc_msgSend(v3, "BOOLValueForFeatureType:", 14))
  {
    v4 = [v3 BOOLValueForFeatureType:25];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateWithGuardedData:(id)a3
{
  v15 = 0;
  v14 = 0.0;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [(ATXModeHeuristicClassifier *)self _currentModeUUID:&v12 userModeName:&v11 modeType:&v15 confidenceScore:&v14 origin:&v13 originBundleId:&v10 serializedTrigger:&v9 allowsSmartEntry:0 guardedData:a3];
  v4 = v12;
  v5 = v11;
  v6 = v10;
  v7 = v9;
  v8 = [(ATXModeHeuristicClassifier *)self delegate];
  [v8 clientModel:self didUpdatePredictionWithUUID:v4 userModeName:v5 modeType:v15 confidenceScore:v13 modeOrigin:v6 originBundleId:v14 originAnchorType:0 serializedTriggers:v7];
}

- (void)currentModeUUID:(id *)a3 userModeName:(id *)a4 modeType:(int *)a5 confidenceScore:(double *)a6 origin:(int *)a7 originBundleId:(id *)a8 serializedTrigger:(id *)a9 allowsSmartEntry:(BOOL *)a10
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__14;
  v37 = __Block_byref_object_dispose__14;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__14;
  v31 = __Block_byref_object_dispose__14;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__14;
  v25 = __Block_byref_object_dispose__14;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __141__ATXModeHeuristicClassifier_currentModeUUID_userModeName_modeType_confidenceScore_origin_originBundleId_serializedTrigger_allowsSmartEntry___block_invoke;
  v14[3] = &unk_279AB8B10;
  v14[4] = self;
  v14[5] = &v33;
  v14[10] = a6;
  v14[11] = a7;
  v14[6] = &v21;
  v14[7] = &v27;
  v14[8] = &v15;
  v14[9] = a5;
  v14[12] = a10;
  [(_PASQueueLock *)lock runWithLockAcquired:v14];
  if (a3)
  {
    *a3 = v34[5];
  }

  if (a4)
  {
    *a4 = v22[5];
  }

  if (a8)
  {
    *a8 = v28[5];
  }

  if (a9)
  {
    *a9 = v16[5];
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
}

void __141__ATXModeHeuristicClassifier_currentModeUUID_userModeName_modeType_confidenceScore_origin_originBundleId_serializedTrigger_allowsSmartEntry___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  v14 = *(v3 + 40);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  v6 = a1[10];
  v7 = a1[11];
  v8 = *(a1[7] + 8);
  v12 = *(v8 + 40);
  obj = v5;
  v9 = a1[9];
  v10 = *(a1[8] + 8);
  v11 = *(v10 + 40);
  [v2 _currentModeUUID:&v14 userModeName:&obj modeType:v9 confidenceScore:v6 origin:v7 originBundleId:&v12 serializedTrigger:&v11 allowsSmartEntry:a1[12] guardedData:a2];
  objc_storeStrong((v3 + 40), v14);
  objc_storeStrong((v4 + 40), obj);
  objc_storeStrong((v8 + 40), v12);
  objc_storeStrong((v10 + 40), v11);
}

- (void)_currentModeUUID:(id *)a3 userModeName:(id *)a4 modeType:(int *)a5 confidenceScore:(double *)a6 origin:(int *)a7 originBundleId:(id *)a8 serializedTrigger:(id *)a9 allowsSmartEntry:(BOOL *)a10 guardedData:(id)a11
{
  v44 = *MEMORY[0x277D85DE8];
  v17 = a11;
  v18 = v17[8];
  v39 = 0;
  if (v18 != 2)
  {
    v33 = a6;
    v34 = a7;
    v35 = a8;
    v21 = BMUserFocusInferredModeTypeToActivity(v18);
    modeService = self->_modeService;
    v37 = 0;
    v38 = 0;
    v23 = [(ATXConfiguredModeService *)modeService isActivityTypeConfigured:v21 uuid:&v38 allowsSmartEntry:&v39 userModeName:&v37];
    v20 = v38;
    v19 = v37;
    v24 = __atxlog_handle_modes();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (!v25)
      {
        goto LABEL_10;
      }

      *buf = 134218242;
      v41 = v21;
      v42 = 2114;
      v43 = v20;
      v26 = "Found configured activity for type: %ld uuid: %{public}@";
      v27 = v24;
      v28 = 22;
    }

    else
    {
      if (!v25)
      {
        goto LABEL_10;
      }

      *buf = 134217984;
      v41 = v21;
      v26 = "No configured activity for type: %ld, making generic suggestion";
      v27 = v24;
      v28 = 12;
    }

    _os_log_impl(&dword_260C9F000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
LABEL_10:

    a7 = v34;
    a8 = v35;
    a6 = v33;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v19 = 0;
  v20 = 0;
  if (a3)
  {
LABEL_11:
    v29 = v20;
    *a3 = v20;
  }

LABEL_12:
  if (a4)
  {
    v30 = v19;
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v18;
  }

  if (a6)
  {
    [(ATXModeHeuristicClassifier *)self _confidenceScoreForMode:v18 fromAggregateFeatures:*(v17 + 1)];
    *a6 = v31;
  }

  if (a7)
  {
    *a7 = [(ATXModeHeuristicClassifier *)self _originForMode:v18 fromAggregateFeatures:*(v17 + 1)];
  }

  if (a8)
  {
    *a8 = [*(v17 + 1) stringForFeatureType:16];
  }

  if (a9)
  {
    *a9 = [(ATXModeHeuristicClassifier *)self _serializedTriggersForMode:v18 fromAggregateFeatures:*(v17 + 1)];
  }

  if (a10)
  {
    *a10 = v39;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (int)_originForMode:(int)a3 fromAggregateFeatures:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = a3 - 1;
  v9 = 0;
  switch(v8)
  {
    case 0:
    case 9:
    case 10:
    case 11:
    case 13:
    case 16:
      goto LABEL_30;
    case 1:
      v9 = 1;
      goto LABEL_30;
    case 2:
      v11 = [v6 BOOLValueForFeatureType:1] == 0;
      v12 = 5;
      goto LABEL_27;
    case 3:
      if ([v6 BOOLValueForFeatureType:2] & 1) != 0 || (objc_msgSend(v7, "BOOLValueForFeatureType:", 23))
      {
        goto LABEL_32;
      }

      if ([v7 BOOLValueForFeatureType:26] & 1) != 0 || (objc_msgSend(v7, "BOOLValueForFeatureType:", 27))
      {
        v9 = 10;
        goto LABEL_30;
      }

      v11 = ![(ATXModeHeuristicClassifier *)self _isUserWorkingFromHomeWithAggregateFeatures:v7];
      v12 = 9;
      goto LABEL_27;
    case 4:
      if ([v6 BOOLValueForFeatureType:3])
      {
        v9 = 8;
        goto LABEL_30;
      }

      if ([v7 BOOLValueForFeatureType:22])
      {
LABEL_32:
        v9 = 5;
        goto LABEL_30;
      }

      v11 = [v7 BOOLValueForFeatureType:24] == 0;
      v12 = 16;
      goto LABEL_27;
    case 5:
      if ([v6 BOOLValueForFeatureType:4])
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_30;
    case 6:
      v11 = [v6 BOOLValueForFeatureType:7] == 0;
      v12 = 6;
      goto LABEL_27;
    case 7:
      if ([v6 BOOLValueForFeatureType:19])
      {
        v9 = 15;
      }

      else
      {
        v6 = v7;
        v14 = 8;
LABEL_26:
        v11 = [v6 BOOLValueForFeatureType:v14] == 0;
        v12 = 7;
LABEL_27:
        if (v11)
        {
          v9 = 0;
        }

        else
        {
          v9 = v12;
        }
      }

LABEL_30:

      return v9;
    case 8:
      v14 = 15;
      goto LABEL_26;
    case 12:
      v10 = 17;
      goto LABEL_8;
    case 14:
      v11 = [v6 BOOLValueForFeatureType:18] == 0;
      v12 = 14;
      goto LABEL_27;
    case 15:
      v10 = 20;
LABEL_8:
      v11 = [v6 BOOLValueForFeatureType:v10] == 0;
      v12 = 13;
      goto LABEL_27;
    default:
      v13 = __atxlog_handle_modes();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [ATXModeHeuristicClassifier _triggersForMode:v13 fromAggregateFeatures:?];
      }

      v9 = 0;
      goto LABEL_30;
  }
}

- (int)_predictModeWithFeature:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeHeuristicClassifier predict mode with features: %@", &v9, 0xCu);
  }

  v6 = 8;
  if (([v4 BOOLValueForFeatureType:8] & 1) == 0 && (objc_msgSend(v4, "BOOLValueForFeatureType:", 19) & 1) == 0)
  {
    if ([v4 BOOLValueForFeatureType:15])
    {
      v6 = 9;
    }

    else if ([v4 BOOLValueForFeatureType:3])
    {
      v6 = 5;
    }

    else if ([v4 BOOLValueForFeatureType:4])
    {
      v6 = 6;
    }

    else if ([v4 BOOLValueForFeatureType:17])
    {
      if ([v4 BOOLValueForFeatureType:20])
      {
        v6 = 16;
      }

      else
      {
        v6 = 13;
      }
    }

    else if ([v4 BOOLValueForFeatureType:18])
    {
      v6 = 15;
    }

    else if (([v4 BOOLValueForFeatureType:2] & 1) != 0 || (objc_msgSend(v4, "BOOLValueForFeatureType:", 23) & 1) != 0 || (objc_msgSend(v4, "BOOLValueForFeatureType:", 26) & 1) != 0 || (objc_msgSend(v4, "BOOLValueForFeatureType:", 27) & 1) != 0 || (objc_msgSend(v4, "BOOLValueForFeatureType:", 28) & 1) != 0 || -[ATXModeHeuristicClassifier _isUserWorkingFromHomeWithAggregateFeatures:](self, "_isUserWorkingFromHomeWithAggregateFeatures:", v4))
    {
      v6 = 4;
    }

    else
    {
      v6 = 7;
      if (([v4 BOOLValueForFeatureType:7] & 1) == 0)
      {
        if ([v4 BOOLValueForFeatureType:1])
        {
          v6 = 3;
        }

        else
        {
          v6 = 5;
          if (([v4 BOOLValueForFeatureType:22] & 1) == 0)
          {
            if ([v4 BOOLValueForFeatureType:24])
            {
              v6 = 5;
            }

            else
            {
              v6 = 2;
            }
          }
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)currentMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__ATXModeHeuristicClassifier_currentMode__block_invoke;
  v5[3] = &unk_279AB8B38;
  v5[4] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)currentFeaturesInDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ATXModeHeuristicClassifier_currentFeaturesInDictionary__block_invoke;
  v5[3] = &unk_279AB8B38;
  v5[4] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __57__ATXModeHeuristicClassifier_currentFeaturesInDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) dictionaryRepresentation];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)updateWithFeatureSet:(id)a3 immediately:(BOOL)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    lock = self->_lock;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__ATXModeHeuristicClassifier_updateWithFeatureSet_immediately_reply___block_invoke;
    v12[3] = &unk_279AB8B60;
    v16 = a4;
    v13 = v8;
    v14 = self;
    v15 = v10;
    [(_PASQueueLock *)lock runAsyncWithLockAcquired:v12];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __69__ATXModeHeuristicClassifier_updateWithFeatureSet_immediately_reply___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  [v10[3] addObject:*(a1 + 32)];
  v3 = v10;
  if ((*(a1 + 56) & 1) != 0 || !v10[2] || (v4 = [v10[3] count], v3 = v10, v4 >= 0x64))
  {
    v5 = *(a1 + 40);
LABEL_5:
    [v5 _updateIfNeededWithGuardedData:v3];
    v6 = 0;
    goto LABEL_6;
  }

  v8 = *(*(a1 + 40) + 16);
  [v10[2] timeIntervalSinceNow];
  v5 = *(a1 + 40);
  if (v8 + v9 <= 0.0)
  {
    v3 = v10;
    goto LABEL_5;
  }

  v6 = [v5[4] runAfterDelaySecondsIfNotYetScheduled:?];
LABEL_6:
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)reset
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__ATXModeHeuristicClassifier_reset__block_invoke;
  v3[3] = &unk_279AB8AE8;
  v3[4] = self;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v3];
}

void __35__ATXModeHeuristicClassifier_reset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(v3 + 1);
  *(v3 + 1) = v4;

  [*(v3 + 3) removeAllObjects];
  [*(a1 + 32) _updateIfNeededWithGuardedData:v3];
  v6 = *(v3 + 2);
  *(v3 + 2) = 0;
}

- (void)featurizer:(id)a3 didUpdateFeatures:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_modes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_260C9F000, v8, OS_LOG_TYPE_DEFAULT, "ATXModeHeuristicClassifier: %@ updated its features", &v12, 0xCu);
  }

  [(ATXModeHeuristicClassifier *)self updateWithFeatureSet:v7];
  v11 = *MEMORY[0x277D85DE8];
}

- (ATXModeClassifierClientModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFeaturizers:(uint64_t)a1 minUpdateInterval:(uint64_t)a2 configuredModeService:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXModeHeuristicClassifier.m" lineNumber:121 description:@"ATXModeHeuristicClassifier must not be initialized when the device is Class C locked"];
}

- (void)_triggersForMode:(int)a1 fromAggregateFeatures:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_260C9F000, a2, OS_LOG_TYPE_FAULT, "BMUserFocusInferredMode: %lu not handled in switch statement", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end