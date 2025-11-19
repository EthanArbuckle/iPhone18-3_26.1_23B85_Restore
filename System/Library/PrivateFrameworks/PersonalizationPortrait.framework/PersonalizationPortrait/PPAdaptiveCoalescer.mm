@interface PPAdaptiveCoalescer
- (PPAdaptiveCoalescer)init;
- (void)coalesceRequestKey:(id)a3 handler:(id)a4 executeRequestAndInvokeHandlersBlock:(id)a5;
- (void)coalesceRequestKey:(id)a3 handler:(id)a4 executeRequestAndInvokeHandlersBlock:(id)a5 nowDate:(id)a6;
- (void)garbageCollectPendingKeysForNowDate:(id)a3;
@end

@implementation PPAdaptiveCoalescer

- (PPAdaptiveCoalescer)init
{
  v10.receiver = self;
  v10.super_class = PPAdaptiveCoalescer;
  v2 = [(PPAdaptiveCoalescer *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"PPAdaptiveCoalescer"];
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)coalesceRequestKey:(id)a3 handler:(id)a4 executeRequestAndInvokeHandlersBlock:(id)a5 nowDate:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a3 copyWithZone:0];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__1852;
  v41[4] = __Block_byref_object_dispose__1853;
  v42 = MEMORY[0x1AC568040](v12);
  v15 = self->_lock;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __95__PPAdaptiveCoalescer_coalesceRequestKey_handler_executeRequestAndInvokeHandlersBlock_nowDate___block_invoke;
  v35[3] = &unk_1E77F6808;
  v16 = v15;
  v36 = v16;
  v17 = v14;
  v37 = v17;
  v38 = self;
  v39 = v41;
  v40 = a2;
  v18 = MEMORY[0x1AC568040](v35);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__PPAdaptiveCoalescer_coalesceRequestKey_handler_executeRequestAndInvokeHandlersBlock_nowDate___block_invoke_50;
  v23[3] = &unk_1E77F6830;
  v19 = v17;
  v24 = v19;
  v25 = self;
  v20 = v13;
  v26 = v20;
  v21 = v11;
  v27 = v21;
  v29 = &v31;
  v30 = v41;
  v22 = v18;
  v28 = v22;
  [(_PASLock *)v16 runWithLockAcquired:v23];
  if (*(v32 + 24) == 1)
  {
    v22[2](v22);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v41, 8);
}

void __95__PPAdaptiveCoalescer_coalesceRequestKey_handler_executeRequestAndInvokeHandlersBlock_nowDate___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__40;
  v24 = __Block_byref_object_dispose__41;
  v25 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __95__PPAdaptiveCoalescer_coalesceRequestKey_handler_executeRequestAndInvokeHandlersBlock_nowDate___block_invoke_42;
  v15 = &unk_1E77F67E0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v16 = v3;
  v17 = v5;
  v18 = &v20;
  v19 = v4;
  [v2 runWithLockAcquired:&v12];
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = [v21[5] count];
    *buf = 138412546;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_DEFAULT, "PPAdaptiveCoalescer: executing request for key %@ (handlers: %tu)", buf, 0x16u);
  }

  v9 = *(a1 + 40);
  v10 = v21[5];
  (*(*(*(*(a1 + 56) + 8) + 40) + 16))();

  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x1E69E9840];
}

void __95__PPAdaptiveCoalescer_coalesceRequestKey_handler_executeRequestAndInvokeHandlersBlock_nowDate___block_invoke_50(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    [*(a1 + 40) garbageCollectPendingKeysForNowDate:*(a1 + 48)];
    v6 = [[PPAdaptiveCoalescerPendingKeyState alloc] initWithKey:*(a1 + 32)];
    [v3 setObject:v6 forKeyedSubscript:*(a1 + 32)];
  }

  [(PPAdaptiveCoalescerPendingKeyState *)v6 addDate:*(a1 + 48)];
  [(NSMutableArray *)v6->_handlers addObject:*(a1 + 56)];
  if ([(NSMutableArray *)v6->_handlers count]== 1)
  {
    [(PPAdaptiveCoalescerPendingKeyState *)v6 currentDelayForNowDate:*(a1 + 48)];
    v8 = v7;
    v9 = pp_default_log_handle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 == 0.0)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        v20 = 138412290;
        v21 = v11;
        _os_log_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_DEFAULT, "PPAdaptiveCoalescer: will run immediately for key %@ (handlers: 1)", &v20, 0xCu);
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    else
    {
      if (v10)
      {
        v15 = *(a1 + 32);
        v20 = 134218242;
        v21 = v8;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_DEFAULT, "PPAdaptiveCoalescer: will delay %f for key %@ (handlers: 1)", &v20, 0x16u);
      }

      v16 = [*(*(*(a1 + 80) + 8) + 40) copy];
      v17 = *(*(a1 + 80) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      [MEMORY[0x1E69C5D10] runAsyncOnQueue:*(*(a1 + 40) + 16) afterDelaySeconds:*(a1 + 64) block:v8];
    }
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = [(NSMutableArray *)v6->_handlers count];
      v20 = 138412546;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_DEFAULT, "PPAdaptiveCoalescer: merging request for %@ into existing pending deferred request (handlers: %tu)", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __95__PPAdaptiveCoalescer_coalesceRequestKey_handler_executeRequestAndInvokeHandlersBlock_nowDate___block_invoke_42(void *a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:a1[4]];
  v8 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a1[7] object:a1[5] file:@"PPAdaptiveCoalescer.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"pendingKeyState"}];

    v3 = 0;
  }

  v4 = [*(v3 + 16) copy];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [v8[2] removeAllObjects];
}

- (void)garbageCollectPendingKeysForNowDate:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PPAdaptiveCoalescer_garbageCollectPendingKeysForNowDate___block_invoke;
  v7[3] = &unk_1E77F67B8;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __59__PPAdaptiveCoalescer_garbageCollectPendingKeysForNowDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __59__PPAdaptiveCoalescer_garbageCollectPendingKeysForNowDate___block_invoke_2;
  v9 = &unk_1E77F6790;
  v10 = *(a1 + 32);
  v11 = v4;
  v5 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:&v6];
  [v3 removeObjectsForKeys:{v5, v6, v7, v8, v9}];
}

void __59__PPAdaptiveCoalescer_garbageCollectPendingKeysForNowDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 shouldGarbageCollectForNowDate:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)coalesceRequestKey:(id)a3 handler:(id)a4 executeRequestAndInvokeHandlersBlock:(id)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 date];
  [(PPAdaptiveCoalescer *)self coalesceRequestKey:v11 handler:v10 executeRequestAndInvokeHandlersBlock:v9 nowDate:v12];
}

@end