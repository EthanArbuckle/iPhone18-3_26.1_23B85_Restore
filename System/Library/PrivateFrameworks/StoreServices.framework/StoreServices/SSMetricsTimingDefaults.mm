@interface SSMetricsTimingDefaults
+ (id)sharedInstance;
+ (id)sharedInstanceWithSessionDelegate:(id)a3;
- (NSDictionary)values;
- (SSMetricsTimingDefaults)initWithSessionDelegate:(id)a3;
- (double)samplingPercentageCachedResponsesLoadURL;
- (double)samplingPercentageUsersLoadURL;
- (double)samplingPercentageUsersPageRender;
- (double)sessionDurationLoadURL;
- (double)sessionDurationPageRender;
- (void)update;
@end

@implementation SSMetricsTimingDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SSMetricsTimingDefaults sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __41__SSMetricsTimingDefaults_sharedInstance__block_invoke()
{
  v0 = [[SSMetricsTimingDefaults alloc] initWithSessionDelegate:0];
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

+ (id)sharedInstanceWithSessionDelegate:(id)a3
{
  v3 = a3;
  v4 = [[SSMetricsTimingDefaults alloc] initWithSessionDelegate:v3];

  return v4;
}

- (SSMetricsTimingDefaults)initWithSessionDelegate:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SSMetricsTimingDefaults;
  v5 = [(SSMetricsTimingDefaults *)&v16 init];
  if (v5)
  {
    v6 = CFPreferencesCopyAppValue(@"NetworkTimingMetrics", @"com.apple.itunesstored");
    cachedValues = v5->_cachedValues;
    v5->_cachedValues = v6;

    objc_initWeak(&location, v5);
    v8 = [SSCoalescingQueue alloc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__SSMetricsTimingDefaults_initWithSessionDelegate___block_invoke;
    v12[3] = &unk_1E84AD870;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    v9 = [(SSCoalescingQueue *)v8 initWithBlock:v12];
    updateQueue = v5->_updateQueue;
    v5->_updateQueue = v9;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __51__SSMetricsTimingDefaults_initWithSessionDelegate___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [*(a1 + 32) bag];
  }

  else
  {
    v3 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 32) isURLBagRequest])
  {
    v4 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      *v36 = 138412290;
      *&v36[4] = objc_opt_class();
      v8 = *&v36[4];
      LODWORD(v35) = 12;
      v34 = v36;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_18:

        v16 = 0;
        goto LABEL_36;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v36, v35, *v36}];
      free(v9);
      SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, v7);
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    v17 = [SSURLBagContext contextWithBagType:0];
    if (SSIsDaemon())
    {
      v29 = SSViTunesStoreFramework();
      v30 = [SSVWeakLinkedClassForString(&cfstr_Isurlbagcache.isa v29)];
      v20 = [v30 URLBagForContext:v17];

      [v20 valueForKey:@"metrics"];
    }

    else
    {
      v20 = [SSURLBag URLBagForContext:v17];
      [v20 valueForKey:@"metrics" error:0];
    }
    v16 = ;
    goto LABEL_34;
  }

  v16 = [v3 dictionaryForKey:@"metrics" error:0];
  v17 = +[SSLogConfig sharediTunesStoreConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 OSLogObject];
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_34;
  }

  *v36 = 138412546;
  *&v36[4] = objc_opt_class();
  *&v36[12] = 2112;
  *&v36[14] = v16;
  v21 = *&v36[4];
  LODWORD(v35) = 22;
  v34 = v36;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, v36, v35, *v36, *&v36[8], v37}];
    free(v22);
    SSFileLog(v17, @"%@", v23, v24, v25, v26, v27, v28, v20);
LABEL_34:
  }

LABEL_36:
  v31 = [v16 objectForKeyedSubscript:{@"performance", v34}];
  v32 = [WeakRetained cachedValues];
  v33 = [v32 isEqualToDictionary:v31];

  if ((v33 & 1) == 0)
  {
    CFPreferencesSetAppValue(@"NetworkTimingMetrics", v31, @"com.apple.itunesstored");
    [WeakRetained setCachedValues:v31];
  }
}

- (NSDictionary)values
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__58;
  v12 = __Block_byref_object_dispose__58;
  v13 = 0;
  v3 = [(SSMetricsTimingDefaults *)self updateQueue];
  v4 = [v3 queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SSMetricsTimingDefaults_values__block_invoke;
  v7[3] = &unk_1E84ABF40;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__SSMetricsTimingDefaults_values__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) cachedValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)sessionDurationLoadURL
{
  v2 = [(SSMetricsTimingDefaults *)self values];
  v3 = [v2 objectForKeyedSubscript:@"sessionDuration"];
  [v3 doubleValue];
  v5 = v4 / 1000.0;

  return v5;
}

- (double)samplingPercentageUsersLoadURL
{
  v2 = [(SSMetricsTimingDefaults *)self values];
  v3 = [v2 objectForKeyedSubscript:@"samplingPercentageUsers"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)samplingPercentageCachedResponsesLoadURL
{
  v2 = [(SSMetricsTimingDefaults *)self values];
  v3 = [v2 objectForKeyedSubscript:@"samplingPercentageCachedResponses"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)sessionDurationPageRender
{
  v2 = [(SSMetricsTimingDefaults *)self values];
  v3 = [v2 objectForKeyedSubscript:@"sessionDurationPageRender"];
  [v3 doubleValue];
  v5 = v4 / 1000.0;

  return v5;
}

- (double)samplingPercentageUsersPageRender
{
  v2 = [(SSMetricsTimingDefaults *)self values];
  v3 = [v2 objectForKeyedSubscript:@"samplingPercentageUsersPageRender"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)update
{
  if (![(SSMetricsTimingDefaults *)self isRunningTests])
  {
    v3 = [(SSMetricsTimingDefaults *)self updateQueue];
    [v3 executeBlock];
  }
}

@end