@interface WFLinkResultDialogRequest
- (WFLinkResultDialogRequest)initWithCoder:(id)coder;
- (WFLinkResultDialogRequest)initWithSuccessResult:(id)result attribution:(id)attribution encodedSnippetActionToolInvocation:(id)invocation;
- (void)encodeWithCoder:(id)coder;
- (void)getCATResultWithCompletionHandler:(id)handler;
@end

@implementation WFLinkResultDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFLinkResultDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFLinkResultDialogRequest *)self result:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"result"];

  doneButton = [(WFLinkResultDialogRequest *)self doneButton];
  [coderCopy encodeObject:doneButton forKey:@"doneButton"];
}

- (WFLinkResultDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFLinkResultDialogRequest;
  v5 = [(WFDialogRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v8;

    v10 = v5;
  }

  return v5;
}

- (void)getCATResultWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkResultDialogRequest.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  catResult = [(WFLinkResultDialogRequest *)self catResult];

  if (catResult)
  {
    catResult2 = [(WFLinkResultDialogRequest *)self catResult];
    handlerCopy[2](handlerCopy, catResult2);
  }

  else
  {
    result = [(WFLinkResultDialogRequest *)self result];
    output = [result output];
    dialog = [output dialog];

    if (dialog)
    {
      result2 = [(WFLinkResultDialogRequest *)self result];
      output2 = [result2 output];
      dialog2 = [output2 dialog];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__WFLinkResultDialogRequest_getCATResultWithCompletionHandler___block_invoke;
      v15[3] = &unk_1E83783B0;
      v15[4] = self;
      v16 = handlerCopy;
      [dialog2 getResultWithCompletionHandler:v15];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

void __63__WFLinkResultDialogRequest_getCATResultWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFLinkResultDialogRequest getCATResultWithCompletionHandler:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not get CATResult, error: %@", &v10, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    [*(a1 + 32) setCatResult:v5];
    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v9 = *MEMORY[0x1E69E9840];
}

- (WFLinkResultDialogRequest)initWithSuccessResult:(id)result attribution:(id)attribution encodedSnippetActionToolInvocation:(id)invocation
{
  resultCopy = result;
  invocationCopy = invocation;
  attributionCopy = attribution;
  output = [resultCopy output];
  viewSnippet = [output viewSnippet];
  output2 = [resultCopy output];
  snippetAction = [output2 snippetAction];
  output3 = [resultCopy output];
  v23.receiver = self;
  v23.super_class = WFLinkResultDialogRequest;
  v16 = -[WFLinkResultDialogRequest initWithViewSnippet:snippetAction:encodedSnippetActionToolInvocation:attribution:showPrompt:](&v23, sel_initWithViewSnippet_snippetAction_encodedSnippetActionToolInvocation_attribution_showPrompt_, viewSnippet, snippetAction, invocationCopy, attributionCopy, [output3 shouldShowPrompt]);

  if (v16)
  {
    v17 = [resultCopy copy];
    v18 = v16->_result;
    v16->_result = v17;

    doneButton = [MEMORY[0x1E69E0AA0] doneButton];
    doneButton = v16->_doneButton;
    v16->_doneButton = doneButton;

    v21 = v16;
  }

  return v16;
}

@end