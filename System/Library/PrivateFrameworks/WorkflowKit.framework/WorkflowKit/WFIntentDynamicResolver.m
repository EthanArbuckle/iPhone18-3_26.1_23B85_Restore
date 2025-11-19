@interface WFIntentDynamicResolver
- (WFIntentDynamicResolver)initWithIntentKeyPathToResolve:(id)a3 dataSource:(id)a4;
- (WFIntentDynamicResolverDataSource)dataSource;
- (id)resolveWithUserInput:(id)a3 completionBlock:(id)a4;
- (void)beginSessionWithCompletionBlock:(id)a3;
- (void)endSession;
- (void)failWithError:(id)a3;
- (void)populatedSkeletonIntentWithUserInput:(id)a3 forKeyPath:(id)a4 completionBlock:(id)a5;
@end

@implementation WFIntentDynamicResolver

- (WFIntentDynamicResolverDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)failWithError:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_state = 2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(WFIntentDynamicResolver *)self activeRequests];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isCancelled] & 1) == 0)
        {
          v11 = [v10 resolutionBlock];
          (v11)[2](v11, 0, 1, 0, v4);
        }

        [v10 cancel];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = objc_opt_new();
  [(WFIntentDynamicResolver *)self setActiveRequests:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)populatedSkeletonIntentWithUserInput:(id)a3 forKeyPath:(id)a4 completionBlock:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFIntentDynamicResolver *)self dataSource];
  if (v11)
  {

LABEL_4:
    v14 = [(WFIntentDynamicResolver *)self dataSource];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91__WFIntentDynamicResolver_populatedSkeletonIntentWithUserInput_forKeyPath_completionBlock___block_invoke;
    v17[3] = &unk_1E83769A0;
    v20 = v10;
    v18 = v8;
    v19 = v9;
    [v14 generateSkeletonIntentForDynamicResolver:self withCompletionBlock:v17];

    goto LABEL_5;
  }

  v12 = [(WFIntentDynamicResolver *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    goto LABEL_4;
  }

  v16 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v22 = "[WFIntentDynamicResolver populatedSkeletonIntentWithUserInput:forKeyPath:completionBlock:]";
    _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s Trying to populate skeleton intent, but there's no data source.", buf, 0xCu);
  }

  (*(v10 + 2))(v10, 0, 0);
LABEL_5:

  v15 = *MEMORY[0x1E69E9840];
}

void __91__WFIntentDynamicResolver_populatedSkeletonIntentWithUserInput_forKeyPath_completionBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1[6] + 16);
  }

  else
  {
    if (a1[4] && a1[5])
    {
      v7 = [objc_alloc(MEMORY[0x1E696E910]) initWithIdentifier:0 displayString:a1[4]];
      [v8 setValue:v7 forKeyPath:a1[5]];
    }

    v6 = *(a1[6] + 16);
  }

  v6();
}

