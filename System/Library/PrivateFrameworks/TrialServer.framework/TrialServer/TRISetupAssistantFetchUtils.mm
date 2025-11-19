@interface TRISetupAssistantFetchUtils
+ (BOOL)removeNamespaceNamesWithRolloutForServerContext:(id)a3 namespaceNames:(id)a4;
+ (BOOL)setValueInKeyValueStore:(id)a3 key:(id)a4 value:(id)a5 error:(id *)a6;
+ (BOOL)stopSetupAssistantFetchWithServerContext:(id)a3 namespaceNames:(id)a4 error:(id *)a5;
+ (id)getIncompatibleNamespaceNamesForTriClientRollout:(id)a3 namespaceDescriptorProvider:(id)a4;
+ (id)getNamespaceNamesWithFetchDuringSetupAssistantEnabledWithTRIPaths:(id)a3;
+ (id)getValueInKeyValueStore:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext:(id)a3;
@end

@implementation TRISetupAssistantFetchUtils

+ (BOOL)stopSetupAssistantFetchWithServerContext:(id)a3 namespaceNames:(id)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v9];
  }

  else
  {
    v21 = [v8 paths];
    v11 = [a1 getNamespaceNamesWithFetchDuringSetupAssistantEnabledWithTRIPaths:v21];

    if (!v11 || ![v11 count])
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "setup-assistant-fetch is not needed, no descriptors found with enableFetchDuringSetupAssistant flag enabled", &v26, 2u);
      }

      goto LABEL_22;
    }

    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v11];
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v10];
  if (([a1 removeNamespaceNamesWithRolloutForServerContext:v8 namespaceNames:v11] & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "The rollout database query failed.", &v26, 2u);
    }

    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = *MEMORY[0x277CCA450];
    v31[0] = @"Unable to retrieve records for active rollouts";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v17];

    if (a5)
    {
      v19 = v18;
      *a5 = v18;
    }

    goto LABEL_13;
  }

  if (![v11 count])
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v10 allObjects];
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "setup-assistant-fetch is not needed, ncv-compatible rollout v2 are present for namespaces names: %{public}@", &v26, 0xCu);
    }

LABEL_22:
    v20 = 1;
    goto LABEL_23;
  }

  [v10 minusSet:v11];
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 allObjects];
    v14 = [v10 allObjects];
    v26 = 138412546;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "setup-assistant-fetch is needed, ncv-compatible rollout v2 are not present for namespace names: %@ and are present for namespace names: {public}%@", &v26, 0x16u);
  }

LABEL_13:
  v20 = 0;
LABEL_23:

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)getNamespaceNamesWithFetchDuringSetupAssistantEnabledWithTRIPaths:(id)a3
{
  v3 = MEMORY[0x277D73750];
  v4 = [a3 namespaceDescriptorsDefaultDir];
  v5 = [v3 descriptorsForDirectory:v4 filterBlock:&__block_literal_global_47];

  if ([v5 count])
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_50];
    v8 = [v6 initWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)removeNamespaceNamesWithRolloutForServerContext:(id)a3 namespaceNames:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 namespaceDatabase];
  v9 = [v7 paths];
  v10 = [v9 namespaceDescriptorsDefaultDir];
  v11 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v8 defaultDescriptorDirectoryPath:v10];

  v12 = [v7 rolloutDatabase];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__TRISetupAssistantFetchUtils_removeNamespaceNamesWithRolloutForServerContext_namespaceNames___block_invoke;
  v16[3] = &unk_279DE5590;
  v18 = v6;
  v19 = a1;
  v17 = v11;
  v13 = v6;
  v14 = v11;
  LOBYTE(v11) = [v12 enumerateActiveRecordsUsingTransaction:0 block:v16];

  return v11;
}

