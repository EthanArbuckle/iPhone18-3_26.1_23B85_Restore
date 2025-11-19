@interface IMMetrics
+ (double)endTimer:(id)a3 dataSource:(id)a4 withData:(id)a5;
+ (id)flushImmediately;
+ (id)keyForTimerName:(id)a3 dataSource:(id)a4;
+ (id)metricsControllerForTopic:(id)a3;
+ (void)addMetricsController:(id)a3;
+ (void)cancelFlush;
+ (void)initialize;
+ (void)recordEvent:(id)a3;
+ (void)recordEvent:(id)a3 dataSource:(id)a4 data:(id)a5 topic:(id)a6;
+ (void)recordEvent:(id)a3 topic:(id)a4;
+ (void)recordEvent:(id)a3 with:(id)a4;
+ (void)recordMemory:(id)a3;
+ (void)recordUserAction:(id)a3 dataSource:(id)a4 withData:(id)a5;
+ (void)removeMetricsController:(id)a3;
+ (void)setDefaultMetricsController:(id)a3;
+ (void)setupEvent:(id)a3 forDataSource:(id)a4;
+ (void)startTimer:(id)a3 dataSource:(id)a4;
@end

@implementation IMMetrics

+ (void)initialize
{
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___IMMetrics;
  objc_msgSendSuper2(&v15, sel_initialize);
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = _metricsTimers;
  _metricsTimers = v2;

  _logLevel = 0;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"IMMetricsDeviceToken"];
  v6 = _token;
  _token = v5;

  if (!_token)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    v9 = _token;
    _token = v8;

    [v4 setObject:_token forKey:@"IMMetricsDeviceToken"];
    [v4 synchronize];
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = _metricsControllersByTopic;
  _metricsControllersByTopic = v10;

  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v13 = dispatch_queue_create("com.apple.podcasts.IMMetrics.metricsQueue", v12);
  v14 = _metricsQueue;
  _metricsQueue = v13;
}

+ (id)flushImmediately
{
  v2 = _MTLogCategoryMetrics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "Flush immediately", v7, 2u);
  }

  v3 = [_metricsControllersByTopic allValues];
  v4 = [v3 ams_mapWithTransformIgnoresNil:&__block_literal_global_9];

  if ([v4 count])
  {
    [MEMORY[0x1E698CAD0] promiseWithFlattenedPromises:v4];
  }

  else
  {
    [MEMORY[0x1E698CAD0] promiseWithResult:&unk_1F54BE090];
  }
  v5 = ;

  return v5;
}

+ (void)cancelFlush
{
  v2 = _MTLogCategoryMetrics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "Cancel flush", v4, 2u);
  }

  v3 = [_metricsControllersByTopic allValues];
  [v3 makeObjectsPerformSelector:sel_cancel];
}

+ (void)setDefaultMetricsController:(id)a3
{
  v4 = a3;
  if (_metricsController)
  {
    [a1 removeMetricsController:?];
  }

  v5 = _metricsController;
  _metricsController = v4;
  v6 = v4;

  [a1 addMetricsController:v6];
}

+ (void)addMetricsController:(id)a3
{
  if (a3)
  {
    v3 = _metricsControllersByTopic;
    v4 = a3;
    v5 = [v4 topic];
    [v3 setObject:v4 forKeyedSubscript:v5];
  }
}

+ (void)removeMetricsController:(id)a3
{
  if (a3)
  {
    v3 = _metricsControllersByTopic;
    v4 = [a3 topic];
    [v3 removeObjectForKey:v4];
  }
}

+ (id)metricsControllerForTopic:(id)a3
{
  if (a3)
  {
    [_metricsControllersByTopic objectForKeyedSubscript:?];
  }

  else
  {
    [a1 defaultMetricsController];
  }
  v3 = ;

  return v3;
}

+ (void)recordUserAction:(id)a3 dataSource:(id)a4 withData:(id)a5
{
  v11 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setPageType:v9];

  [a1 setupEvent:v10 forDataSource:v8];
  if (v11)
  {
    [v10 im_addPropertiesWithDictionary:v11];
  }

  [a1 recordEvent:v10];
}

+ (void)startTimer:(id)a3 dataSource:(id)a4
{
  v8 = a3;
  v5 = [a1 keyForTimerName:? dataSource:?];
  v6 = [_metricsTimers objectForKey:v5];

  if (v6)
  {
    NSLog(&cfstr_ATimerNamedAlr.isa, v8);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [_metricsTimers setObject:v7 forKeyedSubscript:v5];
}

+ (double)endTimer:(id)a3 dataSource:(id)a4 withData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 keyForTimerName:v8 dataSource:v9];
  v12 = [_metricsTimers objectForKeyedSubscript:v11];
  if (v12)
  {
    [_metricsTimers removeObjectForKey:v11];
    [v12 doubleValue];
    v14 = v13;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v16 = v15 - v14;
    v17 = objc_opt_new();
    [v17 im_setName:v8];
    [v17 setDuration:v16];
    [a1 setupEvent:v17 forDataSource:v9];
    if (v10)
    {
      [v17 im_addPropertiesWithDictionary:v10];
    }

    [a1 recordEvent:v17];
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

+ (id)keyForTimerName:(id)a3 dataSource:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [a4 metricsContentIdentifier];
  v8 = [v5 stringWithFormat:@"%@_%@", v6, v7];

  return v8;
}

+ (void)setupEvent:(id)a3 forDataSource:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v5 metricsContentIdentifier];
  [v8 im_setContentIdentifier:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 metricsAdditionalData];
    if (v7)
    {
      [v8 im_addPropertiesWithDictionary:v7];
    }
  }
}

+ (void)recordMemory:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 im_setName:v4];

  [a1 recordEvent:v5];
}

+ (void)recordEvent:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultMetricsController];
  [a1 recordEvent:v4 with:v5];
}

+ (void)recordEvent:(id)a3 topic:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [a1 metricsControllerForTopic:v6];
  if (!v7 && _logLevel)
  {
    NSLog(&cfstr_RecodingAnEven.isa, v6);
  }

  if ([v7 shouldSuppressUserInfo])
  {
    [v8 setAccount:0];
  }

  [a1 recordEvent:v8 with:v7];
}

+ (void)recordEvent:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__IMMetrics_recordEvent_with___block_invoke;
  aBlock[3] = &unk_1E8568FB0;
  v13 = v6;
  v14 = a1;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  v10 = _Block_copy(aBlock);
  dispatch_async(_metricsQueue, v10);
}

uint64_t __30__IMMetrics_recordEvent_with___block_invoke(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (([a1[6] canRecordEvent] & 1) != 0 || (result = objc_msgSend(a1[4], "shouldIgnoreDNU"), result))
  {
    [a1[5] im_setToken:_token];
    v3 = _logLevel;
    v4 = _MTLogCategoryMetrics();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 2)
    {
      if (v5)
      {
        v6 = a1[5];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_DEFAULT, "Record event - %@", &v9, 0xCu);
      }
    }

    else if (v5)
    {
      v7 = [a1[5] shortDescription];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_DEFAULT, "Record event - %@", &v9, 0xCu);
    }

    result = [a1[4] recordEvent:a1[5]];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)recordEvent:(id)a3 dataSource:(id)a4 data:(id)a5 topic:(id)a6
{
  v14 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setProperty:v12 forBodyKey:@"eventType"];

  [a1 setupEvent:v13 forDataSource:v11];
  if (v14)
  {
    [v13 im_addPropertiesWithDictionary:v14];
  }

  [a1 recordEvent:v13 topic:v10];
}

@end