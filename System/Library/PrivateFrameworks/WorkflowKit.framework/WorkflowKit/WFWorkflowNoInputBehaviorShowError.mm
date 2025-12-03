@interface WFWorkflowNoInputBehaviorShowError
+ (id)behaviorName;
- (WFWorkflowNoInputBehaviorShowError)initWithErrorString:(id)string;
- (WFWorkflowNoInputBehaviorShowError)initWithSerializedRepresentation:(id)representation;
- (id)serializedRepresentation;
- (void)resolveWithUserInterface:(id)interface runningDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation WFWorkflowNoInputBehaviorShowError

- (id)serializedRepresentation
{
  v11[1] = *MEMORY[0x1E69E9840];
  errorString = [(WFWorkflowNoInputBehaviorShowError *)self errorString];
  if (errorString)
  {
    v10 = @"Error";
    errorString2 = [(WFWorkflowNoInputBehaviorShowError *)self errorString];
    v11[0] = errorString2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  behaviorName = [objc_opt_class() behaviorName];
  v7 = WFNoInputBehaviorSerializedRepresentation(behaviorName, v5);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (WFWorkflowNoInputBehaviorShowError)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  behaviorName = [objc_opt_class() behaviorName];
  v6 = WFNoInputBehaviorParametersIfBehavior(behaviorName, representationCopy);

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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)resolveWithUserInterface:(id)interface runningDelegate:(id)delegate completionHandler:(id)handler
{
  interfaceCopy = interface;
  delegateCopy = delegate;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (interfaceCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"userInterface"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  errorString = [(WFWorkflowNoInputBehaviorShowError *)self errorString];
  if (errorString)
  {
    userCancelledError = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
    [userCancelledError setMessage:errorString];
    v15 = MEMORY[0x1E6996C78];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __97__WFWorkflowNoInputBehaviorShowError_resolveWithUserInterface_runningDelegate_completionHandler___block_invoke;
    v19[3] = &unk_1E837F4E8;
    v20 = v12;
    v16 = [v15 okButtonWithHandler:v19];
    [userCancelledError addButton:v16];

    [interfaceCopy presentAlert:userCancelledError];
  }

  else
  {
    userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
    (v12)[2](v12, 0, userCancelledError);
  }
}

void __97__WFWorkflowNoInputBehaviorShowError_resolveWithUserInterface_runningDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (WFWorkflowNoInputBehaviorShowError)initWithErrorString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = WFWorkflowNoInputBehaviorShowError;
  v6 = [(WFWorkflowNoInputBehaviorShowError *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_errorString, string);
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