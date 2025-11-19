@interface _PSFeatureCache
- (BOOL)isCacheEmpty;
- (BOOL)isDurableFeaturesSetAdmissible;
- (_PSFeatureCache)initWithPredictionContext:(id)a3 candidates:(id)a4 caches:(id)a5 store:(id)a6;
- (id)addSelfToCandidates:(id)a3;
- (id)computeEphemeralFeaturesWithCandidates:(id)a3 context:(id)a4;
- (id)deviceIdentifier;
- (id)fetchFeaturesWithCandidates:(id)a3 context:(id)a4;
- (id)getFeatureValueForLabeledDataStore:(id)a3;
- (id)getHistogramFeatureData;
- (id)privacyMitigateFeatures:(id)a3;
- (void)dealloc;
- (void)invalidateAndRefreshCache;
- (void)refreshDurableCachesWithCandidates:(id)a3;
- (void)replaceEphemeralFeaturesWithCache:(id)a3;
- (void)saveToVirtualStore;
- (void)setFeatureValueForFeatureName:(int)a3 featureValue:(id)a4 candidate:(id)a5 bundleID:(id)a6;
- (void)setPredictionContextWithContext:(id)a3;
@end

@implementation _PSFeatureCache

- (_PSFeatureCache)initWithPredictionContext:(id)a3 candidates:(id)a4 caches:(id)a5 store:(id)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v46.receiver = self;
  v46.super_class = _PSFeatureCache;
  v15 = [(_PSFeatureCache *)&v46 init];
  if (v15)
  {
    v51.__sig = 0;
    *v51.__opaque = 0;
    pthread_mutexattr_init(&v51);
    pthread_mutexattr_settype(&v51, 2);
    pthread_mutex_init((v15 + 56), &v51);
    pthread_mutexattr_destroy(&v51);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v16 = getLCFFeatureStoreClass_softClass;
    v50 = getLCFFeatureStoreClass_softClass;
    if (!getLCFFeatureStoreClass_softClass)
    {
      v51.__sig = MEMORY[0x1E69E9820];
      *v51.__opaque = 3221225472;
      v52 = __getLCFFeatureStoreClass_block_invoke;
      v53 = &unk_1E7C23BF0;
      v54 = &v47;
      __getLCFFeatureStoreClass_block_invoke(&v51);
      v16 = v48[3];
    }

    v17 = v16;
    _Block_object_dispose(&v47, 8);
    v18 = [v16 alloc];
    v19 = [v18 init:lcfKey url:0 useSqlite:0];
    v20 = *(v15 + 20);
    *(v15 + 20) = v19;

    v21 = [[_PSShareSheetEphemeralFeatureManager alloc] initWithContext:v11 candidates:v12 caches:v13 store:v14];
    v22 = *(v15 + 22);
    *(v15 + 22) = v21;

    v23 = [v15 addSelfToCandidates:v12];
    v24 = *(v15 + 2);
    *(v15 + 2) = v23;

    objc_storeStrong(v15 + 5, a5);
    objc_storeStrong(v15 + 1, a3);
    v25 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"com.apple.coreduetd.psfeaturecache.queue" qosClass:17];
    v26 = *(v15 + 15);
    *(v15 + 15) = v25;

    v27 = objc_alloc(MEMORY[0x1E695E000]);
    v28 = +[_PSConstants psDefaultsDomain];
    v29 = [v27 initWithSuiteName:v28];
    v30 = *(v15 + 17);
    *(v15 + 17) = v29;

    v31 = BiomeLibrary();
    v32 = [v31 MLSE];
    v33 = [v32 ShareSheet];
    v34 = [v33 VirtualFeatureStore];
    v35 = [v34 source];
    v36 = *(v15 + 21);
    *(v15 + 21) = v35;

    *(v15 + 18) = 3600000000000;
    v37 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v15 + 15));
    v38 = *(v15 + 16);
    *(v15 + 16) = v37;

    *(v15 + 19) = 60000000000;
    v39 = *(v15 + 16);
    v40 = dispatch_time(0, 0);
    dispatch_source_set_timer(v39, v40, *(v15 + 18), *(v15 + 19));
    objc_initWeak(&v51, v15);
    v41 = *(v15 + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69___PSFeatureCache_initWithPredictionContext_candidates_caches_store___block_invoke;
    handler[3] = &unk_1E7C25710;
    objc_copyWeak(&v45, &v51);
    dispatch_source_set_event_handler(v41, handler);
    dispatch_resume(*(v15 + 16));
    [v15 invalidateAndRefreshCache];
    objc_destroyWeak(&v45);
    objc_destroyWeak(&v51);
  }

  v42 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = _PSFeatureCache;
  [(_PSFeatureCache *)&v3 dealloc];
}

