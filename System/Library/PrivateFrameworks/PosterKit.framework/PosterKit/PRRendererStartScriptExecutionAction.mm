@interface PRRendererStartScriptExecutionAction
+ (id)startScriptExecutionActionWithResponder:(id)a3;
- (PRRendererStartScriptExecutionAction)init;
@end

@implementation PRRendererStartScriptExecutionAction

+ (id)startScriptExecutionActionWithResponder:(id)a3
{
  v3 = a3;
  v4 = [[PRRendererStartScriptExecutionAction alloc] initWithInfo:0 responder:v3];

  return v4;
}

- (PRRendererStartScriptExecutionAction)init
{
  [(PRRendererStartScriptExecutionAction *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end