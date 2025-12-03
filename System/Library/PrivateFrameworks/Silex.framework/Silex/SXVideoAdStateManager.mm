@interface SXVideoAdStateManager
- (SXVideoAdStateManager)init;
- (void)failWithError:(id)error;
- (void)finish;
- (void)learnMore;
- (void)pause;
- (void)play;
- (void)resume;
- (void)skip;
@end

@implementation SXVideoAdStateManager

- (SXVideoAdStateManager)init
{
  v59[3] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = SXVideoAdStateManager;
  v2 = [(SXVideoAdStateManager *)&v53 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"idle"];
    v4 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"playing"];
    v5 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"paused"];
    v50 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"finished"];
    v49 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"failed"];
    v42 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"learning"];
    v45 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"skipped"];
    v6 = objc_alloc(MEMORY[0x1E69B6910]);
    v7 = MEMORY[0x1E695DFD8];
    v59[0] = v3;
    v59[1] = v5;
    v43 = v3;
    v59[2] = v42;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
    v9 = [v7 setWithArray:v8];
    v48 = [v6 initWithName:@"play" transitionFromStates:v9 toState:v4];

    v10 = objc_alloc(MEMORY[0x1E69B6910]);
    v11 = MEMORY[0x1E695DFD8];
    v58 = v4;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    v13 = [v11 setWithArray:v12];
    v47 = [v10 initWithName:@"pause" transitionFromStates:v13 toState:v5];

    v14 = objc_alloc(MEMORY[0x1E69B6910]);
    v15 = MEMORY[0x1E695DFD8];
    v57[0] = v3;
    v57[1] = v4;
    v57[2] = v5;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
    v17 = [v15 setWithArray:v16];
    v46 = [v14 initWithName:@"fail" transitionFromStates:v17 toState:v49];

    v18 = objc_alloc(MEMORY[0x1E69B6910]);
    v19 = MEMORY[0x1E695DFD8];
    v56 = v4;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
    v21 = [v19 setWithArray:v20];
    v44 = [v18 initWithName:@"finish" transitionFromStates:v21 toState:v50];

    v22 = objc_alloc(MEMORY[0x1E69B6910]);
    v23 = MEMORY[0x1E695DFD8];
    v55[0] = v4;
    v55[1] = v5;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v25 = [v23 setWithArray:v24];
    v41 = [v22 initWithName:@"learnMore" transitionFromStates:v25 toState:v42];

    v26 = objc_alloc(MEMORY[0x1E69B6910]);
    v27 = MEMORY[0x1E695DFD8];
    v54[0] = v4;
    v54[1] = v5;
    v54[2] = v42;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
    v29 = [v27 setWithArray:v28];
    v40 = [v26 initWithName:@"skip" transitionFromStates:v29 toState:v45];

    v30 = [v5 onWillEnter:&__block_literal_global_59];
    v31 = [v50 onWillEnter:&__block_literal_global_42];
    v32 = [v49 onWillEnter:&__block_literal_global_44];
    v33 = [v45 onWillEnter:&__block_literal_global_47];
    v34 = [v42 onWillEnter:&__block_literal_global_49];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __29__SXVideoAdStateManager_init__block_invoke_6;
    v51[3] = &unk_1E8500CE8;
    v52 = v43;
    v35 = v43;
    v36 = [v4 onWillEnter:v51];
    v37 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v35 withOwner:v2];
    stateMachine = v2->_stateMachine;
    v2->_stateMachine = v37;

    [(NFStateMachine *)v2->_stateMachine addState:v4];
    [(NFStateMachine *)v2->_stateMachine addState:v5];
    [(NFStateMachine *)v2->_stateMachine addState:v50];
    [(NFStateMachine *)v2->_stateMachine addState:v49];
    [(NFStateMachine *)v2->_stateMachine addState:v45];
    [(NFStateMachine *)v2->_stateMachine addState:v42];
    [(NFStateMachine *)v2->_stateMachine addEvent:v48];
    [(NFStateMachine *)v2->_stateMachine addEvent:v47];
    [(NFStateMachine *)v2->_stateMachine addEvent:v46];
    [(NFStateMachine *)v2->_stateMachine addEvent:v44];
    [(NFStateMachine *)v2->_stateMachine addEvent:v41];
    [(NFStateMachine *)v2->_stateMachine addEvent:v40];
    [(NFStateMachine *)v2->_stateMachine activate];
  }

  return v2;
}

void __29__SXVideoAdStateManager_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = [v5 onPauseBlock];

  if (v3)
  {
    v4 = [v5 onPauseBlock];
    v4[2]();
  }
}

void __29__SXVideoAdStateManager_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = [v5 onFinishBlock];

  if (v3)
  {
    v4 = [v5 onFinishBlock];
    v4[2]();
  }
}

void __29__SXVideoAdStateManager_init__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v4 = a3;
  v5 = [v4 onFailBlock];

  if (v5)
  {
    v6 = [v11 context];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v11 context];
      v9 = [v8 error];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v4 onFailBlock];
    (v10)[2](v10, v9);
  }
}

void __29__SXVideoAdStateManager_init__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = [v5 onSkipBlock];

  if (v3)
  {
    v4 = [v5 onSkipBlock];
    v4[2]();
  }
}

void __29__SXVideoAdStateManager_init__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = [v5 onLearnMoreBlock];

  if (v3)
  {
    v4 = [v5 onLearnMoreBlock];
    v4[2]();
  }
}

void __29__SXVideoAdStateManager_init__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = [a2 fromState];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v9 = [v11 onPlayBlock];

    if (!v9)
    {
      goto LABEL_7;
    }

    v8 = [v11 onPlayBlock];
  }

  else
  {
    v7 = [v11 onResumeBlock];

    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [v11 onResumeBlock];
  }

  v10 = v8;
  (*(v8 + 16))();

LABEL_7:
}

- (void)play
{
  stateMachine = [(SXVideoAdStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"play" withContext:0];
}

- (void)pause
{
  stateMachine = [(SXVideoAdStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"pause" withContext:0];
}

- (void)resume
{
  stateMachine = [(SXVideoAdStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"play" withContext:0];
}

- (void)finish
{
  stateMachine = [(SXVideoAdStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"finish" withContext:0];
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  v7 = [[SXVideoAdStateManagerErrorContext alloc] initWithError:errorCopy];

  stateMachine = [(SXVideoAdStateManager *)self stateMachine];
  v6 = [stateMachine fireEventWithName:@"fail" withContext:v7];
}

- (void)learnMore
{
  stateMachine = [(SXVideoAdStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"learnMore" withContext:0];
}

- (void)skip
{
  stateMachine = [(SXVideoAdStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"skip" withContext:0];
}

@end