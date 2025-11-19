@interface WFAllActionOutputsRunResult
- (BOOL)hasOutputs;
- (WFAllActionOutputsRunResult)initWithActionOutputs:(id)a3 runError:(id)a4;
- (WFAllActionOutputsRunResult)initWithCoder:(id)a3;
- (id)unableToDecodeError;
- (void)encodeWithCoder:(id)a3;
- (void)generateOutputsFromRepresentation:(id)a3 withCompletion:(id)a4;
- (void)getActionOutputsWithCompletionHandler:(id)a3;
@end

@implementation WFAllActionOutputsRunResult

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFAllActionOutputsRunResult;
  v4 = a3;
  [(WFWorkflowRunResult *)&v6 encodeWithCoder:v4];
  v5 = [(WFAllActionOutputsRunResult *)self archivedOutputs:v6.receiver];
  [v4 encodeObject:v5 forKey:@"archivedOutputs"];
}

- (WFAllActionOutputsRunResult)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFAllActionOutputsRunResult;
  v5 = [(WFWorkflowRunResult *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedOutputs"];
    archivedOutputs = v5->_archivedOutputs;
    v5->_archivedOutputs = v6;

    v8 = v5;
  }

  return v5;
}

- (void)generateOutputsFromRepresentation:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
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
    v16 = v6;
    v12 = [v11 wf_securelyUnarchiveObjectWithData:v5 allowedClasses:v10 completionHandler:v15];
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

    (*(v6 + 2))(v6, 0);
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

- (void)getActionOutputsWithCompletionHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFAllActionOutputsRunResult *)self cachedOutputs];

  if (v5)
  {
    v6 = [(WFAllActionOutputsRunResult *)self cachedOutputs];
    v4[2](v4, v6, 0);
  }

  else
  {
    v7 = [(WFAllActionOutputsRunResult *)self archivedOutputs];

    if (v7)
    {
      v8 = [(WFAllActionOutputsRunResult *)self archivedOutputs];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__WFAllActionOutputsRunResult_getActionOutputsWithCompletionHandler___block_invoke;
      v10[3] = &unk_1E7B02768;
      v10[4] = self;
      v11 = v4;
      [(WFAllActionOutputsRunResult *)self generateOutputsFromRepresentation:v8 withCompletion:v10];
    }

    else
    {
      v4[2](v4, 0, 0);
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
  v2 = [(WFAllActionOutputsRunResult *)self archivedOutputs];
  v3 = v2 != 0;

  return v3;
}

- (WFAllActionOutputsRunResult)initWithActionOutputs:(id)a3 runError:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFAllActionOutputsRunResult.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"actionOutputs"}];
  }

  v17.receiver = self;
  v17.super_class = WFAllActionOutputsRunResult;
  v9 = [(WFWorkflowRunResult *)&v17 initWithError:v8];
  if (v9)
  {
    v10 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v7 deletionResponsibility:1];
    archivedOutputs = v9->_archivedOutputs;
    v9->_archivedOutputs = v10;

    v12 = [v7 copy];
    cachedOutputs = v9->_cachedOutputs;
    v9->_cachedOutputs = v12;

    v14 = v9;
  }

  return v9;
}

@end