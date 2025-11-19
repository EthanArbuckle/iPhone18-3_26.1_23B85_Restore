@interface TGTextGenerationSession
+ (id)defaultTextGeneration;
+ (id)workQueue;
- (TGTextGenerationSession)init;
- (TGTextGenerationSession)initWithConfiguration:(id)a3;
- (TGTextGenerationSession)initWithConfiguration:(id)a3 textGeneration:(id)a4;
- (TGTextGenerationSessionDelegate)delegate;
- (id)enqueueOperationSync:(id)a3;
- (id)executionUUIDForOperation:(id)a3;
- (void)cancelOperation:(id)a3;
- (void)createTgdSessionSync;
- (void)didStartOperationWithExecutionUUID:(id)a3;
- (void)enqueueOperation:(id)a3;
- (void)executeOperation:(id)a3 callback:(id)a4;
- (void)operation:(id)a3 didUpdateOutputStream:(id)a4;
- (void)operationWithExecutionUUID:(id)a3 didFailWithError:(id)a4;
- (void)operationWithExecutionUUID:(id)a3 didFinishWithOutputs:(id)a4;
- (void)operationWithExecutionUUID:(id)a3 didStreamOutput:(id)a4;
@end

@implementation TGTextGenerationSession

+ (id)workQueue
{
  if (workQueue_onceToken != -1)
  {
    +[TGTextGenerationSession workQueue];
  }

  v3 = workQueue_workQueue;

  return v3;
}

void __36__TGTextGenerationSession_workQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.text-generation", 0);
  v1 = workQueue_workQueue;
  workQueue_workQueue = v0;

  v2 = workQueue_workQueue;
  v3 = dispatch_get_global_queue(33, 0);
  dispatch_set_target_queue(v2, v3);
}

+ (id)defaultTextGeneration
{
  if (defaultTextGeneration_onceToken != -1)
  {
    +[TGTextGenerationSession defaultTextGeneration];
  }

  v3 = defaultTextGeneration_textGeneration;

  return v3;
}

uint64_t __48__TGTextGenerationSession_defaultTextGeneration__block_invoke()
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v0 = getTGITextGenerationInferenceClass_softClass;
  v11 = getTGITextGenerationInferenceClass_softClass;
  if (!getTGITextGenerationInferenceClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getTGITextGenerationInferenceClass_block_invoke;
    v7[3] = &unk_279D9BF98;
    v7[4] = &v8;
    __getTGITextGenerationInferenceClass_block_invoke(v7);
    v0 = v9[3];
  }

  v1 = v0;
  _Block_object_dispose(&v8, 8);
  v2 = [v0 alloc];
  v3 = +[TGTextGenerationSession workQueue];
  v4 = [v2 initWithWorkQueue:v3];
  v5 = defaultTextGeneration_textGeneration;
  defaultTextGeneration_textGeneration = v4;

  return [defaultTextGeneration_textGeneration start];
}

- (TGTextGenerationSession)init
{
  v3 = +[TGTextGenerationConfiguration defaultConfiguration];
  v4 = [objc_opt_class() defaultTextGeneration];
  v5 = [(TGTextGenerationSession *)self initWithConfiguration:v3 textGeneration:v4];

  return v5;
}

- (TGTextGenerationSession)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultTextGeneration];
  v6 = [(TGTextGenerationSession *)self initWithConfiguration:v4 textGeneration:v5];

  return v6;
}

- (TGTextGenerationSession)initWithConfiguration:(id)a3 textGeneration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = TGTextGenerationSession;
  v8 = [(TGTextGenerationSession *)&v22 init];
  if (v8)
  {
    v9 = +[TGTextGenerationSession workQueue];
    workQueue = v8->_workQueue;
    v8->_workQueue = v9;

    v11 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v11;

    v13 = [MEMORY[0x277CCAD78] UUID];
    uuid = v8->_uuid;
    v8->_uuid = v13;

    objc_storeStrong(&v8->_textGeneration, a4);
    v15 = [MEMORY[0x277CBEB38] dictionary];
    callbackByExecutionUUID = v8->_callbackByExecutionUUID;
    v8->_callbackByExecutionUUID = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    operationByExecutionUUID = v8->_operationByExecutionUUID;
    v8->_operationByExecutionUUID = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    outputStreamByExecutionUUID = v8->_outputStreamByExecutionUUID;
    v8->_outputStreamByExecutionUUID = v19;
  }

  return v8;
}

