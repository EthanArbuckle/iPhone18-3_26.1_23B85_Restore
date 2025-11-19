@interface VUIAppContext
+ (id)currentAppContext;
- (BOOL)_prepareStartWithURL:(id)a3;
- (VUIAppContext)initWithApplication:(id)a3 mode:(unint64_t)a4 delegate:(id)a5;
- (VUIAppContextDelegate)delegate;
- (VUIApplication)app;
- (id)_appTraitCollection;
- (id)_errorWithMessage:(id)a3;
- (void)_addPrivateInterfaces;
- (void)_addStopRecordToPendingQueueWithReload:(BOOL)a3;
- (void)_dispatchError:(id)a3;
- (void)_doEvaluate:(id)a3;
- (void)_drainOnStartQueue;
- (void)_enqueueOnStartOrExecute:(id)a3;
- (void)_evaluate:(id)a3;
- (void)_invalidateJSThread;
- (void)_jsThreadMain;
- (void)_sourceCanceledOnRunLoop:(__CFRunLoop *)a3;
- (void)_sourcePerform;
- (void)_sourceScheduledOnRunLoop:(__CFRunLoop *)a3;
- (void)_startWithScript:(id)a3 scriptUrl:(id)a4;
- (void)_startWithURL:(id)a3;
- (void)_stopAndReload:(BOOL)a3;
- (void)addPostEvaluateBlock:(id)a3;
- (void)contextDidFailWithError:(id)a3;
- (void)contextDidStartWithJS:(id)a3 options:(id)a4;
- (void)contextDidStopWithOptions:(id)a3;
- (void)dealloc;
- (void)evaluate:(id)a3 completionBlock:(id)a4 completionQueue:(id)a5;
- (void)evaluateDelegateBlockSync:(id)a3;
- (void)evaluateFoundationJS;
- (void)handleReloadWithUrgencyType:(unint64_t)a3 minInterval:(double)a4 data:(id)a5;
- (void)launchAppWithOptions:(id)a3;
- (void)resumeWithOptions:(id)a3;
- (void)setException:(id)a3 withErrorMessage:(id)a4;
- (void)start;
- (void)suspendWithOptions:(id)a3;
@end

@implementation VUIAppContext

- (void)start
{
  if ([(VUIAppContext *)self isRunning])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIAppContext - We are already preparing to start...", buf, 2u);
    }
  }

  else
  {
    [(VUIAppContext *)self setRunning:1];
    kdebug_trace();
    v5 = [(VUIAppContext *)self app];
    v4 = [v5 appJSURL];
    [(VUIAppContext *)self _prepareStartWithURL:v4];
  }
}

- (VUIApplication)app
{
  WeakRetained = objc_loadWeakRetained(&self->_app);

  return WeakRetained;
}

- (void)_jsThreadMain
{
  v3 = objc_autoreleasePoolPush();
  v17.version = 0;
  v17.info = self;
  memset(&v17.retain, 0, 40);
  v17.schedule = VUIRunLoopSourceScheduleCallBack;
  v17.cancel = VUIRunLoopSourceCancelCallBack;
  v17.perform = VUIRunLoopSourcePerformCallBack;
  v4 = self;
  objc_sync_enter(v4);
  Current = CFRunLoopGetCurrent();
  v4->_jsThreadRunLoop = Current;
  CFRetain(Current);
  v6 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v17);
  v4->_jsThreadRunLoopSource = v6;
  v7 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(Current, v6, *MEMORY[0x1E695E8E0]);
  v8 = [MEMORY[0x1E696AF00] currentThread];
  v9 = [v8 threadDictionary];
  [v9 setObject:v4 forKeyedSubscript:@"vuiAppContext"];

  objc_sync_exit(v4);
  do
  {
    v10 = objc_autoreleasePoolPush();
    v11 = CFRunLoopRunInMode(v7, 1.0e10, 1u);
    objc_autoreleasePoolPop(v10);
    v12 = v4;
    objc_sync_enter(v12);
    jsThreadRunLoopSource = v4->_jsThreadRunLoopSource;
    objc_sync_exit(v12);
  }

  while ((v11 - 3) <= 0xFFFFFFFD && jsThreadRunLoopSource == v6);
  v15 = v12;
  objc_sync_enter(v15);
  v16 = [v8 threadDictionary];
  [v16 removeObjectForKey:@"vuiAppContext"];
  CFRelease(v6);
  CFRelease(Current);

  objc_sync_exit(v15);
  objc_autoreleasePoolPop(v3);
}

- (void)_sourcePerform
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VUIAppContext *)v2 pendingQueue];
  objc_sync_exit(v2);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__VUIAppContext__sourcePerform__block_invoke;
  aBlock[3] = &unk_1E87375D0;
  aBlock[4] = v2;
  v4 = v3;
  v17 = v4;
  v5 = _Block_copy(aBlock);
  v6 = v5[2]();
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = [v7 evaluateBlock];
      v8[2]();

      v9 = [v7 completionBlock];

      if (v9)
      {
        v10 = [v7 completionQueue];

        if (v10)
        {
          v11 = [v7 completionQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __31__VUIAppContext__sourcePerform__block_invoke_2;
          block[3] = &unk_1E872D768;
          v15 = v7;
          dispatch_async(v11, block);

          v12 = v15;
        }

        else
        {
          v12 = [v7 completionBlock];
          v12[2](v12, 1);
        }
      }

      v13 = (v5[2])(v5);

      v7 = v13;
    }

    while (v13);
  }
}

