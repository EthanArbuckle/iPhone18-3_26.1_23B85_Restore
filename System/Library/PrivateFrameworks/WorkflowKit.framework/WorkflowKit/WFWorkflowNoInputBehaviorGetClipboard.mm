@interface WFWorkflowNoInputBehaviorGetClipboard
+ (id)behaviorName;
- (WFWorkflowNoInputBehaviorGetClipboard)initWithSerializedRepresentation:(id)representation;
- (id)serializedRepresentation;
- (void)resolveWithUserInterface:(id)interface runningDelegate:(id)delegate completionHandler:(id)handler;
@end

@implementation WFWorkflowNoInputBehaviorGetClipboard

+ (id)behaviorName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)serializedRepresentation
{
  behaviorName = [objc_opt_class() behaviorName];
  v3 = WFNoInputBehaviorSerializedRepresentation(behaviorName, MEMORY[0x1E695E0F8]);

  return v3;
}

- (WFWorkflowNoInputBehaviorGetClipboard)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  behaviorName = [objc_opt_class() behaviorName];
  v6 = WFNoInputBehaviorParametersIfBehavior(behaviorName, representationCopy);

  if (v6)
  {
    self = [(WFWorkflowNoInputBehaviorGetClipboard *)self init];
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
  v11 = handlerCopy;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowNoInputBehavior.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v12 = +[WFActionRegistry sharedRegistry];
  v13 = [v12 createActionWithIdentifier:@"is.workflow.actions.getclipboard" serializedParameters:0];

  [delegateCopy noInputBehavior:self wantsToRunAction:v13 completionHandler:v11];
}

@end