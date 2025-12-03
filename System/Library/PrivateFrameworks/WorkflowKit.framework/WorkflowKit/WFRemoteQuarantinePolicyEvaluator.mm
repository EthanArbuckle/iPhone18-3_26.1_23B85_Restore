@interface WFRemoteQuarantinePolicyEvaluator
+ (WFRemoteQuarantinePolicyEvaluator)sharedEvaluator;
- (JSVirtualMachine)javaScriptVirtualMachine;
- (WFRemoteQuarantinePolicyEvaluator)init;
- (WFRemoteQuarantinePolicyEvaluatorDelegate)delegate;
- (id)remoteQuarantineHashForWorkflowReference:(id)reference;
- (void)_evaluatePolicyForRequest:(id)request completion:(id)completion;
- (void)dealloc;
- (void)evaluatePolicyForRequest:(id)request completion:(id)completion;
@end

@implementation WFRemoteQuarantinePolicyEvaluator

- (WFRemoteQuarantinePolicyEvaluatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_evaluatePolicyForRequest:(id)request completion:(id)completion
{
  v66 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  javaScriptEvaluationThread = [(WFRemoteQuarantinePolicyEvaluator *)self javaScriptEvaluationThread];
  v10 = [currentThread isEqual:javaScriptEvaluationThread];

  if ((v10 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteQuarantinePolicyEvaluator.m" lineNumber:151 description:@"This metod should only be run on javaScriptEvaluationThread"];
  }

  javaScriptVirtualMachine = [(WFRemoteQuarantinePolicyEvaluator *)self javaScriptVirtualMachine];
  v12 = [objc_alloc(MEMORY[0x1E696EB40]) initWithVirtualMachine:javaScriptVirtualMachine];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke;
  aBlock[3] = &unk_1E83759A0;
  v56 = &v57;
  v13 = completionCopy;
  v55 = v13;
  v14 = _Block_copy(aBlock);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke_2;
  v52[3] = &unk_1E83759C8;
  v15 = v14;
  v53 = v15;
  [v12 setExceptionHandler:v52];
  [v12 setObject:&__block_literal_global_199 forKeyedSubscript:@"WFLocalizedString"];
  v16 = +[WFRemoteQuarantinePolicyManager sharedManager];
  policyString = [v16 policyString];

  if (policyString)
  {
    v18 = [v12 evaluateScript:policyString];
    if ((v58[3] & 1) == 0)
    {
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = __Block_byref_object_copy__12286;
      v50 = __Block_byref_object_dispose__12287;
      v51 = 0;
      objc_initWeak(&location, self);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke_200;
      v39[3] = &unk_1E8375A10;
      objc_copyWeak(&v44, &location);
      v42 = &v46;
      v43 = &v57;
      v19 = v15;
      v41 = v19;
      v20 = requestCopy;
      v40 = v20;
      v21 = _Block_copy(v39);
      [v12 setObject:v21 forKeyedSubscript:@"completionHandler"];

      policyFunctionName = [v20 policyFunctionName];
      v34 = [v12 objectForKeyedSubscript:policyFunctionName];

      v23 = [v12 objectForKeyedSubscript:@"completionHandler"];
      v38 = 0;
      v24 = [v20 javaScriptCoreRepresentationWithError:&v38];
      v25 = v38;
      if (v24)
      {
        v26 = MEMORY[0x1E695DFF0];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke_210;
        v36[3] = &unk_1E8375A38;
        v37 = v19;
        v27 = [v26 scheduledTimerWithTimeInterval:0 repeats:v36 block:3.0];
        v28 = v47[5];
        v47[5] = v27;

        v61[0] = v24;
        v61[1] = v23;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
        v30 = [v34 callWithArguments:v29];
      }

      else
      {
        v31 = getWFRemoteQuarantineLogObject();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v63 = "[WFRemoteQuarantinePolicyEvaluator _evaluatePolicyForRequest:completion:]";
          v64 = 2112;
          v65 = v25;
          _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_ERROR, "%s Failed to generate JSC representation: %@", buf, 0x16u);
        }

        (*(v19 + 2))(v19, 1, 0);
      }

      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v46, 8);
    }
  }

  else
  {
    (*(v15 + 2))(v15, 1, 0);
  }

  _Block_object_dispose(&v57, 8);
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke_200(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v31 = 0;
    v5 = [MTLJSONAdapter modelOfClass:objc_opt_class() fromJSONDictionary:v3 error:&v31];
    v6 = v31;
    if (!v5 || ![v5 policy])
    {
      (*(*(a1 + 40) + 16))();
LABEL_27:

      goto LABEL_28;
    }

    if ([v5 policy] == 2)
    {
      v7 = [v5 errorTitle];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [*(a1 + 32) defaultLocalizedPromptTitle];
      }

      v10 = v9;

      v11 = [v5 errorMessage];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [*(a1 + 32) defaultLocalizedPromptMessage];
      }

      v14 = v13;

      if ([v10 length] || objc_msgSend(v14, "length"))
      {
        v15 = objc_alloc_init(MEMORY[0x1E6996C70]);
        [v15 setTitle:v10];
        [v15 setMessage:v14];
        v16 = MEMORY[0x1E6996C78];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke_2_205;
        v29[3] = &unk_1E837F4E8;
        v30 = *(a1 + 40);
        v17 = [v16 cancelButtonWithHandler:v29];
        [v15 addButton:v17];

        v18 = MEMORY[0x1E6996C78];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke_3_207;
        v27[3] = &unk_1E837F4E8;
        v28 = *(a1 + 40);
        v19 = [v18 okButtonWithHandler:v27];
        [v15 addButton:v19];

        v20 = [WeakRetained delegate];
        v21 = [v20 userInterfaceToPresentAlertForEvaluator:WeakRetained];

        if (v21)
        {
          [v21 presentAlert:v15];
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

LABEL_26:
        goto LABEL_27;
      }
    }

    v10 = [v5 errorTitle];
    v22 = [v5 errorMessage];
    if (!(v10 | v22))
    {
      v10 = [*(a1 + 32) defaultLocalizedDeniedErrorTitle];
      v22 = [*(a1 + 32) defaultLocalizedDeniedErrorMessage];
    }

    v23 = v22;
    v24 = objc_opt_new();
    v25 = v24;
    if (v10)
    {
      [v24 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    if (v23)
    {
      [v25 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFRemoteQuarantineErrorDomain" code:0 userInfo:v25];
    (*(*(a1 + 40) + 16))();

    goto LABEL_26;
  }

LABEL_28:
}

void __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke_2_205(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  (*(v1 + 16))(v1, 0, v2);
}

id __74__WFRemoteQuarantinePolicyEvaluator__evaluatePolicyForRequest_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[WFRemoteQuarantinePolicyManager sharedManager];
  v4 = [v3 localizedString:v2];

  return v4;
}

- (id)remoteQuarantineHashForWorkflowReference:(id)reference
{
  referenceCopy = reference;
  v4 = getWFWorkflowExecutionLogObject();
  v5 = os_signpost_id_generate(v4);

  v6 = getWFWorkflowExecutionLogObject();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "RemoteQuarantineEvaluationHashCalculation", "", buf, 2u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
  v9 = +[WFRemoteQuarantinePolicyManager sharedManager];
  v10 = [v8 combineInteger:{objc_msgSend(v9, "policyVersion")}];

  syncHash = [referenceCopy syncHash];
  v12 = [v8 combineInteger:syncHash];
  v18 = [v8 finalize];
  v13 = getWFWorkflowExecutionLogObject();
  v14 = v13;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v14, OS_SIGNPOST_INTERVAL_END, v5, "RemoteQuarantineEvaluationHashCalculation", "", v17, 2u);
  }

  v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v18 length:8];

  return v15;
}