id __31__VUIAppContext__sourcePerform__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 40) firstObject];
  if (v3)
  {
    [*(a1 + 40) removeObjectAtIndex:0];
  }

  objc_sync_exit(v2);

  return v3;
}

- (VUIAppContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)evaluateFoundationJS
{
  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.Evaluate.Foundation", "", buf, 2u);
  }

  kdebug_trace();
  v4 = [(VUIAppContext *)self jsContext];
  v5 = [[VUIJSDevice alloc] initWithAppContext:self];
  [v4 setObject:v5 forKeyedSubscript:@"Device"];
  v6 = [(VUIAppContext *)self app];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 userDefaultsStorage];
    if (v7)
    {
      v8 = [[VUIJSUserDefaults alloc] initWithAppContext:self userDefaultsStorage:v7];
      [v4 setObject:v8 forKeyedSubscript:@"userDefaults"];
    }
  }

  v9 = [(VUIJSObject *)[VUIJSApplication alloc] initWithAppContext:self];
  [(VUIAppContext *)self setJsApp:v9];

  v10 = [(VUIAppContext *)self jsApp];
  [v4 setObject:v10 forKeyedSubscript:@"App"];

  [(VUIAppContext *)self _addPrivateInterfaces];
  v11 = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 appContext:self evaluateAppJavaScriptInContext:v4];
  }

  v12 = VUISignpostLogObject();
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.Evaluate.Foundation", "", v13, 2u);
  }

  kdebug_trace();
}

- (void)launchAppWithOptions:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.LaunchApp", "", &v11, 2u);
  }

  v6 = [(VUIAppContext *)self jsContext];
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIAppContext - Starting context with options: %@", &v11, 0xCu);
  }

  v8 = [v6 objectForKeyedSubscript:@"App"];
  v9 = [v8 toObjectOfClass:objc_opt_class()];

  [v9 launchAppWithOptions:v4];
  v10 = VUISignpostLogObject();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.LaunchApp", "", &v11, 2u);
  }
}

- (void)_addPrivateInterfaces
{
  v3 = [[VUIJSFoundation alloc] initWithAppContext:self];
  [(VUIAppContext *)self setJsFoundation:v3];

  v4 = [(VUIAppContext *)self jsContext];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke;
  aBlock[3] = &unk_1E872D9E0;
  objc_copyWeak(&v28, &location);
  v5 = _Block_copy(aBlock);
  [v4 setObject:v5 forKeyedSubscript:@"formatLocalizedNumber"];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_2;
  v25[3] = &unk_1E872DA08;
  objc_copyWeak(&v26, &location);
  v6 = _Block_copy(v25);
  [v4 setObject:v6 forKeyedSubscript:@"joinComponentsWithLocalizedCommaAndSpace"];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_3;
  v23[3] = &unk_1E872DA08;
  objc_copyWeak(&v24, &location);
  v7 = _Block_copy(v23);
  [v4 setObject:v7 forKeyedSubscript:@"joinComponentsWithLocalizedSemicolonAndSpace"];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_4;
  v21[3] = &unk_1E872DA30;
  objc_copyWeak(&v22, &location);
  v8 = _Block_copy(v21);
  [v4 setObject:v8 forKeyedSubscript:@"setTimeout"];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_5;
  v19[3] = &unk_1E872DA58;
  objc_copyWeak(&v20, &location);
  v9 = _Block_copy(v19);
  [v4 setObject:v9 forKeyedSubscript:@"formatDuration"];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_6;
  v17[3] = &unk_1E872DA80;
  objc_copyWeak(&v18, &location);
  v10 = _Block_copy(v17);
  [v4 setObject:v10 forKeyedSubscript:@"formatNumber"];

  [v4 setObject:&__block_literal_global_3 forKeyedSubscript:@"formatInitials"];
  [v4 setObject:&__block_literal_global_63 forKeyedSubscript:@"fetchAppAccessStatus"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_9;
  v15 = &unk_1E872DB10;
  objc_copyWeak(&v16, &location);
  v11 = _Block_copy(&v12);
  [v4 setObject:v11 forKeyedSubscript:{@"openURL", v12, v13, v14, v15}];

  [v4 setObject:&__block_literal_global_81 forKeyedSubscript:@"btoa"];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [a2 toObject];
  if ([v11 isString])
  {
    v16 = [v11 toString];
  }

  else
  {
    v16 = 0;
  }

  if ([v12 isString])
  {
    v17 = [v12 toString];
  }

  else
  {
    v17 = 0;
  }

  if ([v13 isString])
  {
    v18 = [v13 toString];
  }

  else
  {
    v18 = 0;
  }

  v24 = v11;
  if ([v14 isString])
  {
    v19 = [v14 toString];
  }

  else
  {
    v19 = 0;
  }

  v20 = v16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[VUIFormatting sharedInstance];
    v22 = [WeakRetained formatLocalizedNumber:v15 style:v20 postiveFormat:v17 negativeFormat:v18 currencyCode:v19];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"formatLocalizedNumber expects a Number object"];
    v22 = 0;
  }

  return v22;
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isArray])
  {
    v4 = [v3 toArray];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[VUIFormatting sharedInstance];
    v6 = [WeakRetained joinComponentsWithLocalizedCommaAndSpace:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"joinComponentsWithLocalizedCommaAndSpace expects a String object"];
    v6 = 0;
  }

  return v6;
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isArray])
  {
    v4 = [v3 toArray];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[VUIFormatting sharedInstance];
    v6 = [WeakRetained joinComponentsWithLocalizedSemicolonAndSpace:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"joinComponentsWithLocalizedSemicolonAndSpace expects a String object"];
    v6 = 0;
  }

  return v6;
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained jsFoundation];
  v8 = [v7 setTimeout:v5 time:a3];

  return v8;
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 toObject];
  if ([v5 isString])
  {
    v7 = [v5 toString];
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[VUIFormatting sharedInstance];
    v9 = [WeakRetained formatDuration:v6 format:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"formatDuration expects a Number object"];
    v9 = 0;
  }

  return v9;
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [a2 toObject];
  if ([v9 isString])
  {
    v13 = [v9 toString];
  }

  else
  {
    v13 = 0;
  }

  if ([v10 isString])
  {
    v14 = [v10 toString];
  }

  else
  {
    v14 = 0;
  }

  if ([v11 isString])
  {
    v15 = [v11 toString];
  }

  else
  {
    v15 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = +[VUIFormatting sharedInstance];
    v17 = [WeakRetained formatNumber:v12 style:v13 postiveFormat:v14 negativeFormat:v15];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setException:0 withErrorMessage:@"formatNumber expects a Number object"];
    v17 = 0;
  }

  return v17;
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isString])
  {
    v6 = [v4 toString];
  }

  else
  {
    v6 = 0;
  }

  if ([v5 isString])
  {
    v7 = [v5 toString];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[VUIFormatting sharedInstance];
  v9 = [v8 formatInitialsForFirstName:v6 lastName:v7];

  return v9;
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isString] && (objc_msgSend(v2, "toString"), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [MEMORY[0x1E69E15D0] sharedSettings];
    v6 = [v5 settingsForChannelID:v4 externalID:0];

    if (v6 && [v6 accessStatus])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v6, "accessStatus")];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = a2;
    v8 = [[v6 alloc] initWithString:v7];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_10;
    v11[3] = &unk_1E872DAE8;
    v12 = v8;
    v13 = v5;
    v10 = v8;
    [WeakRetained evaluateDelegateBlockSync:v11];
  }
}

