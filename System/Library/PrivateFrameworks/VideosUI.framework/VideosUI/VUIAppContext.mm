@interface VUIAppContext
+ (id)currentAppContext;
- (BOOL)_prepareStartWithURL:(id)l;
- (VUIAppContext)initWithApplication:(id)application mode:(unint64_t)mode delegate:(id)delegate;
- (VUIAppContextDelegate)delegate;
- (VUIApplication)app;
- (id)_appTraitCollection;
- (id)_errorWithMessage:(id)message;
- (void)_addPrivateInterfaces;
- (void)_addStopRecordToPendingQueueWithReload:(BOOL)reload;
- (void)_dispatchError:(id)error;
- (void)_doEvaluate:(id)evaluate;
- (void)_drainOnStartQueue;
- (void)_enqueueOnStartOrExecute:(id)execute;
- (void)_evaluate:(id)_evaluate;
- (void)_invalidateJSThread;
- (void)_jsThreadMain;
- (void)_sourceCanceledOnRunLoop:(__CFRunLoop *)loop;
- (void)_sourcePerform;
- (void)_sourceScheduledOnRunLoop:(__CFRunLoop *)loop;
- (void)_startWithScript:(id)script scriptUrl:(id)url;
- (void)_startWithURL:(id)l;
- (void)_stopAndReload:(BOOL)reload;
- (void)addPostEvaluateBlock:(id)block;
- (void)contextDidFailWithError:(id)error;
- (void)contextDidStartWithJS:(id)s options:(id)options;
- (void)contextDidStopWithOptions:(id)options;
- (void)dealloc;
- (void)evaluate:(id)evaluate completionBlock:(id)block completionQueue:(id)queue;
- (void)evaluateDelegateBlockSync:(id)sync;
- (void)evaluateFoundationJS;
- (void)handleReloadWithUrgencyType:(unint64_t)type minInterval:(double)interval data:(id)data;
- (void)launchAppWithOptions:(id)options;
- (void)resumeWithOptions:(id)options;
- (void)setException:(id)exception withErrorMessage:(id)message;
- (void)start;
- (void)suspendWithOptions:(id)options;
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
    appJSURL = [v5 appJSURL];
    [(VUIAppContext *)self _prepareStartWithURL:appJSURL];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  Current = CFRunLoopGetCurrent();
  selfCopy->_jsThreadRunLoop = Current;
  CFRetain(Current);
  v6 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v17);
  selfCopy->_jsThreadRunLoopSource = v6;
  v7 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(Current, v6, *MEMORY[0x1E695E8E0]);
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:selfCopy forKeyedSubscript:@"vuiAppContext"];

  objc_sync_exit(selfCopy);
  do
  {
    v10 = objc_autoreleasePoolPush();
    v11 = CFRunLoopRunInMode(v7, 1.0e10, 1u);
    objc_autoreleasePoolPop(v10);
    v12 = selfCopy;
    objc_sync_enter(v12);
    jsThreadRunLoopSource = selfCopy->_jsThreadRunLoopSource;
    objc_sync_exit(v12);
  }

  while ((v11 - 3) <= 0xFFFFFFFD && jsThreadRunLoopSource == v6);
  v15 = v12;
  objc_sync_enter(v15);
  threadDictionary2 = [currentThread threadDictionary];
  [threadDictionary2 removeObjectForKey:@"vuiAppContext"];
  CFRelease(v6);
  CFRelease(Current);

  objc_sync_exit(v15);
  objc_autoreleasePoolPop(v3);
}

