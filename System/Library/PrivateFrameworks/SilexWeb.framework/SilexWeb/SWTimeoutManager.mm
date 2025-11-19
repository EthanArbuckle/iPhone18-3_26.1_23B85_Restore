@interface SWTimeoutManager
- (SWTimeoutManager)initWithTimeout:(double)a3 messageHandlerManager:(id)a4 documentStateProvider:(id)a5;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
- (void)onTimeout:(id)a3;
@end

@implementation SWTimeoutManager

- (SWTimeoutManager)initWithTimeout:(double)a3 messageHandlerManager:(id)a4 documentStateProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3 < 0.0 || v8 == 0 || v9 == 0)
  {
    v13 = 0;
  }

  else
  {
    v52.receiver = self;
    v52.super_class = SWTimeoutManager;
    v14 = [(SWTimeoutManager *)&v52 init];
    v15 = v14;
    if (v14)
    {
      v16 = [MEMORY[0x1E695DF70] array];
      timeoutBlocks = v15->_timeoutBlocks;
      v15->_timeoutBlocks = v16;

      v42 = [SWWeakMessageHandler handlerWithMessageHandler:v15];
      [v8 addMessageHandler:v42 name:@"presentable"];
      [v8 addMessageHandler:v42 name:@"loading"];
      [v8 addMessageHandler:v42 name:@"update"];
      v44 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"idle"];
      v18 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"waiting"];
      v19 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"timeout"];
      v43 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"loaded"];
      v20 = objc_alloc(MEMORY[0x1E69B6910]);
      v21 = [MEMORY[0x1E695DFD8] setWithObject:v44];
      v41 = [v20 initWithName:@"waiting" transitionFromStates:v21 toState:v18];

      v22 = objc_alloc(MEMORY[0x1E69B6910]);
      v23 = [MEMORY[0x1E695DFD8] setWithObject:v18];
      v40 = [v22 initWithName:@"timeout" transitionFromStates:v23 toState:v19];

      v24 = objc_alloc(MEMORY[0x1E69B6910]);
      v25 = [MEMORY[0x1E695DFD8] setWithObject:v18];
      v39 = [v24 initWithName:@"loaded" transitionFromStates:v25 toState:v43];

      v26 = objc_alloc(MEMORY[0x1E69B6910]);
      v27 = [MEMORY[0x1E695DFD8] setWithObjects:{v19, v18, v43, 0}];
      v28 = [v26 initWithName:@"reload" transitionFromStates:v27 toState:v44];

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke;
      v51[3] = &__block_descriptor_40_e55_v24__0__NFStateMachineTransition_8__SWTimeoutManager_16l;
      *&v51[4] = a3;
      v29 = [v18 onWillEnter:v51];
      v30 = [v18 onWillExit:&__block_literal_global_7];
      v31 = [v19 onWillEnter:&__block_literal_global_21];
      v32 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v44 withOwner:v15];
      [v32 addState:v18];
      [v32 addState:v43];
      [v32 addState:v19];
      [v32 addEvent:v41];
      [v32 addEvent:v40];
      [v32 addEvent:v39];
      [v32 addEvent:v28];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke_5;
      v49[3] = &unk_1E84DB500;
      v33 = v32;
      v50 = v33;
      [v10 onReady:v49];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke_6;
      v47[3] = &unk_1E84DB500;
      v34 = v33;
      v48 = v34;
      [v10 onLoad:v47];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke_7;
      v45[3] = &unk_1E84DB500;
      v35 = v34;
      v46 = v35;
      [v10 onUnload:v45];
      stateMachine = v15->_stateMachine;
      v15->_stateMachine = v35;
      v37 = v35;
    }

    self = v15;
    v13 = self;
  }

  return v13;
}

void __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E695DFF0];
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke_2;
    v10[3] = &unk_1E84DBC48;
    v8 = v4;
    v11 = v8;
    v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v10 block:v7];
    [v8 setTimer:v9];
  }
}

void __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v1 = [v2 fireEventWithName:@"timeout" withContext:0];
}

void __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = [v4 timer];
  [v3 invalidate];

  [v4 setTimer:0];
}

void __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 timeoutBlocks];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __80__SWTimeoutManager_initWithTimeout_messageHandlerManager_documentStateProvider___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) fireEventWithName:@"reload" withContext:0];
  v3 = *(a1 + 32);

  return [v3 deactivateIfNeeded];
}

- (void)onTimeout:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(SWTimeoutManager *)self timeoutBlocks];
    v5 = MEMORY[0x1DA6FDA60](v4);

    [v6 addObject:v5];
  }
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v5 = [(SWTimeoutManager *)self stateMachine:a3];
  v4 = [v5 fireEventWithName:@"loaded" withContext:0];
}

@end