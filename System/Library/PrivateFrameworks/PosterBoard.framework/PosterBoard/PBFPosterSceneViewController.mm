@interface PBFPosterSceneViewController
@end

@implementation PBFPosterSceneViewController

void __47___PBFPosterSceneViewController_executeScript___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 error];
    [v5 finishWithError:v6];
  }

  else
  {
    v7 = MEMORY[0x277CF0B60];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47___PBFPosterSceneViewController_executeScript___block_invoke_2;
    v14[3] = &unk_2782C85E8;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    objc_copyWeak(&v17, (a1 + 56));
    v8 = [v7 responderWithHandler:v14];
    [v8 setTimeout:{dispatch_time(0, 5000000000)}];
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    [v8 setQueue:v9];

    v11 = [MEMORY[0x277D3EE58] startScriptExecutionActionWithResponder:v8];
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CBEB98] setWithObject:v11];
    [v12 sendActions:v13];

    objc_destroyWeak(&v17);
  }
}

void __47___PBFPosterSceneViewController_executeScript___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = a1[4];
    v6 = [v3 error];
    [v5 finishWithError:v6];
  }

  else
  {
    [a1[5] runningTime];
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47___PBFPosterSceneViewController_executeScript___block_invoke_3;
    v9[3] = &unk_2782C85C0;
    v10 = a1[4];
    objc_copyWeak(&v11, a1 + 6);
    dispatch_after(v8, MEMORY[0x277D85CD0], v9);
    objc_destroyWeak(&v11);
  }
}

void __47___PBFPosterSceneViewController_executeScript___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB68] null];
  [v2 finishWithResult:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _scriptFinishedExecuting];
}

@end