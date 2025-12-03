@interface PRRendererStopScriptExecutionAction
+ (id)stopScriptExecutionActionWithResponder:(id)responder;
- (PRRendererStopScriptExecutionAction)init;
@end

@implementation PRRendererStopScriptExecutionAction

+ (id)stopScriptExecutionActionWithResponder:(id)responder
{
  responderCopy = responder;
  v4 = [[PRRendererStopScriptExecutionAction alloc] initWithInfo:0 responder:responderCopy];

  return v4;
}

- (PRRendererStopScriptExecutionAction)init
{
  [(PRRendererStopScriptExecutionAction *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end