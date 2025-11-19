@interface SBUIPresentableWantsHomeGestureAction
- (BOOL)wantsHomeGesture;
- (SBUIPresentableWantsHomeGestureAction)initWithWantsHomeGesture:(BOOL)a3 handler:(id)a4;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (void)setSuccessful:(BOOL)a3;
@end

@implementation SBUIPresentableWantsHomeGestureAction

- (SBUIPresentableWantsHomeGestureAction)initWithWantsHomeGesture:(BOOL)a3 handler:(id)a4
{
  v4 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBUIPresentableWantsHomeGestureAction initWithWantsHomeGesture:a2 handler:self];
  }

  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v8 setFlag:v4 forSetting:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__SBUIPresentableWantsHomeGestureAction_initWithWantsHomeGesture_handler___block_invoke;
  v13[3] = &unk_1E789E448;
  v14 = v7;
  v12.receiver = self;
  v12.super_class = SBUIPresentableWantsHomeGestureAction;
  v9 = v7;
  v10 = [(SBUIPresentableWantsHomeGestureAction *)&v12 initWithInfo:v8 timeout:0 forResponseOnQueue:v13 withHandler:0.0];

  return v10;
}

void __74__SBUIPresentableWantsHomeGestureAction_initWithWantsHomeGesture_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 info];
  (*(v2 + 16))(v2, [v3 BOOLForSetting:2]);
}

- (BOOL)wantsHomeGesture
{
  v2 = [(SBUIPresentableWantsHomeGestureAction *)self info];
  v3 = [v2 BOOLForSetting:1];

  return v3;
}

- (void)setSuccessful:(BOOL)a3
{
  v3 = a3;
  if ([(SBUIPresentableWantsHomeGestureAction *)self isValid]&& [(SBUIPresentableWantsHomeGestureAction *)self canSendResponse])
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v6 setFlag:v3 forSetting:2];
    v5 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:v6 error:0];
    [(SBUIPresentableWantsHomeGestureAction *)self sendResponse:v5];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"success";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"wantsHomeGesture";
  }

  else
  {
    return v3;
  }
}

- (void)initWithWantsHomeGesture:(uint64_t)a1 handler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableWantsHomeGestureAction.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end