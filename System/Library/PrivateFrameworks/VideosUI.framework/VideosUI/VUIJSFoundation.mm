@interface VUIJSFoundation
- (VUIAppContext)appContext;
- (VUIJSFoundation)initWithAppContext:(id)context;
- (id)_startTimer:(id)timer time:(int64_t)time repeating:(BOOL)repeating;
- (void)_clearTimer:(id)timer;
- (void)_jsTimerFired:(id)fired;
- (void)stopTimers;
@end

@implementation VUIJSFoundation

- (VUIJSFoundation)initWithAppContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = VUIJSFoundation;
  v5 = [(VUIJSFoundation *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appContext, contextCopy);
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
  jsTimers = [(VUIJSFoundation *)self jsTimers];
  allValues = [jsTimers allValues];

  if ([allValues count])
  {
    v5 = [allValues valueForKey:@"timer"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = allValues;
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

  jsTimers2 = [(VUIJSFoundation *)self jsTimers];
  [jsTimers2 removeAllObjects];
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

- (id)_startTimer:(id)timer time:(int64_t)time repeating:(BOOL)repeating
{
  repeatingCopy = repeating;
  timerCopy = timer;
  appContext = [(VUIJSFoundation *)self appContext];
  if ([timerCopy isObject])
  {
    if (time >= 1)
    {
      timeCopy = time;
    }

    else
    {
      timeCopy = 0;
    }

    if (time > 0 || !repeatingCopy)
    {
      currentArguments = [MEMORY[0x1E696EB40] currentArguments];
      if ([currentArguments count] < 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = [currentArguments subarrayWithRange:{2, objc_msgSend(currentArguments, "count") - 2}];
      }

      v15 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__jsTimerFired_ selector:0 userInfo:repeatingCopy repeats:(timeCopy / 1000.0)];
      v16 = [VUIJSTimerContext alloc];
      jsContext = [appContext jsContext];
      v18 = [jsContext objectForKeyedSubscript:@"App"];
      v19 = [(VUIJSTimerContext *)v16 initWithCallback:timerCopy callbackArgs:v14 repeating:repeatingCopy ownerObject:v18 timer:v15];

      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v15];
      jsTimers = [(VUIJSFoundation *)self jsTimers];
      [jsTimers setObject:v19 forKey:v12];

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

  [appContext setException:0 withErrorMessage:v11];
  v12 = 0;
LABEL_14:

  return v12;
}

void __46__VUIJSFoundation__startTimer_time_repeating___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v2 addTimer:*(a1 + 32) forMode:*MEMORY[0x1E695DA28]];
}

- (void)_clearTimer:(id)timer
{
  timerCopy = timer;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [timerCopy length])
  {
    jsTimers = [(VUIJSFoundation *)self jsTimers];
    v6 = [jsTimers objectForKey:timerCopy];

    if (v6)
    {
      timer = [v6 timer];
      [v6 removeManagedReferences];
      jsTimers2 = [(VUIJSFoundation *)self jsTimers];
      [jsTimers2 removeObjectForKey:timerCopy];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__VUIJSFoundation__clearTimer___block_invoke;
      block[3] = &unk_1E872D768;
      v11 = timer;
      v9 = timer;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(VUIJSFoundation *)timerCopy _clearTimer:v6];
    }
  }
}

- (void)_jsTimerFired:(id)fired
{
  firedCopy = fired;
  firedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", firedCopy];
  objc_initWeak(&location, self);
  appContext = [(VUIJSFoundation *)self appContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__VUIJSFoundation__jsTimerFired___block_invoke;
  v8[3] = &unk_1E87309C0;
  objc_copyWeak(&v10, &location);
  v7 = firedCopy;
  v9 = v7;
  [appContext evaluate:v8];

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