- (void)_sourcePerform
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingQueue = [(VUIAppContext *)selfCopy pendingQueue];
  objc_sync_exit(selfCopy);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__VUIAppContext__sourcePerform__block_invoke;
  aBlock[3] = &unk_1E87375D0;
  aBlock[4] = selfCopy;
  v4 = pendingQueue;
  v17 = v4;
  v5 = _Block_copy(aBlock);
  v6 = v5[2]();
  if (v6)
  {
    v7 = v6;
    do
    {
      evaluateBlock = [v7 evaluateBlock];
      evaluateBlock[2]();

      completionBlock = [v7 completionBlock];

      if (completionBlock)
      {
        completionQueue = [v7 completionQueue];

        if (completionQueue)
        {
          completionQueue2 = [v7 completionQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __31__VUIAppContext__sourcePerform__block_invoke_2;
          block[3] = &unk_1E872D768;
          v15 = v7;
          dispatch_async(completionQueue2, block);

          completionBlock2 = v15;
        }

        else
        {
          completionBlock2 = [v7 completionBlock];
          completionBlock2[2](completionBlock2, 1);
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
  jsContext = [(VUIAppContext *)self jsContext];
  v5 = [[VUIJSDevice alloc] initWithAppContext:self];
  [jsContext setObject:v5 forKeyedSubscript:@"Device"];
  v6 = [(VUIAppContext *)self app];
  if (objc_opt_respondsToSelector())
  {
    userDefaultsStorage = [v6 userDefaultsStorage];
    if (userDefaultsStorage)
    {
      v8 = [[VUIJSUserDefaults alloc] initWithAppContext:self userDefaultsStorage:userDefaultsStorage];
      [jsContext setObject:v8 forKeyedSubscript:@"userDefaults"];
    }
  }

  v9 = [(VUIJSObject *)[VUIJSApplication alloc] initWithAppContext:self];
  [(VUIAppContext *)self setJsApp:v9];

  jsApp = [(VUIAppContext *)self jsApp];
  [jsContext setObject:jsApp forKeyedSubscript:@"App"];

  [(VUIAppContext *)self _addPrivateInterfaces];
  delegate = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appContext:self evaluateAppJavaScriptInContext:jsContext];
  }

  v12 = VUISignpostLogObject();
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.Evaluate.Foundation", "", v13, 2u);
  }

  kdebug_trace();
}

- (void)launchAppWithOptions:(id)options
{
  v13 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.LaunchApp", "", &v11, 2u);
  }

  jsContext = [(VUIAppContext *)self jsContext];
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = optionsCopy;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIAppContext - Starting context with options: %@", &v11, 0xCu);
  }

  v8 = [jsContext objectForKeyedSubscript:@"App"];
  v9 = [v8 toObjectOfClass:objc_opt_class()];

  [v9 launchAppWithOptions:optionsCopy];
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

  jsContext = [(VUIAppContext *)self jsContext];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke;
  aBlock[3] = &unk_1E872D9E0;
  objc_copyWeak(&v28, &location);
  v5 = _Block_copy(aBlock);
  [jsContext setObject:v5 forKeyedSubscript:@"formatLocalizedNumber"];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_2;
  v25[3] = &unk_1E872DA08;
  objc_copyWeak(&v26, &location);
  v6 = _Block_copy(v25);
  [jsContext setObject:v6 forKeyedSubscript:@"joinComponentsWithLocalizedCommaAndSpace"];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_3;
  v23[3] = &unk_1E872DA08;
  objc_copyWeak(&v24, &location);
  v7 = _Block_copy(v23);
  [jsContext setObject:v7 forKeyedSubscript:@"joinComponentsWithLocalizedSemicolonAndSpace"];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_4;
  v21[3] = &unk_1E872DA30;
  objc_copyWeak(&v22, &location);
  v8 = _Block_copy(v21);
  [jsContext setObject:v8 forKeyedSubscript:@"setTimeout"];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_5;
  v19[3] = &unk_1E872DA58;
  objc_copyWeak(&v20, &location);
  v9 = _Block_copy(v19);
  [jsContext setObject:v9 forKeyedSubscript:@"formatDuration"];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_6;
  v17[3] = &unk_1E872DA80;
  objc_copyWeak(&v18, &location);
  v10 = _Block_copy(v17);
  [jsContext setObject:v10 forKeyedSubscript:@"formatNumber"];

  [jsContext setObject:&__block_literal_global_3 forKeyedSubscript:@"formatInitials"];
  [jsContext setObject:&__block_literal_global_63 forKeyedSubscript:@"fetchAppAccessStatus"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __42__VUIAppContext_JS___addPrivateInterfaces__block_invoke_9;
  v15 = &unk_1E872DB10;
  objc_copyWeak(&v16, &location);
  v11 = _Block_copy(&v12);
  [jsContext setObject:v11 forKeyedSubscript:{@"openURL", v12, v13, v14, v15}];

  [jsContext setObject:&__block_literal_global_81 forKeyedSubscript:@"btoa"];
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
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"vuiAppContext"];

  return v4;
}

