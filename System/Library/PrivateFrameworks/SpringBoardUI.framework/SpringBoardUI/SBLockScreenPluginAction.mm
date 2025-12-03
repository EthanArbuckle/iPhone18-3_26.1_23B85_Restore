@interface SBLockScreenPluginAction
+ (id)actionWithCompletion:(id)completion;
- (SBLockScreenPluginAction)initWithCompletion:(id)completion;
@end

@implementation SBLockScreenPluginAction

+ (id)actionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[self alloc] initWithCompletion:completionCopy];

  return v5;
}

- (SBLockScreenPluginAction)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = SBLockScreenPluginAction;
  v5 = [(SBLockScreenPluginAction *)&v17 init];
  v6 = v5;
  if (completionCopy && v5)
  {
    v7 = [completionCopy copy];
    v8 = MEMORY[0x223D63700]();
    completion = v6->_completion;
    v6->_completion = v8;

    v10 = objc_alloc(MEMORY[0x277CF0B58]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__SBLockScreenPluginAction_initWithCompletion___block_invoke;
    v15[3] = &unk_27836B4A8;
    v16 = v7;
    v11 = v7;
    v12 = [v10 initWithInfo:0 timeout:MEMORY[0x277D85CD0] forResponseOnQueue:v15 withHandler:0.0];
    action = v6->_action;
    v6->_action = v12;
  }

  return v6;
}

void __47__SBLockScreenPluginAction_initWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, [v3 code] == 0, 0);
  }
}

@end