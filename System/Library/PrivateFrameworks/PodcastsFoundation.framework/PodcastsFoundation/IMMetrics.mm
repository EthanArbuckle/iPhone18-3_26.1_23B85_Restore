@interface IMMetrics
+ (double)endTimer:(id)timer dataSource:(id)source withData:(id)data;
+ (id)flushImmediately;
+ (id)keyForTimerName:(id)name dataSource:(id)source;
+ (id)metricsControllerForTopic:(id)topic;
+ (void)addMetricsController:(id)controller;
+ (void)cancelFlush;
+ (void)initialize;
+ (void)recordEvent:(id)event;
+ (void)recordEvent:(id)event dataSource:(id)source data:(id)data topic:(id)topic;
+ (void)recordEvent:(id)event topic:(id)topic;
+ (void)recordEvent:(id)event with:(id)with;
+ (void)recordMemory:(id)memory;
+ (void)recordUserAction:(id)action dataSource:(id)source withData:(id)data;
+ (void)removeMetricsController:(id)controller;
+ (void)setDefaultMetricsController:(id)controller;
+ (void)setupEvent:(id)event forDataSource:(id)source;
+ (void)startTimer:(id)timer dataSource:(id)source;
@end

@implementation IMMetrics

+ (void)initialize
{
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___IMMetrics;
  objc_msgSendSuper2(&v15, sel_initialize);
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = _metricsTimers;
  _metricsTimers = v2;

  _logLevel = 0;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:@"IMMetricsDeviceToken"];
  v6 = _token;
  _token = v5;

  if (!_token)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v9 = _token;
    _token = uUIDString;

    [standardUserDefaults setObject:_token forKey:@"IMMetricsDeviceToken"];
    [standardUserDefaults synchronize];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = _metricsControllersByTopic;
  _metricsControllersByTopic = dictionary;

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

  allValues = [_metricsControllersByTopic allValues];
  v4 = [allValues ams_mapWithTransformIgnoresNil:&__block_literal_global_9];

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

  allValues = [_metricsControllersByTopic allValues];
  [allValues makeObjectsPerformSelector:sel_cancel];
}

+ (void)setDefaultMetricsController:(id)controller
{
  controllerCopy = controller;
  if (_metricsController)
  {
    [self removeMetricsController:?];
  }

  v5 = _metricsController;
  _metricsController = controllerCopy;
  v6 = controllerCopy;

  [self addMetricsController:v6];
}

+ (void)addMetricsController:(id)controller
{
  if (controller)
  {
    v3 = _metricsControllersByTopic;
    controllerCopy = controller;
    topic = [controllerCopy topic];
    [v3 setObject:controllerCopy forKeyedSubscript:topic];
  }
}

+ (void)removeMetricsController:(id)controller
{
  if (controller)
  {
    v3 = _metricsControllersByTopic;
    topic = [controller topic];
    [v3 removeObjectForKey:topic];
  }
}

+ (id)metricsControllerForTopic:(id)topic
{
  if (topic)
  {
    [_metricsControllersByTopic objectForKeyedSubscript:?];
  }

  else
  {
    [self defaultMetricsController];
  }
  v3 = ;

  return v3;
}

+ (void)recordUserAction:(id)action dataSource:(id)source withData:(id)data
{
  dataCopy = data;
  sourceCopy = source;
  actionCopy = action;
  v10 = objc_opt_new();
  [v10 setPageType:actionCopy];

  [self setupEvent:v10 forDataSource:sourceCopy];
  if (dataCopy)
  {
    [v10 im_addPropertiesWithDictionary:dataCopy];
  }

  [self recordEvent:v10];
}

+ (void)startTimer:(id)timer dataSource:(id)source
{
  timerCopy = timer;
  v5 = [self keyForTimerName:? dataSource:?];
  v6 = [_metricsTimers objectForKey:v5];

  if (v6)
  {
    NSLog(&cfstr_ATimerNamedAlr.isa, timerCopy);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [_metricsTimers setObject:v7 forKeyedSubscript:v5];
}

+ (double)endTimer:(id)timer dataSource:(id)source withData:(id)data
{
  timerCopy = timer;
  sourceCopy = source;
  dataCopy = data;
  v11 = [self keyForTimerName:timerCopy dataSource:sourceCopy];
  v12 = [_metricsTimers objectForKeyedSubscript:v11];
  if (v12)
  {
    [_metricsTimers removeObjectForKey:v11];
    [v12 doubleValue];
    v14 = v13;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v16 = v15 - v14;
    v17 = objc_opt_new();
    [v17 im_setName:timerCopy];
    [v17 setDuration:v16];
    [self setupEvent:v17 forDataSource:sourceCopy];
    if (dataCopy)
    {
      [v17 im_addPropertiesWithDictionary:dataCopy];
    }

    [self recordEvent:v17];
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

+ (id)keyForTimerName:(id)name dataSource:(id)source
{
  v5 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  metricsContentIdentifier = [source metricsContentIdentifier];
  v8 = [v5 stringWithFormat:@"%@_%@", nameCopy, metricsContentIdentifier];

  return v8;
}

+ (void)setupEvent:(id)event forDataSource:(id)source
{
  eventCopy = event;
  sourceCopy = source;
  metricsContentIdentifier = [sourceCopy metricsContentIdentifier];
  [eventCopy im_setContentIdentifier:metricsContentIdentifier];

  if (objc_opt_respondsToSelector())
  {
    metricsAdditionalData = [sourceCopy metricsAdditionalData];
    if (metricsAdditionalData)
    {
      [eventCopy im_addPropertiesWithDictionary:metricsAdditionalData];
    }
  }
}

+ (void)recordMemory:(id)memory
{
  memoryCopy = memory;
  v5 = objc_opt_new();
  [v5 im_setName:memoryCopy];

  [self recordEvent:v5];
}

+ (void)recordEvent:(id)event
{
  eventCopy = event;
  defaultMetricsController = [self defaultMetricsController];
  [self recordEvent:eventCopy with:defaultMetricsController];
}

+ (void)recordEvent:(id)event topic:(id)topic
{
  eventCopy = event;
  topicCopy = topic;
  v7 = [self metricsControllerForTopic:topicCopy];
  if (!v7 && _logLevel)
  {
    NSLog(&cfstr_RecodingAnEven.isa, topicCopy);
  }

  if ([v7 shouldSuppressUserInfo])
  {
    [eventCopy setAccount:0];
  }

  [self recordEvent:eventCopy with:v7];
}

+ (void)recordEvent:(id)event with:(id)with
{
  eventCopy = event;
  withCopy = with;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__IMMetrics_recordEvent_with___block_invoke;
  aBlock[3] = &unk_1E8568FB0;
  v13 = eventCopy;
  selfCopy = self;
  v12 = withCopy;
  v8 = eventCopy;
  v9 = withCopy;
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

+ (void)recordEvent:(id)event dataSource:(id)source data:(id)data topic:(id)topic
{
  dataCopy = data;
  topicCopy = topic;
  sourceCopy = source;
  eventCopy = event;
  v13 = objc_opt_new();
  [v13 setProperty:eventCopy forBodyKey:@"eventType"];

  [self setupEvent:v13 forDataSource:sourceCopy];
  if (dataCopy)
  {
    [v13 im_addPropertiesWithDictionary:dataCopy];
  }

  [self recordEvent:v13 topic:topicCopy];
}

@end