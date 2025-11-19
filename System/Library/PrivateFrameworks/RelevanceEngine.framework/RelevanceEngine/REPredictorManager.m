@interface REPredictorManager
- (REPredictorManager)initWithPredictors:(id)a3 featureSet:(id)a4 relevanceEngine:(id)a5;
- (void)dealloc;
- (void)enumeratePredictors:(id)a3;
- (void)enumerateValuesForElement:(id)a3 trainingContext:(id)a4 usingBlock:(id)a5;
- (void)pause;
- (void)predictor:(id)a3 didBeginActivity:(id)a4;
- (void)predictor:(id)a3 didFinishActivity:(id)a4;
- (void)predictorDidUpdate:(id)a3;
- (void)resume;
@end

@implementation REPredictorManager

- (REPredictorManager)initWithPredictors:(id)a3 featureSet:(id)a4 relevanceEngine:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v57.receiver = self;
  v57.super_class = REPredictorManager;
  v11 = [(REPredictorManager *)&v57 init];
  v12 = v11;
  if (v11)
  {
    v39 = v11;
    v44 = v10;
    objc_storeWeak(&v11->_engine, v10);
    v13 = [MEMORY[0x277CBEB58] set];
    v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v40 = v8;
    obj = v8;
    v43 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v43)
    {
      v42 = *v54;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v54 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v53 + 1) + 8 * i);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v17 = [objc_opt_class() supportedFeatures];
          v18 = [v17 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v50;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v50 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v49 + 1) + 8 * j);
                if ([v9 containsFeature:{v22, v39}])
                {
                  [v14 setObject:v16 forKeyedSubscript:v22];
                  [v13 addObject:v16];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v49 objects:v59 count:16];
            }

            while (v19);
          }
        }

        v43 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v43);
    }

    v23 = [v13 allObjects];
    v12 = v39;
    predictors = v39->_predictors;
    v39->_predictors = v23;

    v25 = [v14 copy];
    predictorsMap = v39->_predictorsMap;
    v39->_predictorsMap = v25;

    v27 = objc_alloc_init(REObserverStore);
    observer = v39->_observer;
    v39->_observer = v27;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v39->_predictors;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v45 objects:v58 count:16];
    v10 = v44;
    if (v30)
    {
      v31 = v30;
      v32 = *v46;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v45 + 1) + 8 * k);
          if (v10)
          {
            WeakRetained = objc_loadWeakRetained(&v12->_engine);
            [v34 addRelevanceEngine:WeakRetained];

            v10 = v44;
          }

          [v34 addObserver:{v12, v39}];
          v36 = [v10 logger];
          [v36 addLoggable:v34];

          v10 = v44;
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v31);
    }

    v8 = v40;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_predictors;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v8 removeObserver:self];
        WeakRetained = objc_loadWeakRetained(&self->_engine);
        [v8 removeRelevanceEngine:WeakRetained];

        v10 = objc_loadWeakRetained(&self->_engine);
        v11 = [v10 logger];
        [v11 removeLoggable:v8];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13.receiver = self;
  v13.super_class = REPredictorManager;
  [(REPredictorManager *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)enumerateValuesForElement:(id)a3 trainingContext:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    predictorsMap = self->_predictorsMap;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__REPredictorManager_enumerateValuesForElement_trainingContext_usingBlock___block_invoke;
    v12[3] = &unk_2785FB8B8;
    v13 = v8;
    v14 = self;
    v15 = v9;
    v16 = v10;
    [(NSDictionary *)predictorsMap enumerateKeysAndObjectsUsingBlock:v12];
  }
}

void __75__REPredictorManager_enumerateValuesForElement_trainingContext_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__8;
  v29 = __Block_byref_object_dispose__8;
  v30 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__REPredictorManager_enumerateValuesForElement_trainingContext_usingBlock___block_invoke_5;
  v18[3] = &unk_2785FB890;
  v24 = &v25;
  v7 = v6;
  v19 = v7;
  v8 = v5;
  v20 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v21 = v9;
  v22 = v10;
  v23 = v11;
  [v7 onQueueSync:v18];
  v17 = v26[5];
  if (v17)
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), v8, v17, v12, v13, v14, v15, v16);
  }

  _Block_object_dispose(&v25, 8);
}

void __75__REPredictorManager_enumerateValuesForElement_trainingContext_usingBlock___block_invoke_5(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  WeakRetained = objc_loadWeakRetained((a1[7] + 32));
  v5 = [v2 featureValueForFeature:v3 element:v4 engine:WeakRetained trainingContext:a1[8]];
  v6 = *(a1[9] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)resume
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_predictors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    v5 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        objc_initWeak(&location, v7);
        v9[0] = v5;
        v9[1] = 3221225472;
        v9[2] = __28__REPredictorManager_resume__block_invoke;
        v9[3] = &unk_2785F9A90;
        objc_copyWeak(&v10, &location);
        [v7 onQueue:v9];
        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __28__REPredictorManager_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained beginUpdates];
}

- (void)pause
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_predictors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    v5 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        objc_initWeak(&location, v7);
        v9[0] = v5;
        v9[1] = 3221225472;
        v9[2] = __27__REPredictorManager_pause__block_invoke;
        v9[3] = &unk_2785F9A90;
        objc_copyWeak(&v10, &location);
        [v7 onQueue:v9];
        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __27__REPredictorManager_pause__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endUpdates];
}

- (void)enumeratePredictors:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_predictors;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)predictorDidUpdate:(id)a3
{
  v4 = a3;
  observer = self->_observer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__REPredictorManager_predictorDidUpdate___block_invoke;
  v7[3] = &unk_2785FB8E0;
  v8 = v4;
  v6 = v4;
  [(REObserverStore *)observer enumerateObserversWithBlock:v7];
}

void __41__REPredictorManager_predictorDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 predictorDidUpdate:*(a1 + 32)];
  }
}

- (void)predictor:(id)a3 didBeginActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  observer = self->_observer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__REPredictorManager_predictor_didBeginActivity___block_invoke;
  v11[3] = &unk_2785FB908;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(REObserverStore *)observer enumerateObserversWithBlock:v11];
}

void __49__REPredictorManager_predictor_didBeginActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 predictor:*(a1 + 32) didBeginActivity:*(a1 + 40)];
  }
}

- (void)predictor:(id)a3 didFinishActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  observer = self->_observer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__REPredictorManager_predictor_didFinishActivity___block_invoke;
  v11[3] = &unk_2785FB908;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(REObserverStore *)observer enumerateObserversWithBlock:v11];
}

void __50__REPredictorManager_predictor_didFinishActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 predictor:*(a1 + 32) didFinishActivity:*(a1 + 40)];
  }
}

@end