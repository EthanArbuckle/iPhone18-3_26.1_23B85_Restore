@interface NSExtensionItem(WorkflowEditor)
- (id)wf_actionInterfaceRequest;
- (id)wf_parameterEditingRequest;
- (id)wf_parameterEditingResponse;
- (void)wf_setActionInterfaceRequest:()WorkflowEditor;
- (void)wf_setParameterEditingRequest:()WorkflowEditor;
- (void)wf_setParameterEditingResponse:()WorkflowEditor;
@end

@implementation NSExtensionItem(WorkflowEditor)

- (id)wf_actionInterfaceRequest
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"wf_actionInterfaceRequest"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)wf_setActionInterfaceRequest:()WorkflowEditor
{
  v10 = a3;
  userInfo = [self userInfo];
  v5 = [userInfo mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  if (v10)
  {
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  }

  else
  {
    v9 = 0;
  }

  [v8 setObject:v9 forKeyedSubscript:@"wf_actionInterfaceRequest"];
  [self setUserInfo:v8];
}

- (id)wf_parameterEditingResponse
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"wf_parameterEditingResponse"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)wf_setParameterEditingResponse:()WorkflowEditor
{
  v10 = a3;
  userInfo = [self userInfo];
  v5 = [userInfo mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  if (v10)
  {
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  }

  else
  {
    v9 = 0;
  }

  [v8 setObject:v9 forKeyedSubscript:@"wf_parameterEditingResponse"];
  [self setUserInfo:v8];
}

- (id)wf_parameterEditingRequest
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"wf_parameterEditingRequest"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)wf_setParameterEditingRequest:()WorkflowEditor
{
  v10 = a3;
  userInfo = [self userInfo];
  v5 = [userInfo mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  if (v10)
  {
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  }

  else
  {
    v9 = 0;
  }

  [v8 setObject:v9 forKeyedSubscript:@"wf_parameterEditingRequest"];
  [self setUserInfo:v8];
}

@end