- (void)createTgdSessionSync
{
  v3 = [(TGTextGenerationSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TGTextGenerationSession *)self tgdSession];

  if (!v4)
  {
    v5 = [(TGTextGenerationSession *)self textGeneration];
    v6 = [(TGTextGenerationSession *)self uuid];
    v7 = [(TGTextGenerationSession *)self configuration];
    v8 = [v5 createSessionWithUUID:v6 configuration:v7];
    [(TGTextGenerationSession *)self setTgdSession:v8];

    v9 = [(TGTextGenerationSession *)self tgdSession];
    [v9 setDelegate:self];
  }
}

- (id)executionUUIDForOperation:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TGTextGenerationSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(TGTextGenerationSession *)self operationByExecutionUUID];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(TGTextGenerationSession *)self operationByExecutionUUID];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (v13 == v4)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)enqueueOperationSync:(id)a3
{
  v4 = a3;
  v5 = [(TGTextGenerationSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(TGTextGenerationSession *)self createTgdSessionSync];
  v6 = [(TGTextGenerationSession *)self tgdSession];
  v7 = [v6 enqueueOperation:v4];

  return v7;
}

- (void)executeOperation:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 copy];
  v9 = [(TGTextGenerationSession *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__TGTextGenerationSession_executeOperation_callback___block_invoke;
  v13[3] = &unk_279D9BF20;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v13);
}

void __53__TGTextGenerationSession_executeOperation_callback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) executionUUIDForOperation:*(a1 + 40)];
  if (v2)
  {
    v3 = _nlpDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__TGTextGenerationSession_executeOperation_callback___block_invoke_cold_1(v3);
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:17 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) enqueueOperationSync:*(a1 + 48)];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) operationByExecutionUUID];
    [v6 setObject:v5 forKeyedSubscript:v4];

    v7 = MEMORY[0x26D6BE930](*(a1 + 56));
    v8 = [*(a1 + 32) callbackByExecutionUUID];
    [v8 setObject:v7 forKeyedSubscript:v4];
  }
}

- (void)enqueueOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = [(TGTextGenerationSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TGTextGenerationSession_enqueueOperation___block_invoke;
  block[3] = &unk_279D9BF48;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

void __44__TGTextGenerationSession_enqueueOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) executionUUIDForOperation:*(a1 + 40)];
  if (v2)
  {
    v3 = _nlpDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__TGTextGenerationSession_executeOperation_callback___block_invoke_cold_1(v3);
    }
  }

  else
  {
    v4 = [*(a1 + 32) enqueueOperationSync:*(a1 + 48)];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) operationByExecutionUUID];
    [v6 setObject:v5 forKeyedSubscript:v4];
  }
}

- (void)cancelOperation:(id)a3
{
  v4 = a3;
  v5 = [(TGTextGenerationSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TGTextGenerationSession_cancelOperation___block_invoke;
  v7[3] = &unk_279D9BF70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__TGTextGenerationSession_cancelOperation___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) executionUUIDForOperation:*(a1 + 40)];
  if (v3)
  {
    v4 = [*(a1 + 32) tgdSession];
    [v4 cancelOperationWithExecutionUUID:v3];
  }

  else
  {
    v5 = _nlpDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__TGTextGenerationSession_cancelOperation___block_invoke_cold_1(v2, v5);
    }
  }
}

- (void)operation:(id)a3 didUpdateOutputStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TGTextGenerationSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TGTextGenerationSession_operation_didUpdateOutputStream___block_invoke;
  block[3] = &unk_279D9BF48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __59__TGTextGenerationSession_operation_didUpdateOutputStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 session:*(a1 + 32) operation:*(a1 + 40) didUpdateOutputStream:*(a1 + 48)];
  }
}

