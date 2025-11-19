@interface WFSequentialParameterInputProvider
- (WFSequentialParameterInputProvider)initWithDelegate:(id)a3;
- (WFSequentialParameterInputProviderDelegate)delegate;
- (void)askForParameterIfAvailable;
- (void)persistInFlightParameters;
- (void)startWithAction:(id)a3 parameters:(id)a4 defaultStates:(id)a5 prompts:(id)a6;
@end

@implementation WFSequentialParameterInputProvider

- (WFSequentialParameterInputProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)persistInFlightParameters
{
  v5 = [(WFSequentialParameterInputProvider *)self delegate];
  v3 = [(WFSequentialParameterInputProvider *)self inputtedStates];
  v4 = [(WFSequentialParameterInputProvider *)self lastResponseContext];
  [v5 sequentialParameterInputProvider:self didFinishWithInputtedStates:v3 responseContext:v4];
}

- (void)askForParameterIfAvailable
{
  v3 = [(WFSequentialParameterInputProvider *)self queuedParameters];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [(WFSequentialParameterInputProvider *)self queuedParameters];
    [v5 removeObject:v4];

    v6 = [(WFSequentialParameterInputProvider *)self fakeAction];
    v7 = [v6 visibleParametersWithProcessing:1];

    v8 = [v4 key];
    v9 = [v7 objectMatchingKey:@"key" value:v8];

    if (!v9)
    {
      [(WFSequentialParameterInputProvider *)self askForParameterIfAvailable];
      goto LABEL_9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [(WFSequentialParameterInputProvider *)self defaultStates];
      v14 = [v4 key];
      v22 = [v13 objectForKey:v14];

      v15 = [(WFSequentialParameterInputProvider *)self prompts];
      v16 = [v4 key];
      v17 = [v15 objectForKey:v16];

      v18 = [(WFSequentialParameterInputProvider *)self delegate];
      v19 = [(WFSequentialParameterInputProvider *)self fakeAction];
      v20 = [v17 prompt];
      v21 = [v17 linkDialog];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __64__WFSequentialParameterInputProvider_askForParameterIfAvailable__block_invoke;
      v23[3] = &unk_1E8375438;
      v23[4] = self;
      v24 = v4;
      [v18 sequentialParameterInputProvider:self didAdvanceToParameter:v24 action:v19 defaultState:v22 prompt:v20 linkDialog:v21 completion:v23];

      goto LABEL_9;
    }

    v10 = [[WFBooleanSubstitutableState alloc] initWithBoolValue:1];
    v11 = [(WFSequentialParameterInputProvider *)self fakeAction];
    v12 = [v4 key];
    [v11 setParameterState:v10 forKey:v12];

    [(WFSequentialParameterInputProvider *)self askForParameterIfAvailable];
  }

  else
  {
    v7 = [(WFSequentialParameterInputProvider *)self delegate];
    v9 = [(WFSequentialParameterInputProvider *)self inputtedStates];
    v10 = [(WFSequentialParameterInputProvider *)self lastResponseContext];
    [v7 sequentialParameterInputProvider:self didFinishWithInputtedStates:v9 responseContext:v10];
  }

LABEL_9:
}

void __64__WFSequentialParameterInputProvider_askForParameterIfAvailable__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) setLastResponseContext:v8];
  v9 = *(a1 + 32);
  if (a2)
  {
    v10 = [v9 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      [v12 sequentialParameterInputProviderDidCancel:*(a1 + 32) responseContext:v8];
    }
  }

  else
  {
    v13 = [v9 fakeAction];
    v14 = [*(a1 + 40) key];
    v15 = [v13 setParameterState:v7 forKey:v14];

    if ((v15 & 1) == 0)
    {
      v16 = getWFGeneralLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 40) key];
        *buf = 136315650;
        v23 = "[WFSequentialParameterInputProvider askForParameterIfAvailable]_block_invoke";
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Unable to set parameter state: %@ for key: %@ in sequential parameter input provider", buf, 0x20u);
      }
    }

    v18 = [*(a1 + 32) inputtedStates];
    v19 = [*(a1 + 40) key];
    [v18 setValue:v7 forKey:v19];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__WFSequentialParameterInputProvider_askForParameterIfAvailable__block_invoke_178;
    block[3] = &unk_1E837FA70;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)startWithAction:(id)a3 parameters:(id)a4 defaultStates:(id)a5 prompts:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v35 = a6;
  v13 = [v10 copyForProcessing];
  [(WFSequentialParameterInputProvider *)self setFakeAction:v13];

  v14 = MEMORY[0x1E695DFA0];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __87__WFSequentialParameterInputProvider_startWithAction_parameters_defaultStates_prompts___block_invoke;
  v40[3] = &unk_1E8375410;
  v40[4] = self;
  v15 = [v11 if_compactMap:v40];
  v16 = [v14 orderedSetWithOrderedSet:v15];
  [(WFSequentialParameterInputProvider *)self setQueuedParameters:v16];

  v17 = [(WFSequentialParameterInputProvider *)self fakeAction];
  v18 = [v10 workflow];
  [v17 willBeAddedToWorkflow:v18];

  v19 = [(WFSequentialParameterInputProvider *)self fakeAction];
  v20 = [v10 workflow];
  [v19 wasAddedToWorkflow:v20];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v11;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v36 + 1) + 8 * i);
        v27 = [v26 key];
        v28 = [v12 objectForKey:v27];

        if (v28)
        {
          v29 = [(WFSequentialParameterInputProvider *)self fakeAction];
          v30 = [v26 key];
          [v29 setParameterState:v28 forKey:v30];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v23);
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(WFSequentialParameterInputProvider *)self setInputtedStates:v31];

  v32 = [v12 copy];
  [(WFSequentialParameterInputProvider *)self setDefaultStates:v32];

  v33 = [v35 copy];
  [(WFSequentialParameterInputProvider *)self setPrompts:v33];

  [(WFSequentialParameterInputProvider *)self askForParameterIfAvailable];
  v34 = *MEMORY[0x1E69E9840];
}

id __87__WFSequentialParameterInputProvider_startWithAction_parameters_defaultStates_prompts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fakeAction];
  v5 = [v3 key];
  v6 = [v4 parameterForKey:v5];

  v7 = [v3 localizedPrompt];

  if (v7)
  {
    v8 = [v3 localizedPrompt];
    v9 = [v8 copy];
    [v6 setLocalizedPrompt:v9];
  }

  return v6;
}

- (WFSequentialParameterInputProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFSequentialParameterInputProvider;
  v5 = [(WFSequentialParameterInputProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

@end