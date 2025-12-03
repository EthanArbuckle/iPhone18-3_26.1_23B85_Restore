@interface PRRendererStartScriptExecutionAction
+ (id)startScriptExecutionActionWithResponder:(id)responder;
- (PRRendererStartScriptExecutionAction)init;
@end

@implementation PRRendererStartScriptExecutionAction

+ (id)startScriptExecutionActionWithResponder:(id)responder
{
  responderCopy = responder;
  v4 = [[PRRendererStartScriptExecutionAction alloc] initWithInfo:0 responder:responderCopy];

  return v4;
}

- (PRRendererStartScriptExecutionAction)init
{
  [(PRRendererStartScriptExecutionAction *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end