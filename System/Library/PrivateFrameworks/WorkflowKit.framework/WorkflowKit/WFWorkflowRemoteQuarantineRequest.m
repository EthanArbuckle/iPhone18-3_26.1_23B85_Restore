@interface WFWorkflowRemoteQuarantineRequest
+ (id)JSONKeyPathsByPropertyKey;
- (WFWorkflowRemoteQuarantineRequest)initWithWorkflowRecord:(id)a3;
- (id)defaultLocalizedDeniedErrorTitle;
- (id)javaScriptCoreRepresentationWithError:(id *)a3;
- (id)workflowJavaScriptCoreRepresentationWithError:(id *)a3;
- (id)workflowName;
@end

@implementation WFWorkflowRemoteQuarantineRequest

- (id)javaScriptCoreRepresentationWithError:(id *)a3
{
  v5 = [(WFWorkflowRemoteQuarantineRequest *)self workflowJavaScriptCoreRepresentation];

  if (!v5)
  {
    v6 = [(WFWorkflowRemoteQuarantineRequest *)self workflowJavaScriptCoreRepresentationWithError:a3];
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = v6;
    [(WFWorkflowRemoteQuarantineRequest *)self setWorkflowJavaScriptCoreRepresentation:v6];
  }

  v9.receiver = self;
  v9.super_class = WFWorkflowRemoteQuarantineRequest;
  v6 = [(WFBaseRemoteQuarantineRequest *)&v9 javaScriptCoreRepresentationWithError:a3];
LABEL_5:

  return v6;
}

- (id)defaultLocalizedDeniedErrorTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"“%@” contains known malware. You should delete this shortcut.");
  v5 = [(WFWorkflowRemoteQuarantineRequest *)self workflowName];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (id)workflowJavaScriptCoreRepresentationWithError:(id *)a3
{
  v4 = [(WFWorkflowRemoteQuarantineRequest *)self workflowRecord];
  v5 = [v4 fileRepresentation];

  v6 = [v5 rootObject];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  [v7 setValue:v9 forKey:@"WFCurrentBundleVersion"];

  v10 = [(WFWorkflowRemoteQuarantineRequest *)self workflowName];
  [v7 setValue:v10 forKey:@"WFWorkflowName"];

  v11 = WFJavaScriptCoreRepresentationFromPropertyList();

  return v11;
}

- (id)workflowName
{
  v2 = [(WFWorkflowRemoteQuarantineRequest *)self workflowRecord];
  v3 = [v2 name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[WFWorkflow defaultName];
  }

  v6 = v5;

  return v6;
}

- (WFWorkflowRemoteQuarantineRequest)initWithWorkflowRecord:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFWorkflowRemoteQuarantineRequest;
  v6 = [(WFBaseRemoteQuarantineRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workflowRecord, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
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