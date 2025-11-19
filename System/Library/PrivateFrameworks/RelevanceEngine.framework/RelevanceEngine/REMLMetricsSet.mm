@interface REMLMetricsSet
- (BOOL)addMetrics:(id)a3;
- (REMLMetricsSet)init;
- (id)getMetricsByName:(id)a3;
- (void)reset;
- (void)updateMetricsFromFeatures:(id)a3 prediction:(id)a4 truth:(id)a5;
@end

@implementation REMLMetricsSet

- (REMLMetricsSet)init
{
  v9.receiver = self;
  v9.super_class = REMLMetricsSet;
  v2 = [(REMLMetricsSet *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    metricsIndex = v2->metricsIndex;
    v2->metricsIndex = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    metricsSet = v2->metricsSet;
    v2->metricsSet = v5;

    v7 = v2;
  }

  return v2;
}

- (BOOL)addMetrics:(id)a3
{
  v4 = a3;
  metricsIndex = self->metricsIndex;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)metricsIndex objectForKey:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = self->metricsIndex;
    v9 = [v4 name];
    [(NSMutableDictionary *)v8 setValue:v7 forKey:v9];
  }

  v10 = [v7 containsObject:v4];
  if ((v10 & 1) == 0)
  {
    [v7 addObject:v4];
    [(NSMutableSet *)self->metricsSet addObject:v4];
  }

  return v10 ^ 1;
}

- (id)getMetricsByName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->metricsIndex objectForKey:a3];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 anyObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateMetricsFromFeatures:(id)a3 prediction:(id)a4 truth:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->metricsSet;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) updateMetricsFromFeatures:v8 prediction:v9 truth:{v10, v17}];
      }

      while (v13 != v15);
      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->metricsSet;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end