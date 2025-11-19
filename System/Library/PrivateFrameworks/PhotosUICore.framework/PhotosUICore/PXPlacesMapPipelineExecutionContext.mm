@interface PXPlacesMapPipelineExecutionContext
- (PXPlacesMapPipelineExecutionContext)initWithViewPort:(id)a3 completionHandler:(id)a4;
- (id)durationForDataSources;
- (id)durationForPipelines;
- (void)addDataSources:(id)a3 changesForDataSources:(id)a4;
- (void)start;
- (void)startTimerForDataSource:(id)a3;
- (void)startTimerForPipeline:(id)a3;
- (void)stop;
- (void)stopTimerForDataSource:(id)a3;
- (void)stopTimerForPipeline:(id)a3;
@end

@implementation PXPlacesMapPipelineExecutionContext

- (id)durationForPipelines
{
  v37 = *MEMORY[0x1E69E9840];
  v26 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_timerStartDataSource, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(NSMutableDictionary *)self->_timerStartPipeline allKeys];
  v21 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v21)
  {
    v20 = *v32;
    do
    {
      v3 = 0;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v3;
        v4 = *(*(&v31 + 1) + 8 * v3);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v5 = [(NSMutableDictionary *)self->_timerStartPipeline objectForKeyedSubscript:v4];
        v6 = [v5 allKeys];

        v23 = v6;
        v25 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v25)
        {
          v24 = *v28;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v28 != v24)
              {
                objc_enumerationMutation(v23);
              }

              v8 = *(*(&v27 + 1) + 8 * i);
              v9 = [v26 objectForKeyedSubscript:v4];
              if (!v9)
              {
                v10 = MEMORY[0x1E695DF90];
                v11 = [(NSMutableDictionary *)self->_timerStartPipeline objectForKeyedSubscript:v4];
                v9 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];

                [v26 setObject:v9 forKeyedSubscript:v4];
              }

              v12 = MEMORY[0x1E696AD98];
              v13 = [(NSMutableDictionary *)self->_timerStopPipeline objectForKeyedSubscript:v4];
              v14 = [v13 objectForKeyedSubscript:v8];
              v15 = [(NSMutableDictionary *)self->_timerStartPipeline objectForKeyedSubscript:v4];
              v16 = [v15 objectForKeyedSubscript:v8];
              [v14 timeIntervalSinceDate:v16];
              v17 = [v12 numberWithDouble:?];
              [v9 setObject:v17 forKeyedSubscript:v8];
            }

            v25 = [v23 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v25);
        }

        v3 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v21);
  }

  return v26;
}

- (void)stopTimerForPipeline:(id)a3
{
  v4 = a3;
  if (stopTimerForPipeline__onceToken != -1)
  {
    dispatch_once(&stopTimerForPipeline__onceToken, &__block_literal_global_20_60254);
  }

  v5 = stopTimerForPipeline__stopPipelineQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PXPlacesMapPipelineExecutionContext_stopTimerForPipeline___block_invoke_2;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __60__PXPlacesMapPipelineExecutionContext_stopTimerForPipeline___block_invoke_2(uint64_t a1)
{
  v10 = [MEMORY[0x1E695DF00] date];
  v2 = *(*(a1 + 32) + 48);
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 40) dataSource];
  v5 = objc_opt_class();
  v6 = [*(a1 + 40) dataSource];
  v7 = [v3 stringWithFormat:@"%@%p", v5, v6];
  v8 = [v2 objectForKeyedSubscript:v7];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%p", objc_opt_class(), *(a1 + 40)];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

void __60__PXPlacesMapPipelineExecutionContext_stopTimerForPipeline___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
  v0 = dispatch_queue_create("startDataSourceQueue", v2);
  v1 = stopTimerForPipeline__stopPipelineQueue;
  stopTimerForPipeline__stopPipelineQueue = v0;
}