- (void)evaluatePolicyForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = voucher_copy();
  javaScriptEvaluationThreadRunLoop = [(WFRemoteQuarantinePolicyEvaluator *)self javaScriptEvaluationThreadRunLoop];
  v10 = *MEMORY[0x1E695E8E0];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __73__WFRemoteQuarantinePolicyEvaluator_evaluatePolicyForRequest_completion___block_invoke;
  v17 = &unk_1E837F510;
  selfCopy = self;
  v19 = requestCopy;
  v20 = v8;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = v8;
  v13 = requestCopy;
  CFRunLoopPerformBlock(javaScriptEvaluationThreadRunLoop, v10, &v14);
  CFRunLoopWakeUp([(WFRemoteQuarantinePolicyEvaluator *)self javaScriptEvaluationThreadRunLoop:v14]);
}

void __73__WFRemoteQuarantinePolicyEvaluator_evaluatePolicyForRequest_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__WFRemoteQuarantinePolicyEvaluator_evaluatePolicyForRequest_completion___block_invoke_2;
  v5[3] = &unk_1E837EE10;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _evaluatePolicyForRequest:v4 completion:v5];

  objc_autoreleasePoolPop(v2);
}

void __73__WFRemoteQuarantinePolicyEvaluator_evaluatePolicyForRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;

  (*(*(a1 + 40) + 16))();
}