void __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_10(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [v2 openSensitiveURL:*(a1 + 32) withOptions:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v4 openURL:*(a1 + 32) configuration:0 completionHandler:0];
  }
}

id __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isString])
  {
    v3 = [v2 toString];
    v4 = [v3 dataUsingEncoding:4];

    v5 = [v4 base64EncodedStringWithOptions:0];
LABEL_5:

    goto LABEL_7;
  }

  if ([v2 isInstanceOf:objc_opt_class()])
  {
    v4 = [v2 toObject];
    v6 = [v4 data];
    v5 = [v6 base64EncodedStringWithOptions:0];

    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)currentAppContext
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"vuiAppContext"];

  return v4;
}

- (VUIAppContext)initWithApplication:(id)a3 mode:(unint64_t)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  +[VUIPreference setupJSCoreConsoleLogging];
  v21.receiver = self;
  v21.super_class = VUIAppContext;
  v10 = [(VUIAppContext *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_app, v8);
    v11->_respondsToTraitCollection = objc_opt_respondsToSelector() & 1;
    v11->_running = 0;
    v11->_mode = a4;
    objc_storeWeak(&v11->_delegate, v9);
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    onStartQueue = v11->_onStartQueue;
    v11->_onStartQueue = v12;

    v11->_appScriptTimeoutInterval = 30.0;
    v14 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 7uLL, MEMORY[0x1E69E96A0]);
    lowMemoryWarningSource = v11->_lowMemoryWarningSource;
    v11->_lowMemoryWarningSource = v14;

    if (v11->_lowMemoryWarningSource)
    {
      objc_initWeak(&location, v11);
      v16 = v11->_lowMemoryWarningSource;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__VUIAppContext_initWithApplication_mode_delegate___block_invoke;
      v18[3] = &unk_1E872E4B8;
      objc_copyWeak(&v19, &location);
      dispatch_source_set_event_handler(v16, v18);
      dispatch_resume(v11->_lowMemoryWarningSource);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return v11;
}

void __51__VUIAppContext_initWithApplication_mode_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained isValid];
    v2 = v4;
    if (v3)
    {
      [v4 evaluate:&__block_literal_global_162];
      v2 = v4;
    }
  }
}

void __51__VUIAppContext_initWithApplication_mode_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 JSGlobalContextRef];

  JSGarbageCollect(v2);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIAppContext;
  [(VUIAppContext *)&v4 dealloc];
}

- (void)suspendWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__VUIAppContext_suspendWithOptions___block_invoke;
  v6[3] = &unk_1E872F038;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(VUIAppContext *)self _enqueueOnStartOrExecute:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __36__VUIAppContext_suspendWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__VUIAppContext_suspendWithOptions___block_invoke_2;
  v3[3] = &unk_1E872F508;
  v4 = *(a1 + 32);
  [WeakRetained evaluate:v3];
}

void __36__VUIAppContext_suspendWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"App"];
  v7 = [v4 toObjectOfClass:objc_opt_class()];

  if (*(a1 + 32))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  [v7 suspendAppWithOptions:v5];
  v6 = [v3 JSGlobalContextRef];

  JSGarbageCollect(v6);
}

