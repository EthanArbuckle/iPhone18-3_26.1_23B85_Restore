@interface TLAttentionAwarenessObserver
+ (BOOL)supportsAttenuatingTonesForAttentionDetected;
+ (TLAttentionAwarenessObserver)sharedAttentionAwarenessObserver;
- (TLAttentionAwarenessObserver)init;
- (id)pollForAttentionWithEventHandler:(id)a3;
- (void)_assertNotRunningOnAccessQueue;
- (void)_assertRunningOnAccessQueue;
- (void)_beginPollingForAttention;
- (void)_didCompleteInitialization;
- (void)_didReceiveAttentionPollingEventOfType:(unint64_t)a3 attentionEvent:(id)a4;
- (void)_endPollingForAttention;
- (void)_invokePollingForAttentionEventHandlers:(id)a3 eventType:(int64_t)a4;
- (void)cancelPollForAttentionWithToken:(id)a3;
- (void)dealloc;
@end

@implementation TLAttentionAwarenessObserver

+ (TLAttentionAwarenessObserver)sharedAttentionAwarenessObserver
{
  if (sharedAttentionAwarenessObserver__TLAttentionAwarenessObserverSharedInstanceOnceToken != -1)
  {
    +[TLAttentionAwarenessObserver sharedAttentionAwarenessObserver];
  }

  v3 = sharedAttentionAwarenessObserver__TLAttentionAwarenessObserverSharedInstance;

  return v3;
}

uint64_t __64__TLAttentionAwarenessObserver_sharedAttentionAwarenessObserver__block_invoke()
{
  sharedAttentionAwarenessObserver__TLAttentionAwarenessObserverSharedInstance = objc_alloc_init(TLAttentionAwarenessObserver);

  return MEMORY[0x1EEE66BB8]();
}

- (TLAttentionAwarenessObserver)init
{
  v23.receiver = self;
  v23.super_class = TLAttentionAwarenessObserver;
  v2 = [(TLAttentionAwarenessObserver *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    v6 = [v5 bundleIdentifier];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@-%@", v6, v4, @"AccessQueue"];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v7;

    v9 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pollingForAttentionEventHandlers = v2->_pollingForAttentionEventHandlers;
    v2->_pollingForAttentionEventHandlers = v11;

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@-%@", v6, v4, @"AttentionAwarenessClientQueue"];
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    attentionAwarenessClientQueue = v2->_attentionAwarenessClientQueue;
    v2->_attentionAwarenessClientQueue = v14;

    v16 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v17 = [v16 isHomePod];

    if ((v17 & 1) == 0)
    {
      v18 = v2->_attentionAwarenessClientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__TLAttentionAwarenessObserver_init__block_invoke;
      block[3] = &unk_1E8578900;
      v21 = v6;
      v22 = v2;
      dispatch_async(v18, block);
    }
  }

  return v2;
}

void __36__TLAttentionAwarenessObserver_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getAWAttentionAwarenessConfigurationClass());
  [v2 setEventMask:128];
  [v2 setIdentifier:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DFD8] set];
  [v2 setAttentionLostTimeouts:v3];

  [v2 setPollingFilter:1];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getAWAttentionAwarenessClientClass_softClass;
  v17 = getAWAttentionAwarenessClientClass_softClass;
  if (!getAWAttentionAwarenessClientClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getAWAttentionAwarenessClientClass_block_invoke;
    v13[3] = &unk_1E8578D30;
    v13[4] = &v14;
    __getAWAttentionAwarenessClientClass_block_invoke(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v6 = objc_alloc_init(v4);
  [v6 setConfiguration:v2];
  v7 = *(a1 + 40);
  v8 = v7[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__TLAttentionAwarenessObserver_init__block_invoke_2;
  block[3] = &unk_1E8578900;
  v11 = v7;
  v12 = v6;
  v9 = v6;
  dispatch_async(v8, block);
}

uint64_t __36__TLAttentionAwarenessObserver_init__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TLLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: -init: Created %{public}@.", &v7, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  result = [*(a1 + 32) _didCompleteInitialization];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3 = self->_accessQueue;
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__TLAttentionAwarenessObserver_dealloc__block_invoke;
  block[3] = &unk_1E8579978;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(v3, block);
  if (v16[5])
  {
    attentionAwarenessClientQueue = self->_attentionAwarenessClientQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__TLAttentionAwarenessObserver_dealloc__block_invoke_2;
    v7[3] = &unk_1E8578950;
    v7[4] = self;
    v7[5] = &v15;
    dispatch_async(attentionAwarenessClientQueue, v7);
  }

  [(TLAttentionAwarenessObserver *)self _invokePollingForAttentionEventHandlers:v10[5] eventType:0];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  v6.receiver = self;
  v6.super_class = TLAttentionAwarenessObserver;
  [(TLAttentionAwarenessObserver *)&v6 dealloc];
}

uint64_t __39__TLAttentionAwarenessObserver_dealloc__block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 33) == 1)
  {
    [v2 _endPollingForAttention];
    v2 = a1[4];
  }

  objc_storeStrong((*(a1[5] + 8) + 40), *(v2 + 40));
  v3 = [*(a1[4] + 24) allValues];
  v4 = [v3 copy];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1[4] + 24);

  return [v7 removeAllObjects];
}