- (JSVirtualMachine)javaScriptVirtualMachine
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  javaScriptEvaluationThread = [(WFRemoteQuarantinePolicyEvaluator *)self javaScriptEvaluationThread];
  v6 = [currentThread isEqual:javaScriptEvaluationThread];

  if ((v6 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteQuarantinePolicyEvaluator.m" lineNumber:101 description:@"This metod should only be run on javaScriptEvaluationThread"];
  }

  [(NSTimer *)self->_javaScriptVirtualMachineDestructionTimer invalidate];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E695DFF0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__WFRemoteQuarantinePolicyEvaluator_javaScriptVirtualMachine__block_invoke;
  v16[3] = &unk_1E8375978;
  objc_copyWeak(&v17, &location);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v16 block:300.0];
  javaScriptVirtualMachineDestructionTimer = self->_javaScriptVirtualMachineDestructionTimer;
  self->_javaScriptVirtualMachineDestructionTimer = v8;

  javaScriptVirtualMachine = self->_javaScriptVirtualMachine;
  if (!javaScriptVirtualMachine)
  {
    v11 = objc_opt_new();
    v12 = self->_javaScriptVirtualMachine;
    self->_javaScriptVirtualMachine = v11;

    javaScriptVirtualMachine = self->_javaScriptVirtualMachine;
  }

  v13 = javaScriptVirtualMachine;
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __61__WFRemoteQuarantinePolicyEvaluator_javaScriptVirtualMachine__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setJavaScriptVirtualMachine:0];
}

- (void)dealloc
{
  CFRunLoopPerformBlock(self->_javaScriptEvaluationThreadRunLoop, *MEMORY[0x1E695E8E0], &__block_literal_global_178);
  v3.receiver = self;
  v3.super_class = WFRemoteQuarantinePolicyEvaluator;
  [(WFRemoteQuarantinePolicyEvaluator *)&v3 dealloc];
}

void __44__WFRemoteQuarantinePolicyEvaluator_dealloc__block_invoke()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (WFRemoteQuarantinePolicyEvaluator)init
{
  v17.receiver = self;
  v17.super_class = WFRemoteQuarantinePolicyEvaluator;
  v2 = [(WFRemoteQuarantinePolicyEvaluator *)&v17 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    objc_initWeak(&location, v3);
    objc_initWeak(&from, v2);
    v4 = objc_alloc(MEMORY[0x1E696AF00]);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __41__WFRemoteQuarantinePolicyEvaluator_init__block_invoke;
    v12 = &unk_1E8375950;
    objc_copyWeak(&v13, &from);
    objc_copyWeak(&v14, &location);
    v5 = [v4 initWithBlock:&v9];
    javaScriptEvaluationThread = v2->_javaScriptEvaluationThread;
    v2->_javaScriptEvaluationThread = v5;

    [(NSThread *)v2->_javaScriptEvaluationThread setName:@"WFRemoteQuarantinePolicyEvaluator JavaScript Evaluator Thread", v9, v10, v11, v12];
    [(NSThread *)v2->_javaScriptEvaluationThread start];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v7 = v2;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__WFRemoteQuarantinePolicyEvaluator_init__block_invoke(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  WeakRetained[4] = Current;
  dispatch_semaphore_signal(v4);

  memset(&v7, 0, sizeof(v7));
  v5 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v7);
  v6 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(Current, v5, *MEMORY[0x1E695E8E0]);
  CFRunLoopRun();
  CFRunLoopRemoveSource(Current, v5, v6);
  CFRelease(v5);
}

+ (WFRemoteQuarantinePolicyEvaluator)sharedEvaluator
{
  if (sharedEvaluator_onceToken != -1)
  {
    dispatch_once(&sharedEvaluator_onceToken, &__block_literal_global_172);
  }

  v3 = sharedEvaluator_evaluator;

  return v3;
}

void __52__WFRemoteQuarantinePolicyEvaluator_sharedEvaluator__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedEvaluator_evaluator;
  sharedEvaluator_evaluator = v0;
}

@end