- (VUIAppContext)initWithApplication:(id)application mode:(unint64_t)mode delegate:(id)delegate
{
  applicationCopy = application;
  delegateCopy = delegate;
  +[VUIPreference setupJSCoreConsoleLogging];
  v21.receiver = self;
  v21.super_class = VUIAppContext;
  v10 = [(VUIAppContext *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_app, applicationCopy);
    v11->_respondsToTraitCollection = objc_opt_respondsToSelector() & 1;
    v11->_running = 0;
    v11->_mode = mode;
    objc_storeWeak(&v11->_delegate, delegateCopy);
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIAppContext;
  [(VUIAppContext *)&v4 dealloc];
}

- (void)suspendWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__VUIAppContext_suspendWithOptions___block_invoke;
  v6[3] = &unk_1E872F038;
  objc_copyWeak(&v8, &location);
  v5 = optionsCopy;
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

- (void)resumeWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VUIAppContext_resumeWithOptions___block_invoke;
  v6[3] = &unk_1E872D9B8;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = optionsCopy;
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

- (void)evaluate:(id)evaluate completionBlock:(id)block completionQueue:(id)queue
{
  evaluateCopy = evaluate;
  blockCopy = block;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(VUIAppContext *)selfCopy canAccessPendingQueue])
  {
    objc_initWeak(&location, selfCopy);
    v12 = [VUIRunLoopSourceRecord alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__VUIAppContext_evaluate_completionBlock_completionQueue___block_invoke;
    v16[3] = &unk_1E872E828;
    objc_copyWeak(&v18, &location);
    v17 = evaluateCopy;
    v13 = [(VUIRunLoopSourceRecord *)v12 initWithEvaluateBlock:v16 completionBlock:blockCopy completionQueue:queueCopy];
    pendingQueue = [(VUIAppContext *)selfCopy pendingQueue];
    [pendingQueue addObject:v13];

    if (selfCopy->_jsThreadRunLoop)
    {
      jsThreadRunLoopSource = selfCopy->_jsThreadRunLoopSource;
      if (jsThreadRunLoopSource)
      {
        CFRunLoopSourceSignal(jsThreadRunLoopSource);
        CFRunLoopWakeUp(selfCopy->_jsThreadRunLoop);
      }
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __58__VUIAppContext_evaluate_completionBlock_completionQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _evaluate:*(a1 + 32)];
}

- (void)evaluateDelegateBlockSync:(id)sync
{
  syncCopy = sync;
  v5 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VUIAppContext_evaluateDelegateBlockSync___block_invoke;
  block[3] = &unk_1E8730538;
  v9 = v5;
  v10 = syncCopy;
  block[4] = self;
  v6 = v5;
  v7 = syncCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __43__VUIAppContext_evaluateDelegateBlockSync___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)addPostEvaluateBlock:(id)block
{
  blockCopy = block;
  postEvaluationBlocks = [(VUIAppContext *)self postEvaluationBlocks];

  if (postEvaluationBlocks)
  {
    selfCopy = [(VUIAppContext *)self postEvaluationBlocks];
    v7 = [blockCopy copy];
    [(VUIAppContext *)selfCopy addObject:v7];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(VUIAppContext *)selfCopy canAccessPendingQueue])
    {
      objc_initWeak(&location, selfCopy);
      v8 = [VUIRunLoopSourceRecord alloc];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __38__VUIAppContext_addPostEvaluateBlock___block_invoke;
      v12[3] = &unk_1E872E828;
      objc_copyWeak(&v14, &location);
      v13 = blockCopy;
      v9 = [(VUIRunLoopSourceRecord *)v8 initWithEvaluateBlock:v12 completionBlock:0];
      pendingQueue = [(VUIAppContext *)selfCopy pendingQueue];
      [pendingQueue insertObject:v9 atIndex:0];

      if (selfCopy->_jsThreadRunLoop)
      {
        jsThreadRunLoopSource = selfCopy->_jsThreadRunLoopSource;
        if (jsThreadRunLoopSource)
        {
          CFRunLoopSourceSignal(jsThreadRunLoopSource);
          CFRunLoopWakeUp(selfCopy->_jsThreadRunLoop);
        }
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(selfCopy);
  }
}

void __38__VUIAppContext_addPostEvaluateBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doEvaluate:*(a1 + 32)];
}

