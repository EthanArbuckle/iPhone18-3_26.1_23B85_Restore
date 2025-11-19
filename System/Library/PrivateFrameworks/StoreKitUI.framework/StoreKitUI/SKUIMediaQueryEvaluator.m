@interface SKUIMediaQueryEvaluator
+ (void)initialize;
+ (void)registerFeatureClass:(Class)a3;
- (BOOL)evaluateMediaQuery:(id)a3;
- (SKUIMediaQueryDelegate)delegate;
- (SKUIMediaQueryEvaluator)init;
- (id)_delegateValuesForKeys:(id)a3;
- (void)_featureDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)init;
- (void)reloadData;
@end

@implementation SKUIMediaQueryEvaluator

- (SKUIMediaQueryEvaluator)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaQueryEvaluator init];
  }

  v9.receiver = self;
  v9.super_class = SKUIMediaQueryEvaluator;
  v3 = [(SKUIMediaQueryEvaluator *)&v9 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    cachedFeatureResults = v3->_cachedFeatureResults;
    v3->_cachedFeatureResults = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observedNotificationNames = v3->_observedNotificationNames;
    v3->_observedNotificationNames = v6;
  }

  return v3;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_observedNotificationNames;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:self name:*(*(&v11 + 1) + 8 * v8++) object:0];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  reloadTimer = self->_reloadTimer;
  if (reloadTimer)
  {
    dispatch_source_cancel(reloadTimer);
  }

  v10.receiver = self;
  v10.super_class = SKUIMediaQueryEvaluator;
  [(SKUIMediaQueryEvaluator *)&v10 dealloc];
}

+ (void)registerFeatureClass:(Class)a3
{
  v4 = sClassSet;
  if (!sClassSet)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = sClassSet;
    sClassSet = v5;

    v4 = sClassSet;
  }

  [v4 addObject:a3];
}

- (BOOL)evaluateMediaQuery:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = [v4 featureValues];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__SKUIMediaQueryEvaluator_evaluateMediaQuery___block_invoke;
  v33[3] = &unk_2781F82F8;
  v9 = v5;
  v34 = v9;
  v10 = v6;
  v35 = v10;
  v36 = self;
  v11 = self;
  v12 = v7;
  v37 = v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v33];

  if ([v9 count])
  {
    if ([v10 count])
    {
      v13 = [(SKUIMediaQueryEvaluator *)v11 _delegateValuesForKeys:v10];
    }

    else
    {
      v13 = 0;
    }

    v24 = v12;
    v25 = v10;
    v26 = v9;
    v27 = v4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      v14 = 1;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = [v19 evaluateWithValues:v13];
          cachedFeatureResults = v11->_cachedFeatureResults;
          v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
          [(NSMapTable *)cachedFeatureResults setObject:v22 forKey:v19];

          v14 &= v20;
        }

        v16 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v16);
    }

    else
    {
      v14 = 1;
    }

    v9 = v26;
    v4 = v27;
    v12 = v24;
    v10 = v25;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __46__SKUIMediaQueryEvaluator_evaluateMediaQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = sClassSet;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([(objc_class *)v12 supportsFeatureName:v5])
        {
          v13 = [[v12 alloc] initWithFeatureName:v5 value:v6];
          [*(a1 + 32) addObject:v13];
          v14 = [v13 requiredKeys];
          if (v14)
          {
            [*(a1 + 40) addObjectsFromArray:v14];
          }

          v15 = [v13 notificationNames];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __46__SKUIMediaQueryEvaluator_evaluateMediaQuery___block_invoke_2;
          v17[3] = &unk_2781F82D0;
          v16 = *(a1 + 56);
          v17[4] = *(a1 + 48);
          v18 = v16;
          [v15 enumerateObjectsUsingBlock:v17];

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void __46__SKUIMediaQueryEvaluator_evaluateMediaQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(a1 + 32) + 24) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObserver:*(a1 + 32) selector:sel__featureDidChangeNotification_ name:v3 object:0];
    [*(*(a1 + 32) + 24) addObject:v3];
  }
}

- (void)reloadData
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(NSMapTable *)self->_cachedFeatureResults copy];
  [(NSMapTable *)self->_cachedFeatureResults removeAllObjects];
  reloadTimer = self->_reloadTimer;
  if (reloadTimer)
  {
    dispatch_source_cancel(reloadTimer);
    v5 = self->_reloadTimer;
    self->_reloadTimer = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v3;
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

        v12 = [*(*(&v33 + 1) + 8 * i) requiredKeys];
        if (v12)
        {
          [v6 addObjectsFromArray:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v28 = [(SKUIMediaQueryEvaluator *)self _delegateValuesForKeys:v6];
  }

  else
  {
    v28 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
  WeakRetained = v13;
  if (!v14)
  {
    goto LABEL_25;
  }

  v16 = v14;
  v27 = v6;
  v17 = self;
  v18 = 0;
  v19 = *v30;
  do
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v30 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v29 + 1) + 8 * j);
      v22 = [v21 evaluateWithValues:{v28, v27}];
      v23 = [v13 objectForKey:v21];
      v24 = v22 ^ [v23 BOOLValue];

      v18 |= v24;
      cachedFeatureResults = v17->_cachedFeatureResults;
      v26 = [MEMORY[0x277CCABB0] numberWithBool:v22];
      [(NSMapTable *)cachedFeatureResults setObject:v26 forKey:v21];
    }

    v16 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
  }

  while (v16);

  v6 = v27;
  if (v18)
  {
    WeakRetained = objc_loadWeakRetained(&v17->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained mediaQueryEvaluatorDidChange:v17];
    }

LABEL_25:
  }
}

- (void)_featureDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SKUIMediaQueryEvaluator__featureDidChangeNotification___block_invoke;
  v6[3] = &unk_2781F80C8;
  v6[4] = self;
  v7 = v4;
  dispatch_async(v4, v6);
}

void __57__SKUIMediaQueryEvaluator__featureDidChangeNotification___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 32))
  {
    location[5] = v1;
    location[6] = v2;
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v7 = *(*(a1 + 32) + 32);
    v8 = dispatch_time(0, 3000000000);
    dispatch_source_set_timer(v7, v8, 0, 0);
    objc_initWeak(location, *(a1 + 32));
    v9 = *(*(a1 + 32) + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__SKUIMediaQueryEvaluator__featureDidChangeNotification___block_invoke_2;
    v10[3] = &unk_2781F8320;
    objc_copyWeak(&v11, location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(*(*(a1 + 32) + 32));
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }
}

void __57__SKUIMediaQueryEvaluator__featureDidChangeNotification___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadData];
}

- (id)_delegateValuesForKeys:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [WeakRetained mediaQueryEvaluator:self valueForKey:{v12, v15}];
          if (v13)
          {
            [v5 setObject:v13 forKey:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    [a1 registerFeatureClass:objc_opt_class()];
    v3 = objc_opt_class();

    [a1 registerFeatureClass:v3];
  }
}

- (SKUIMediaQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaQueryEvaluator init]";
}

@end