- (void)resumeWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VUIAppContext_resumeWithOptions___block_invoke;
  v6[3] = &unk_1E872D9B8;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(VUIAppContext *)self _enqueueOnStartOrExecute:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __35__VUIAppContext_resumeWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__VUIAppContext_resumeWithOptions___block_invoke_2;
  v4[3] = &unk_1E8737508;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [WeakRetained evaluate:v4];
}

void __35__VUIAppContext_resumeWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "[StartQueue] resumeWithOptions evaluated", buf, 2u);
  }

  if ([*(a1 + 32) isValid])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  v6 = *(a1 + 40);
  v7 = objc_opt_class();
  NSLog(&cfstr_ValidContextSR.isa, v5, v6, v7);
  v8 = [v3 objectForKeyedSubscript:@"App"];

  v9 = [v8 toObjectOfClass:objc_opt_class()];

  if (*(a1 + 40))
  {
    v10 = *(a1 + 40);
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  [v9 resumeAppWithOptions:v10];
}

- (void)evaluate:(id)a3 completionBlock:(id)a4 completionQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  if ([(VUIAppContext *)v11 canAccessPendingQueue])
  {
    objc_initWeak(&location, v11);
    v12 = [VUIRunLoopSourceRecord alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__VUIAppContext_evaluate_completionBlock_completionQueue___block_invoke;
    v16[3] = &unk_1E872E828;
    objc_copyWeak(&v18, &location);
    v17 = v8;
    v13 = [(VUIRunLoopSourceRecord *)v12 initWithEvaluateBlock:v16 completionBlock:v9 completionQueue:v10];
    v14 = [(VUIAppContext *)v11 pendingQueue];
    [v14 addObject:v13];

    if (v11->_jsThreadRunLoop)
    {
      jsThreadRunLoopSource = v11->_jsThreadRunLoopSource;
      if (jsThreadRunLoopSource)
      {
        CFRunLoopSourceSignal(jsThreadRunLoopSource);
        CFRunLoopWakeUp(v11->_jsThreadRunLoop);
      }
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v11);
}

void __58__VUIAppContext_evaluate_completionBlock_completionQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _evaluate:*(a1 + 32)];
}

- (void)evaluateDelegateBlockSync:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VUIAppContext_evaluateDelegateBlockSync___block_invoke;
  block[3] = &unk_1E8730538;
  v9 = v5;
  v10 = v4;
  block[4] = self;
  v6 = v5;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __43__VUIAppContext_evaluateDelegateBlockSync___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)addPostEvaluateBlock:(id)a3
{
  v4 = a3;
  v5 = [(VUIAppContext *)self postEvaluationBlocks];

  if (v5)
  {
    v6 = [(VUIAppContext *)self postEvaluationBlocks];
    v7 = [v4 copy];
    [(VUIAppContext *)v6 addObject:v7];
  }

  else
  {
    v6 = self;
    objc_sync_enter(v6);
    if ([(VUIAppContext *)v6 canAccessPendingQueue])
    {
      objc_initWeak(&location, v6);
      v8 = [VUIRunLoopSourceRecord alloc];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __38__VUIAppContext_addPostEvaluateBlock___block_invoke;
      v12[3] = &unk_1E872E828;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      v9 = [(VUIRunLoopSourceRecord *)v8 initWithEvaluateBlock:v12 completionBlock:0];
      v10 = [(VUIAppContext *)v6 pendingQueue];
      [v10 insertObject:v9 atIndex:0];

      if (v6->_jsThreadRunLoop)
      {
        jsThreadRunLoopSource = v6->_jsThreadRunLoopSource;
        if (jsThreadRunLoopSource)
        {
          CFRunLoopSourceSignal(jsThreadRunLoopSource);
          CFRunLoopWakeUp(v6->_jsThreadRunLoop);
        }
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(v6);
  }
}

void __38__VUIAppContext_addPostEvaluateBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doEvaluate:*(a1 + 32)];
}

- (void)setException:(id)a3 withErrorMessage:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(VUIAppContext *)self jsContext];
  if (v11)
  {
    [MEMORY[0x1E696EB58] valueWithObject:v11 inContext:v7];
  }

  else
  {
    [MEMORY[0x1E696EB58] valueWithNewErrorFromMessage:v6 inContext:v7];
  }
  v8 = ;
  v9 = [MEMORY[0x1E696EB58] valueWithBool:1 inContext:v7];
  [v8 setObject:v9 forKeyedSubscript:@"errorDispatched"];

  [v7 setException:v8];
  v10 = [(VUIAppContext *)self _errorWithMessage:v6];
  [(VUIAppContext *)self _dispatchError:v10];
}

- (void)handleReloadWithUrgencyType:(unint64_t)a3 minInterval:(double)a4 data:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VUIAppContext_handleReloadWithUrgencyType_minInterval_data___block_invoke;
  block[3] = &unk_1E8737530;
  objc_copyWeak(v12, &location);
  v11 = v8;
  v12[1] = a3;
  v12[2] = *&a4;
  v9 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __62__VUIAppContext_handleReloadWithUrgencyType_minInterval_data___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_opt_new();
  [v3 setReloadData:*(a1 + 32)];
  v4 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setReloadContext:v3];
    v5 = *(a1 + 48);
    v8 = @"VUIAppReloadUrgencyMinSuspensionTime";
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v4 appContext:WeakRetained needsReloadWithUrgency:v5 options:v7];
  }

  else
  {
    v6 = [WeakRetained app];
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__VUIAppContext_handleReloadWithUrgencyType_minInterval_data___block_invoke_cold_1(WeakRetained, v6);
    }
  }
}

