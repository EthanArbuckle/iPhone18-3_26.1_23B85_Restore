@interface VUIJSFoundation
- (VUIAppContext)appContext;
- (VUIJSFoundation)initWithAppContext:(id)a3;
- (id)_startTimer:(id)a3 time:(int64_t)a4 repeating:(BOOL)a5;
- (void)_clearTimer:(id)a3;
- (void)_jsTimerFired:(id)a3;
- (void)stopTimers;
@end

@implementation VUIJSFoundation

- (VUIJSFoundation)initWithAppContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VUIJSFoundation;
  v5 = [(VUIJSFoundation *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appContext, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    jsTimers = v6->_jsTimers;
    v6->_jsTimers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dateFormatterCache = v6->_dateFormatterCache;
    v6->_dateFormatterCache = v9;
  }

  return v6;
}

- (void)stopTimers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(VUIJSFoundation *)self jsTimers];
  v4 = [v3 allValues];

  if ([v4 count])
  {
    v5 = [v4 valueForKey:@"timer"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v15 + 1) + 8 * v10++) removeManagedReferences];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__VUIJSFoundation_stopTimers__block_invoke;
    block[3] = &unk_1E872D768;
    v14 = v5;
    v11 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v12 = [(VUIJSFoundation *)self jsTimers];
  [v12 removeAllObjects];
}

void __29__VUIJSFoundation_stopTimers__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)_startTimer:(id)a3 time:(int64_t)a4 repeating:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(VUIJSFoundation *)self appContext];
  if ([v8 isObject])
  {
    if (a4 >= 1)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    if (a4 > 0 || !v5)
    {
      v13 = [MEMORY[0x1E696EB40] currentArguments];
      if ([v13 count] < 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v13 subarrayWithRange:{2, objc_msgSend(v13, "count") - 2}];
      }

      v15 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__jsTimerFired_ selector:0 userInfo:v5 repeats:(v10 / 1000.0)];
      v16 = [VUIJSTimerContext alloc];
      v17 = [v9 jsContext];
      v18 = [v17 objectForKeyedSubscript:@"App"];
      v19 = [(VUIJSTimerContext *)v16 initWithCallback:v8 callbackArgs:v14 repeating:v5 ownerObject:v18 timer:v15];

      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v15];
      v20 = [(VUIJSFoundation *)self jsTimers];
      [v20 setObject:v19 forKey:v12];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__VUIJSFoundation__startTimer_time_repeating___block_invoke;
      block[3] = &unk_1E872D768;
      v24 = v15;
      v21 = v15;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_14;
    }

    v11 = @"starting timer with invalid timeout";
  }

  else
  {
    v11 = @"starting timer with empty handler";
  }

  [v9 setException:0 withErrorMessage:v11];
  v12 = 0;
LABEL_14:

  return v12;
}

void __46__VUIJSFoundation__startTimer_time_repeating___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v2 addTimer:*(a1 + 32) forMode:*MEMORY[0x1E695DA28]];
}

- (void)_clearTimer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    v5 = [(VUIJSFoundation *)self jsTimers];
    v6 = [v5 objectForKey:v4];

    if (v6)
    {
      v7 = [v6 timer];
      [v6 removeManagedReferences];
      v8 = [(VUIJSFoundation *)self jsTimers];
      [v8 removeObjectForKey:v4];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__VUIJSFoundation__clearTimer___block_invoke;
      block[3] = &unk_1E872D768;
      v11 = v7;
      v9 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(VUIJSFoundation *)v4 _clearTimer:v6];
    }
  }
}

- (void)_jsTimerFired:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v4];
  objc_initWeak(&location, self);
  v6 = [(VUIJSFoundation *)self appContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__VUIJSFoundation__jsTimerFired___block_invoke;
  v8[3] = &unk_1E87309C0;
  objc_copyWeak(&v10, &location);
  v7 = v5;
  v9 = v7;
  [v6 evaluate:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __33__VUIJSFoundation__jsTimerFired___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained jsTimers];
    v6 = [v5 objectForKey:*(a1 + 32)];

    if (v6)
    {
      v7 = [v6 managedCallback];
      v8 = [v7 value];

      v9 = [v6 managedArgs];
      v10 = [v9 jsValuesWithContext:v13];
      v11 = [v8 callWithArguments:v10];

      if (([v6 isRepeating] & 1) == 0)
      {
        [v6 removeManagedReferences];
        v12 = [v4 jsTimers];
        [v12 removeObjectForKey:*(a1 + 32)];
      }
    }
  }
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (void)_clearTimer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Unknown timer: %@", &v2, 0xCu);
}

@end