void __94__TRISetupAssistantFetchUtils_removeNamespaceNamesWithRolloutForServerContext_namespaceNames___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 artifact];
  v5 = [v4 rollout];

  v6 = [*(a1 + 48) getIncompatibleNamespaceNamesForTriClientRollout:v5 namespaceDescriptorProvider:*(a1 + 32)];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v3 namespaces];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([*(a1 + 40) containsObject:v12] && (objc_msgSend(v6, "containsObject:", v12) & 1) == 0)
        {
          [*(a1 + 40) removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)getIncompatibleNamespaceNamesForTriClientRollout:(id)a3 namespaceDescriptorProvider:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v26 = objc_opt_new();
  v27 = v5;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v5 selectedNamespaceArray];
  v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v25 = 0;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 name];
        v13 = [v6 descriptorWithNamespaceName:v12];

        if (v13)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 0;
          v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "compatibilityVersionArray_Count")}];
          v15 = [v10 compatibilityVersionArray];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __108__TRISetupAssistantFetchUtils_getIncompatibleNamespaceNamesForTriClientRollout_namespaceDescriptorProvider___block_invoke;
          v31[3] = &unk_279DE55B8;
          v32 = v13;
          v34 = buf;
          v16 = v14;
          v33 = v16;
          [v15 enumerateValuesWithBlock:v31];

          if (*(*&buf[8] + 24))
          {
            v25 = 1;
          }

          else
          {
            v21 = [v10 name];
            [v26 addObject:v21];
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v17 = TRILogCategory_Server();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v27 rolloutId];
            v19 = [v27 deploymentId];
            v20 = [v10 name];
            *buf = 138543874;
            *&buf[4] = v18;
            *&buf[12] = 1024;
            *&buf[14] = v19;
            *&buf[18] = 2114;
            *&buf[20] = v20;
            _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Note: Rollout %{public}@.%u involves namespace %{public}@ but it is not registered with Trial. Factor packs for this namespace shall not be downloaded.", buf, 0x1Cu);
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  else
  {
    v25 = 0;
  }

  if (!(([v26 count] != 0) | v25 & 1))
  {
    v22 = [v27 selectedNamespaceArray];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __108__TRISetupAssistantFetchUtils_getIncompatibleNamespaceNamesForTriClientRollout_namespaceDescriptorProvider___block_invoke_2;
    v29[3] = &unk_279DDF680;
    v30 = v26;
    [v22 enumerateObjectsUsingBlock:v29];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

void __108__TRISetupAssistantFetchUtils_getIncompatibleNamespaceNamesForTriClientRollout_namespaceDescriptorProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) downloadNCV] == a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v4 = *(a1 + 40);
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u", a2];
  [v4 addObject:v5];
}

void __108__TRISetupAssistantFetchUtils_getIncompatibleNamespaceNamesForTriClientRollout_namespaceDescriptorProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

+ (BOOL)setValueInKeyValueStore:(id)a3 key:(id)a4 value:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"TRISetupAssistantFetchUtils.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"value != nil"}];
  }

  v20 = 0;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v20];
  v15 = v20;
  v16 = v15;
  if (v14)
  {
    [v11 setBlob:v14 forKey:v12 usingTransaction:0];
  }

  else if (a6)
  {
    v17 = v15;
    *a6 = v16;
  }

  return v14 != 0;
}

+ (id)getValueInKeyValueStore:(id)a3 key:(id)a4 error:(id *)a5
{
  v6 = [a3 blobForKey:a4 usingTransaction:0];
  if (v6)
  {
    v13 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v13];
    v8 = v13;
    v9 = v8;
    if (v7)
    {
      v10 = v7;
    }

    else if (a5)
    {
      v11 = v8;
      *a5 = v9;
    }
  }

  else
  {
    v7 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  return v7;
}

+ (id)registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext:(id)a3
{
  v3 = a3;
  v4 = [TRILatencyMetricTelemetryValidator alloc];
  v5 = [v3 rolloutDatabase];
  v6 = [v3 paths];
  v7 = [(TRILatencyMetricTelemetryValidator *)v4 initWithRolloutDatabase:v5 paths:v6];

  v8 = [[TRIDownloadLatencyTaskResultTelemetryBuilder alloc] initWithTelemetryValidator:v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__TRISetupAssistantFetchUtils_registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext___block_invoke;
  v14[3] = &unk_279DE55E0;
  v9 = v8;
  v15 = v9;
  v10 = MEMORY[0x2743948D0](v14);
  v11 = [v3 taskQueue];

  [v11 registerFinalizeBlock:v10];
  v12 = v9;

  return v9;
}

void __97__TRISetupAssistantFetchUtils_registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a2;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [*(a1 + 32) updateWithTask:v11 runResult:v8];
  objc_autoreleasePoolPop(v10);
}

@end