- (id)addSelfToCandidates:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = +[_PSCandidate selfCandidate];
  [v3 addObject:v4];

  return v3;
}

- (void)setPredictionContextWithContext:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  context = self->_context;
  self->_context = v4;

  pthread_mutex_unlock(&self->_lock);
}

- (id)computeEphemeralFeaturesWithCandidates:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(_PSShareSheetEphemeralFeatureManager *)self->_ephemeralFeatureManager setCandidates:v7];
  [(_PSShareSheetEphemeralFeatureManager *)self->_ephemeralFeatureManager setContext:v6];

  cache = self->_cache;
  self->_cache = 0;

  histogramFeatureData = self->_histogramFeatureData;
  self->_histogramFeatureData = 0;

  [(_PSFeatureCache *)self refreshDurableCachesWithCandidates:v7];
  v10 = [(_PSShareSheetEphemeralFeatureManager *)self->_ephemeralFeatureManager computeFeaturesWithHistogramFeatures:self->_histogramFeatureData];
  pthread_mutex_unlock(&self->_lock);

  return v10;
}

- (BOOL)isDurableFeaturesSetAdmissible
{
  v2 = objc_alloc_init(MEMORY[0x1E695E000]);
  v3 = [v2 objectForKey:@"beginDurableFeatureComputation"];
  v4 = [v2 objectForKey:@"computeDurableFeatures"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ([v3 timeIntervalSince1970], v8 = v7, objc_msgSend(v5, "timeIntervalSince1970"), v8 >= v9))
  {
    v14 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] now];
    [v10 timeIntervalSince1970];
    v12 = v11;
    [v3 timeIntervalSince1970];
    v14 = vabdd_f64(v12, v13) < 432000.0;
  }

  return v14;
}

- (BOOL)isCacheEmpty
{
  pthread_mutex_lock(&self->_lock);
  v3 = self->_cache == 0;
  pthread_mutex_unlock(&self->_lock);
  return v3;
}