- (void)startTimerForPipeline:(id)a3
{
  v4 = a3;
  if (startTimerForPipeline__onceToken != -1)
  {
    dispatch_once(&startTimerForPipeline__onceToken, &__block_literal_global_18);
  }

  v5 = startTimerForPipeline__startPipelineQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PXPlacesMapPipelineExecutionContext_startTimerForPipeline___block_invoke_2;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __61__PXPlacesMapPipelineExecutionContext_startTimerForPipeline___block_invoke_2(uint64_t a1)
{
  v10 = [MEMORY[0x1E695DF00] date];
  v2 = *(*(a1 + 32) + 40);
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 40) dataSource];
  v5 = objc_opt_class();
  v6 = [*(a1 + 40) dataSource];
  v7 = [v3 stringWithFormat:@"%@%p", v5, v6];
  v8 = [v2 objectForKeyedSubscript:v7];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%p", objc_opt_class(), *(a1 + 40)];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

void __61__PXPlacesMapPipelineExecutionContext_startTimerForPipeline___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
  v0 = dispatch_queue_create("startDataSourceQueue", v2);
  v1 = startTimerForPipeline__startPipelineQueue;
  startTimerForPipeline__startPipelineQueue = v0;
}

- (id)durationForDataSources
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_timerStartDataSource, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(NSMutableDictionary *)self->_timerStartDataSource allKeys];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AD98];
        v10 = [(NSMutableDictionary *)self->_timerStopDataSource objectForKeyedSubscript:v8];
        v11 = [(NSMutableDictionary *)self->_timerStartDataSource objectForKeyedSubscript:v8];
        [v10 timeIntervalSinceDate:v11];
        v12 = [v9 numberWithDouble:?];
        [v3 setObject:v12 forKeyedSubscript:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)stopTimerForDataSource:(id)a3
{
  v4 = a3;
  if (stopTimerForDataSource__onceToken != -1)
  {
    dispatch_once(&stopTimerForDataSource__onceToken, &__block_literal_global_14);
  }

  v5 = stopTimerForDataSource__stopDataSourceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PXPlacesMapPipelineExecutionContext_stopTimerForDataSource___block_invoke_2;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __62__PXPlacesMapPipelineExecutionContext_stopTimerForDataSource___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x1E695DF00] date];
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%p", objc_opt_class(), *(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:v3];
}

void __62__PXPlacesMapPipelineExecutionContext_stopTimerForDataSource___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
  v0 = dispatch_queue_create("startDataSourceQueue", v2);
  v1 = stopTimerForDataSource__stopDataSourceQueue;
  stopTimerForDataSource__stopDataSourceQueue = v0;
}

- (void)startTimerForDataSource:(id)a3
{
  v4 = a3;
  if (startTimerForDataSource__onceToken != -1)
  {
    dispatch_once(&startTimerForDataSource__onceToken, &__block_literal_global_60262);
  }

  v5 = startTimerForDataSource__startDataSourceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PXPlacesMapPipelineExecutionContext_startTimerForDataSource___block_invoke_2;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __63__PXPlacesMapPipelineExecutionContext_startTimerForDataSource___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x1E695DF00] date];
  v2 = *(*(a1 + 32) + 24);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%p", objc_opt_class(), *(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:v3];
}

void __63__PXPlacesMapPipelineExecutionContext_startTimerForDataSource___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
  v0 = dispatch_queue_create("startDataSourceQueue", v2);
  v1 = startTimerForDataSource__startDataSourceQueue;
  startTimerForDataSource__startDataSourceQueue = v0;
}

- (void)addDataSources:(id)a3 changesForDataSources:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(NSMutableSet *)self->_dataSources addObjectsFromArray:a3];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
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
        v13 = [(NSMapTable *)self->_changesForDataSources objectForKey:v12, v15];
        if (!v13)
        {
          v13 = objc_opt_new();
          [(NSMapTable *)self->_changesForDataSources setObject:v13 forKey:v12];
        }

        v14 = [v7 objectForKey:v12];
        [v13 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)stop
{
  if (self->_duration == 0.0)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceDate:self->_start];
    self->_duration = v4;
  }

  v5 = *(self->_completionHandler + 2);

  v5();
}

- (void)start
{
  v3 = [MEMORY[0x1E695DF00] date];
  start = self->_start;
  self->_start = v3;
}

- (PXPlacesMapPipelineExecutionContext)initWithViewPort:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PXPlacesMapPipelineExecutionContext *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewPort, a3);
    v11 = _Block_copy(v8);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;

    v13 = objc_opt_new();
    dataSources = v10->_dataSources;
    v10->_dataSources = v13;

    v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
    changesForDataSources = v10->_changesForDataSources;
    v10->_changesForDataSources = v15;
  }

  return v10;
}

@end