@interface TIMetricDescriptorRegistry
+ (TIMetricDescriptorRegistry)registryWithConfig:(id)a3;
+ (TIMetricDescriptorRegistry)registryWithDescriptors:(id)a3 andInvalidMetricNames:(id)a4;
+ (id)registry;
- (NSDictionary)metricDescriptors;
- (NSSet)invalidMetricNames;
- (TIMetricDescriptorRegistry)initWithConfig:(id)a3;
- (TIMetricDescriptorRegistry)initWithDescriptors:(id)a3 andInvalidMetricNames:(id)a4;
- (id)allMetricDescriptors;
- (id)contextFromError:(id)a3;
- (id)metricDescriptorWithName:(id)a3;
- (id)valueFromError:(id)a3 forKey:(id)a4;
- (void)_loadMetricDescriptors;
- (void)loadMetricDescriptorsIfNecessary;
@end

@implementation TIMetricDescriptorRegistry

- (id)valueFromError:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = [a3 userInfo];
  v7 = [v6 objectForKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v7];
    v8 = LABEL_5:;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%i", objc_msgSend(v7, "intValue")];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)contextFromError:(id)a3
{
  v3 = [(TIMetricDescriptorRegistry *)self valueFromError:a3 forKey:@"metric"];
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Metric %@ ", v3];
  }

  else
  {
    v4 = &stru_283FDFAF8;
  }

  return v4;
}

- (void)_loadMetricDescriptors
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(TIMetricDescriptorRegistry *)self config];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:@"MetricDescriptors" withExtension:@"plist"];
    v6 = IXADefaultLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading metric descriptor configuration.", "-[TIMetricDescriptorRegistry _loadMetricDescriptors]"];
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5];
    [(TIMetricDescriptorRegistry *)self setConfig:v8];

    v9 = [(TIMetricDescriptorRegistry *)self config];

    if (!v9)
    {
      v10 = IXADefaultLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Unable to load the metric descriptor configuration from %@.plist.", "-[TIMetricDescriptorRegistry _loadMetricDescriptors]", @"MetricDescriptors"];
        *buf = 138412290;
        v25 = v22;
        _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(TIMetricDescriptorRegistry *)self config];

  if (v11)
  {
    v12 = IXADefaultLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading metric descriptors.", "-[TIMetricDescriptorRegistry _loadMetricDescriptors]"];
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_22CA55000, v12, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v14 = objc_opt_new();
    v15 = objc_opt_new();
    metricDescriptors = self->_metricDescriptors;
    invalidMetricNames = self->_invalidMetricNames;
    v18 = [(TIMetricDescriptorRegistry *)self config];
    [v14 parseMetricDescriptors:metricDescriptors andInvalidMetricNames:invalidMetricNames fromConfig:v18 errors:v15];

    if ([v15 count])
    {
      v19 = IXADefaultLogFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The following errors occurred while parsing the metrics descriptor configuration.", "-[TIMetricDescriptorRegistry _loadMetricDescriptors]"];
        *buf = 138412290;
        v25 = v21;
        _os_log_error_impl(&dword_22CA55000, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __52__TIMetricDescriptorRegistry__loadMetricDescriptors__block_invoke;
      v23[3] = &unk_2787319C8;
      v23[4] = self;
      [v15 enumerateObjectsUsingBlock:v23];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__TIMetricDescriptorRegistry__loadMetricDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IXADefaultLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 32) contextFromError:v3];
    v8 = [v3 userInfo];
    v9 = [v8 objectForKey:@"message"];
    v10 = [v6 stringWithFormat:@"%s   %@%@", "-[TIMetricDescriptorRegistry _loadMetricDescriptors]_block_invoke", v7, v9];
    *buf = 138412290;
    v12 = v10;
    _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadMetricDescriptorsIfNecessary
{
  [(NSLock *)self->_lock lock];
  if (!self->_loaded)
  {
    [(TIMetricDescriptorRegistry *)self _loadMetricDescriptors];
    self->_loaded = 1;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (NSSet)invalidMetricNames
{
  [(TIMetricDescriptorRegistry *)self loadMetricDescriptorsIfNecessary];
  invalidMetricNames = self->_invalidMetricNames;

  return invalidMetricNames;
}

- (NSDictionary)metricDescriptors
{
  [(TIMetricDescriptorRegistry *)self loadMetricDescriptorsIfNecessary];
  metricDescriptors = self->_metricDescriptors;

  return metricDescriptors;
}

- (id)metricDescriptorWithName:(id)a3
{
  v4 = a3;
  v5 = [(TIMetricDescriptorRegistry *)self invalidMetricNames];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(TIMetricDescriptorRegistry *)self metricDescriptors];
    v7 = [v8 objectForKey:v4];

    if (!v7)
    {
      v7 = [TINumericValueDescriptor numericValueDescriptorWithMetricName:v4 calculationExpression:0 calculationPrecondition:0 calculationDefaultValue:0 calculationDependencies:0 bucketThresholds:0 bucketValues:0];
    }
  }

  return v7;
}

- (id)allMetricDescriptors
{
  v2 = [(TIMetricDescriptorRegistry *)self metricDescriptors];
  v3 = [v2 allValues];

  return v3;
}

- (TIMetricDescriptorRegistry)initWithDescriptors:(id)a3 andInvalidMetricNames:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TIMetricDescriptorRegistry *)self initWithConfig:MEMORY[0x277CBEC10]];
  if (v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          metricDescriptors = v8->_metricDescriptors;
          v16 = [v14 metricName];
          [(NSMutableDictionary *)metricDescriptors setObject:v14 forKey:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(NSMutableSet *)v8->_invalidMetricNames addObject:*(*(&v26 + 1) + 8 * j), v26];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }

    v8->_loaded = 1;
    v22 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v8->_lock;
    v8->_lock = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

- (TIMetricDescriptorRegistry)initWithConfig:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = TIMetricDescriptorRegistry;
  v6 = [(TIMetricDescriptorRegistry *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = objc_opt_new();
    metricDescriptors = v7->_metricDescriptors;
    v7->_metricDescriptors = v8;

    v10 = objc_opt_new();
    invalidMetricNames = v7->_invalidMetricNames;
    v7->_invalidMetricNames = v10;

    v7->_loaded = 0;
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v7->_lock;
    v7->_lock = v12;
  }

  return v7;
}

+ (TIMetricDescriptorRegistry)registryWithDescriptors:(id)a3 andInvalidMetricNames:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TIMetricDescriptorRegistry alloc] initWithDescriptors:v6 andInvalidMetricNames:v5];

  return v7;
}

+ (TIMetricDescriptorRegistry)registryWithConfig:(id)a3
{
  v3 = a3;
  v4 = [[TIMetricDescriptorRegistry alloc] initWithConfig:v3];

  return v4;
}

+ (id)registry
{
  v2 = [[TIMetricDescriptorRegistry alloc] initWithConfig:0];

  return v2;
}

@end