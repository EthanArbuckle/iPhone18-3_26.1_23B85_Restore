@interface WFContextualActionRunDescriptor(Conversion)
- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:;
@end

@implementation WFContextualActionRunDescriptor(Conversion)

- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:
{
  v7 = a5;
  context = [self context];
  action = [self action];
  files = [context files];
  v11 = [files count] != 0;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__WFContextualActionRunDescriptor_Conversion__createWorkflowWithEnvironment_database_completionHandler___block_invoke;
  v15[3] = &unk_1E837FA38;
  v18 = v7;
  v19 = a3;
  v16 = action;
  v17 = context;
  v12 = context;
  v13 = action;
  v14 = v7;
  [v13 getActionRepresentationTakingInput:v11 context:v12 completionHandler:v15];
}

@end