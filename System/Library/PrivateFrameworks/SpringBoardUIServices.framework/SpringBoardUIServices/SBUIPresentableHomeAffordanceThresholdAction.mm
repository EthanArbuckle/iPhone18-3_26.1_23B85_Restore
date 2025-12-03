@interface SBUIPresentableHomeAffordanceThresholdAction
- (SBUIPresentableHomeAffordanceThresholdAction)initWithHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (void)setSuccessful:(BOOL)successful;
@end

@implementation SBUIPresentableHomeAffordanceThresholdAction

- (SBUIPresentableHomeAffordanceThresholdAction)initWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [(SBUIPresentableHomeAffordanceThresholdAction *)a2 initWithHandler:?];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__SBUIPresentableHomeAffordanceThresholdAction_initWithHandler___block_invoke;
  v10[3] = &unk_1E789E448;
  v11 = handlerCopy;
  v9.receiver = self;
  v9.super_class = SBUIPresentableHomeAffordanceThresholdAction;
  v6 = handlerCopy;
  v7 = [(SBUIPresentableHomeAffordanceThresholdAction *)&v9 initWithInfo:0 timeout:0 forResponseOnQueue:v10 withHandler:0.0];

  return v7;
}

void __64__SBUIPresentableHomeAffordanceThresholdAction_initWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 info];
  (*(v2 + 16))(v2, [v3 BOOLForSetting:1]);
}

- (void)setSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  if ([(SBUIPresentableHomeAffordanceThresholdAction *)self isValid]&& [(SBUIPresentableHomeAffordanceThresholdAction *)self canSendResponse])
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v6 setFlag:successfulCopy forSetting:1];
    v5 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:v6 error:0];
    [(SBUIPresentableHomeAffordanceThresholdAction *)self sendResponse:v5];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"success";
  }

  else
  {
    return 0;
  }
}

- (void)initWithHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableHomeAffordanceThresholdAction.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end