- (id)resolveWithUserInput:(id)a3 completionBlock:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(WFIntentDynamicResolver *)self state]== 1)
  {
    v8 = objc_opt_new();
    [v8 setResolutionBlock:v7];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__WFIntentDynamicResolver_resolveWithUserInput_completionBlock___block_invoke;
    aBlock[3] = &unk_1E8376928;
    v9 = v8;
    v28 = v9;
    v10 = v7;
    v29 = self;
    v30 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [(WFIntentDynamicResolver *)self intentKeyPathToResolve];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __64__WFIntentDynamicResolver_resolveWithUserInput_completionBlock___block_invoke_2;
    v23 = &unk_1E8376978;
    v24 = self;
    v25 = v10;
    v26 = v11;
    v13 = v11;
    [(WFIntentDynamicResolver *)self populatedSkeletonIntentWithUserInput:v6 forKeyPath:v12 completionBlock:&v20];

    v14 = [(WFIntentDynamicResolver *)self activeRequests:v20];
    [v14 addObject:v9];

    v15 = v26;
    v16 = v9;
  }

  else
  {
    v17 = getWFIntentExecutionLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[WFIntentDynamicResolver resolveWithUserInput:completionBlock:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Currently not in a resolution session.", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0, 1, 0, 0);
    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

void __64__WFIntentDynamicResolver_resolveWithUserInput_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a2;
  v8 = a4;
  v9 = a5;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  v10 = [*(a1 + 40) activeRequests];
  [v10 removeObject:*(a1 + 32)];
}

void __64__WFIntentDynamicResolver_resolveWithUserInput_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) extensionConnection];
    [v7 setIntent:v5];

    v8 = [v5 copy];
    objc_initWeak(&location, *(a1 + 32));
    v9 = [*(a1 + 32) extensionProxy];
    v10 = [*(a1 + 32) intentKeyPathToResolve];
    v19[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__WFIntentDynamicResolver_resolveWithUserInput_completionBlock___block_invoke_3;
    v14[3] = &unk_1E8376950;
    objc_copyWeak(&v17, &location);
    v16 = *(a1 + 48);
    v12 = v8;
    v15 = v12;
    [v9 resolveIntentSlotKeyPaths:v11 completionHandler:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __64__WFIntentDynamicResolver_resolveWithUserInput_completionBlock___block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained intentKeyPathToResolve];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (!a2)
  {
    v17 = [WeakRetained intent];
    v18 = [v17 _intentInstanceDescription];
    v19 = [WeakRetained intentKeyPathToResolve];
    v20 = [v18 slotByName:v19];

    v21 = [v20 resolutionResultClass];
    v22 = [v11 data];
    v23 = [v21 _resolutionResultWithData:v22 slotDescription:v20];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = getWFIntentExecutionLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v37 = "[WFIntentDynamicResolver resolveWithUserInput:completionBlock:]_block_invoke_3";
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Parameter resolution is not implemented for array parameters. See rdar://51679504", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_23;
    }

    v25 = objc_opt_class();
    v26 = v23;
    if (v26 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = getWFGeneralLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v37 = "WFEnforceClass";
        v38 = 2114;
        v39 = v26;
        v40 = 2114;
        v41 = objc_opt_class();
        v42 = 2114;
        v43 = v25;
        v29 = v41;
        _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    v30 = [v27 resolutionResultCode];
    v31 = *(a1 + 40);
    if (v30 == 3)
    {
      v32 = [v27 itemToConfirm];
      v35 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      (*(v31 + 16))(v31, v33, 3, *(a1 + 32), 0);
    }

    else
    {
      if (v30 != 2)
      {
        (*(v31 + 16))(*(a1 + 40), MEMORY[0x1E695E0F0], v30, *(a1 + 32), 0);
        goto LABEL_22;
      }

      v32 = [v27 disambiguationItems];
      (*(v31 + 16))(v31, v32, 2, *(a1 + 32), 0);
    }

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  if ([v11 result] == 2)
  {
    v12 = 7;
  }

  else
  {
    v12 = 0;
  }

  v13 = [WeakRetained intentKeyPathToResolve];
  v14 = [v7 valueForKeyPath:v13];

  v15 = *(a1 + 40);
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v14, 0}];
  (*(v15 + 16))(v15, v16, v12, *(a1 + 32), 0);

LABEL_24:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)endSession
{
  v3 = [(WFIntentDynamicResolver *)self extensionConnection];
  [v3 reset];

  extensionConnection = self->_extensionConnection;
  self->_extensionConnection = 0;

  extensionProxy = self->_extensionProxy;
  self->_extensionProxy = 0;

  self->_state = 0;
}