- (BOOL)_prepareStartWithURL:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VUIAppContext *)self mode];
  v6 = v4;
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(VUIAppContext *)self mode];
    *buf = 138413058;
    v31 = v9;
    v32 = 2048;
    v33 = v10;
    v34 = 2048;
    v35 = self;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIAppContext - <%@ (%lu): %p> Launching JavaScript app from URL: %@", buf, 0x2Au);
  }

  v11 = [v6 scheme];
  v12 = [v11 lowercaseString];
  if (![v12 isEqualToString:@"https"])
  {
    v13 = [(VUIAppContext *)self app];
    v14 = [v13 shouldIgnoreJSValidation];

    if (v14)
    {
      goto LABEL_8;
    }

LABEL_15:
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:101 userInfo:0];
    [(VUIAppContext *)self contextDidFailWithError:v15];
    LOBYTE(self) = 0;
    goto LABEL_16;
  }

LABEL_8:
  v15 = self;
  objc_sync_enter(v15);
  v16 = [(VUIAppContext *)v15 pendingQueue];
  LODWORD(self) = v16 == 0;

  if (self)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VUIAppContext *)v15 setPendingQueue:v18];

    [(VUIAppContext *)v15 setCanAccessPendingQueue:1];
    v19 = [VUIRunLoopSourceRecord alloc];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __38__VUIAppContext__prepareStartWithURL___block_invoke;
    v26[3] = &unk_1E872F038;
    objc_copyWeak(&v28, &location);
    v27 = v6;
    v20 = [(VUIRunLoopSourceRecord *)v19 initWithEvaluateBlock:v26 completionBlock:0 completionQueue:0];
    v21 = [(VUIAppContext *)v15 pendingQueue];
    [v21 addObject:v20];

    v22 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:v15 selector:sel__jsThreadMain object:0];
    v23 = v22;
    if (v5 == 1000)
    {
      v24 = 9;
    }

    else
    {
      v24 = 25;
    }

    [v22 setQualityOfService:v24];
    [v23 setName:@"VUICoreThread"];
    [v23 start];

    objc_destroyWeak(&v28);
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:100 userInfo:0];
    [(VUIAppContext *)v15 contextDidFailWithError:v17];
  }

  objc_sync_exit(v15);
LABEL_16:

  objc_destroyWeak(&location);
  return self;
}

void __38__VUIAppContext__prepareStartWithURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startWithURL:*(a1 + 32)];
}

- (void)_startWithURL:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[VUIPreference ignoreHTTPCache])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(VUIAppContext *)self reloadContext];
    v5 = v6 != 0;
  }

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = [(VUIAppContext *)self mode];
    *&buf[22] = 2048;
    v44 = self;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "<%@ (%lu): %p> Attempting to start context with script", buf, 0x20u);
  }

  v10 = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "Fetch application script using App Script Loader", buf, 2u);
    }

    v12 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = __Block_byref_object_copy__38;
    v45 = __Block_byref_object_dispose__38;
    v46 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__38;
    v33 = __Block_byref_object_dispose__38;
    v34 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __31__VUIAppContext__startWithURL___block_invoke;
    v23[3] = &unk_1E8737558;
    v25 = buf;
    v26 = &v29;
    v27 = v28;
    v13 = v12;
    v24 = v13;
    [v10 appContext:self scriptForURL:v4 cachePolicy:v5 completion:v23];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    if (v30[5] || ![*(*&buf[8] + 40) length])
    {
      [(VUIAppContext *)self _invalidateJSThread];
      v14 = VUIDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [(VUIAppContext *)self mode];
        v20 = v30[5];
        *v35 = 138413058;
        v36 = v18;
        v37 = 2048;
        v38 = v19;
        v39 = 2048;
        v40 = self;
        v41 = 2112;
        v42 = v20;
        _os_log_error_impl(&dword_1E323F000, v14, OS_LOG_TYPE_ERROR, "<%@ (%lu): %p> Failed to load launch URL with error: %@", v35, 0x2Au);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__VUIAppContext__startWithURL___block_invoke_92;
      block[3] = &unk_1E872E5B0;
      block[4] = self;
      block[5] = v28;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v35 = 0;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "Downloaded application script sussessfully. Starting script...", v35, 2u);
      }

      [(VUIAppContext *)self _startWithScript:*(*&buf[8] + 40) scriptUrl:v4];
    }

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(VUIAppContext *)self _invalidateJSThread];
    v15 = VUIDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [VUIAppContext _startWithURL:?];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __31__VUIAppContext__startWithURL___block_invoke_93;
    v21[3] = &unk_1E872D768;
    v21[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v21);
  }
}

void __31__VUIAppContext__startWithURL___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2;
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __31__VUIAppContext__startWithURL___block_invoke_92(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E69DF888];
  v7 = *MEMORY[0x1E69DF890];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v2 errorWithDomain:v3 code:101 userInfo:v5];

  [*(a1 + 32) contextDidFailWithError:v6];
}

void __31__VUIAppContext__startWithURL___block_invoke_93(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E69DF888];
  v6 = *MEMORY[0x1E69DF890];
  v7[0] = &unk_1F5E5E730;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v2 errorWithDomain:v3 code:101 userInfo:v4];

  [*(a1 + 32) contextDidFailWithError:v5];
}

