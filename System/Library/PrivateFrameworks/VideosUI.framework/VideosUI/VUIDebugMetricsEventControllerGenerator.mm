@interface VUIDebugMetricsEventControllerGenerator
- (VUIDebugMetricsEventControllerGenerator)initWithMetrics:(id)a3;
@end

@implementation VUIDebugMetricsEventControllerGenerator

- (VUIDebugMetricsEventControllerGenerator)initWithMetrics:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = VUIDebugMetricsEventControllerGenerator;
  v5 = [(VUIDebugMetricsEventControllerGenerator *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc_init(VUIDebugMetricsTermCollector);
    v7 = [v4 mutableCopy];
    [v7 sortUsingComparator:&__block_literal_global_157];
    v8 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = [VUIDebugMetricsEvent alloc];
          v16 = [(VUIDebugMetricsEvent *)v15 initWithEventDictionary:v14 termCollater:v6, v20];
          [v8 addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = [[VUIDebugMetricsEventListViewController alloc] initWithEvents:v8];
    viewController = v5->_viewController;
    v5->_viewController = &v17->super.super;
  }

  return v5;
}

uint64_t __59__VUIDebugMetricsEventControllerGenerator_initWithMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 valueForKey:@"eventTime"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  v8 = v7;

  v9 = [v4 valueForKey:@"eventTime"];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  v11 = v10;

  v12 = [v11 compare:v8];
  return v12;
}

@end