- (void)setException:(id)exception withErrorMessage:(id)message
{
  exceptionCopy = exception;
  messageCopy = message;
  jsContext = [(VUIAppContext *)self jsContext];
  if (exceptionCopy)
  {
    [MEMORY[0x1E696EB58] valueWithObject:exceptionCopy inContext:jsContext];
  }

  else
  {
    [MEMORY[0x1E696EB58] valueWithNewErrorFromMessage:messageCopy inContext:jsContext];
  }
  v8 = ;
  v9 = [MEMORY[0x1E696EB58] valueWithBool:1 inContext:jsContext];
  [v8 setObject:v9 forKeyedSubscript:@"errorDispatched"];

  [jsContext setException:v8];
  v10 = [(VUIAppContext *)self _errorWithMessage:messageCopy];
  [(VUIAppContext *)self _dispatchError:v10];
}

- (void)handleReloadWithUrgencyType:(unint64_t)type minInterval:(double)interval data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VUIAppContext_handleReloadWithUrgencyType_minInterval_data___block_invoke;
  block[3] = &unk_1E8737530;
  objc_copyWeak(v12, &location);
  v11 = dataCopy;
  v12[1] = type;
  v12[2] = *&interval;
  v9 = dataCopy;
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

- (BOOL)_prepareStartWithURL:(id)l
{
  v38 = *MEMORY[0x1E69E9840];
  lCopy = l;
  objc_initWeak(&location, self);
  mode = [(VUIAppContext *)self mode];
  v6 = lCopy;
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    mode2 = [(VUIAppContext *)self mode];
    *buf = 138413058;
    v31 = v9;
    v32 = 2048;
    v33 = mode2;
    v34 = 2048;
    selfCopy = self;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIAppContext - <%@ (%lu): %p> Launching JavaScript app from URL: %@", buf, 0x2Au);
  }

  scheme = [v6 scheme];
  lowercaseString = [scheme lowercaseString];
  if (![lowercaseString isEqualToString:@"https"])
  {
    v13 = [(VUIAppContext *)self app];
    shouldIgnoreJSValidation = [v13 shouldIgnoreJSValidation];

    if (shouldIgnoreJSValidation)
    {
      goto LABEL_8;
    }

LABEL_15:
    selfCopy2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:101 userInfo:0];
    [(VUIAppContext *)self contextDidFailWithError:selfCopy2];
    LOBYTE(self) = 0;
    goto LABEL_16;
  }

LABEL_8:
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  pendingQueue = [(VUIAppContext *)selfCopy2 pendingQueue];
  LODWORD(self) = pendingQueue == 0;

  if (self)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VUIAppContext *)selfCopy2 setPendingQueue:v18];

    [(VUIAppContext *)selfCopy2 setCanAccessPendingQueue:1];
    v19 = [VUIRunLoopSourceRecord alloc];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __38__VUIAppContext__prepareStartWithURL___block_invoke;
    v26[3] = &unk_1E872F038;
    objc_copyWeak(&v28, &location);
    v27 = v6;
    v20 = [(VUIRunLoopSourceRecord *)v19 initWithEvaluateBlock:v26 completionBlock:0 completionQueue:0];
    pendingQueue2 = [(VUIAppContext *)selfCopy2 pendingQueue];
    [pendingQueue2 addObject:v20];

    v22 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:selfCopy2 selector:sel__jsThreadMain object:0];
    v23 = v22;
    if (mode == 1000)
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
    [(VUIAppContext *)selfCopy2 contextDidFailWithError:v17];
  }

  objc_sync_exit(selfCopy2);
LABEL_16:

  objc_destroyWeak(&location);
  return self;
}

void __38__VUIAppContext__prepareStartWithURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startWithURL:*(a1 + 32)];
}