- (void)beginSessionWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(WFIntentDynamicResolver *)self state]== 1)
  {
    v4[2](v4, 0);
  }

  else
  {
    [(WFIntentDynamicResolver *)self endSession];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__WFIntentDynamicResolver_beginSessionWithCompletionBlock___block_invoke;
    v5[3] = &unk_1E8376900;
    v5[4] = self;
    v6 = v4;
    [(WFIntentDynamicResolver *)self populatedSkeletonIntentWithUserInput:0 forKeyPath:0 completionBlock:v5];
  }
}

void __59__WFIntentDynamicResolver_beginSessionWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E69AA878]) initWithIntent:v5 supportedExtensionTypes:7 donateInteraction:0 groupIdentifier:0 remoteProxyProvider:0];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  [*(*(a1 + 32) + 32) setRequiresTCC:0];
  [*(*(a1 + 32) + 32) setRequestTimeoutInterval:30.0];
  objc_initWeak(&location, *(a1 + 32));
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__WFIntentDynamicResolver_beginSessionWithCompletionBlock___block_invoke_2;
  v16[3] = &unk_1E8379140;
  objc_copyWeak(&v17, &location);
  [*(*(a1 + 32) + 32) setTimeoutHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__WFIntentDynamicResolver_beginSessionWithCompletionBlock___block_invoke_3;
  v14[3] = &unk_1E8379140;
  objc_copyWeak(&v15, &location);
  [*(*(a1 + 32) + 32) setInterruptionHandler:v14];
  v10 = *(*(a1 + 32) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__WFIntentDynamicResolver_beginSessionWithCompletionBlock___block_invoke_4;
  v11[3] = &unk_1E83768D8;
  objc_copyWeak(&v13, &location);
  v12 = *(a1 + 40);
  [v10 resumeWithCompletionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __59__WFIntentDynamicResolver_beginSessionWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *MEMORY[0x1E696AA08];
  if (v3)
  {
    v16 = *MEMORY[0x1E696AA08];
    v17[0] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69AA858] code:1307 userInfo:v6];
  v8 = MEMORY[0x1E696ABC0];
  v15[0] = v7;
  v9 = *MEMORY[0x1E696A578];
  v14[0] = v5;
  v14[1] = v9;
  v10 = WFLocalizedString(@"Cannot Communicate With App");
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [v8 errorWithDomain:@"WFIntentDynamicResolverErrorDomain" code:100 userInfo:v11];

  [WeakRetained failWithError:v12];
  v13 = *MEMORY[0x1E69E9840];
}

void __59__WFIntentDynamicResolver_beginSessionWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *MEMORY[0x1E696AA08];
  if (v3)
  {
    v16 = *MEMORY[0x1E696AA08];
    v17[0] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69AA858] code:1301 userInfo:v6];
  v8 = MEMORY[0x1E696ABC0];
  v15[0] = v7;
  v9 = *MEMORY[0x1E696A578];
  v14[0] = v5;
  v14[1] = v9;
  v10 = WFLocalizedString(@"Cannot Communicate With App");
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [v8 errorWithDomain:@"WFIntentDynamicResolverErrorDomain" code:100 userInfo:v11];

  [WeakRetained failWithError:v12];
  v13 = *MEMORY[0x1E69E9840];
}

void __59__WFIntentDynamicResolver_beginSessionWithCompletionBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (v7)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696AA08];
    v18[0] = v7;
    v12 = *MEMORY[0x1E696A578];
    v17[0] = v11;
    v17[1] = v12;
    v13 = WFLocalizedString(@"Cannot Communicate With App");
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v15 = [v10 errorWithDomain:@"WFIntentDynamicResolverErrorDomain" code:100 userInfo:v14];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained[2] = 1;
    objc_storeStrong(WeakRetained + 5, a2);
    (*(*(a1 + 32) + 16))();
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (WFIntentDynamicResolver)initWithIntentKeyPathToResolve:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFIntentDynamicResolver;
  v9 = [(WFIntentDynamicResolver *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intentKeyPathToResolve, a3);
    objc_storeWeak(&v10->_dataSource, v8);
    v11 = v10;
  }

  return v10;
}

@end