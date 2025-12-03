@interface RERelevanceEngineDebugger
- (BOOL)_isValidEngine:(id)engine;
- (id)_init;
- (id)allRelevanceProviderValuesForEngine:(id)engine;
- (id)dataSourceElementsForEngine:(id)engine;
- (id)diagnosticLogsForEngine:(id)engine;
- (id)engineWithName:(id)name;
- (id)firstEngine;
- (id)orderedElementsForEngine:(id)engine;
- (void)reloadDataSourceForEngine:(id)engine;
@end

@implementation RERelevanceEngineDebugger

- (id)_init
{
  v8.receiver = self;
  v8.super_class = RERelevanceEngineDebugger;
  _init = [(RESingleton *)&v8 _init];
  if (_init)
  {
    v3 = objc_opt_new();
    v4 = _init[1];
    _init[1] = v3;

    v5 = RECreateSharedQueue(@"Debugger");
    v6 = _init[2];
    _init[2] = v5;
  }

  return _init;
}

- (id)engineWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  availableEngines = [(RERelevanceEngineDebugger *)self availableEngines];
  v6 = [availableEngines countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(availableEngines);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [availableEngines countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  availableEngines = [(RERelevanceEngineDebugger *)self availableEngines];
  firstObject = [availableEngines firstObject];

  return firstObject;
}

- (BOOL)_isValidEngine:(id)engine
{
  v10 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  if (engineCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    v5 = RELogForDomain(13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = engineCopy;
      _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "Object %@ isn't valid engine", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)diagnosticLogsForEngine:(id)engine
{
  engineCopy = engine;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:engineCopy])
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
    [engineCopy storeDiagnosticLogs:v9];
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

- (void)reloadDataSourceForEngine:(id)engine
{
  engineCopy = engine;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:?])
  {
    dataSourceManager = [engineCopy dataSourceManager];
    [dataSourceManager enumerateElementDataSourceControllers:&__block_literal_global_12];
  }
}

- (id)dataSourceElementsForEngine:(id)engine
{
  engineCopy = engine;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:engineCopy])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = dispatch_group_create();
    dataSourceManager = [engineCopy dataSourceManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__RERelevanceEngineDebugger_dataSourceElementsForEngine___block_invoke;
    v13[3] = &unk_2785FA7D0;
    v14 = v6;
    selfCopy = self;
    v8 = dictionary;
    v16 = v8;
    v9 = v6;
    [dataSourceManager enumerateElementDataSourceControllers:v13];
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

- (id)allRelevanceProviderValuesForEngine:(id)engine
{
  engineCopy = engine;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:engineCopy])
  {
    coordinator = [engineCopy coordinator];
    elementRelevanceEngine = [coordinator elementRelevanceEngine];
    relevanceProviderEnvironment = [elementRelevanceEngine relevanceProviderEnvironment];
    currentRelevanceProvidersState = [relevanceProviderEnvironment currentRelevanceProvidersState];
  }

  else
  {
    currentRelevanceProvidersState = 0;
  }

  return currentRelevanceProvidersState;
}

- (id)orderedElementsForEngine:(id)engine
{
  v39 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  if ([(RERelevanceEngineDebugger *)self _isValidEngine:engineCopy])
  {
    array = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    configuration = [engineCopy configuration];
    sectionDescriptors = [configuration sectionDescriptors];

    v8 = [sectionDescriptors countByEnumeratingWithState:&v33 objects:v38 count:16];
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
            objc_enumerationMutation(sectionDescriptors);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          historicSectionDescriptor = [v12 historicSectionDescriptor];
          v14 = historicSectionDescriptor;
          if (historicSectionDescriptor)
          {
            name = [historicSectionDescriptor name];
            [array addObject:name];
          }

          name2 = [v12 name];
          [array addObject:name2];
        }

        v9 = [sectionDescriptors countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v9);
    }

    string = [MEMORY[0x277CCAB68] string];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = array;
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
          [string appendString:v19];
          [string appendString:@"\n"];
          if ([engineCopy numberOfElementsInSection:v19])
          {
            v20 = 0;
            do
            {
              v21 = [[RESectionPath alloc] initWithSectionName:v19 element:v20];
              v22 = [engineCopy elementAtPath:v21];
              v23 = REDescriptionForExportedObject(v22);
              [string appendString:v23];

              [string appendString:@"\n\n"];
              ++v20;
            }

            while (v20 < [engineCopy numberOfElementsInSection:v19]);
          }

          [string appendString:@"\n\n\n\n"];
        }

        v28 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v28);
    }
  }

  else
  {
    string = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return string;
}

@end