- (void)_startWithURL:(id)l
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (+[VUIPreference ignoreHTTPCache])
  {
    v5 = 1;
  }

  else
  {
    reloadContext = [(VUIAppContext *)self reloadContext];
    v5 = reloadContext != 0;
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
    selfCopy = self;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "<%@ (%lu): %p> Attempting to start context with script", buf, 0x20u);
  }

  delegate = [(VUIAppContext *)self delegate];
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
    selfCopy = __Block_byref_object_copy__38;
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
    [delegate appContext:self scriptForURL:lCopy cachePolicy:v5 completion:v23];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    if (v30[5] || ![*(*&buf[8] + 40) length])
    {
      [(VUIAppContext *)self _invalidateJSThread];
      v14 = VUIDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        mode = [(VUIAppContext *)self mode];
        v20 = v30[5];
        *v35 = 138413058;
        v36 = v18;
        v37 = 2048;
        v38 = mode;
        v39 = 2048;
        selfCopy2 = self;
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

      [(VUIAppContext *)self _startWithScript:*(*&buf[8] + 40) scriptUrl:lCopy];
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

- (void)_startWithScript:(id)script scriptUrl:(id)url
{
  v60 = *MEMORY[0x1E69E9840];
  scriptCopy = script;
  urlCopy = url;
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

  if ([scriptCopy length])
  {
    delegate = [(VUIAppContext *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegate appContext:self shouldStartWithScript:scriptCopy scriptURL:urlCopy] & 1) == 0)
    {
      v29 = VUIDefaultLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        mode = [(VUIAppContext *)self mode];
        *buf = 138413058;
        v49 = v31;
        v50 = 2048;
        v51 = mode;
        v52 = 2048;
        selfCopy2 = self;
        v54 = 2112;
        v55 = urlCopy;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_INFO, "VUIAppContext - <%@ (%lu): %p> Delegate opted to stop script loading from %@", buf, 0x2Au);
      }

      [(VUIAppContext *)self stop];
    }

    else
    {
      v38 = [(VUIAppContext *)self app];
      appIdentifier = [v38 appIdentifier];
      v15 = objc_alloc_init(MEMORY[0x1E696EB40]);
      if ([appIdentifier length])
      {
        [v15 setName:appIdentifier];
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

      v17 = [v15 evaluateScript:scriptCopy withSourceURL:urlCopy];
      v18 = VUISignpostLogObject();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1E323F000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.Evaluate.JSContextEvaluateScript", "", buf, 2u);
      }

      exception = [v15 exception];

      if (exception)
      {
        exception2 = [v15 exception];
        v21 = VUIDefaultLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          mode2 = [(VUIAppContext *)self mode];
          toDictionary = [exception2 toDictionary];
          *buf = 138413570;
          v49 = v34;
          v50 = 2048;
          v51 = mode2;
          v52 = 2048;
          selfCopy2 = self;
          v54 = 2112;
          v55 = urlCopy;
          v56 = 2112;
          v57 = exception2;
          v58 = 2112;
          v59 = toDictionary;
          v37 = toDictionary;
          _os_log_error_impl(&dword_1E323F000, v21, OS_LOG_TYPE_ERROR, "<%@ (%lu): %p> Unable to start script (%@) because of %@: %@", buf, 0x3Eu);
        }

        [v15 setException:0];
        [(VUIAppContext *)self _invalidateJSThread];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __44__VUIAppContext__startWithScript_scriptUrl___block_invoke_98;
        block[3] = &unk_1E872D990;
        v45 = exception2;
        selfCopy3 = self;
        v22 = exception2;
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
        v41 = urlCopy;
        v42 = scriptCopy;
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

- (void)_addStopRecordToPendingQueueWithReload:(BOOL)reload
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(VUIAppContext *)selfCopy canAccessPendingQueue])
  {
    [(VUIAppContext *)selfCopy setCanAccessPendingQueue:0];
    objc_initWeak(&location, selfCopy);
    v5 = [VUIRunLoopSourceRecord alloc];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__VUIAppContext__addStopRecordToPendingQueueWithReload___block_invoke;
    v9[3] = &unk_1E872EDE0;
    objc_copyWeak(&v10, &location);
    reloadCopy = reload;
    v6 = [(VUIRunLoopSourceRecord *)v5 initWithEvaluateBlock:v9 completionBlock:0];
    pendingQueue = [(VUIAppContext *)selfCopy pendingQueue];
    [pendingQueue addObject:v6];

    if (selfCopy->_jsThreadRunLoop)
    {
      jsThreadRunLoopSource = selfCopy->_jsThreadRunLoopSource;
      if (jsThreadRunLoopSource)
      {
        CFRunLoopSourceSignal(jsThreadRunLoopSource);
        CFRunLoopWakeUp(selfCopy->_jsThreadRunLoop);
      }
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __56__VUIAppContext__addStopRecordToPendingQueueWithReload___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopAndReload:*(a1 + 40)];
}

