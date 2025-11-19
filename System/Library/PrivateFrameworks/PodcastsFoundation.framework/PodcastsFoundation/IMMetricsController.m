@interface IMMetricsController
+ (id)queue;
- (IMMetricsController)initWithTopic:(id)a3;
- (id)flushImmediately;
- (void)addAdditionalFieldsToEvent:(id)a3 completion:(id)a4;
- (void)getMetricsController:(id)a3;
- (void)recordEvent:(id)a3;
@end

@implementation IMMetricsController

+ (id)queue
{
  if (queue_onceToken != -1)
  {
    +[IMMetricsController queue];
  }

  v3 = queue_queue;

  return v3;
}

void __28__IMMetricsController_queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("IMMetricsController", v2);
  v1 = queue_queue;
  queue_queue = v0;
}

- (IMMetricsController)initWithTopic:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMMetricsController;
  v5 = [(IMMetricsController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMMetricsController *)v5 setTopic:v4];
    [(IMMetricsController *)v6 setIsLoading:0];
    [(IMMetricsController *)v6 setShouldIgnoreDNU:0];
    [(IMMetricsController *)v6 setShouldSuppressUserInfo:0];
  }

  return v6;
}

- (id)flushImmediately
{
  v3 = [(IMMetricsController *)self metricsController];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__IMMetricsController_flushImmediately__block_invoke;
    aBlock[3] = &unk_1E8569318;
    aBlock[4] = self;
    v5 = v4;
    v15 = v5;
    v6 = _Block_copy(aBlock);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__IMMetricsController_flushImmediately__block_invoke_12;
    v12[3] = &unk_1E8569E18;
    v13 = v6;
    v7 = v6;
    v8 = _Block_copy(v12);
    v9 = [objc_opt_class() queue];
    dispatch_async(v9, v8);

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __39__IMMetricsController_flushImmediately__block_invoke(uint64_t a1)
{
  v2 = _IMStoreLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "Start flushing metric events.", v6, 2u);
  }

  v3 = [*(a1 + 32) metricsController];
  v4 = [v3 flush];

  v5 = *(a1 + 40);
  if (v4)
  {
    [v5 finishWithPromise:v4];
    [v4 addErrorBlock:&__block_literal_global_6_0];
    [v4 addFinishBlock:&__block_literal_global_10];
  }

  else
  {
    [v5 finishWithResult:&unk_1F54BDC58];
  }
}

void __39__IMMetricsController_flushImmediately__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _IMStoreLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_ERROR, "Error flushing metric events: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __39__IMMetricsController_flushImmediately__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = _IMStoreLogCategoryDefault();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v8 = "Finished flushing %@ metric events. Error: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
LABEL_6:
      _os_log_impl(&dword_1D8CEC000, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    v8 = "Finished flushing %@ metric events.";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)recordEvent:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__IMMetricsController_recordEvent___block_invoke;
  v6[3] = &unk_1E8569E40;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(IMMetricsController *)self getMetricsController:v6];
}

void __35__IMMetricsController_recordEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PFClientUtil clientBundleVersion];
  [v4 setAppVersion:v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) topic];
  [v6 setTopic:v7];

  [*(a1 + 32) setAnonymous:1];
  v10 = a1 + 32;
  v8 = *(a1 + 32);
  v9 = *(v10 + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__IMMetricsController_recordEvent___block_invoke_2;
  v12[3] = &unk_1E8569318;
  v13 = v3;
  v14 = v8;
  v11 = v3;
  [v9 addAdditionalFieldsToEvent:v8 completion:v12];
}

- (void)addAdditionalFieldsToEvent:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = +[IMNetworkObserver sharedInstance];
  v9 = [v8 connectionTypeHeader];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = @"unknown";
  }

  [v7 setObject:v10 forKey:@"connection"];
  v11 = MEMORY[0x1E698CBB8];
  v12 = [MEMORY[0x1E698CAC8] currentProcess];
  v13 = [v11 userAgentForProcessInfo:v12];

  if ([v13 length])
  {
    [v7 setObject:v13 forKey:@"userAgent"];
  }

  v14 = +[IMURLBag sharedInstance];
  v15 = [v14 metricsDictionary];
  v16 = [objc_opt_class() queue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__IMMetricsController_addAdditionalFieldsToEvent_completion___block_invoke;
  v20[3] = &unk_1E8569E90;
  v21 = v5;
  v22 = v7;
  v23 = v6;
  v17 = v6;
  v18 = v7;
  v19 = v5;
  [v15 asyncValueOnQueue:v16 withCompletion:v20];
}

void __61__IMMetricsController_addAdditionalFieldsToEvent_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch metrics dictionary with error %@", buf, 0xCu);
    }

    [*(a1 + 32) addPropertiesWithDictionary:*(a1 + 40)];
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }

  else
  {
    v10 = [v6 objectForKey:@"metricsBase"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v6 objectForKey:@"fields"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __61__IMMetricsController_addAdditionalFieldsToEvent_completion___block_invoke_37;
          v19[3] = &unk_1E8569E68;
          v20 = *(a1 + 40);
          [v11 enumerateKeysAndObjectsUsingBlock:v19];
        }
      }
    }

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __61__IMMetricsController_addAdditionalFieldsToEvent_completion___block_invoke_2;
        v17 = &unk_1E8569E68;
        v18 = *(a1 + 40);
        [v10 enumerateKeysAndObjectsUsingBlock:&v14];
      }
    }

    [*(a1 + 32) addPropertiesWithDictionary:{*(a1 + 40), v14, v15, v16, v17}];
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __61__IMMetricsController_addAdditionalFieldsToEvent_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void __61__IMMetricsController_addAdditionalFieldsToEvent_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (void)getMetricsController:(id)a3
{
  v4 = a3;
  v5 = [(IMMetricsController *)self metricsController];

  if (v5)
  {
    v6 = [(IMMetricsController *)self metricsController];
    v4[2](v4, v6);
  }

  else
  {
    v7 = [objc_opt_class() queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__IMMetricsController_getMetricsController___block_invoke;
    v8[3] = &unk_1E85692C8;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

void __44__IMMetricsController_getMetricsController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) metricsController];

  if (!v2)
  {
    v3 = +[IMURLBag sharedInstance];
    v4 = [objc_alloc(MEMORY[0x1E698CA00]) initWithContainerID:@"com.apple.podcasts" bag:v3];
    [*(a1 + 32) setMetricsController:v4];
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) metricsController];
  (*(v5 + 16))(v5, v6);
}

@end