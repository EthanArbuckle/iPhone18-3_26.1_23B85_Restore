@interface SBStartupTransitionToHome
- (void)performTransitionWithCompletionBlock:(id)a3;
@end

@implementation SBStartupTransitionToHome

- (void)performTransitionWithCompletionBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBStartupTransitionToHome *)a2 performTransitionWithCompletionBlock:?];
  }

  v6 = [(SBBaseStartupTransition *)self mainWorkspace];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SBStartupTransitionToHome_performTransitionWithCompletionBlock___block_invoke;
  v8[3] = &unk_2783AB410;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 requestTransitionWithOptions:0 builder:v8 validator:&__block_literal_global_16_0];
}

void __66__SBStartupTransitionToHome_performTransitionWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:31];
  [v3 modifyApplicationContext:&__block_literal_global_206];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SBStartupTransitionToHome_performTransitionWithCompletionBlock___block_invoke_3;
  v5[3] = &unk_2783B8D68;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 setTransactionConfigurator:v5];
}

void __66__SBStartupTransitionToHome_performTransitionWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v2 setEntity:v3 forLayoutRole:1];

  v4 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v2 setEntity:v4 forLayoutRole:2];
}

void __66__SBStartupTransitionToHome_performTransitionWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SBUIStartupToHomescreenAnimationController alloc];
  v5 = [v3 transitionRequest];
  v6 = [*(a1 + 32) context];
  v7 = [v6 overlay];
  v8 = [(SBUIStartupToHomescreenAnimationController *)v4 initWithTransitionContextProvider:v5 overlay:v7];

  [v3 setSuggestedAnimationController:v8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBStartupTransitionToHome_performTransitionWithCompletionBlock___block_invoke_4;
  v9[3] = &unk_2783A9C70;
  v10 = *(a1 + 40);
  [v3 setCompletionBlock:v9];
}

- (void)performTransitionWithCompletionBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStartupTransitionToHome.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
}

@end