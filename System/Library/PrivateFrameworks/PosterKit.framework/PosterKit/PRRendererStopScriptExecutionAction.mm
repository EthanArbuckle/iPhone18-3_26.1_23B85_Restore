@interface PRRendererStopScriptExecutionAction
+ (id)stopScriptExecutionActionWithResponder:(id)a3;
- (PRRendererStopScriptExecutionAction)init;
@end

@implementation PRRendererStopScriptExecutionAction

+ (id)stopScriptExecutionActionWithResponder:(id)a3
{
  v3 = a3;
  v4 = [[PRRendererStopScriptExecutionAction alloc] initWithInfo:0 responder:v3];

  return v4;
}

- (PRRendererStopScriptExecutionAction)init
{
  [(PRRendererStopScriptExecutionAction *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end