void __39__TLAttentionAwarenessObserver_dealloc__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v13 = 0;
  v3 = [v2 invalidateWithError:&v13];
  v4 = v13;
  v5 = TLLogPlayback();
  v6 = v5;
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -dealloc: Successfully invalidated %{public}@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138544130;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v3;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_1D9356000, v6, OS_LOG_TYPE_ERROR, "%{public}@: -dealloc: -invalidateWithError: on %{public}@ returned didSucceed = %{BOOL}d and error = %{public}@.", buf, 0x26u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (BOOL)supportsAttenuatingTonesForAttentionDetected
{
  v2 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  v3 = [v2 isHomePod];

  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    return ([getAWAttentionAwarenessConfigurationClass() supportedEvents] >> 7) & 1;
  }

  return v4;
}

- (id)pollForAttentionWithEventHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__TLAttentionAwarenessObserver_pollForAttentionWithEventHandler___block_invoke;
  block[3] = &unk_1E85799A0;
  block[4] = self;
  v15 = v4;
  v8 = v6;
  v14 = v8;
  v9 = v4;
  dispatch_async(accessQueue, block);
  v10 = v14;
  v11 = v8;

  return v8;
}

_BYTE *__65__TLAttentionAwarenessObserver_pollForAttentionWithEventHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 48) copy];
  v4 = MEMORY[0x1DA730160]();
  [v2 setObject:v4 forKey:*(a1 + 40)];

  result = *(a1 + 32);
  if (result[32] == 1 && (result[33] & 1) == 0)
  {

    return [result _beginPollingForAttention];
  }

  return result;
}

- (void)cancelPollForAttentionWithToken:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__TLAttentionAwarenessObserver_cancelPollForAttentionWithToken___block_invoke;
  v7[3] = &unk_1E8578900;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

uint64_t __64__TLAttentionAwarenessObserver_cancelPollForAttentionWithToken___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (*(v3 + 32) == 1 && *(v3 + 33) == 1)
  {
    result = [*(v3 + 24) count];
    if (!result)
    {
      v4 = *(a1 + 32);

      return [v4 _endPollingForAttention];
    }
  }

  return result;
}

- (void)_beginPollingForAttention
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __57__TLAttentionAwarenessObserver__beginPollingForAttention__block_invoke(uint64_t a1)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v32 = 0;
  v3 = [v2 resumeWithError:&v32];
  v4 = v32;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = TLLogPlayback();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138543618;
      v34 = v8;
      v35 = 2114;
      v36 = v9;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPollingForAttention: Successfully resumed %{public}@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    *buf = 138544130;
    v34 = v25;
    v35 = 2114;
    v36 = v26;
    v37 = 1024;
    LODWORD(v38[0]) = v3;
    WORD2(v38[0]) = 2114;
    *(v38 + 6) = v4;
    _os_log_error_impl(&dword_1D9356000, v7, OS_LOG_TYPE_ERROR, "%{public}@: -_beginPollingForAttention: -resumeWithError: on %{public}@ returned didSucceed = %{BOOL}d and error = %{public}@.", buf, 0x26u);
  }

  v10 = [MEMORY[0x1E695DF00] distantFuture];
  [v10 timeIntervalSinceNow];
  v12 = v11;

  v13 = TLLogPlayback();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 138543874;
    v34 = v14;
    v35 = 2048;
    v36 = v12;
    v37 = 2114;
    v38[0] = v15;
    _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPollingForAttention: Will begin polling for attention until distant future (%f) with %{public}@.", buf, 0x20u);
  }

  v16 = *(a1 + 32);
  v17 = dispatch_get_global_queue(2, 0);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __57__TLAttentionAwarenessObserver__beginPollingForAttention__block_invoke_19;
  v30[3] = &unk_1E85799C8;
  objc_copyWeak(&v31, (a1 + 48));
  v29 = 0;
  v18 = [v16 pollForAttentionWithTimeout:v17 queue:v30 block:&v29 error:v12];
  v19 = v29;

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  if (v20 == 1)
  {
    v21 = TLLogPlayback();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      *buf = 138543618;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPollingForAttention: Did begin polling successfully from %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    v21 = TLLogPlayback();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      v27 = *(a1 + 40);
      *buf = 138544130;
      v34 = v27;
      v35 = 2114;
      v36 = v28;
      v37 = 1024;
      LODWORD(v38[0]) = v18;
      WORD2(v38[0]) = 2114;
      *(v38 + 6) = v19;
      _os_log_error_impl(&dword_1D9356000, v21, OS_LOG_TYPE_ERROR, "%{public}@: -_beginPollingForAttention: -pollForAttentionWithTimeout:error: on %{public}@ returned didSucceedInitializingPoll = %{BOOL}d and errorPolling = %{public}@.", buf, 0x26u);
    }
  }

  objc_destroyWeak(&v31);
  v24 = *MEMORY[0x1E69E9840];
}