- (void)refreshDurableCachesWithCandidates:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v55 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [(_PSFeatureCache *)self addSelfToCandidates:v4];
  objc_storeStrong(&self->_candidates, v10);
  v50 = v10;
  v11 = [v10 allObjects];
  v12 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_32];

  v13 = objc_alloc(MEMORY[0x1E695DF20]);
  v14 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_38];
  v53 = [v13 initWithObjects:v12 forKeys:v14];

  v15 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "_PSFeatureCache: Refreshing durable features", buf, 2u);
  }

  v16 = self->_cache;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __54___PSFeatureCache_refreshDurableCachesWithCandidates___block_invoke_39;
  v69[3] = &unk_1E7C265A8;
  v17 = v16;
  v70 = v17;
  v71 = self;
  v56 = [v4 _pas_mappedSetWithTransform:v69];
  v18 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSFeatureCacheDurableCachesWithCandidates", " enableTelemetry=YES ", buf, 2u);
  }

  v49 = objc_alloc_init(MEMORY[0x1E695E000]);
  v19 = [v49 objectForKey:@"pruneDurableFeatureStoreBeforeDate"];
  v20 = v19;
  v54 = v9;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [MEMORY[0x1E695DF00] distantPast];
  }

  v51 = v21;
  v22 = v8;

  v23 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v73 = v56;
    _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_DEFAULT, "_PSFeatureCache: candidates to fetch %{private}@", buf, 0xCu);
  }

  v52 = v17;
  if ([v56 count])
  {
    v24 = BiomeLibrary();
    [v24 MLSE];
    v25 = v48 = v4;
    [v25 ShareSheet];
    v26 = v6;
    v28 = v27 = v5;
    v29 = [v28 DurableFeatureStore];

    v5 = v27;
    v6 = v26;
    v17 = v52;

    v30 = [v29 publisher];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __54___PSFeatureCache_refreshDurableCachesWithCandidates___block_invoke_43;
    v66[3] = &unk_1E7C265D0;
    v67 = v51;
    v68 = v56;
    v31 = [v30 filterWithIsIncluded:v66];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __54___PSFeatureCache_refreshDurableCachesWithCandidates___block_invoke_3;
    v57[3] = &unk_1E7C265F8;
    v58 = v53;
    v59 = v5;
    v60 = v52;
    v61 = v6;
    v62 = v7;
    v63 = v55;
    v64 = v22;
    v65 = v54;
    v32 = [v31 sinkWithCompletion:&__block_literal_global_48 receiveInput:v57];

    v4 = v48;
  }

  v33 = [(_PSHistogramFeatureData *)self->_histogramFeatureData cache];

  if (v33)
  {
    v34 = [(_PSHistogramFeatureData *)self->_histogramFeatureData cache];
    [v6 addEntriesFromDictionary:v34];
  }

  v35 = [(_PSHistogramFeatureData *)self->_histogramFeatureData bucketSums];

  if (v35)
  {
    v36 = [(_PSHistogramFeatureData *)self->_histogramFeatureData bucketSums];
    [v7 addEntriesFromDictionary:v36];
  }

  v37 = [(_PSHistogramFeatureData *)self->_histogramFeatureData bucketHasEver];

  if (v37)
  {
    v38 = [(_PSHistogramFeatureData *)self->_histogramFeatureData bucketHasEver];
    [v55 addEntriesFromDictionary:v38];
  }

  v39 = [(_PSHistogramFeatureData *)self->_histogramFeatureData factorToUniqueBucketNames];

  if (v39)
  {
    v40 = [(_PSHistogramFeatureData *)self->_histogramFeatureData factorToUniqueBucketNames];
    [v22 addEntriesFromDictionary:v40];
  }

  v41 = [(_PSHistogramFeatureData *)self->_histogramFeatureData candidateTimeIntervalSums];

  if (v41)
  {
    v42 = [(_PSHistogramFeatureData *)self->_histogramFeatureData candidateTimeIntervalSums];
    [v54 addEntriesFromDictionary:v42];
  }

  v43 = objc_opt_new();
  histogramFeatureData = self->_histogramFeatureData;
  self->_histogramFeatureData = v43;

  [(_PSHistogramFeatureData *)self->_histogramFeatureData setCache:v6];
  [(_PSHistogramFeatureData *)self->_histogramFeatureData setBucketSums:v7];
  [(_PSHistogramFeatureData *)self->_histogramFeatureData setBucketHasEver:v55];
  [(_PSHistogramFeatureData *)self->_histogramFeatureData setFactorToUniqueBucketNames:v22];
  [(_PSHistogramFeatureData *)self->_histogramFeatureData setCandidateTimeIntervalSums:v54];
  if (v17)
  {
    [(NSMutableDictionary *)v17 addEntriesFromDictionary:v5];
  }

  else
  {
    objc_storeStrong(&self->_cache, v5);
  }

  v45 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v45))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v45, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSFeatureCacheDurableCachesWithCandidates", &unk_1B5FD970D, buf, 2u);
  }

  v46 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v46, OS_LOG_TYPE_DEFAULT, "_PSFeatureCache: finished refreshing durable feature cache", buf, 2u);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)invalidateAndRefreshCache
{
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "_PSFeatureCache: Invalidating and refreshing cache", buf, 2u);
  }

  pthread_mutex_lock(&self->_lock);
  dispatch_suspend(self->_timer);
  cache = self->_cache;
  self->_cache = 0;

  histogramFeatureData = self->_histogramFeatureData;
  self->_histogramFeatureData = 0;

  v6 = dispatch_time(0, self->_timeDelay);
  dispatch_source_set_timer(self->_timer, v6, 0xFFFFFFFFFFFFFFFFLL, self->_leeway);
  [(_PSFeatureCache *)self refreshDurableCachesWithCandidates:self->_candidates];
  dispatch_resume(self->_timer);
  pthread_mutex_unlock(&self->_lock);
  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, "_PSFeatureCache: Finished invalidating and refreshing cache", v8, 2u);
  }
}

- (id)fetchFeaturesWithCandidates:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  pthread_mutex_lock(&self->_lock);
  objc_storeStrong(&self->_context, a4);
  v9 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetRefreshDurableCachesWithCandidates", " enableTelemetry=YES ", buf, 2u);
  }

  [(_PSFeatureCache *)self refreshDurableCachesWithCandidates:v8];
  v10 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v10))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetRefreshDurableCachesWithCandidates", &unk_1B5FD970D, v17, 2u);
  }

  v11 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v11))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetReplaceEphemeralFeaturesWithCache", &unk_1B5FD970D, v16, 2u);
  }

  [(_PSFeatureCache *)self replaceEphemeralFeaturesWithCache:self->_cache];
  v12 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetReplaceEphemeralFeaturesWithCache", &unk_1B5FD970D, v15, 2u);
  }

  v13 = [(NSMutableDictionary *)self->_cache copy];
  pthread_mutex_unlock(&self->_lock);

  return v13;
}

- (void)replaceEphemeralFeaturesWithCache:(id)a3
{
  v4 = a3;
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "_PSFeatureCache: replacing ephemeral features", buf, 2u);
  }

  [(_PSShareSheetEphemeralFeatureManager *)self->_ephemeralFeatureManager setCandidates:self->_candidates];
  [(_PSShareSheetEphemeralFeatureManager *)self->_ephemeralFeatureManager setContext:self->_context];
  v6 = [(_PSShareSheetEphemeralFeatureManager *)self->_ephemeralFeatureManager computeFeaturesWithHistogramFeatures:self->_histogramFeatureData];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___PSFeatureCache_replaceEphemeralFeaturesWithCache___block_invoke;
  v9[3] = &unk_1E7C260F0;
  v7 = v4;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  v8 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "_PSFeatureCache: finished replacing ephemeral features", buf, 2u);
  }
}

