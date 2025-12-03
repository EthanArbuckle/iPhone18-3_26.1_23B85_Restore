@interface SBSUIUserSwipedToKillAction
+ (id)userSwipedToKillActionWithTimeoutHandler:(id)handler;
- (void)acknowledge;
@end

@implementation SBSUIUserSwipedToKillAction

+ (id)userSwipedToKillActionWithTimeoutHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x1E698E5F8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SBSUIUserSwipedToKillAction_userSwipedToKillActionWithTimeoutHandler___block_invoke;
  v10[3] = &unk_1E789E448;
  v11 = handlerCopy;
  v6 = handlerCopy;
  v7 = [v5 responderWithHandler:v10];
  [v7 setQueue:MEMORY[0x1E69E96A0]];
  [v7 setTimeout:{dispatch_time(0, 100000000)}];
  v8 = [[self alloc] initWithInfo:0 responder:v7];

  return v8;
}

void __72__SBSUIUserSwipedToKillAction_userSwipedToKillActionWithTimeoutHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)acknowledge
{
  response = [MEMORY[0x1E698E600] response];
  [(SBSUIUserSwipedToKillAction *)self sendResponse:response];
}

@end