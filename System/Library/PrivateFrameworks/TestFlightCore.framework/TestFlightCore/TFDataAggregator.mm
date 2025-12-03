@interface TFDataAggregator
- (TFDataAggregator)initWithSessionDataContainer:(id)container;
- (TFDataAggregatorDelegate)delegate;
- (id)_loadAndExtractDataForTasks:(id)tasks intoDataContainer:(id)container;
- (void)_finishUpdatingDataContainer:(id)container byMergingDataContainer:(id)dataContainer forTasks:(id)tasks;
- (void)_prepareDestinationDataContainer:(id)container forTasks:(id)tasks;
- (void)runTasks:(id)tasks;
@end

@implementation TFDataAggregator

- (TFDataAggregator)initWithSessionDataContainer:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = TFDataAggregator;
  v6 = [(TFDataAggregator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionDataContainer, container);
    v8 = dispatch_get_global_queue(0, 0);
    aggregationQueue = v7->_aggregationQueue;
    v7->_aggregationQueue = v8;
  }

  return v7;
}

- (void)runTasks:(id)tasks
{
  v24 = *MEMORY[0x277D85DE8];
  tasksCopy = tasks;
  v5 = AMSGenerateLogCorrelationKey();
  v6 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v6 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v5;
    v22 = 2112;
    v23 = tasksCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] runTasks: tasks=%@", buf, 0x20u);
  }

  [(TFDataAggregator *)self _validateProvidedIdentifiersForTasks:tasksCopy];
  sessionDataContainer = [(TFDataAggregator *)self sessionDataContainer];
  [(TFDataAggregator *)self _prepareDestinationDataContainer:sessionDataContainer forTasks:tasksCopy];

  v9 = [[TFFeedbackDataContainer alloc] initWithName:@"tasks"];
  v10 = [(TFDataAggregator *)self _loadAndExtractDataForTasks:tasksCopy intoDataContainer:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __29__TFDataAggregator_runTasks___block_invoke;
  v14[3] = &unk_279D98130;
  v14[4] = self;
  v15 = v9;
  v16 = tasksCopy;
  v17 = v5;
  v11 = v5;
  v12 = tasksCopy;
  v13 = v9;
  [v10 addFinishBlock:v14];
}

void __29__TFDataAggregator_runTasks___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 sessionDataContainer];
  [v2 _finishUpdatingDataContainer:v3 byMergingDataContainer:*(a1 + 40) forTasks:*(a1 + 48)];

  v4 = +[TFLogConfiguration defaultConfiguration];
  v5 = [v4 generatedLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = [*(a1 + 40) debugDescription];
    v10 = [*(a1 + 32) sessionDataContainer];
    v11 = [v10 debugDescription];
    v12 = 138544386;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_26D2C7000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] runTasks completed: tasks=%@, taskDataContainer=%@ sessionDataContainer=%@", &v12, 0x34u);
  }
}

- (void)_prepareDestinationDataContainer:(id)container forTasks:(id)tasks
{
  tasksCopy = tasks;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__TFDataAggregator__prepareDestinationDataContainer_forTasks___block_invoke;
  v7[3] = &unk_279D980C8;
  v8 = tasksCopy;
  v6 = tasksCopy;
  [container performBatchUpdates:v7];
}

void __62__TFDataAggregator__prepareDestinationDataContainer_forTasks___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v9 providedEntryIdentifiers];
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 setEntryLoadingForIdentifier:*(*(&v15 + 1) + 8 * v14++) toValue:1];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

- (void)_finishUpdatingDataContainer:(id)container byMergingDataContainer:(id)dataContainer forTasks:(id)tasks
{
  dataContainerCopy = dataContainer;
  tasksCopy = tasks;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__TFDataAggregator__finishUpdatingDataContainer_byMergingDataContainer_forTasks___block_invoke;
  v15[3] = &unk_279D98158;
  v10 = tasksCopy;
  v16 = v10;
  v17 = dataContainerCopy;
  v11 = dataContainerCopy;
  [container performBatchUpdates:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__TFDataAggregator__finishUpdatingDataContainer_byMergingDataContainer_forTasks___block_invoke_2;
  v13[3] = &unk_279D98180;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

void __81__TFDataAggregator__finishUpdatingDataContainer_byMergingDataContainer_forTasks___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v9 providedEntryIdentifiers];
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 setEntryLoadingForIdentifier:*(*(&v15 + 1) + 8 * v14++) toValue:0];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  [v3 overwriteWithContentsOfDataContainer:*(a1 + 40)];
}

void __81__TFDataAggregator__finishUpdatingDataContainer_byMergingDataContainer_forTasks___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataAggregator:*(a1 + 32) didCompleteTasks:*(a1 + 40)];
}

- (id)_loadAndExtractDataForTasks:(id)tasks intoDataContainer:(id)container
{
  v28 = *MEMORY[0x277D85DE8];
  tasksCopy = tasks;
  containerCopy = container;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(tasksCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = tasksCopy;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_alloc_init(MEMORY[0x277CEE630]);
        [v8 addObject:v14];
        aggregationQueue = [(TFDataAggregator *)self aggregationQueue];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __66__TFDataAggregator__loadAndExtractDataForTasks_intoDataContainer___block_invoke;
        v20[3] = &unk_279D981A8;
        v20[4] = v13;
        v21 = containerCopy;
        v22 = v14;
        v16 = v14;
        [v13 loadDataOnQueue:aggregationQueue withCompletionHandler:v20];
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = [MEMORY[0x277CEE630] promiseWithAll:v8];

  return v17;
}

void __66__TFDataAggregator__loadAndExtractDataForTasks_intoDataContainer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[TFLogConfiguration defaultConfiguration];
    v8 = [v7 generatedLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 name];
      v13 = [*(a1 + 32) logKey];
      v14 = 138544130;
      v15 = v9;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_26D2C7000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%@:%@] Data aggregation failed with error: %@", &v14, 0x2Au);
    }
  }

  [*(a1 + 32) extractDataPropertiesFromData:v5 intoDataContainer:*(a1 + 40)];
  [*(a1 + 48) finishWithResult:&unk_287EB46F0];
}

- (TFDataAggregatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end