- (id)getFeatureValueForLabeledDataStore:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = objc_alloc(MEMORY[0x1E698EC88]);
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:0 doubleValuedVectorValue:v3];
  }

  else
  {
    v8 = [v3 hasIntValue];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "intValue")}];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v3 hasDoubleValue];
    if (v10)
    {
      v11 = MEMORY[0x1E696AD98];
      [v3 doubleValue];
      v12 = [v11 numberWithDouble:?];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v3 stringValue];
    v14 = [v3 hasBoolValue];
    if (v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "BOOLValue")}];
    }

    else
    {
      v15 = 0;
    }

    v7 = [v6 initWithIntValue:v9 doubleValue:v12 stringValue:v13 BOOLValue:v15 timeBucketValue:objc_msgSend(v3 doubleValuedVectorValue:{"timeBucketValue"), 0}];
    if (v14)
    {
    }

    if (v10)
    {
    }

    if (v8)
    {
    }
  }

  return v7;
}

- (void)setFeatureValueForFeatureName:(int)a3 featureValue:(id)a4 candidate:(id)a5 bundleID:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    pthread_mutex_lock(&self->_lock);
    p_cache = &self->_cache;
    if (!self->_cache)
    {
      v13 = objc_opt_new();
      v14 = *p_cache;
      *p_cache = v13;
    }

    v15 = [[_PSCandidate alloc] initWithDomainId:v10 derivedIntentId:v10 bundleId:v11 recipientsId:0];
    v16 = [(_PSCandidate *)v15 candidateForDeduping];

    v17 = BMMLSEVirtualFeatureStoreFeaturefeatureNameAsString();
    if (v17)
    {
      [_PSFeatureCache setFeatureValueForFeatureName:v16 featureValue:v9 candidate:v17 bundleID:?];
    }

    else
    {
      v18 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [_PSFeatureCache setFeatureValueForFeatureName:featureValue:candidate:bundleID:];
      }
    }

    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    v16 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [_PSFeatureCache setFeatureValueForFeatureName:featureValue:candidate:bundleID:];
    }
  }
}

- (id)deviceIdentifier
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(NSUserDefaults *)self->_psDefaults objectForKey:@"DeviceId"];
  if (v4)
  {
    v5 = v4;
    v6 = [(NSUserDefaults *)self->_psDefaults objectForKey:@"DeviceIdDate"];
    v7 = [v3 dateByAddingTimeInterval:-7776000.0];
    if ([v6 compare:v7] == -1)
    {
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v9 = [v8 UUIDString];

      [(NSUserDefaults *)self->_psDefaults setObject:v9 forKey:@"DeviceId"];
      [(NSUserDefaults *)self->_psDefaults setObject:v3 forKey:@"DeviceIdDate"];
      v5 = v9;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v10 UUIDString];

    [(NSUserDefaults *)self->_psDefaults setObject:v5 forKey:@"DeviceId"];
    [(NSUserDefaults *)self->_psDefaults setObject:v3 forKey:@"DeviceIdDate"];
  }

  return v5;
}

- (id)privacyMitigateFeatures:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() & 1) != 0 || ![v3 timeBucketValue] || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v3, "timeBucketValue")), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", &unk_1F2D8BA78), v4, (v5))
  {
    v6 = v3;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E698ECC0]) initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:{objc_msgSend(v3, "timeBucketValue")}];
  }

  v7 = v6;

  return v7;
}

- (void)saveToVirtualStore
{
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___PSFeatureCache_saveToVirtualStore__block_invoke;
  v7[3] = &unk_1E7C24268;
  v7[4] = self;
  v3 = v7;
  v4 = queue;
  v5 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke;
  block[3] = &unk_1E7C26688;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  dispatch_async(v4, block);
}

- (id)getHistogramFeatureData
{
  pthread_mutex_lock(&self->_lock);
  v3 = self->_histogramFeatureData;
  pthread_mutex_unlock(&self->_lock);

  return v3;
}

- (void)setFeatureValueForFeatureName:(id *)a1 featureValue:(uint64_t)a2 candidate:(void *)a3 bundleID:(void *)a4 .cold.1(id *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [*a1 objectForKeyedSubscript:a2];
  v10 = v8;
  if (!v8)
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = [(NSDictionary *)v8 _ps_dictionaryByAddingEntryForObject:a3 withKey:a4];
  [*a1 setObject:v9 forKeyedSubscript:a2];
}

- (void)setFeatureValueForFeatureName:featureValue:candidate:bundleID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setFeatureValueForFeatureName:featureValue:candidate:bundleID:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end