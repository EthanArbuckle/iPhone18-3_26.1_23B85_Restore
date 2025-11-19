@interface RERelevanceEngineDebugger
- (BOOL)_isValidEngine:(id)a3;
- (id)_init;
- (id)allRelevanceProviderValuesForEngine:(id)a3;
- (id)dataSourceElementsForEngine:(id)a3;
- (id)diagnosticLogsForEngine:(id)a3;
- (id)engineWithName:(id)a3;
- (id)firstEngine;
- (id)orderedElementsForEngine:(id)a3;
- (void)reloadDataSourceForEngine:(id)a3;
@end

@implementation RERelevanceEngineDebugger

- (id)_init
{
  v8.receiver = self;
  v8.super_class = RERelevanceEngineDebugger;
  v2 = [(RESingleton *)&v8 _init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = v2[1];
    v2[1] = v3;

    v5 = RECreateSharedQueue(@"Debugger");
    v6 = v2[2];
    v2[2] = v5;
  }

  return v2;
}

- (id)engineWithName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(RERelevanceEngineDebugger *)self availableEngines];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)firstEngine
{
  v2 = [(RERelevanceEngineDebugger *)self availableEngines];
  v3 = [v2 firstObject];

  return v3;
}

- (BOOL)_isValidEngine:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    v5 = RELogForDomain(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "Object %@ isn't valid engine", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)diagnosticLogsForEngine:(id)a3
{
  v4 = a3;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:v4])
  {
    v5 = dispatch_semaphore_create(0);
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v17 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__RERelevanceEngineDebugger_diagnosticLogsForEngine___block_invoke;
    v9[3] = &unk_2785FA788;
    v11 = &v12;
    v6 = v5;
    v10 = v6;
    [v4 storeDiagnosticLogs:v9];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __53__RERelevanceEngineDebugger_diagnosticLogsForEngine___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)reloadDataSourceForEngine:(id)a3
{
  v5 = a3;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:?])
  {
    v4 = [v5 dataSourceManager];
    [v4 enumerateElementDataSourceControllers:&__block_literal_global_12];
  }
}

- (id)dataSourceElementsForEngine:(id)a3
{
  v4 = a3;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:v4])
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = dispatch_group_create();
    v7 = [v4 dataSourceManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__RERelevanceEngineDebugger_dataSourceElementsForEngine___block_invoke;
    v13[3] = &unk_2785FA7D0;
    v14 = v6;
    v15 = self;
    v8 = v5;
    v16 = v8;
    v9 = v6;
    [v7 enumerateElementDataSourceControllers:v13];
    dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v10 = v16;
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __57__RERelevanceEngineDebugger_dataSourceElementsForEngine___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = [v3 elementOperationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RERelevanceEngineDebugger_dataSourceElementsForEngine___block_invoke_2;
  v8[3] = &unk_2785FA4C0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v3;
  dispatch_async(v4, v8);
}

void __57__RERelevanceEngineDebugger_dataSourceElementsForEngine___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) allElements];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = *(*(a1 + 40) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RERelevanceEngineDebugger_dataSourceElementsForEngine___block_invoke_3;
  v7[3] = &unk_2785FA4C0;
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = v2;
  v11 = *(a1 + 56);
  v5 = v2;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __57__RERelevanceEngineDebugger_dataSourceElementsForEngine___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

- (id)allRelevanceProviderValuesForEngine:(id)a3
{
  v4 = a3;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:v4])
  {
    v5 = [v4 coordinator];
    v6 = [v5 elementRelevanceEngine];
    v7 = [v6 relevanceProviderEnvironment];
    v8 = [v7 currentRelevanceProvidersState];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)orderedElementsForEngine:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:v4])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = [v4 configuration];
    v7 = [v6 sectionDescriptors];

    v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [v12 historicSectionDescriptor];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 name];
            [v5 addObject:v15];
          }

          v16 = [v12 name];
          [v5 addObject:v16];
        }

        v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v9);
    }

    v17 = [MEMORY[0x277CCAB68] string];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v5;
    v28 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v28)
    {
      v27 = *v30;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v29 + 1) + 8 * j);
          [v17 appendString:v19];
          [v17 appendString:@"\n"];
          if ([v4 numberOfElementsInSection:v19])
          {
            v20 = 0;
            do
            {
              v21 = [[RESectionPath alloc] initWithSectionName:v19 element:v20];
              v22 = [v4 elementAtPath:v21];
              v23 = REDescriptionForExportedObject(v22);
              [v17 appendString:v23];

              [v17 appendString:@"\n\n"];
              ++v20;
            }

            while (v20 < [v4 numberOfElementsInSection:v19]);
          }

          [v17 appendString:@"\n\n\n\n"];
        }

        v28 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v28);
    }
  }

  else
  {
    v17 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

@end