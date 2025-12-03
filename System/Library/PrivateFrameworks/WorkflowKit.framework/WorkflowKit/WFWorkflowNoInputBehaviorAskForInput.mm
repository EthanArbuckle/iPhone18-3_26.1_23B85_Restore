@interface WFWorkflowNoInputBehaviorAskForInput
+ (id)behaviorName;
- (NSDictionary)serializedParameters;
- (WFWorkflowNoInputBehaviorAskForInput)initWithContentItemClass:(Class)class serializedParameters:(id)parameters;
- (WFWorkflowNoInputBehaviorAskForInput)initWithSerializedRepresentation:(id)representation;
- (id)serializedRepresentation;
- (void)resolveWithUserInterface:(id)interface runningDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation WFWorkflowNoInputBehaviorAskForInput

- (id)serializedRepresentation
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"ItemClass";
  v3 = NSStringFromClass([(WFWorkflowNoInputBehaviorAskForInput *)self contentItemClass]);
  v14[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v5 = [v4 mutableCopy];

  serializedParameters = [(WFWorkflowNoInputBehaviorAskForInput *)self serializedParameters];

  if (serializedParameters)
  {
    serializedParameters2 = [(WFWorkflowNoInputBehaviorAskForInput *)self serializedParameters];
    [v5 setObject:serializedParameters2 forKeyedSubscript:@"SerializedParameters"];
  }

  behaviorName = [objc_opt_class() behaviorName];
  v9 = [v5 copy];
  v10 = WFNoInputBehaviorSerializedRepresentation(behaviorName, v9);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (WFWorkflowNoInputBehaviorAskForInput)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  behaviorName = [objc_opt_class() behaviorName];
  v6 = WFNoInputBehaviorParametersIfBehavior(behaviorName, representationCopy);

  if (!v6)
  {
    selfCopy = 0;
    goto LABEL_13;
  }

  v7 = [v6 objectForKeyedSubscript:@"ItemClass"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = NSClassFromString(v7);
    if ([(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
    {
      v9 = [v6 objectForKeyedSubscript:@"SerializedParameters"];
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v13 = v10;

      v14 = [(WFWorkflowNoInputBehaviorAskForInput *)self initWithContentItemClass:v8 serializedParameters:v13];
      self = v14;
      selfCopy = self;
      goto LABEL_11;
    }
  }

  else
  {

    v7 = 0;
  }

  selfCopy = 0;
LABEL_11:

LABEL_13:
  return selfCopy;
}

- (void)resolveWithUserInterface:(id)interface runningDelegate:(id)delegate completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  delegateCopy = delegate;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (delegateCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v13 = +[WFActionRegistry sharedRegistry];
  contentItemClass = [(WFWorkflowNoInputBehaviorAskForInput *)self contentItemClass];
  serializedParameters = [(WFWorkflowNoInputBehaviorAskForInput *)self serializedParameters];
  v16 = [v13 createActionForSelectingContentOfType:contentItemClass serializedParameters:serializedParameters];

  if (v16)
  {
    [delegateCopy noInputBehavior:self wantsToRunAction:v16 completionHandler:v12];
  }

  else
  {
    v17 = getWFGeneralLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v22 = "[WFWorkflowNoInputBehaviorAskForInput resolveWithUserInterface:runningDelegate:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_FAULT, "%s Tried to run an Ask For input behavior, but the content type is unknown?", buf, 0xCu);
    }

    v12[2](v12, 0, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)serializedParameters
{
  if ([(NSDictionary *)self->_serializedParameters count])
  {
    v3 = self->_serializedParameters;
  }

  else
  {
    v4 = +[WFActionRegistry sharedRegistry];
    v3 = [v4 defaultSerializedParametersForActionSelectingContentOfType:{-[WFWorkflowNoInputBehaviorAskForInput contentItemClass](self, "contentItemClass")}];
  }

  return v3;
}

- (WFWorkflowNoInputBehaviorAskForInput)initWithContentItemClass:(Class)class serializedParameters:(id)parameters
{
  parametersCopy = parameters;
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"contentItemClass"}];
  }

  v14.receiver = self;
  v14.super_class = WFWorkflowNoInputBehaviorAskForInput;
  v9 = [(WFWorkflowNoInputBehaviorAskForInput *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentItemClass, class);
    objc_storeStrong(&v10->_serializedParameters, parameters);
    v11 = v10;
  }

  return v10;
}

+ (id)behaviorName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end