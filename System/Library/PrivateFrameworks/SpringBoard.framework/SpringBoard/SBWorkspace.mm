@interface SBWorkspace
- (BOOL)_executeTransitionRequest:(id)a3 options:(unint64_t)a4 validator:(id)a5;
- (BOOL)requestTransitionWithOptions:(unint64_t)a3 builder:(id)a4 validator:(id)a5;
- (BOOL)requestTransitionWithOptions:(unint64_t)a3 displayConfiguration:(id)a4 builder:(id)a5 validator:(id)a6;
- (SBWorkspace)initWithEventQueue:(id)a3;
- (id)coordinatorRequestedIdleTimerBehavior:(id)a3;
- (id)createRequestForApplicationActivation:(id)a3 withDisplayConfiguration:(id)a4 options:(unint64_t)a5;
- (id)createRequestWithOptions:(unint64_t)a3;
- (id)createRequestWithOptions:(unint64_t)a3 displayConfiguration:(id)a4;
- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5;
- (id)transactionForTransitionRequest:(id)a3;
@end

@implementation SBWorkspace

- (SBWorkspace)initWithEventQueue:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBWorkspace initWithEventQueue:];
  }

  v9.receiver = self;
  v9.super_class = SBWorkspace;
  v6 = [(SBWorkspace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventQueue, a3);
  }

  return v7;
}

- (id)createRequestForApplicationActivation:(id)a3 withDisplayConfiguration:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SBWorkspace *)self createRequestWithOptions:a5 displayConfiguration:a4];
  v10 = [v8 uniqueIdentifier];
  [v9 setEventLabelWithFormat:@"ActivateApplicationScene = %@", v10];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__SBWorkspace_createRequestForApplicationActivation_withDisplayConfiguration_options___block_invoke;
  v13[3] = &unk_2783A98C8;
  v14 = v8;
  v11 = v8;
  [v9 modifyApplicationContext:v13];

  return v9;
}

void __86__SBWorkspace_createRequestForApplicationActivation_withDisplayConfiguration_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) BOOLForActivationSetting:3])
  {
    [v3 setBackground:1];
  }

  [v3 setActivatingEntity:*(a1 + 32)];
}

- (BOOL)requestTransitionWithOptions:(unint64_t)a3 builder:(id)a4 validator:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SBWorkspace *)self createRequestWithOptions:a3];
  if (v8)
  {
    v8[2](v8, v10);
  }

  v11 = [(SBWorkspace *)self _executeTransitionRequest:v10 options:a3 validator:v9];

  return v11;
}

- (BOOL)requestTransitionWithOptions:(unint64_t)a3 displayConfiguration:(id)a4 builder:(id)a5 validator:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(SBWorkspace *)self createRequestWithOptions:a3 displayConfiguration:a4];
  if (v10)
  {
    v10[2](v10, v12);
  }

  v13 = [(SBWorkspace *)self _executeTransitionRequest:v12 options:a3 validator:v11];

  return v13;
}

- (id)createRequestWithOptions:(unint64_t)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)createRequestWithOptions:(unint64_t)a3 displayConfiguration:(id)a4
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)transactionForTransitionRequest:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();

  return +[SBIdleTimerBehavior disabledBehavior];
}

- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  v5 = objc_alloc_init(SBDisabledIdleTimer);

  return v5;
}

- (BOOL)_executeTransitionRequest:(id)a3 options:(unint64_t)a4 validator:(id)a5
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (void)initWithEventQueue:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"eventQueue" object:? file:? lineNumber:? description:?];
}

@end