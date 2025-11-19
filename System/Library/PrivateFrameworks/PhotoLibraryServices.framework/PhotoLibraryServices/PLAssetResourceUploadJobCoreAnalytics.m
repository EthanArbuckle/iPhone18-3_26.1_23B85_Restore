@interface PLAssetResourceUploadJobCoreAnalytics
- (PLAssetResourceUploadJobCoreAnalytics)initWithPhotoLibrary:(id)a3;
- (id)_configurationAnalytics;
- (id)_configurations;
- (id)_createAndPopulateCoreAnalyticsEventManager;
- (id)_jobAnalyticsForBundleIdentifiers:(id)a3;
- (id)_jobFetchRequest;
- (int64_t)_assetCount;
- (void)publishCoreAnalyticsEvent;
@end

@implementation PLAssetResourceUploadJobCoreAnalytics

- (id)_configurations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__68020;
  v10 = __Block_byref_object_dispose__68021;
  v11 = 0;
  library = self->_library;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PLAssetResourceUploadJobCoreAnalytics__configurations__block_invoke;
  v5[3] = &unk_1E7578910;
  v5[4] = self;
  v5[5] = &v6;
  [(PLPhotoLibrary *)library performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__PLAssetResourceUploadJobCoreAnalytics__configurations__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLAssetResourceUploadJobConfiguration entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(*(a1 + 32) + 8) managedObjectContext];
  v11 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v11];
  v7 = v11;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch job configurations for analytics: %@", buf, 0xCu);
    }
  }
}

- (id)_jobFetchRequest
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLAssetResourceUploadJob entityName];
  v33 = [v3 fetchRequestWithEntityName:v4];

  v35 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"configuration.bundleIdentifier"];
  v5 = MEMORY[0x1E696ABC8];
  v6 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  v41[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v34 = [v5 expressionForFunction:@"count:" arguments:v7];

  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F0FBD798];
  v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F0FBD7B0];
  v10 = MEMORY[0x1E696ABC8];
  v11 = [(PLAssetResourceUploadJobCoreAnalytics *)self _jobPredicateForJobState:3];
  v12 = [v10 expressionForConditional:v11 trueExpression:v8 falseExpression:v9];
  v40 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v32 = [v10 expressionForFunction:@"sum:" arguments:v13];

  v14 = MEMORY[0x1E696ABC8];
  v15 = [(PLAssetResourceUploadJobCoreAnalytics *)self _jobPredicateForJobState:4];
  v16 = [v14 expressionForConditional:v15 trueExpression:v8 falseExpression:v9];
  v39 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v31 = [v14 expressionForFunction:@"sum:" arguments:v17];

  v18 = MEMORY[0x1E696ABC8];
  v19 = [(PLAssetResourceUploadJobCoreAnalytics *)self _jobPredicateForJobState:5];
  v20 = [v18 expressionForConditional:v19 trueExpression:v8 falseExpression:v9];
  v38 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v30 = [v18 expressionForFunction:@"sum:" arguments:v21];

  v22 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v22 setName:@"bundleIdentifier"];
  [v22 setExpression:v35];
  [v22 setExpressionResultType:700];
  v23 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v23 setName:@"totalCount"];
  [v23 setExpression:v34];
  [v23 setExpressionResultType:300];
  v24 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v24 setName:@"failedCount"];
  [v24 setExpression:v32];
  [v24 setExpressionResultType:300];
  v25 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v25 setName:@"completedCount"];
  [v25 setExpression:v31];
  [v25 setExpressionResultType:300];
  v26 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v26 setName:@"cancelledCount"];
  [v26 setExpression:v30];
  [v26 setExpressionResultType:300];
  v37[0] = v22;
  v37[1] = v23;
  v37[2] = v24;
  v37[3] = v25;
  v37[4] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  [v33 setPropertiesToFetch:v27];

  v36 = @"configuration.bundleIdentifier";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v33 setPropertiesToGroupBy:v28];

  [v33 setResultType:2];

  return v33;
}

- (id)_jobAnalyticsForBundleIdentifiers:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = [(PLAssetResourceUploadJobCoreAnalytics *)self _jobFetchRequest];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v19 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v19)
  {
    v18 = *v35;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v28 = 0;
        v29 = &v28;
        v30 = 0x3032000000;
        v31 = __Block_byref_object_copy__68020;
        v32 = __Block_byref_object_dispose__68021;
        v33 = 0;
        v8 = [(PLAssetResourceUploadJobCoreAnalytics *)self _jobPredicateForBundleIdentifier:v7];
        [v20 setPredicate:v8];

        library = self->_library;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __75__PLAssetResourceUploadJobCoreAnalytics__jobAnalyticsForBundleIdentifiers___block_invoke;
        v25[3] = &unk_1E7578820;
        v27 = &v28;
        v25[4] = self;
        v26 = v20;
        [(PLPhotoLibrary *)library performBlockAndWait:v25];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = v29[5];
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v38 count:16];
        if (v11)
        {
          v12 = *v22;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              v15 = [v14 objectForKeyedSubscript:@"bundleIdentifier"];
              if ([v15 length])
              {
                [v5 setObject:v14 forKeyedSubscript:v15];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v21 objects:v38 count:16];
          }

          while (v11);
        }

        _Block_object_dispose(&v28, 8);
      }

      v19 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v19);
  }

  return v5;
}

void __75__PLAssetResourceUploadJobCoreAnalytics__jobAnalyticsForBundleIdentifiers___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 8) managedObjectContext];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch jobs for analytics: %@", buf, 0xCu);
    }
  }
}

