@interface ICURLAggregatedPerformanceMetrics
+ (id)aggregatedMetricsFromAggregatedMetrics:(id)metrics addingAggregatedMetrics:(id)aggregatedMetrics;
+ (id)aggregatedMetricsFromAggregatedMetrics:(id)metrics addingMetrics:(id)addingMetrics;
- (BOOL)isNotEmpty;
- (ICURLAggregatedPerformanceMetrics)initWithURLMetrics:(id)metrics;
- (double)networkTime;
@end

@implementation ICURLAggregatedPerformanceMetrics

- (double)networkTime
{
  urlMetrics = [(ICURLAggregatedPerformanceMetrics *)self urlMetrics];
  v3 = [urlMetrics mutableCopy];

  v4 = 0.0;
  while ([v3 count])
  {
    lastObject = [v3 lastObject];
    [lastObject fetchStartTime];
    v7 = v6;
    [lastObject endTime];
    if (v7 >= v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    [v3 removeLastObject];
    v10 = [v3 count];
    if (v10 - 1 >= 1)
    {
      do
      {
        v11 = [v3 objectAtIndexedSubscript:--v10];
        [v11 fetchStartTime];
        if (v12 <= v9)
        {
          [v11 responseEndTime];
          if (v13 >= v7)
          {
            [v11 fetchStartTime];
            if (v14 < v7)
            {
              v7 = v14;
            }

            [v11 endTime];
            if (v15 >= v9)
            {
              v9 = v15;
            }

            [v3 removeObjectAtIndex:v10];
          }
        }
      }

      while (v10 > 1);
    }

    v4 = v4 + v9 - v7;
  }

  return v4;
}

- (BOOL)isNotEmpty
{
  urlMetrics = [(ICURLAggregatedPerformanceMetrics *)self urlMetrics];
  v3 = [urlMetrics count] != 0;

  return v3;
}

- (ICURLAggregatedPerformanceMetrics)initWithURLMetrics:(id)metrics
{
  metricsCopy = metrics;
  v8.receiver = self;
  v8.super_class = ICURLAggregatedPerformanceMetrics;
  v5 = [(ICURLAggregatedPerformanceMetrics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICURLAggregatedPerformanceMetrics *)v5 setUrlMetrics:metricsCopy];
  }

  return v6;
}

+ (id)aggregatedMetricsFromAggregatedMetrics:(id)metrics addingMetrics:(id)addingMetrics
{
  v15[1] = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  addingMetricsCopy = addingMetrics;
  if (addingMetricsCopy)
  {
    urlMetrics = [metricsCopy urlMetrics];
    v8 = [urlMetrics count];

    if (v8)
    {
      urlMetrics2 = [metricsCopy urlMetrics];
      v10 = [urlMetrics2 arrayByAddingObject:addingMetricsCopy];

      v11 = [ICURLAggregatedPerformanceMetrics alloc];
    }

    else
    {
      v13 = [ICURLAggregatedPerformanceMetrics alloc];
      v15[0] = addingMetricsCopy;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v11 = v13;
    }

    v12 = [(ICURLAggregatedPerformanceMetrics *)v11 initWithURLMetrics:v10];
  }

  else
  {
    v12 = metricsCopy;
  }

  return v12;
}

+ (id)aggregatedMetricsFromAggregatedMetrics:(id)metrics addingAggregatedMetrics:(id)aggregatedMetrics
{
  metricsCopy = metrics;
  aggregatedMetricsCopy = aggregatedMetrics;
  urlMetrics = [metricsCopy urlMetrics];
  v8 = [urlMetrics count];

  if (v8)
  {
    urlMetrics2 = [aggregatedMetricsCopy urlMetrics];
    v10 = [urlMetrics2 count];

    if (v10)
    {
      urlMetrics3 = [metricsCopy urlMetrics];
      urlMetrics4 = [aggregatedMetricsCopy urlMetrics];
      v13 = [urlMetrics3 arrayByAddingObjectsFromArray:urlMetrics4];

      v14 = [[ICURLAggregatedPerformanceMetrics alloc] initWithURLMetrics:v13];
      goto LABEL_7;
    }

    v15 = metricsCopy;
  }

  else
  {
    v15 = aggregatedMetricsCopy;
  }

  v14 = v15;
LABEL_7:

  return v14;
}

@end