- (void)_startWithScript:(id)a3 scriptUrl:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = VUISignpostLogObject();
  v9 = os_signpost_id_generate(v8);

  v10 = VUISignpostLogObject();
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "JS.Evaluate", "", buf, 2u);
  }

  if ([v6 length])
  {
    v13 = [(VUIAppContext *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 appContext:self shouldStartWithScript:v6 scriptURL:v7] & 1) == 0)
    {
      v29 = VUIDefaultLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [(VUIAppContext *)self mode];
        *buf = 138413058;
        v49 = v31;
        v50 = 2048;
        v51 = v32;
        v52 = 2048;
        v53 = self;
        v54 = 2112;
        v55 = v7;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_INFO, "VUIAppContext - <%@ (%lu): %p> Delegate opted to stop script loading from %@", buf, 0x2Au);
      }

      [(VUIAppContext *)self stop];
    }

    else
    {
      v38 = [(VUIAppContext *)self app];
      v14 = [v38 appIdentifier];
      v15 = objc_alloc_init(MEMORY[0x1E696EB40]);
      if ([v14 length])
      {
        [v15 setName:v14];
      }

      [v15 _setITMLDebuggableType];
      [v15 _setDebuggerRunLoop:self->_jsThreadRunLoop];
      [v15 _setRemoteInspectionEnabled:0];
      [(VUIAppContext *)self setJsContext:v15];
      [(VUIAppContext *)self evaluateFoundationJS];
      v16 = VUISignpostLogObject();
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1E323F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.Evaluate.JSContextEvaluateScript", "", buf, 2u);
      }

      v17 = [v15 evaluateScript:v6 withSourceURL:v7];
      v18 = VUISignpostLogObject();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1E323F000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.Evaluate.JSContextEvaluateScript", "", buf, 2u);
      }

      v19 = [v15 exception];

      if (v19)
      {
        v20 = [v15 exception];
        v21 = VUIDefaultLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = [(VUIAppContext *)self mode];
          v36 = [v20 toDictionary];
          *buf = 138413570;
          v49 = v34;
          v50 = 2048;
          v51 = v35;
          v52 = 2048;
          v53 = self;
          v54 = 2112;
          v55 = v7;
          v56 = 2112;
          v57 = v20;
          v58 = 2112;
          v59 = v36;
          v37 = v36;
          _os_log_error_impl(&dword_1E323F000, v21, OS_LOG_TYPE_ERROR, "<%@ (%lu): %p> Unable to start script (%@) because of %@: %@", buf, 0x3Eu);
        }

        [v15 setException:0];
        [(VUIAppContext *)self _invalidateJSThread];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __44__VUIAppContext__startWithScript_scriptUrl___block_invoke_98;
        block[3] = &unk_1E872D990;
        v45 = v20;
        v46 = self;
        v22 = v20;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        v23 = v38;
      }

      else
      {
        [(VUIAppContext *)self setIsValid:1];
        v25 = VUISignpostLogObject();
        v26 = v25;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1E323F000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v9, "JS.Evaluate.AppContextEvaluateScript", "", buf, 2u);
        }

        v27 = VUISignpostLogObject();
        v28 = v27;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1E323F000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v9, "JS.Evaluate.AppContextEvaluateScript.Evaluate", "", buf, 2u);
        }

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __44__VUIAppContext__startWithScript_scriptUrl___block_invoke_99;
        v39[3] = &unk_1E87375A8;
        v43 = v9;
        v39[4] = self;
        v23 = v38;
        v40 = v38;
        v41 = v7;
        v42 = v6;
        [(VUIAppContext *)self _evaluate:v39];
      }
    }
  }

  else
  {
    v24 = VUIDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [VUIAppContext _startWithScript:? scriptUrl:?];
    }

    [(VUIAppContext *)self _invalidateJSThread];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__VUIAppContext__startWithScript_scriptUrl___block_invoke;
    v47[3] = &unk_1E872D768;
    v47[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v47);
  }
}

void __44__VUIAppContext__startWithScript_scriptUrl___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:101 userInfo:0];
  [*(a1 + 32) contextDidFailWithError:v2];
}

void __44__VUIAppContext__startWithScript_scriptUrl___block_invoke_98(uint64_t a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E69DF888];
  v4 = [*(a1 + 32) toDictionary];
  v5 = [v2 errorWithDomain:v3 code:101 userInfo:v4];

  [*(a1 + 40) contextDidFailWithError:v5];
}

void __44__VUIAppContext__startWithScript_scriptUrl___block_invoke_99(uint64_t a1)
{
  v2 = VUISignpostLogObject();
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "JS.Evaluate.AppContextEvaluateScript.Evaluate", "", buf, 2u);
  }

  if ([*(a1 + 32) mode] != 1000)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([*(a1 + 40) appLaunchParams], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "mutableCopy"), v5, !v6))
    {
      v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    }

    v7 = [v6 objectForKey:@"location"];

    v8 = [*(a1 + 48) absoluteString];
    v9 = v8;
    if (*(a1 + 48) && !v7 && [v8 length])
    {
      [v6 setObject:v9 forKey:@"location"];
    }

    v10 = [*(a1 + 32) reloadContext];
    v11 = [v10 reloadData];

    if (v11)
    {
      v12 = [*(a1 + 32) reloadContext];
      v13 = [v12 reloadData];
      [v6 setObject:v13 forKey:@"reloadData"];
    }

    v14 = *(a1 + 32);
    v15 = [v6 copy];
    [v14 launchAppWithOptions:v15];
  }

  v16 = VUISignpostLogObject();
  v17 = v16;
  v18 = *(a1 + 64);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "JS.Evaluate.AppContextEvaluateScript", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VUIAppContext__startWithScript_scriptUrl___block_invoke_106;
  block[3] = &unk_1E8737580;
  v19 = *(a1 + 32);
  v20 = *(a1 + 56);
  v23 = *(a1 + 64);
  block[4] = v19;
  v22 = v20;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__VUIAppContext__startWithScript_scriptUrl___block_invoke_106(uint64_t a1)
{
  v2 = VUISignpostLogObject();
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "JS.Evaluate", "", buf, 2u);
  }

  v5 = VUISignpostLogObject();
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "JS.contextDidStartWithJS", "", v12, 2u);
  }

  [*(a1 + 32) contextDidStartWithJS:*(a1 + 40) options:0];
  v8 = VUISignpostLogObject();
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v9, OS_SIGNPOST_INTERVAL_END, v10, "JS.contextDidStartWithJS", "", v11, 2u);
  }
}

