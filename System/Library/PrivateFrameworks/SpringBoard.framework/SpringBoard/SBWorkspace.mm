@interface SBWorkspace
- (BOOL)_executeTransitionRequest:(id)request options:(unint64_t)options validator:(id)validator;
- (BOOL)requestTransitionWithOptions:(unint64_t)options builder:(id)builder validator:(id)validator;
- (BOOL)requestTransitionWithOptions:(unint64_t)options displayConfiguration:(id)configuration builder:(id)builder validator:(id)validator;
- (SBWorkspace)initWithEventQueue:(id)queue;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)createRequestForApplicationActivation:(id)activation withDisplayConfiguration:(id)configuration options:(unint64_t)options;
- (id)createRequestWithOptions:(unint64_t)options;
- (id)createRequestWithOptions:(unint64_t)options displayConfiguration:(id)configuration;
- (id)idleTimerProvider:(id)provider didProposeBehavior:(id)behavior forReason:(id)reason;
- (id)transactionForTransitionRequest:(id)request;
@end

@implementation SBWorkspace

- (SBWorkspace)initWithEventQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    [SBWorkspace initWithEventQueue:];
  }

  v9.receiver = self;
  v9.super_class = SBWorkspace;
  v6 = [(SBWorkspace *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventQueue, queue);
  }

  return v7;
}

- (id)createRequestForApplicationActivation:(id)activation withDisplayConfiguration:(id)configuration options:(unint64_t)options
{
  activationCopy = activation;
  v9 = [(SBWorkspace *)self createRequestWithOptions:options displayConfiguration:configuration];
  uniqueIdentifier = [activationCopy uniqueIdentifier];
  [v9 setEventLabelWithFormat:@"ActivateApplicationScene = %@", uniqueIdentifier];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__SBWorkspace_createRequestForApplicationActivation_withDisplayConfiguration_options___block_invoke;
  v13[3] = &unk_2783A98C8;
  v14 = activationCopy;
  v11 = activationCopy;
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

- (BOOL)requestTransitionWithOptions:(unint64_t)options builder:(id)builder validator:(id)validator
{
  builderCopy = builder;
  validatorCopy = validator;
  v10 = [(SBWorkspace *)self createRequestWithOptions:options];
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v10);
  }

  v11 = [(SBWorkspace *)self _executeTransitionRequest:v10 options:options validator:validatorCopy];

  return v11;
}

- (BOOL)requestTransitionWithOptions:(unint64_t)options displayConfiguration:(id)configuration builder:(id)builder validator:(id)validator
{
  builderCopy = builder;
  validatorCopy = validator;
  v12 = [(SBWorkspace *)self createRequestWithOptions:options displayConfiguration:configuration];
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v12);
  }

  v13 = [(SBWorkspace *)self _executeTransitionRequest:v12 options:options validator:validatorCopy];

  return v13;
}

- (id)createRequestWithOptions:(unint64_t)options
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)createRequestWithOptions:(unint64_t)options displayConfiguration:(id)configuration
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)transactionForTransitionRequest:(id)request
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();

  return +[SBIdleTimerBehavior disabledBehavior];
}

- (id)idleTimerProvider:(id)provider didProposeBehavior:(id)behavior forReason:(id)reason
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  v5 = objc_alloc_init(SBDisabledIdleTimer);

  return v5;
}

- (BOOL)_executeTransitionRequest:(id)request options:(unint64_t)options validator:(id)validator
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