- (void)_stopAndReload:(BOOL)reload
{
  reloadCopy = reload;
  v21 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VUINetworkPropertiesChangedNotification" object:0];

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138413058;
    v14 = v8;
    v15 = 2048;
    mode = [(VUIAppContext *)self mode];
    v17 = 2048;
    selfCopy = self;
    v19 = 1024;
    v20 = reloadCopy;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "<%@ (%lu): %p> Stop and reload %d", buf, 0x26u);
  }

  [(VUIAppContext *)self setIsValid:0];
  [(VUIAppContext *)self setJsContext:0];
  if (reloadCopy)
  {
    [(VUIAppContext *)self _invalidateJSThread];
  }

  else
  {
    [(VUIAppContext *)self setNextJSChecksum:0];
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    onStartQueue = [(VUIAppContext *)selfCopy2 onStartQueue];
    [onStartQueue removeAllObjects];

    objc_sync_exit(selfCopy2);
    [(VUIAppContext *)selfCopy2 _invalidateJSThread];
    [(VUIAppContext *)selfCopy2 setReloadContext:0];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__VUIAppContext__stopAndReload___block_invoke;
  v11[3] = &unk_1E872ECA0;
  v11[4] = self;
  v12 = reloadCopy;
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

- (void)_sourceScheduledOnRunLoop:(__CFRunLoop *)loop
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

- (void)_sourceCanceledOnRunLoop:(__CFRunLoop *)loop
{
  obj = self;
  objc_sync_enter(obj);
  CFRunLoopRemoveSource(obj->_jsThreadRunLoop, obj->_jsThreadRunLoopSource, *MEMORY[0x1E695E8E0]);
  CFRunLoopStop(obj->_jsThreadRunLoop);
  objc_sync_exit(obj);
}

- (void)_evaluate:(id)_evaluate
{
  _evaluateCopy = _evaluate;
  array = [MEMORY[0x1E695DF70] array];
  [(VUIAppContext *)self setPostEvaluationBlocks:array];

  [(VUIAppContext *)self _doEvaluate:_evaluateCopy];
  postEvaluationBlocks = [(VUIAppContext *)self postEvaluationBlocks];
  firstObject = [postEvaluationBlocks firstObject];

  if (firstObject)
  {
    do
    {
      postEvaluationBlocks2 = [(VUIAppContext *)self postEvaluationBlocks];
      [postEvaluationBlocks2 removeObjectAtIndex:0];

      jsContext = [(VUIAppContext *)self jsContext];
      (firstObject)[2](firstObject, jsContext);

      jsContext2 = [(VUIAppContext *)self jsContext];
      exception = [jsContext2 exception];

      if (exception)
      {
        jsContext3 = [(VUIAppContext *)self jsContext];
        exception2 = [jsContext3 exception];
        [(VUIAppContext *)self _dispatchError:exception2];

        jsContext4 = [(VUIAppContext *)self jsContext];
        [jsContext4 setException:0];
      }

      postEvaluationBlocks3 = [(VUIAppContext *)self postEvaluationBlocks];
      firstObject2 = [postEvaluationBlocks3 firstObject];

      firstObject = firstObject2;
    }

    while (firstObject2);
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
  pendingQueue = [(VUIAppContext *)obj pendingQueue];
  [pendingQueue removeAllObjects];

  [(VUIAppContext *)obj setPendingQueue:0];
  [(VUIAppContext *)obj setCanAccessPendingQueue:0];
  [(VUIAppContext *)obj setRunning:0];
  objc_sync_exit(obj);
}

- (void)_doEvaluate:(id)evaluate
{
  evaluateCopy = evaluate;
  if (![(VUIAppContext *)self isValid])
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [VUIAppContext _doEvaluate:?];
    }
  }

  jsContext = [(VUIAppContext *)self jsContext];
  evaluateCopy[2](evaluateCopy, jsContext);

  jsContext2 = [(VUIAppContext *)self jsContext];
  exception = [jsContext2 exception];

  if (exception)
  {
    jsContext3 = [(VUIAppContext *)self jsContext];
    exception2 = [jsContext3 exception];
    [(VUIAppContext *)self _dispatchError:exception2];

    jsContext4 = [(VUIAppContext *)self jsContext];
    [jsContext4 setException:0];
  }
}

