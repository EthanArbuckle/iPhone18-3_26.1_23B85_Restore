@interface WFDynamicResolveParameter
- (WFDynamicResolveParameter)initWithDefinition:(id)definition;
- (WFDynamicResolveParameterDataSource)dataSource;
- (WFDynamicResolveParameterDelegate)delegate;
- (id)localizedLabelForState:(id)state;
- (id)wf_pickerLocalizedImageForState:(id)state;
- (void)endResolutionSession;
- (void)localizedDisambiguationPromptForItems:(id)items intent:(id)intent completion:(id)completion;
- (void)resolveOptionsForUserInput:(id)input completionBlock:(id)block;
- (void)wf_loadStatesWithSearchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFDynamicResolveParameter

- (WFDynamicResolveParameterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WFDynamicResolveParameterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)localizedDisambiguationPromptForItems:(id)items intent:(id)intent completion:(id)completion
{
  itemsCopy = items;
  intentCopy = intent;
  completionCopy = completion;
  dataSource = [(WFDynamicResolveParameter *)self dataSource];

  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDynamicResolveParameter.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"self.dataSource"}];
  }

  dataSource2 = [(WFDynamicResolveParameter *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    dataSource3 = [(WFDynamicResolveParameter *)self dataSource];
    [dataSource3 localizedDisambiguationPromptForItems:itemsCopy intent:intentCopy dynamicResolveParameter:self completion:completionCopy];
  }
}

- (void)endResolutionSession
{
  delegate = [(WFDynamicResolveParameter *)self delegate];

  if (!delegate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDynamicResolveParameter.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"self.delegate"}];
  }

  delegate2 = [(WFDynamicResolveParameter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate3 = [(WFDynamicResolveParameter *)self delegate];
    [delegate3 dynamicResolveParameterDidEndResolutionSession:self];
  }
}

- (void)resolveOptionsForUserInput:(id)input completionBlock:(id)block
{
  inputCopy = input;
  blockCopy = block;
  dataSource = [(WFDynamicResolveParameter *)self dataSource];

  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDynamicResolveParameter.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"self.dataSource"}];
  }

  dataSource2 = [(WFDynamicResolveParameter *)self dataSource];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    dataSource3 = [(WFDynamicResolveParameter *)self dataSource];
    [dataSource3 resolveOptionsForUserInput:inputCopy forDynamicResolveParameter:self completion:blockCopy];
  }
}

- (id)localizedLabelForState:(id)state
{
  value = [state value];
  stringLocalizer = [(WFDynamicResolveParameter *)self stringLocalizer];
  if (stringLocalizer)
  {
    v6 = [value _intents_readableTitleWithLocalizer:stringLocalizer];
  }

  else
  {
    v7 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    v6 = [value _intents_readableTitleWithLocalizer:v7];
  }

  return v6;
}

- (WFDynamicResolveParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFDynamicResolveParameter;
  v3 = [(WFParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)wf_pickerLocalizedImageForState:(id)state
{
  value = [state value];
  stringLocalizer = [(WFDynamicResolveParameter *)self stringLocalizer];
  v6 = stringLocalizer;
  if (!stringLocalizer)
  {
    v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  }

  v7 = [value _intents_displayImageWithLocalizer:v6];
  wf_image = [v7 wf_image];

  if (!stringLocalizer)
  {
  }

  return wf_image;
}

- (void)wf_loadStatesWithSearchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__WFDynamicResolveParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke;
  v8[3] = &unk_1E837E270;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WFDynamicResolveParameter *)self resolveOptionsForUserInput:term completionBlock:v8];
}

void __94__WFDynamicResolveParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a4;
  if (a5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__WFDynamicResolveParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_2;
    aBlock[3] = &unk_1E837E248;
    v11 = v9;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (a3 == 2)
    {
      v16 = *(a1 + 32);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94__WFDynamicResolveParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_3;
      v17[3] = &unk_1E837FBD8;
      v18 = v14;
      [v16 localizedDisambiguationPromptForItems:v11 intent:v10 completion:v17];
    }

    else
    {
      (*(v14 + 2))(v14, 0);
    }
  }
}

void __94__WFDynamicResolveParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFActionsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315651;
    v19 = "[WFDynamicResolveParameter(WFParameterPicker) wf_loadStatesWithSearchTerm:completionHandler:]_block_invoke_2";
    v20 = 2113;
    v21 = v5;
    v22 = 2113;
    v23 = v3;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Updating dynamic resolution results with: %{private}@, prompt: %{private}@", buf, 0x20u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__WFDynamicResolveParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_242;
  v17[3] = &unk_1E837E220;
  v6 = *(a1 + 32);
  v17[4] = *(a1 + 40);
  v7 = [v6 if_map:v17];
  v8 = [objc_alloc(MEMORY[0x1E696E918]) initWithItems:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__WFDynamicResolveParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_2_245;
  v13[3] = &unk_1E837ECE0;
  v9 = *(a1 + 48);
  v15 = v3;
  v16 = v9;
  v14 = v8;
  v10 = v3;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  v12 = *MEMORY[0x1E69E9840];
}

WFCodableAttributeBackedSubstitutableState *__94__WFDynamicResolveParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_242(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFCodableAttributeBackedSubstitutableState alloc];
  v5 = [*(a1 + 32) codableAttribute];
  v6 = [*(a1 + 32) stringLocalizer];
  v7 = [(WFCodableAttributeBackedSubstitutableState *)v4 initWithValue:v3 codableAttribute:v5 stringLocalizer:v6];

  return v7;
}

@end