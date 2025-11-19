@interface ICURLAggregatedPerformanceMetrics
+ (id)aggregatedMetricsFromAggregatedMetrics:(id)a3 addingAggregatedMetrics:(id)a4;
+ (id)aggregatedMetricsFromAggregatedMetrics:(id)a3 addingMetrics:(id)a4;
- (BOOL)isNotEmpty;
- (ICURLAggregatedPerformanceMetrics)initWithURLMetrics:(id)a3;
- (double)networkTime;
@end

@implementation ICURLAggregatedPerformanceMetrics

- (double)networkTime
{
  v2 = [(ICURLAggregatedPerformanceMetrics *)self urlMetrics];
  v3 = [v2 mutableCopy];

  v4 = 0.0;
  while ([v3 count])
  {
    v5 = [v3 lastObject];
    [v5 fetchStartTime];
    v7 = v6;
    [v5 endTime];
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
  v2 = [(ICURLAggregatedPerformanceMetrics *)self urlMetrics];
  v3 = [v2 count] != 0;

  return v3;
}

- (ICURLAggregatedPerformanceMetrics)initWithURLMetrics:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICURLAggregatedPerformanceMetrics;
  v5 = [(ICURLAggregatedPerformanceMetrics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICURLAggregatedPerformanceMetrics *)v5 setUrlMetrics:v4];
  }

  return v6;
}

+ (id)aggregatedMetricsFromAggregatedMetrics:(id)a3 addingMetrics:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v5 urlMetrics];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v5 urlMetrics];
      v10 = [v9 arrayByAddingObject:v6];

      v11 = [ICURLAggregatedPerformanceMetrics alloc];
    }

    else
    {
      v13 = [ICURLAggregatedPerformanceMetrics alloc];
      v15[0] = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v11 = v13;
    }

    v12 = [(ICURLAggregatedPerformanceMetrics *)v11 initWithURLMetrics:v10];
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

+ (id)aggregatedMetricsFromAggregatedMetrics:(id)a3 addingAggregatedMetrics:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 urlMetrics];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v6 urlMetrics];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v5 urlMetrics];
      v12 = [v6 urlMetrics];
      v13 = [v11 arrayByAddingObjectsFromArray:v12];

      v14 = [[ICURLAggregatedPerformanceMetrics alloc] initWithURLMetrics:v13];
      goto LABEL_7;
    }

    v15 = v5;
  }

  else
  {
    v15 = v6;
  }

  v14 = v15;
LABEL_7:

  return v14;
}

@end