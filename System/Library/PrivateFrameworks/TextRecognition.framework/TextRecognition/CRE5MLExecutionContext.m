@interface CRE5MLExecutionContext
- (BOOL)predictFromPreboundInputsWithError:(id *)a3;
- (CRE5MLExecutionContext)initWithFunction:(id)a3;
- (id)newE5RTExecutionContextForFunctionDescriptor:(id)a3 error:(id *)a4;
- (id)newE5RTExecutionContextForFunctionDescriptor:(id)a3 preboundInputs:(id)a4 preboundOutputs:(id)a5 error:(id *)a6;
- (id)predictionFromInputObjects:(id)a3 error:(id *)a4;
- (id)sharedExecutionContextWithError:(id *)a3;
- (void)prebindInputs:(id)a3;
- (void)predictFromPreboundInputsAsync:(id)a3;
- (void)unbindInputs;
@end

@implementation CRE5MLExecutionContext

- (CRE5MLExecutionContext)initWithFunction:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CRE5MLExecutionContext;
  v6 = [(CRE5MLExecutionContext *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_functionDescriptor, a3);
    v7->_executionLock._os_unfair_lock_opaque = 0;
    v8 = dispatch_semaphore_create(1);
    prewarmSemaphore = v7->_prewarmSemaphore;
    v7->_prewarmSemaphore = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = qos_class_self();
    v12 = dispatch_queue_attr_make_with_qos_class(v10, v11, 0);

    v13 = dispatch_queue_create("com.apple.CoreRecognition.E5MLExecutionContextQueue", v12);
    contextQueue = v7->_contextQueue;
    v7->_contextQueue = v13;

    dispatch_semaphore_wait(v7->_prewarmSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v15 = v7->_contextQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__CRE5MLExecutionContext_initWithFunction___block_invoke;
    block[3] = &unk_1E7BC2F58;
    v16 = v7;
    v20 = v16;
    dispatch_async(v15, block);
    v17 = v16;
  }

  return v7;
}

void __43__CRE5MLExecutionContext_initWithFunction___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = [*(*(a1 + 32) + 8) function];
  v9 = 0;
  v3 = [v2 prepareForExecutionWithError:&v9];
  v4 = v9;
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v3;

  if (v4)
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_ERROR, "Could not prepare CRE5MLExecutionContext for execution.", v8, 2u);
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  dispatch_semaphore_signal(*(*(a1 + 32) + 24));
}

- (id)newE5RTExecutionContextForFunctionDescriptor:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E69DF8D8];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  dispatch_semaphore_wait(self->_prewarmSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [v8 setPrewarmedState:self->_prewarmedState];
  dispatch_semaphore_signal(self->_prewarmSemaphore);
  v9 = [v7 function];

  v10 = [v9 newExecutionContextWithConfiguration:v8 error:a4];
  return v10;
}

- (id)newE5RTExecutionContextForFunctionDescriptor:(id)a3 preboundInputs:(id)a4 preboundOutputs:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x1E69DF8D8];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  dispatch_semaphore_wait(self->_prewarmSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [v14 setPrewarmedState:self->_prewarmedState];
  dispatch_semaphore_signal(self->_prewarmSemaphore);
  [v14 setBoundInputObjects:v12];

  [v14 setBoundOutputObjects:v11];
  [v14 setPrewireInUseAllocations:1];
  v15 = [v13 function];

  v16 = [v15 newExecutionContextWithConfiguration:v14 error:a6];
  return v16;
}

- (id)sharedExecutionContextWithError:(id *)a3
{
  executionContext = self->_executionContext;
  if (!executionContext)
  {
    v5 = [(CRE5MLExecutionContext *)self newE5RTExecutionContextForFunctionDescriptor:self->_functionDescriptor error:a3];
    v6 = self->_executionContext;
    self->_executionContext = v5;

    executionContext = self->_executionContext;
  }

  return executionContext;
}

- (id)predictionFromInputObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__11;
    v26 = __Block_byref_object_dispose__11;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__11;
    v20 = __Block_byref_object_dispose__11;
    v21 = 0;
    contextQueue = self->_contextQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__CRE5MLExecutionContext_predictionFromInputObjects_error___block_invoke;
    v12[3] = &unk_1E7BC2F80;
    v12[4] = self;
    v14 = &v16;
    v15 = &v22;
    v13 = v6;
    dispatch_sync(contextQueue, v12);
    if (a4)
    {
      v9 = v17[5];
      if (v9)
      {
        *a4 = v9;
      }
    }

    v10 = v23[5];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __59__CRE5MLExecutionContext_predictionFromInputObjects_error___block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[4] + 32));
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 sharedExecutionContextWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (!v4)
  {
    goto LABEL_15;
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v5 = CRSignpostLog_signPostOSLog;
  v6 = os_signpost_id_generate(v5);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v7 = CRSignpostLog_signPostOSLog;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "OCRE5ContextExecutionTime", "", buf, 2u);
  }

  v9 = a1[5];
  v10 = *(a1[6] + 8);
  v16 = *(v10 + 40);
  v11 = [v4 executeWithInputObjects:v9 error:&v16];
  objc_storeStrong((v10 + 40), v16);
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v14 = CRSignpostLog_signPostOSLog;
  v15 = v14;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v15, OS_SIGNPOST_INTERVAL_END, v6, "OCRE5ContextExecutionTime", "", buf, 2u);
  }

  if (!*(*(a1[7] + 8) + 40))
  {
LABEL_15:
    os_unfair_lock_unlock((a1[4] + 32));
  }
}

