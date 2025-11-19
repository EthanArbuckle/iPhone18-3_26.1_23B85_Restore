@interface WFWorkflowOutputRunResult
- (BOOL)hasOutput;
- (WFWorkflowOutputRunResult)initWithCoder:(id)a3;
- (WFWorkflowOutputRunResult)initWithOutput:(id)a3 runError:(id)a4;
- (id)description;
- (id)resultBySettingError:(id)a3;
- (id)unableToDecodeError;
- (void)encodeWithCoder:(id)a3;
- (void)generateOutputFromRepresentation:(id)a3 withCompletion:(id)a4;
- (void)getOutputWithCompletionHandler:(id)a3;
@end

@implementation WFWorkflowOutputRunResult

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFWorkflowOutputRunResult;
  v4 = a3;
  [(WFWorkflowRunResult *)&v6 encodeWithCoder:v4];
  v5 = [(WFWorkflowOutputRunResult *)self archivedOutput:v6.receiver];
  [v4 encodeObject:v5 forKey:@"archivedOutput"];
}

- (WFWorkflowOutputRunResult)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFWorkflowOutputRunResult;
  v5 = [(WFWorkflowRunResult *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedOutput"];
    archivedOutput = v5->_archivedOutput;
    v5->_archivedOutput = v6;

    v8 = v5;
  }

  return v5;
}

- (void)generateOutputFromRepresentation:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = NSClassFromString(@"WFContentCollection");
  if (v7)
  {
    v8 = MEMORY[0x1E696ACD0];
    v9 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__WFWorkflowOutputRunResult_generateOutputFromRepresentation_withCompletion___block_invoke;
    v13[3] = &unk_1E7B00E08;
    v14 = v6;
    v10 = [v8 wf_securelyUnarchiveObjectWithData:v5 allowedClasses:v9 completionHandler:v13];
  }

  else
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "[WFWorkflowOutputRunResult generateOutputFromRepresentation:withCompletion:]";
      _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_FAULT, "%s Unable to get output from WFWorkflowRunRequest, since ContentKit isn't linked.", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWorkflowOutputRunResult *)self cachedOutput];
  v7 = v6;
  if (!v6)
  {
    v7 = [(WFWorkflowOutputRunResult *)self archivedOutput];
  }

  v8 = [(WFWorkflowRunResult *)self error];
  v9 = [v3 stringWithFormat:@"<%@: %p Output: %@, Error: %@", v5, self, v7, v8];

  if (!v6)
  {
  }

  return v9;
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

- (void)getOutputWithCompletionHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFWorkflowOutputRunResult *)self cachedOutput];

  if (v5)
  {
    v6 = [(WFWorkflowOutputRunResult *)self cachedOutput];
    v4[2](v4, v6, 0);
  }

  else
  {
    v7 = [(WFWorkflowOutputRunResult *)self archivedOutput];

    if (v7)
    {
      v8 = [(WFWorkflowOutputRunResult *)self archivedOutput];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__WFWorkflowOutputRunResult_getOutputWithCompletionHandler___block_invoke;
      v10[3] = &unk_1E7B01240;
      v10[4] = self;
      v11 = v4;
      [(WFWorkflowOutputRunResult *)self generateOutputFromRepresentation:v8 withCompletion:v10];
    }

    else
    {
      v4[2](v4, 0, 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __60__WFWorkflowOutputRunResult_getOutputWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setCachedOutput:v4];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)hasOutput
{
  v2 = [(WFWorkflowOutputRunResult *)self archivedOutput];
  v3 = v2 != 0;

  return v3;
}

- (id)resultBySettingError:(id)a3
{
  v11.receiver = self;
  v11.super_class = WFWorkflowOutputRunResult;
  v4 = [(WFWorkflowRunResult *)&v11 resultBySettingError:a3];
  v5 = [(WFWorkflowOutputRunResult *)self archivedOutput];
  v6 = [v5 copyWithZone:0];
  v7 = v4[2];
  v4[2] = v6;

  v8 = [(WFWorkflowOutputRunResult *)self cachedOutput];
  v9 = v4[3];
  v4[3] = v8;

  return self;
}

- (WFWorkflowOutputRunResult)initWithOutput:(id)a3 runError:(id)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = WFWorkflowOutputRunResult;
  v8 = [(WFWorkflowRunResult *)&v13 initWithError:a4];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      v10 = [(WFWorkflowOutputRunResult *)v8 generateRepresentationFromOutput:v7];
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v9->_archivedOutput, v10);
    if (v7)
    {
    }

    objc_storeStrong(&v9->_cachedOutput, a3);
    v11 = v9;
  }

  return v9;
}

@end