- (id)_errorWithMessage:(id)message
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  jsContext = [(VUIAppContext *)self jsContext];
  v6 = [jsContext objectForKeyedSubscript:@"Error"];
  v7 = [v6 constructWithArguments:MEMORY[0x1E695E0F0]];

  [v7 setObject:messageCopy forKeyedSubscript:@"message"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 objectForKeyedSubscript:{@"stack", 0}];
  toString = [v8 toString];
  v10 = [toString componentsSeparatedByString:@"\n"];

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

- (void)_dispatchError:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = [errorCopy objectForKeyedSubscript:@"errorDispatched"];
  toBool = [v5 toBool];

  if ((toBool & 1) == 0)
  {
    v7 = [errorCopy objectForKeyedSubscript:@"message"];
    toString = [v7 toString];

    v9 = [errorCopy objectForKeyedSubscript:@"sourceURL"];
    toString2 = [v9 toString];

    v11 = [errorCopy objectForKeyedSubscript:@"line"];
    toString3 = [v11 toString];

    v13 = [errorCopy objectForKeyedSubscript:@"column"];
    toString4 = [v13 toString];

    if ([toString length])
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", toString3, toString4];
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138413570;
        v20 = v18;
        v21 = 2048;
        mode = [(VUIAppContext *)self mode];
        v23 = 2048;
        selfCopy = self;
        v25 = 2112;
        v26 = toString;
        v27 = 2112;
        v28 = toString2;
        v29 = 2112;
        v30 = v15;
        _os_log_error_impl(&dword_1E323F000, v16, OS_LOG_TYPE_ERROR, "<%@ (%lu): %p> Error: %@ - %@ - line:%@", buf, 0x3Eu);
      }
    }
  }
}

- (void)_enqueueOnStartOrExecute:(id)execute
{
  aBlock = execute;
  if ([(VUIAppContext *)self isValid])
  {
    aBlock[2]();
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    onStartQueue = [(VUIAppContext *)selfCopy onStartQueue];
    v6 = _Block_copy(aBlock);
    [onStartQueue addObject:v6];

    objc_sync_exit(selfCopy);
  }
}

- (void)_drainOnStartQueue
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  onStartQueue = [(VUIAppContext *)selfCopy onStartQueue];
  v4 = [onStartQueue copy];

  onStartQueue2 = [(VUIAppContext *)selfCopy onStartQueue];
  [onStartQueue2 removeAllObjects];

  objc_sync_exit(selfCopy);
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

- (void)contextDidStopWithOptions:(id)options
{
  delegate = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appContext:self didStopWithOptions:0];
  }
}

- (void)contextDidFailWithError:(id)error
{
  errorCopy = error;
  [(VUIAppContext *)self setRunning:0];
  delegate = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appContext:self didFailWithError:errorCopy];
  }
}

- (void)contextDidStartWithJS:(id)s options:(id)options
{
  sCopy = s;
  optionsCopy = options;
  delegate = [(VUIAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appContext:self didStartWithOptions:optionsCopy validatedJSString:sCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate appContext:self didStartWithOptions:optionsCopy];
  }

  [(VUIAppContext *)self _drainOnStartQueue];
}

- (id)_appTraitCollection
{
  if (self->_respondsToTraitCollection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_app);
    appTraitCollection = [WeakRetained appTraitCollection];
  }

  else
  {
    appTraitCollection = MEMORY[0x1E695E0F8];
  }

  return appTraitCollection;
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