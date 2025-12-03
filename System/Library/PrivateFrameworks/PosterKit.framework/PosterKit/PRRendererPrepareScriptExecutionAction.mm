@interface PRRendererPrepareScriptExecutionAction
+ (id)actionWithScript:(id)script responder:(id)responder;
- (PRPosterScript)posterScript;
- (PRRendererPrepareScriptExecutionAction)init;
- (PRRendererPrepareScriptExecutionAction)initWithInfo:(id)info responder:(id)responder;
- (PRRendererPrepareScriptExecutionAction)initWithScript:(id)script responder:(id)responder;
@end

@implementation PRRendererPrepareScriptExecutionAction

+ (id)actionWithScript:(id)script responder:(id)responder
{
  responderCopy = responder;
  scriptCopy = script;
  v8 = [[self alloc] initWithScript:scriptCopy responder:responderCopy];

  return v8;
}

- (PRRendererPrepareScriptExecutionAction)initWithScript:(id)script responder:(id)responder
{
  scriptCopy = script;
  responderCopy = responder;
  if (!scriptCopy)
  {
    [PRRendererPrepareScriptExecutionAction initWithScript:a2 responder:self];
  }

  v9 = objc_opt_new();
  [v9 setObject:scriptCopy forSetting:0];
  v10 = [v9 copy];
  v13.receiver = self;
  v13.super_class = PRRendererPrepareScriptExecutionAction;
  v11 = [(PRRendererPrepareScriptExecutionAction *)&v13 initWithInfo:v10 responder:responderCopy];

  return v11;
}

- (PRPosterScript)posterScript
{
  info = [(PRRendererPrepareScriptExecutionAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (PRRendererPrepareScriptExecutionAction)initWithInfo:(id)info responder:(id)responder
{
  [(PRRendererPrepareScriptExecutionAction *)self doesNotRecognizeSelector:a2, responder];

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