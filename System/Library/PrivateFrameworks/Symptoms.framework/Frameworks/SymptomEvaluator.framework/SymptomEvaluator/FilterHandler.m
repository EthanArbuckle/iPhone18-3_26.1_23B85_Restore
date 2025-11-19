@interface FilterHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)a3;
- (FilterHandler)init;
- (int)configureInstance:(id)a3;
- (int)configureSubsystem:(id)a3;
- (int)read:(id)a3 returnedValues:(id)a4;
@end

@implementation FilterHandler

- (FilterHandler)init
{
  v3.receiver = self;
  v3.super_class = FilterHandler;
  return [(FilterHandler *)&v3 init];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__FilterHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_15 != -1)
  {
    dispatch_once(&sharedInstance_pred_15, block);
  }

  v2 = sharedInstance_sharedInstance_15;

  return v2;
}

void __31__FilterHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_15;
  sharedInstance_sharedInstance_15 = v1;

  v3 = sharedInstance_sharedInstance_15;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[FilterHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

- (int)configureSubsystem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:@"SUBSYSTEM_SHORT_TEXT_ID"];
  if (v4)
  {
    v5 = [SymptomStore idFromReporterName:v4];
    v6 = [ReporterFilter filterForName:v4 id:v5];
    v7 = [v3 objectForKey:@"SUBSYSTEM_FILTERS"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 configureSymptomFilter:*(*(&v16 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v12 = 0;
  }

  else
  {
    v13 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Can't read SUBSYSTEM_SHORT_TEXT_ID", buf, 2u);
    }

    v12 = -1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)configureInstance:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:@"SUBSYSTEM_CONFIGURATIONS"];
  v5 = v4;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(FilterHandler *)self configureSubsystem:*(*(&v14 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }

    v10 = 0;
  }

  else
  {
    v11 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Can't find subsystemConfigurations in params", buf, 2u);
    }

    v10 = -1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)noteSymptom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *([v4 eventData] + 16);
  v6 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = [v4 description];
    v9 = [v8 UTF8String];
    v10 = [(FilterHandler *)self description];
    *buf = 136315394;
    v16 = v9;
    v17 = 2080;
    v18 = [v10 UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "noteSymptom %s, arriving at %s", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __29__FilterHandler_noteSymptom___block_invoke;
  v13[3] = &__block_descriptor_36_e24_v16__0__ReporterFilter_8l;
  v14 = v5 & 0xFFFFF;
  [ReporterFilter enumerateReporterFiltersUsingBlock:v13];

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

void __29__FilterHandler_noteSymptom___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = filterLogHandle;
  if (os_log_type_enabled(filterLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    v6 = [v3 description];
    *buf = 136315138;
    v30 = [v6 UTF8String];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "enumerate block for %s", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v3 symptomFilters];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v21 = 0;
    v22 = 0;
    v10 = *v25;
    obj = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 potentialFilters];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
        v15 = [v13 objectForKey:v14];

        if (v15)
        {
          v16 = [v15 initialFilter];
          v17 = [v15 finalFilter];
          v18 = [v12 currentFilter];
          v19 = v18;
          if (!v18 || ([v18 isEqual:v16] & 1) == 0)
          {
            [v12 setCurrentFilter:v16];
            BYTE4(v22) = 1;
          }

          if ([v3 hasFinalTimer])
          {
            [v3 setFinalTimer:0];
          }

          [v12 setFinalFilter:v17];
          if (v17)
          {
            v21 = [v15 delayValue];
            LOBYTE(v22) = 1;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);

    if ((v22 & 0x100000000) != 0)
    {
      [v3 updateTransportFilters];
      [v3 pushTransportFilters];
    }

    if (v22)
    {
      [v3 setFinalTimer:v21];
    }
  }

  else
  {
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end