- (void)_addStopRecordToPendingQueueWithReload:(BOOL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if ([(VUIAppContext *)v4 canAccessPendingQueue])
  {
    [(VUIAppContext *)v4 setCanAccessPendingQueue:0];
    objc_initWeak(&location, v4);
    v5 = [VUIRunLoopSourceRecord alloc];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__VUIAppContext__addStopRecordToPendingQueueWithReload___block_invoke;
    v9[3] = &unk_1E872EDE0;
    objc_copyWeak(&v10, &location);
    v11 = a3;
    v6 = [(VUIRunLoopSourceRecord *)v5 initWithEvaluateBlock:v9 completionBlock:0];
    v7 = [(VUIAppContext *)v4 pendingQueue];
    [v7 addObject:v6];

    if (v4->_jsThreadRunLoop)
    {
      jsThreadRunLoopSource = v4->_jsThreadRunLoopSource;
      if (jsThreadRunLoopSource)
      {
        CFRunLoopSourceSignal(jsThreadRunLoopSource);
        CFRunLoopWakeUp(v4->_jsThreadRunLoop);
      }
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v4);
}

void __56__VUIAppContext__addStopRecordToPendingQueueWithReload___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopAndReload:*(a1 + 40)];
}

- (void)_stopAndReload:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"VUINetworkPropertiesChangedNotification" object:0];

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138413058;
    v14 = v8;
    v15 = 2048;
    v16 = [(VUIAppContext *)self mode];
    v17 = 2048;
    v18 = self;
    v19 = 1024;
    v20 = v3;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "<%@ (%lu): %p> Stop and reload %d", buf, 0x26u);
  }

  [(VUIAppContext *)self setIsValid:0];
  [(VUIAppContext *)self setJsContext:0];
  if (v3)
  {
    [(VUIAppContext *)self _invalidateJSThread];
  }

  else
  {
    [(VUIAppContext *)self setNextJSChecksum:0];
    v9 = self;
    objc_sync_enter(v9);
    v10 = [(VUIAppContext *)v9 onStartQueue];
    [v10 removeAllObjects];

    objc_sync_exit(v9);
    [(VUIAppContext *)v9 _invalidateJSThread];
    [(VUIAppContext *)v9 setReloadContext:0];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__VUIAppContext__stopAndReload___block_invoke;
  v11[3] = &unk_1E872ECA0;
  v11[4] = self;
  v12 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __32__VUIAppContext__stopAndReload___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) contextDidStopWithOptions:0];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 start];
  }

  return result;
}

- (void)_sourceScheduledOnRunLoop:(__CFRunLoop *)a3
{
  CFRunLoopSourceSignal(self->_jsThreadRunLoopSource);
  jsThreadRunLoop = self->_jsThreadRunLoop;

  CFRunLoopWakeUp(jsThreadRunLoop);
}

void __31__VUIAppContext__sourcePerform__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) completionBlock];
  v3[2](v3, 1);

  objc_autoreleasePoolPop(v2);
}

- (void)_sourceCanceledOnRunLoop:(__CFRunLoop *)a3
{
  obj = self;
  objc_sync_enter(obj);
  CFRunLoopRemoveSource(obj->_jsThreadRunLoop, obj->_jsThreadRunLoopSource, *MEMORY[0x1E695E8E0]);
  CFRunLoopStop(obj->_jsThreadRunLoop);
  objc_sync_exit(obj);
}

- (void)_evaluate:(id)a3
{
  v16 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  [(VUIAppContext *)self setPostEvaluationBlocks:v4];

  [(VUIAppContext *)self _doEvaluate:v16];
  v5 = [(VUIAppContext *)self postEvaluationBlocks];
  v6 = [v5 firstObject];

  if (v6)
  {
    do
    {
      v7 = [(VUIAppContext *)self postEvaluationBlocks];
      [v7 removeObjectAtIndex:0];

      v8 = [(VUIAppContext *)self jsContext];
      (v6)[2](v6, v8);

      v9 = [(VUIAppContext *)self jsContext];
      v10 = [v9 exception];

      if (v10)
      {
        v11 = [(VUIAppContext *)self jsContext];
        v12 = [v11 exception];
        [(VUIAppContext *)self _dispatchError:v12];

        v13 = [(VUIAppContext *)self jsContext];
        [v13 setException:0];
      }

      v14 = [(VUIAppContext *)self postEvaluationBlocks];
      v15 = [v14 firstObject];

      v6 = v15;
    }

    while (v15);
  }

  [(VUIAppContext *)self setPostEvaluationBlocks:0];
}

