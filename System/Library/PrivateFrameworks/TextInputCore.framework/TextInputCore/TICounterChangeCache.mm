@interface TICounterChangeCache
- (TICounterChangeCache)initWithEventDescriptorRegistry:(id)registry metricDescriptorRegistry:(id)descriptorRegistry;
- (void)addCounterReferencesForMetric:(id)metric;
- (void)addStatisticChanges:(id)changes withContext:(id)context;
- (void)keyboardDidSuspendForDate:(id)date;
- (void)loadReferencedCounters;
- (void)persistForDate:(id)date;
@end

@implementation TICounterChangeCache

- (void)persistForDate:(id)date
{
  v58 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [dateCopy timeIntervalSince1970];
  if (dateCopy)
  {
    v6 = dateCopy;
    if (v5 - self->_timeOfLastPersist < *MEMORY[0x277D6FD90] && !self->_userModelRateLimitingDisabled)
    {
      v39 = dateCopy;
      mEMORY[0x277D6F548] = IXADefaultLogFacility();
      if (os_log_type_enabled(mEMORY[0x277D6F548], OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Counter change cache persistence not required due to rate limiting.", "-[TICounterChangeCache persistForDate:]"];
        *buf = 138412290;
        v57 = v8;
        _os_log_impl(&dword_22CA55000, mEMORY[0x277D6F548], OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      goto LABEL_40;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
  }

  v39 = v6;
  [v6 timeIntervalSince1970];
  self->_timeOfLastPersist = v9;
  mEMORY[0x277D6F548] = [MEMORY[0x277D6F548] sharedUserModelDataStore];
  if ([mEMORY[0x277D6F548] isValid])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [(NSMutableDictionary *)self->_cache allKeys];
    v36 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v36)
    {
      v35 = *v51;
      v40 = mEMORY[0x277D6F548];
      do
      {
        v10 = 0;
        do
        {
          if (*v51 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v10;
          v11 = *(*(&v50 + 1) + 8 * v10);
          v49 = 0;
          v41 = v11;
          v42 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
          v12 = v49;
          v37 = v12;
          if (v12)
          {
            v13 = v12;
            v14 = IXADefaultLogFacility();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error archiving context object: %@", "-[TICounterChangeCache persistForDate:]", v13];
              *buf = 138412290;
              v57 = v31;
              _os_log_error_impl(&dword_22CA55000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }

            v42 = 0;
          }

          v15 = [(NSMutableDictionary *)self->_cache objectForKey:v41];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          allKeys = [v15 allKeys];
          v16 = [allKeys countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v46;
            do
            {
              v19 = 0;
              v43 = v17;
              do
              {
                if (*v46 != v18)
                {
                  objc_enumerationMutation(allKeys);
                }

                v20 = *(*(&v45 + 1) + 8 * v19);
                v21 = [v15 objectForKeyedSubscript:v20];
                if ([v21 intValue])
                {
                  referencedCounters = self->_referencedCounters;
                  if (!referencedCounters)
                  {
                    [(TICounterChangeCache *)self loadReferencedCounters];
                    referencedCounters = self->_referencedCounters;
                  }

                  if ([(NSMutableSet *)referencedCounters containsObject:v20])
                  {
                    v23 = v15;
                    v24 = [*MEMORY[0x277D6FDB0] stringByAppendingString:v20];
                    v25 = [MEMORY[0x277CCABB0] numberWithInt:0];
                    v26 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
                    inputLanguageAndRegion = [v41 inputLanguageAndRegion];
                    [v40 addValue:v21 andSecondaryValue:v25 andRealValue:v26 andProperties:v42 forKey:v24 forInputMode:inputLanguageAndRegion forDate:v39];

                    v28 = IXADefaultLogFacility();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                    {
                      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Counter change '%@' was persisted.", "-[TICounterChangeCache persistForDate:]", v20];
                      *buf = 138412290;
                      v57 = v29;
                      _os_log_debug_impl(&dword_22CA55000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    v15 = v23;
                    v17 = v43;
                  }

                  else
                  {
                    v24 = IXADefaultLogFacility();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                    {
                      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Counter change '%@' was ignored because it's not referenced by any event.", "-[TICounterChangeCache persistForDate:]", v20];
                      *buf = 138412290;
                      v57 = v30;
                      _os_log_debug_impl(&dword_22CA55000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }

                ++v19;
              }

              while (v17 != v19);
              v17 = [allKeys countByEnumeratingWithState:&v45 objects:v54 count:16];
            }

            while (v17);
          }

          v10 = v38 + 1;
          mEMORY[0x277D6F548] = v40;
        }

        while (v38 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v36);
    }
  }

  else
  {
    obj = IXADefaultLogFacility();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Can't persist counter changes because the database is invalid.", "-[TICounterChangeCache persistForDate:]"];
      *buf = 138412290;
      v57 = v33;
      _os_log_error_impl(&dword_22CA55000, obj, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  [(NSMutableDictionary *)self->_cache removeAllObjects];
LABEL_40:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)keyboardDidSuspendForDate:(id)date
{
  dateCopy = date;
  workQueue = self->_workQueue;
  v7 = dateCopy;
  v6 = dateCopy;
  TIDispatchAsync();
}

- (void)addStatisticChanges:(id)changes withContext:(id)context
{
  contextCopy = context;
  v7 = MEMORY[0x277CBEA60];
  changesCopy = changes;
  v9 = [[v7 alloc] initWithArray:changesCopy copyItems:1];

  if ([v9 count])
  {
    workQueue = self->_workQueue;
    v11 = contextCopy;
    v12 = v9;
    TIDispatchAsync();
  }
}

void __56__TICounterChangeCache_addStatisticChanges_withContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v2 = objc_opt_new();
    [*(*(a1 + 32) + 24) setObject:v2 forKey:*(a1 + 40)];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v8 value];
        v11 = [v2 objectForKey:v9];
        v12 = v11;
        if (v11)
        {
          v10 = [v11 intValue] + v10;
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInt:v10];
        [v2 setValue:v13 forKey:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addCounterReferencesForMetric:(id)metric
{
  v19 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v5 = [(TIMetricDescriptorRegistry *)self->_metricDescriptorRegistry metricDescriptorWithName:metricCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      calculationExpression = [v6 calculationExpression];

      if (calculationExpression)
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        calculationDependencies = [v6 calculationDependencies];
        v9 = [calculationDependencies countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(calculationDependencies);
              }

              [(TICounterChangeCache *)self addCounterReferencesForMetric:*(*(&v14 + 1) + 8 * v12++)];
            }

            while (v10 != v12);
            v10 = [calculationDependencies countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v10);
        }
      }

      else
      {
        [(NSMutableSet *)self->_referencedCounters addObject:metricCopy];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)loadReferencedCounters
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  referencedCounters = self->_referencedCounters;
  self->_referencedCounters = v3;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allEventDescriptors = [(TIEventDescriptorRegistry *)self->_eventDescriptorRegistry allEventDescriptors];
  v6 = [allEventDescriptors countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allEventDescriptors);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        fieldDescriptors = [v10 fieldDescriptors];
        v12 = [fieldDescriptors countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            v15 = 0;
            do
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(fieldDescriptors);
              }

              metricName = [*(*(&v18 + 1) + 8 * v15) metricName];
              [(TICounterChangeCache *)self addCounterReferencesForMetric:metricName];

              ++v15;
            }

            while (v13 != v15);
            v13 = [fieldDescriptors countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [allEventDescriptors countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (TICounterChangeCache)initWithEventDescriptorRegistry:(id)registry metricDescriptorRegistry:(id)descriptorRegistry
{
  registryCopy = registry;
  descriptorRegistryCopy = descriptorRegistry;
  v20.receiver = self;
  v20.super_class = TICounterChangeCache;
  v9 = [(TICounterChangeCache *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventDescriptorRegistry, registry);
    objc_storeStrong(&v10->_metricDescriptorRegistry, descriptorRegistry);
    v11 = objc_opt_new();
    cache = v10->_cache;
    v10->_cache = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);

    v15 = dispatch_queue_create("com.apple.textInput.CounterChangeCache", v14);
    workQueue = v10->_workQueue;
    v10->_workQueue = v15;

    referencedCounters = v10->_referencedCounters;
    v10->_referencedCounters = 0;

    v18 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
    v10->_userModelRateLimitingDisabled = [v18 BOOLForKey:*MEMORY[0x277D6FDB8]];
  }

  return v10;
}

@end