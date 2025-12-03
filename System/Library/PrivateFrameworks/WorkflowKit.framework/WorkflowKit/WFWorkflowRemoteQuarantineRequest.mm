@interface WFWorkflowRemoteQuarantineRequest
+ (id)JSONKeyPathsByPropertyKey;
- (WFWorkflowRemoteQuarantineRequest)initWithWorkflowRecord:(id)record;
- (id)defaultLocalizedDeniedErrorTitle;
- (id)javaScriptCoreRepresentationWithError:(id *)error;
- (id)workflowJavaScriptCoreRepresentationWithError:(id *)error;
- (id)workflowName;
@end

@implementation WFWorkflowRemoteQuarantineRequest

- (id)javaScriptCoreRepresentationWithError:(id *)error
{
  workflowJavaScriptCoreRepresentation = [(WFWorkflowRemoteQuarantineRequest *)self workflowJavaScriptCoreRepresentation];

  if (!workflowJavaScriptCoreRepresentation)
  {
    v6 = [(WFWorkflowRemoteQuarantineRequest *)self workflowJavaScriptCoreRepresentationWithError:error];
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = v6;
    [(WFWorkflowRemoteQuarantineRequest *)self setWorkflowJavaScriptCoreRepresentation:v6];
  }

  v9.receiver = self;
  v9.super_class = WFWorkflowRemoteQuarantineRequest;
  v6 = [(WFBaseRemoteQuarantineRequest *)&v9 javaScriptCoreRepresentationWithError:error];
LABEL_5:

  return v6;
}

- (id)defaultLocalizedDeniedErrorTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"“%@” contains known malware. You should delete this shortcut.");
  workflowName = [(WFWorkflowRemoteQuarantineRequest *)self workflowName];
  v6 = [v3 localizedStringWithFormat:v4, workflowName];

  return v6;
}

- (id)workflowJavaScriptCoreRepresentationWithError:(id *)error
{
  workflowRecord = [(WFWorkflowRemoteQuarantineRequest *)self workflowRecord];
  fileRepresentation = [workflowRecord fileRepresentation];

  rootObject = [fileRepresentation rootObject];
  v7 = [rootObject mutableCopy];

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  [v7 setValue:v9 forKey:@"WFCurrentBundleVersion"];

  workflowName = [(WFWorkflowRemoteQuarantineRequest *)self workflowName];
  [v7 setValue:workflowName forKey:@"WFWorkflowName"];

  v11 = WFJavaScriptCoreRepresentationFromPropertyList();

  return v11;
}

- (id)workflowName
{
  workflowRecord = [(WFWorkflowRemoteQuarantineRequest *)self workflowRecord];
  name = [workflowRecord name];
  v4 = name;
  if (name)
  {
    v5 = name;
  }

  else
  {
    v5 = +[WFWorkflow defaultName];
  }

  v6 = v5;

  return v6;
}

- (WFWorkflowRemoteQuarantineRequest)initWithWorkflowRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = WFWorkflowRemoteQuarantineRequest;
  v6 = [(WFBaseRemoteQuarantineRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workflowRecord, record);
    v8 = v7;
  }

  return v7;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WFWorkflowRemoteQuarantineRequest;
  v2 = objc_msgSendSuper2(&v7, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v8 = @"workflowJavaScriptCoreRepresentation";
  v9[0] = @"workflow";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 addEntriesFromDictionary:v4];

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

@end