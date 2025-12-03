@interface REMLMetricsSet
- (BOOL)addMetrics:(id)metrics;
- (REMLMetricsSet)init;
- (id)getMetricsByName:(id)name;
- (void)reset;
- (void)updateMetricsFromFeatures:(id)features prediction:(id)prediction truth:(id)truth;
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

- (BOOL)addMetrics:(id)metrics
{
  metricsCopy = metrics;
  metricsIndex = self->metricsIndex;
  name = [metricsCopy name];
  v7 = [(NSMutableDictionary *)metricsIndex objectForKey:name];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = self->metricsIndex;
    name2 = [metricsCopy name];
    [(NSMutableDictionary *)v8 setValue:v7 forKey:name2];
  }

  v10 = [v7 containsObject:metricsCopy];
  if ((v10 & 1) == 0)
  {
    [v7 addObject:metricsCopy];
    [(NSMutableSet *)self->metricsSet addObject:metricsCopy];
  }

  return v10 ^ 1;
}

- (id)getMetricsByName:(id)name
{
  v3 = [(NSMutableDictionary *)self->metricsIndex objectForKey:name];
  v4 = v3;
  if (v3 && [v3 count])
  {
    anyObject = [v4 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (void)updateMetricsFromFeatures:(id)features prediction:(id)prediction truth:(id)truth
{
  v22 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  predictionCopy = prediction;
  truthCopy = truth;
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

        [*(*(&v17 + 1) + 8 * v15++) updateMetricsFromFeatures:featuresCopy prediction:predictionCopy truth:{truthCopy, v17}];
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