- (void)didStartOperationWithExecutionUUID:(id)a3
{
  v4 = a3;
  v5 = [(TGTextGenerationSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__TGTextGenerationSession_didStartOperationWithExecutionUUID___block_invoke;
  v7[3] = &unk_279D9BF70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__TGTextGenerationSession_didStartOperationWithExecutionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) operationByExecutionUUID];
  v7 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v7;
  if (v7)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    v3 = v7;
    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 session:*(a1 + 32) didStartOperation:v7];

      v3 = v7;
    }
  }
}

- (void)operationWithExecutionUUID:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TGTextGenerationSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__TGTextGenerationSession_operationWithExecutionUUID_didFailWithError___block_invoke;
  block[3] = &unk_279D9BF48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __71__TGTextGenerationSession_operationWithExecutionUUID_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackByExecutionUUID];
  v13 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v13)
  {
    (*(v13 + 2))(v13, 0, *(a1 + 48));
    v3 = [*(a1 + 32) callbackByExecutionUUID];
    [v3 setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) operationByExecutionUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  if (v5)
  {
    v6 = [*(a1 + 32) operationByExecutionUUID];
    [v6 setObject:0 forKeyedSubscript:*(a1 + 40)];

    v7 = [*(a1 + 32) outputStreamByExecutionUUID];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    if (v8)
    {
      v9 = [*(a1 + 32) outputStreamByExecutionUUID];
      [v9 setObject:0 forKeyedSubscript:*(a1 + 40)];
    }

    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      [v12 session:*(a1 + 32) didFailOperation:v5 error:*(a1 + 48)];
    }
  }
}

- (void)operationWithExecutionUUID:(id)a3 didFinishWithOutputs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TGTextGenerationSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__TGTextGenerationSession_operationWithExecutionUUID_didFinishWithOutputs___block_invoke;
  block[3] = &unk_279D9BF48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __75__TGTextGenerationSession_operationWithExecutionUUID_didFinishWithOutputs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackByExecutionUUID];
  v13 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v13)
  {
    (*(v13 + 2))(v13, *(a1 + 48), 0);
    v3 = [*(a1 + 32) callbackByExecutionUUID];
    [v3 setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) operationByExecutionUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  if (v5)
  {
    v6 = [*(a1 + 32) operationByExecutionUUID];
    [v6 setObject:0 forKeyedSubscript:*(a1 + 40)];

    v7 = [*(a1 + 32) outputStreamByExecutionUUID];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    if (v8)
    {
      v9 = [*(a1 + 32) outputStreamByExecutionUUID];
      [v9 setObject:0 forKeyedSubscript:*(a1 + 40)];
    }

    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      [v12 session:*(a1 + 32) didFinishOperation:v5 outputs:*(a1 + 48)];
    }
  }
}

- (void)operationWithExecutionUUID:(id)a3 didStreamOutput:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TGTextGenerationSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__TGTextGenerationSession_operationWithExecutionUUID_didStreamOutput___block_invoke;
  block[3] = &unk_279D9BF48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __70__TGTextGenerationSession_operationWithExecutionUUID_didStreamOutput___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) operationByExecutionUUID];
  v9 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v9)
  {
    v3 = [*(a1 + 32) outputStreamByExecutionUUID];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (!v4)
    {
      v4 = objc_alloc_init(TGTextGenerationOutputStream);
      v5 = [*(a1 + 32) outputStreamByExecutionUUID];
      [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    }

    [(TGTextGenerationOutputStream *)v4 addOutput:*(a1 + 48)];
    v6 = [*(a1 + 32) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 32) delegate];
      [v8 session:*(a1 + 32) operation:v9 didUpdateOutputStream:v4];
    }
  }
}

- (TGTextGenerationSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__TGTextGenerationSession_cancelOperation___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_26D3B8000, a2, OS_LOG_TYPE_ERROR, "Cannot cancel operation since the operation was not enqueued: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end