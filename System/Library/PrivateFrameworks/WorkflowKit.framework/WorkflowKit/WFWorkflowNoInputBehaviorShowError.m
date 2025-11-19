@interface WFWorkflowNoInputBehaviorShowError
+ (id)behaviorName;
- (WFWorkflowNoInputBehaviorShowError)initWithErrorString:(id)a3;
- (WFWorkflowNoInputBehaviorShowError)initWithSerializedRepresentation:(id)a3;
- (id)serializedRepresentation;
- (void)resolveWithUserInterface:(id)a3 runningDelegate:(id)a4 completionHandler:(id)a5;
@end

@implementation WFWorkflowNoInputBehaviorShowError

- (id)serializedRepresentation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflowNoInputBehaviorShowError *)self errorString];
  if (v3)
  {
    v10 = @"Error";
    v4 = [(WFWorkflowNoInputBehaviorShowError *)self errorString];
    v11[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = [objc_opt_class() behaviorName];
  v7 = WFNoInputBehaviorSerializedRepresentation(v6, v5);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (WFWorkflowNoInputBehaviorShowError)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() behaviorName];
  v6 = WFNoInputBehaviorParametersIfBehavior(v5, v4);

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"Error"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v11 = [(WFWorkflowNoInputBehaviorShowError *)self initWithErrorString:v10];
    self = v11;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)resolveWithUserInterface:(id)a3 runningDelegate:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"userInterface"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v13 = [(WFWorkflowNoInputBehaviorShowError *)self errorString];
  if (v13)
  {
    v14 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
    [v14 setMessage:v13];
    v15 = MEMORY[0x1E6996C78];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __97__WFWorkflowNoInputBehaviorShowError_resolveWithUserInterface_runningDelegate_completionHandler___block_invoke;
    v19[3] = &unk_1E837F4E8;
    v20 = v12;
    v16 = [v15 okButtonWithHandler:v19];
    [v14 addButton:v16];

    [v9 presentAlert:v14];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] userCancelledError];
    (v12)[2](v12, 0, v14);
  }
}

void __97__WFWorkflowNoInputBehaviorShowError_resolveWithUserInterface_runningDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (WFWorkflowNoInputBehaviorShowError)initWithErrorString:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFWorkflowNoInputBehaviorShowError;
  v6 = [(WFWorkflowNoInputBehaviorShowError *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_errorString, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)behaviorName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end