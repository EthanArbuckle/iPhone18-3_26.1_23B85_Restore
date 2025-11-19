@interface PRRendererPrepareScriptExecutionAction
+ (id)actionWithScript:(id)a3 responder:(id)a4;
- (PRPosterScript)posterScript;
- (PRRendererPrepareScriptExecutionAction)init;
- (PRRendererPrepareScriptExecutionAction)initWithInfo:(id)a3 responder:(id)a4;
- (PRRendererPrepareScriptExecutionAction)initWithScript:(id)a3 responder:(id)a4;
@end

@implementation PRRendererPrepareScriptExecutionAction

+ (id)actionWithScript:(id)a3 responder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithScript:v7 responder:v6];

  return v8;
}

- (PRRendererPrepareScriptExecutionAction)initWithScript:(id)a3 responder:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PRRendererPrepareScriptExecutionAction initWithScript:a2 responder:self];
  }

  v9 = objc_opt_new();
  [v9 setObject:v7 forSetting:0];
  v10 = [v9 copy];
  v13.receiver = self;
  v13.super_class = PRRendererPrepareScriptExecutionAction;
  v11 = [(PRRendererPrepareScriptExecutionAction *)&v13 initWithInfo:v10 responder:v8];

  return v11;
}

- (PRPosterScript)posterScript
{
  v2 = [(PRRendererPrepareScriptExecutionAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

- (PRRendererPrepareScriptExecutionAction)initWithInfo:(id)a3 responder:(id)a4
{
  [(PRRendererPrepareScriptExecutionAction *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (PRRendererPrepareScriptExecutionAction)init
{
  [(PRRendererPrepareScriptExecutionAction *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)initWithScript:(uint64_t)a1 responder:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRRendererPrepareScriptExecutionAction.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"script"}];
}

@end