void __57__TLAttentionAwarenessObserver__beginPollingForAttention__block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 1);
    if (v8)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__TLAttentionAwarenessObserver__beginPollingForAttention__block_invoke_2;
      block[3] = &unk_1E8578FC0;
      block[4] = WeakRetained;
      v12 = a2;
      v11 = v5;
      v9 = v8;
      dispatch_async(v9, block);
    }
  }
}

- (void)_endPollingForAttention
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__TLAttentionAwarenessObserver__endPollingForAttention__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v23 = 0;
  v3 = [v2 cancelPollForAttentionWithError:&v23];
  v4 = v23;
  v5 = TLLogPlayback();
  v6 = v5;
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPollingForAttention: Successfully cancelled poll for attention on %{public}@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 138544130;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    v28 = 1024;
    v29 = v3;
    v30 = 2114;
    v31 = v4;
    _os_log_error_impl(&dword_1D9356000, v6, OS_LOG_TYPE_ERROR, "%{public}@: -_endPollingForAttention: -cancelPollForAttentionWithError: on %{public}@ returned didSucceed = %{BOOL}d and error = %{public}@.", buf, 0x26u);
  }

  v12 = *(a1 + 32);
  v22 = 0;
  v13 = [v12 suspendWithError:&v22];
  v14 = v22;
  v15 = TLLogPlayback();
  v16 = v15;
  if (!v13 || v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138544130;
      v25 = v20;
      v26 = 2114;
      v27 = v21;
      v28 = 1024;
      v29 = v13;
      v30 = 2114;
      v31 = v14;
      _os_log_error_impl(&dword_1D9356000, v16, OS_LOG_TYPE_ERROR, "%{public}@: -_endPollingForAttention: -suspendWithError: on %{public}@ returned didSucceed = %{BOOL}d and error = %{public}@.", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    *buf = 138543618;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPollingForAttention: Successfully suspended %{public}@.", buf, 0x16u);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveAttentionPollingEventOfType:(unint64_t)a3 attentionEvent:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(TLAttentionAwarenessObserver *)self _assertRunningOnAccessQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = self;
    v16 = 2048;
    v17 = a3;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%ld) attentionEvent:(%{public}@).", &v14, 0x20u);
  }

  if (a3 == 2)
  {
    v8 = 1;
    v10 = 1;
    v9 = 1;
  }

  else
  {
    v8 = 0;
    if (a3 == 1)
    {
      v9 = 0;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }
  }

  v11 = [(NSMutableDictionary *)self->_pollingForAttentionEventHandlers allValues];
  v12 = [v11 copy];

  if (v8)
  {
    if (self->_isPollingForAttention)
    {
      [(TLAttentionAwarenessObserver *)self _endPollingForAttention];
    }

    [(NSMutableDictionary *)self->_pollingForAttentionEventHandlers removeAllObjects];
  }

  if (v10)
  {
    [(TLAttentionAwarenessObserver *)self _invokePollingForAttentionEventHandlers:v12 eventType:v9];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_didCompleteInitialization
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_invokePollingForAttentionEventHandlers:(id)a3 eventType:(int64_t)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__TLAttentionAwarenessObserver__invokePollingForAttentionEventHandlers_eventType___block_invoke;
    v7[3] = &unk_1E8578CC0;
    v8 = v5;
    v9 = a4;
    dispatch_async(v6, v7);
  }
}

void __82__TLAttentionAwarenessObserver__invokePollingForAttentionEventHandlers_eventType___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_assertRunningOnAccessQueue
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_assertNotRunningOnAccessQueue
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end