- (void)_invalidateJSThread
{
  obj = self;
  objc_sync_enter(obj);
  CFRunLoopSourceInvalidate(obj->_jsThreadRunLoopSource);
  CFRunLoopWakeUp(obj->_jsThreadRunLoop);
  obj->_jsThreadRunLoop = 0;
  obj->_jsThreadRunLoopSource = 0;
  v2 = [(VUIAppContext *)obj pendingQueue];
  [v2 removeAllObjects];

  [(VUIAppContext *)obj setPendingQueue:0];
  [(VUIAppContext *)obj setCanAccessPendingQueue:0];
  [(VUIAppContext *)obj setRunning:0];
  objc_sync_exit(obj);
}

- (void)_doEvaluate:(id)a3
{
  v4 = a3;
  if (![(VUIAppContext *)self isValid])
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [VUIAppContext _doEvaluate:?];
    }
  }

  v6 = [(VUIAppContext *)self jsContext];
  v4[2](v4, v6);

  v7 = [(VUIAppContext *)self jsContext];
  v8 = [v7 exception];

  if (v8)
  {
    v9 = [(VUIAppContext *)self jsContext];
    v10 = [v9 exception];
    [(VUIAppContext *)self _dispatchError:v10];

    v11 = [(VUIAppContext *)self jsContext];
    [v11 setException:0];
  }
}

- (id)_errorWithMessage:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIAppContext *)self jsContext];
  v6 = [v5 objectForKeyedSubscript:@"Error"];
  v7 = [v6 constructWithArguments:MEMORY[0x1E695E0F0]];

  [v7 setObject:v4 forKeyedSubscript:@"message"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 objectForKeyedSubscript:{@"stack", 0}];
  v9 = [v8 toString];
  v10 = [v9 componentsSeparatedByString:@"\n"];

  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (([v15 isEqualToString:@"[native code]"] & 1) == 0)
        {
          [v7 setObject:v15 forKeyedSubscript:@"sourceURL"];
          v16 = [v15 componentsSeparatedByString:@":"];
          v17 = [v16 count];
          if (v17 >= 3)
          {
            v18 = v17;
            v19 = [v16 objectAtIndex:v17 - 2];
            v20 = [v16 objectAtIndex:v18 - 1];
            if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
            {
              [v7 setObject:v19 forKeyedSubscript:@"line"];
              [v7 setObject:v20 forKeyedSubscript:@"column"];
            }
          }

          goto LABEL_16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v7;
}

- (void)_dispatchError:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"errorDispatched"];
  v6 = [v5 toBool];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 objectForKeyedSubscript:@"message"];
    v8 = [v7 toString];

    v9 = [v4 objectForKeyedSubscript:@"sourceURL"];
    v10 = [v9 toString];

    v11 = [v4 objectForKeyedSubscript:@"line"];
    v12 = [v11 toString];

    v13 = [v4 objectForKeyedSubscript:@"column"];
    v14 = [v13 toString];

    if ([v8 length])
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v12, v14];
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138413570;
        v20 = v18;
        v21 = 2048;
        v22 = [(VUIAppContext *)self mode];
        v23 = 2048;
        v24 = self;
        v25 = 2112;
        v26 = v8;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v15;
        _os_log_error_impl(&dword_1E323F000, v16, OS_LOG_TYPE_ERROR, "<%@ (%lu): %p> Error: %@ - %@ - line:%@", buf, 0x3Eu);
      }
    }
  }
}

- (void)_enqueueOnStartOrExecute:(id)a3
{
  aBlock = a3;
  if ([(VUIAppContext *)self isValid])
  {
    aBlock[2]();
  }

  else
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(VUIAppContext *)v4 onStartQueue];
    v6 = _Block_copy(aBlock);
    [v5 addObject:v6];

    objc_sync_exit(v4);
  }
}

- (void)_drainOnStartQueue
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VUIAppContext *)v2 onStartQueue];
  v4 = [v3 copy];

  v5 = [(VUIAppContext *)v2 onStartQueue];
  [v5 removeAllObjects];

  objc_sync_exit(v2);
  if ([v4 count])
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "[StartQueue] Draining start Queue", buf, 2u);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v7 count])
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "[StartQueue] Done Draining start Queue!", buf, 2u);
    }
  }
}

- (void)contextDidStopWithOptions:(id)a3
{
  v4 = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 appContext:self didStopWithOptions:0];
  }
}

- (void)contextDidFailWithError:(id)a3
{
  v5 = a3;
  [(VUIAppContext *)self setRunning:0];
  v4 = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 appContext:self didFailWithError:v5];
  }
}

- (void)contextDidStartWithJS:(id)a3 options:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 appContext:self didStartWithOptions:v6 validatedJSString:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v7 appContext:self didStartWithOptions:v6];
  }

  [(VUIAppContext *)self _drainOnStartQueue];
}

- (id)_appTraitCollection
{
  if (self->_respondsToTraitCollection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_app);
    v3 = [WeakRetained appTraitCollection];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

void __62__VUIAppContext_handleReloadWithUrgencyType_minInterval_data___block_invoke_cold_1(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [a1 mode];
  v11 = [a2 appIdentifier];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)_startWithURL:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [a1 mode];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_startWithScript:(void *)a1 scriptUrl:.cold.1(void *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [a1 mode];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

- (void)_doEvaluate:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [a1 mode];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end