@interface SBUIPresentableWantsHomeGestureAction
- (BOOL)wantsHomeGesture;
- (SBUIPresentableWantsHomeGestureAction)initWithWantsHomeGesture:(BOOL)gesture handler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (void)setSuccessful:(BOOL)successful;
@end

@implementation SBUIPresentableWantsHomeGestureAction

- (SBUIPresentableWantsHomeGestureAction)initWithWantsHomeGesture:(BOOL)gesture handler:(id)handler
{
  gestureCopy = gesture;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [SBUIPresentableWantsHomeGestureAction initWithWantsHomeGesture:a2 handler:self];
  }

  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v8 setFlag:gestureCopy forSetting:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__SBUIPresentableWantsHomeGestureAction_initWithWantsHomeGesture_handler___block_invoke;
  v13[3] = &unk_1E789E448;
  v14 = handlerCopy;
  v12.receiver = self;
  v12.super_class = SBUIPresentableWantsHomeGestureAction;
  v9 = handlerCopy;
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
  info = [(SBUIPresentableWantsHomeGestureAction *)self info];
  v3 = [info BOOLForSetting:1];

  return v3;
}

- (void)setSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  if ([(SBUIPresentableWantsHomeGestureAction *)self isValid]&& [(SBUIPresentableWantsHomeGestureAction *)self canSendResponse])
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v6 setFlag:successfulCopy forSetting:2];
    v5 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:v6 error:0];
    [(SBUIPresentableWantsHomeGestureAction *)self sendResponse:v5];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"success";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
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