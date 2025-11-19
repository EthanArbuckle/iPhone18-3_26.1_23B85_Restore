@interface WFActionRateLimiter
+ (id)sharedInstance;
+ (void)performAction:(id)a3 onQueue:(id)a4 withBlock:(id)a5;
- (NSDictionary)attempts;
- (WFActionRateLimiter)init;
- (WFActionRateLimiter)initWithUserDefaults:(id)a3;
- (void)modify:(id)a3;
- (void)setAttempts:(id)a3;
@end

@implementation WFActionRateLimiter

- (void)modify:(id)a3
{
  v4 = a3;
  v5 = [(WFActionRateLimiter *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__WFActionRateLimiter_modify___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __30__WFActionRateLimiter_modify___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = [*(a1 + 32) attempts];
  DeepCopy = CFPropertyListCreateDeepCopy(v2, v3, 1uLL);

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setAttempts:DeepCopy];
}

- (void)setAttempts:(id)a3
{
  v4 = a3;
  v5 = [(WFActionRateLimiter *)self userDefaults];
  [v5 setObject:v4 forKey:@"WFActionRateLimiter"];
}

- (NSDictionary)attempts
{
  v2 = [(WFActionRateLimiter *)self userDefaults];
  v3 = [v2 dictionaryForKey:@"WFActionRateLimiter"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

- (WFActionRateLimiter)initWithUserDefaults:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFActionRateLimiter.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"userDefaults"}];
  }

  v13.receiver = self;
  v13.super_class = WFActionRateLimiter;
  v7 = [(WFActionRateLimiter *)&v13 init];
  if (v7)
  {
    v8 = dispatch_queue_create("com.apple.shortcuts.WFActionRateLimiter", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    objc_storeStrong(&v7->_userDefaults, a3);
    v10 = v7;
  }

  return v7;
}

- (WFActionRateLimiter)init
{
  v3 = [MEMORY[0x1E695E000] workflowUserDefaults];
  v4 = [(WFActionRateLimiter *)self initWithUserDefaults:v3];

  return v4;
}

+ (void)performAction:(id)a3 onQueue:(id)a4 withBlock:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_14:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"WFActionRateLimiter.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:a1 file:@"WFActionRateLimiter.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"action"}];

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_15:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:a1 file:@"WFActionRateLimiter.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_4:
  v13 = [v9 rateLimitThreshold];
  if (v13)
  {
    v14 = v13;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v15 = [v9 identifier];
    v16 = [a1 sharedInstance];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __55__WFActionRateLimiter_performAction_onQueue_withBlock___block_invoke;
    v29[3] = &unk_1E83753E8;
    v17 = v15;
    v30 = v17;
    v32 = &v33;
    v18 = v9;
    v31 = v18;
    [v16 modify:v29];

    if (v34[3] <= v14)
    {
      v12[2](v12);
    }

    else
    {
      v19 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 identifier];
        v21 = [v18 rateLimitDelay];
        *buf = 136315906;
        v38 = "+[WFActionRateLimiter performAction:onQueue:withBlock:]";
        v39 = 2112;
        v40 = v20;
        v41 = 2048;
        v42 = v14;
        v43 = 2048;
        v44 = v21;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_DEFAULT, "%s Action %@ is being rate limited because it passed the threshold of %li runs. Delaying execution for %li seconds.", buf, 0x2Au);
      }

      v22 = dispatch_time(0, 1000000000 * [v18 rateLimitDelay]);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__WFActionRateLimiter_performAction_onQueue_withBlock___block_invoke_195;
      block[3] = &unk_1E837F4E8;
      v28 = v12;
      dispatch_after(v22, v10, block);
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v12[2](v12);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __55__WFActionRateLimiter_performAction_onQueue_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v19 setObject:v5 forKeyedSubscript:*(a1 + 32)];
  }

  v6 = [v5 objectForKeyedSubscript:@"LastAttemptDate"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass_9058(v6, v7);

  v9 = [v5 objectForKeyedSubscript:@"NumberOfAttempts"];
  v10 = objc_opt_class();
  v11 = WFEnforceClass_9058(v9, v10);
  *(*(*(a1 + 48) + 8) + 24) = [v11 integerValue];

  [v8 timeIntervalSinceNow];
  v13 = v12;
  v14 = [*(a1 + 40) rateLimitTimeout];
  v15 = *(*(a1 + 48) + 8);
  if (v13 <= -v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = *(v15 + 24) + 1;
  }

  *(v15 + 24) = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 48) + 8) + 24)];
  [v5 setObject:v17 forKeyedSubscript:@"NumberOfAttempts"];

  v18 = [MEMORY[0x1E695DF00] date];
  [v5 setObject:v18 forKeyedSubscript:@"LastAttemptDate"];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9072 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9072, &__block_literal_global_9073);
  }

  v3 = sharedInstance_rateLimiter;

  return v3;
}

void __37__WFActionRateLimiter_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WFActionRateLimiter);
  v1 = sharedInstance_rateLimiter;
  sharedInstance_rateLimiter = v0;
}

@end