- (id)_configurationAnalytics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PLAssetResourceUploadJobCoreAnalytics *)self _configurations];
  v5 = v4;
  if (v4)
  {
    library = self->_library;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PLAssetResourceUploadJobCoreAnalytics__configurationAnalytics__block_invoke;
    v11[3] = &unk_1E7578848;
    v12 = v4;
    v7 = v3;
    v13 = v7;
    [(PLPhotoLibrary *)library performBlockAndWait:v11];
    v8 = v13;
    v9 = v7;
  }

  return v3;
}

void __64__PLAssetResourceUploadJobCoreAnalytics__configurationAnalytics__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 bundleIdentifier];
        if ([v8 length])
        {
          v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
          if (!v9)
          {
            v9 = objc_alloc_init(PLAssetResourceUploadJobConfigurationCoreAnalyticsPayload);
            [*(a1 + 40) setObject:v9 forKeyedSubscript:v8];
          }

          -[PLAssetResourceUploadJobConfigurationCoreAnalyticsPayload setAttemptCount:](v9, "setAttemptCount:", [v7 attemptCount]);
          v10 = [v7 state];
          if (v10 <= 3)
          {
            [(PLAssetResourceUploadJobConfigurationCoreAnalyticsPayload *)v9 setEnabled:(0xCu >> (v10 & 0xF)) & 1];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (int64_t)_assetCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  library = self->_library;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PLAssetResourceUploadJobCoreAnalytics__assetCount__block_invoke;
  v5[3] = &unk_1E7578910;
  v5[4] = self;
  v5[5] = &v6;
  [(PLPhotoLibrary *)library performBlockAndWait:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__PLAssetResourceUploadJobCoreAnalytics__assetCount__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setResultType:4];
  v5 = [*(*(a1 + 32) + 8) managedObjectContext];
  v9 = 0;
  v6 = [v5 countForFetchRequest:v4 error:&v9];
  v7 = v9;

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch asset counts for analytics: %@", buf, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

- (id)_createAndPopulateCoreAnalyticsEventManager
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69BF1F0]);
  v4 = [(PLAssetResourceUploadJobCoreAnalytics *)self _assetCount];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v6 = *MEMORY[0x1E69BF460];
  [v3 setPayloadValue:v5 forKey:*MEMORY[0x1E69BF478] onEventWithName:*MEMORY[0x1E69BF460]];

  v7 = [(PLPhotoLibrary *)self->_library libraryServicesManager];
  v8 = [v7 cplSettings];
  v9 = [v8 isICPLEnabled];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v3 setPayloadValue:v10 forKey:*MEMORY[0x1E69BF470] onEventWithName:v6];

  v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PLAssetResourceUploadJobCoreAnalytics *)self _configurationAnalytics];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v62 = 0u;
  v11 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v60;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v59 + 1) + 8 * i);
        v18 = [obj objectForKeyedSubscript:v17];
        v19 = [v18 isEnabled];
        v20 = v53;
        if (!v19)
        {
          v20 = v52;
        }

        v14 += v19;
        [v20 addObject:v17];
        v13 += [v18 attemptCount];
      }

      v12 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  [v53 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
  [v52 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v21 = [v53 arrayByAddingObjectsFromArray:v52];
  v22 = [v21 count];
  if (v22 >= 5)
  {
    v23 = 5;
  }

  else
  {
    v23 = v22;
  }

  v49 = v21;
  v48 = [v21 subarrayWithRange:{0, v23}];
  v24 = [v48 valueForKey:@"description"];
  v25 = [v24 componentsJoinedByString:@"_"];

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  [v3 setPayloadValue:v26 forKey:*MEMORY[0x1E69BF488] onEventWithName:v6];

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  [v3 setPayloadValue:v27 forKey:*MEMORY[0x1E69BF480] onEventWithName:v6];

  v50 = v6;
  v51 = v3;
  v47 = v25;
  [v3 setPayloadValue:v25 forKey:*MEMORY[0x1E69BF468] onEventWithName:v6];
  v28 = [(PLAssetResourceUploadJobCoreAnalytics *)self _jobAnalyticsForBundleIdentifiers:v53];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = *v56;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v28);
        }

        v37 = [v28 objectForKeyedSubscript:*(*(&v55 + 1) + 8 * j)];
        v38 = [v37 objectForKeyedSubscript:@"totalCount"];
        v33 += [v38 integerValue];

        v39 = [v37 objectForKeyedSubscript:@"failedCount"];
        v34 += [v39 integerValue];

        v40 = [v37 objectForKeyedSubscript:@"completedCount"];
        v32 += [v40 integerValue];

        v41 = [v37 objectForKeyedSubscript:@"cancelledCount"];
        v31 += [v41 integerValue];
      }

      v30 = [v28 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v30);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32];
  [v51 setPayloadValue:v42 forKey:*MEMORY[0x1E69BF498] onEventWithName:v50];

  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
  [v51 setPayloadValue:v43 forKey:*MEMORY[0x1E69BF4A8] onEventWithName:v50];

  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31];
  [v51 setPayloadValue:v44 forKey:*MEMORY[0x1E69BF490] onEventWithName:v50];

  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
  [v51 setPayloadValue:v45 forKey:*MEMORY[0x1E69BF4A0] onEventWithName:v50];

  return v51;
}

- (void)publishCoreAnalyticsEvent
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PLAssetResourceUploadJobCoreAnalytics *)self _createAndPopulateCoreAnalyticsEventManager];
  [v4 publishAllEvents];

  objc_autoreleasePoolPop(v3);
}

- (PLAssetResourceUploadJobCoreAnalytics)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAssetResourceUploadJobCoreAnalytics;
  v6 = [(PLAssetResourceUploadJobCoreAnalytics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, a3);
  }

  return v7;
}

@end