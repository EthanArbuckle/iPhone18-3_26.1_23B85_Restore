@interface WFLinkResultDialogRequest
- (WFLinkResultDialogRequest)initWithCoder:(id)a3;
- (WFLinkResultDialogRequest)initWithSuccessResult:(id)a3 attribution:(id)a4 encodedSnippetActionToolInvocation:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)getCATResultWithCompletionHandler:(id)a3;
@end

@implementation WFLinkResultDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFLinkResultDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v7 encodeWithCoder:v4];
  v5 = [(WFLinkResultDialogRequest *)self result:v7.receiver];
  [v4 encodeObject:v5 forKey:@"result"];

  v6 = [(WFLinkResultDialogRequest *)self doneButton];
  [v4 encodeObject:v6 forKey:@"doneButton"];
}

- (WFLinkResultDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFLinkResultDialogRequest;
  v5 = [(WFDialogRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v8;

    v10 = v5;
  }

  return v5;
}

- (void)getCATResultWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFLinkResultDialogRequest.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v6 = [(WFLinkResultDialogRequest *)self catResult];

  if (v6)
  {
    v7 = [(WFLinkResultDialogRequest *)self catResult];
    v5[2](v5, v7);
  }

  else
  {
    v8 = [(WFLinkResultDialogRequest *)self result];
    v9 = [v8 output];
    v10 = [v9 dialog];

    if (v10)
    {
      v11 = [(WFLinkResultDialogRequest *)self result];
      v12 = [v11 output];
      v13 = [v12 dialog];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__WFLinkResultDialogRequest_getCATResultWithCompletionHandler___block_invoke;
      v15[3] = &unk_1E83783B0;
      v15[4] = self;
      v16 = v5;
      [v13 getResultWithCompletionHandler:v15];
    }

    else
    {
      v5[2](v5, 0);
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

- (WFLinkResultDialogRequest)initWithSuccessResult:(id)a3 attribution:(id)a4 encodedSnippetActionToolInvocation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 output];
  v12 = [v11 viewSnippet];
  v13 = [v8 output];
  v14 = [v13 snippetAction];
  v15 = [v8 output];
  v23.receiver = self;
  v23.super_class = WFLinkResultDialogRequest;
  v16 = -[WFLinkResultDialogRequest initWithViewSnippet:snippetAction:encodedSnippetActionToolInvocation:attribution:showPrompt:](&v23, sel_initWithViewSnippet_snippetAction_encodedSnippetActionToolInvocation_attribution_showPrompt_, v12, v14, v9, v10, [v15 shouldShowPrompt]);

  if (v16)
  {
    v17 = [v8 copy];
    v18 = v16->_result;
    v16->_result = v17;

    v19 = [MEMORY[0x1E69E0AA0] doneButton];
    doneButton = v16->_doneButton;
    v16->_doneButton = v19;

    v21 = v16;
  }

  return v16;
}

@end