- (void)prebindInputs:(id)a3
{
  objc_storeStrong(&self->_preboundInputObjects, a3);
  v6 = a3;
  preboundExecutionContext = self->_preboundExecutionContext;
  self->_preboundExecutionContext = 0;
}

- (void)unbindInputs
{
  preboundInputObjects = self->_preboundInputObjects;
  self->_preboundInputObjects = 0;

  preboundExecutionContext = self->_preboundExecutionContext;
  self->_preboundExecutionContext = 0;
}

- (BOOL)predictFromPreboundInputsWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  contextQueue = self->_contextQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CRE5MLExecutionContext_predictFromPreboundInputsWithError___block_invoke;
  block[3] = &unk_1E7BC2FA8;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(contextQueue, block);
  if (a3)
  {
    v5 = v10[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __61__CRE5MLExecutionContext_predictFromPreboundInputsWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!v2[8])
  {
    v3 = v2[1];
    v4 = *(a1[5] + 8);
    obj = *(v4 + 40);
    v5 = [CRE5MLUtilities newE5RTExecutionOutputsForFunctionDescriptor:v3 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    v6 = a1[4];
    v7 = *(v6 + 64);
    *(v6 + 64) = v5;

    v2 = a1[4];
  }

  if (!v2[9])
  {
    v8 = v2[1];
    v9 = v2[7];
    v10 = v2[8];
    v11 = *(a1[5] + 8);
    v26 = *(v11 + 40);
    v12 = [v2 newE5RTExecutionContextForFunctionDescriptor:v8 preboundInputs:v9 preboundOutputs:v10 error:&v26];
    objc_storeStrong((v11 + 40), v26);
    v13 = a1[4];
    v14 = *(v13 + 72);
    *(v13 + 72) = v12;

    v15 = a1[4];
    if (!*(v15 + 72))
    {
      goto LABEL_19;
    }
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v16 = CRSignpostLog_signPostOSLog;
  v17 = os_signpost_id_generate(v16);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v18 = CRSignpostLog_signPostOSLog;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "OCRE5ContextExecutionTime", "", buf, 2u);
  }

  v20 = *(a1[4] + 72);
  v21 = *(a1[5] + 8);
  v24 = *(v21 + 40);
  [v20 executeAndReturnError:&v24];
  objc_storeStrong((v21 + 40), v24);
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v22 = CRSignpostLog_signPostOSLog;
  v23 = v22;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v23, OS_SIGNPOST_INTERVAL_END, v17, "OCRE5ContextExecutionTime", "", buf, 2u);
  }

  if (*(*(a1[5] + 8) + 40))
  {
    v15 = a1[4];
LABEL_19:
    os_unfair_lock_unlock((v15 + 32));
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)predictFromPreboundInputsAsync:(id)a3
{
  v4 = a3;
  contextQueue = self->_contextQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CRE5MLExecutionContext_predictFromPreboundInputsAsync___block_invoke;
  v7[3] = &unk_1E7BC2FF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(contextQueue, v7);
}

void __57__CRE5MLExecutionContext_predictFromPreboundInputsAsync___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  if (v2[8])
  {
    v3 = 0;
  }

  else
  {
    v4 = v2[1];
    v31 = 0;
    v5 = [CRE5MLUtilities newE5RTExecutionOutputsForFunctionDescriptor:v4 error:&v31];
    v3 = v31;
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = v5;

    v2 = *(a1 + 32);
  }

  if (v2[9])
  {
    v8 = v3;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 32);
    v11 = v10[1];
    v12 = v10[7];
    v13 = v10[8];
    v30 = v3;
    v14 = [v9 newE5RTExecutionContextForFunctionDescriptor:v11 preboundInputs:v12 preboundOutputs:v13 error:&v30];
    v8 = v30;

    v15 = *(a1 + 32);
    v16 = *(v15 + 72);
    *(v15 + 72) = v14;

    v17 = *(a1 + 32);
    if (!*(v17 + 72))
    {
      os_unfair_lock_unlock((v17 + 32));
      (*(*(a1 + 40) + 16))();
      goto LABEL_15;
    }
  }

  v18 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_23);
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v19 = CRSignpostLog_signPostOSLog;
  v20 = os_signpost_id_generate(v19);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v21 = CRSignpostLog_signPostOSLog;
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "OCRE5ContextExecutionTime", "", buf, 2u);
  }

  v23 = *(*(a1 + 32) + 72);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__CRE5MLExecutionContext_predictFromPreboundInputsAsync___block_invoke_3;
  v25[3] = &unk_1E7BC2FD0;
  v28 = v20;
  v26 = *(a1 + 40);
  v27 = v18;
  v24 = v18;
  [v23 executeWithCompletionHandler:v25];
  dispatch_block_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_unlock((*(a1 + 32) + 32));

LABEL_15:
}

uint64_t __57__CRE5MLExecutionContext_predictFromPreboundInputsAsync___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v7 = CRSignpostLog_signPostOSLog;
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v8, OS_SIGNPOST_INTERVAL_END, v9, "OCRE5ContextExecutionTime", "", v11, 2u);
  }

  (*(a1[4] + 16))();
  return (*(a1[5] + 16))();
}

@end