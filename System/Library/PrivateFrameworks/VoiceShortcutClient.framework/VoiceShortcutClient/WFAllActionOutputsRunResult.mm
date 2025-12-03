@interface WFAllActionOutputsRunResult
- (BOOL)hasOutputs;
- (WFAllActionOutputsRunResult)initWithActionOutputs:(id)outputs runError:(id)error;
- (WFAllActionOutputsRunResult)initWithCoder:(id)coder;
- (id)unableToDecodeError;
- (void)encodeWithCoder:(id)coder;
- (void)generateOutputsFromRepresentation:(id)representation withCompletion:(id)completion;
- (void)getActionOutputsWithCompletionHandler:(id)handler;
@end

@implementation WFAllActionOutputsRunResult

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFAllActionOutputsRunResult;
  coderCopy = coder;
  [(WFWorkflowRunResult *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFAllActionOutputsRunResult *)self archivedOutputs:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"archivedOutputs"];
}

- (WFAllActionOutputsRunResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFAllActionOutputsRunResult;
  v5 = [(WFWorkflowRunResult *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archivedOutputs"];
    archivedOutputs = v5->_archivedOutputs;
    v5->_archivedOutputs = v6;

    v8 = v5;
  }

  return v5;
}

- (void)generateOutputsFromRepresentation:(id)representation withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  completionCopy = completion;
  v7 = NSClassFromString(@"WFContentCollection");
  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v17[0] = v7;
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v10 = [v8 setWithArray:v9];

    v11 = MEMORY[0x1E696ACD0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__WFAllActionOutputsRunResult_generateOutputsFromRepresentation_withCompletion___block_invoke;
    v15[3] = &unk_1E7B02790;
    v16 = completionCopy;
    v12 = [v11 wf_securelyUnarchiveObjectWithData:representationCopy allowedClasses:v10 completionHandler:v15];
  }

  else
  {
    v13 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v19 = "[WFAllActionOutputsRunResult generateOutputsFromRepresentation:withCompletion:]";
      _os_log_impl(&dword_1B1DE3000, v13, OS_LOG_TYPE_FAULT, "%s Unable to get output from WFWorkflowRunRequest, since ContentKit isn't linked.", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)unableToDecodeError
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v10[0] = *MEMORY[0x1E696A588];
  v4 = WFLocalizedString(@"Unable to finish running");
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E696A578];
  v5 = WFLocalizedString(@"The output of the shortcut could not be processed.");
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v2 errorWithDomain:v3 code:0x7FFFFFFFFFFFFFFFLL userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)getActionOutputsWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  cachedOutputs = [(WFAllActionOutputsRunResult *)self cachedOutputs];

  if (cachedOutputs)
  {
    cachedOutputs2 = [(WFAllActionOutputsRunResult *)self cachedOutputs];
    handlerCopy[2](handlerCopy, cachedOutputs2, 0);
  }

  else
  {
    archivedOutputs = [(WFAllActionOutputsRunResult *)self archivedOutputs];

    if (archivedOutputs)
    {
      archivedOutputs2 = [(WFAllActionOutputsRunResult *)self archivedOutputs];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__WFAllActionOutputsRunResult_getActionOutputsWithCompletionHandler___block_invoke;
      v10[3] = &unk_1E7B02768;
      v10[4] = self;
      v11 = handlerCopy;
      [(WFAllActionOutputsRunResult *)self generateOutputsFromRepresentation:archivedOutputs2 withCompletion:v10];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __69__WFAllActionOutputsRunResult_getActionOutputsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setCachedOutputs:v4];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)hasOutputs
{
  archivedOutputs = [(WFAllActionOutputsRunResult *)self archivedOutputs];
  v3 = archivedOutputs != 0;

  return v3;
}

- (WFAllActionOutputsRunResult)initWithActionOutputs:(id)outputs runError:(id)error
{
  outputsCopy = outputs;
  errorCopy = error;
  if (!outputsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAllActionOutputsRunResult.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"actionOutputs"}];
  }

  v17.receiver = self;
  v17.super_class = WFAllActionOutputsRunResult;
  v9 = [(WFWorkflowRunResult *)&v17 initWithError:errorCopy];
  if (v9)
  {
    v10 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:outputsCopy deletionResponsibility:1];
    archivedOutputs = v9->_archivedOutputs;
    v9->_archivedOutputs = v10;

    v12 = [outputsCopy copy];
    cachedOutputs = v9->_cachedOutputs;
    v9->_cachedOutputs = v12;

    v14 = v9;
  }

  return v9;
}

@end