@interface UITabBarController
@end

@implementation UITabBarController

void __67__UITabBarController_PXPPTSupport___switchToBar_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 installCACommitCompletionBlock:*(a1 + 32)];
}

uint64_t __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] count];
  a1[5];
  a1[6];
  v4 = a1[4];
  v5 = v3;
  PXIterateAsynchronously();
}

void __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_9;
  v4[3] = &unk_1E774A0E0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 _switchToBar:v3 completionHandler:v4];
}

uint64_t __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) finishedTest:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 index];
  if (v4)
  {
    [*(a1 + 32) startedSubTest:@"SwitchTab" forTest:*(a1 + 40)];
  }

  v5 = v4 != 0;
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) objectAtIndexedSubscript:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_5;
  v9[3] = &unk_1E77443F0;
  v13 = v5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v8 = v3;
  [v6 _switchToBar:v7 completionHandler:v9];
}

void __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) finishedSubTest:@"SwitchTab" forTest:*(a1 + 40)];
  }

  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__UITabBarController_PXPPTSupport__ppt_runTabSwitchingTestWithName_options_delegate_completionHandler___block_invoke_6;
  block[3] = &unk_1E774C648;
  v4 = *(a1 + 48);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __96__UITabBarController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 - 2) < 5)
  {
    v8 = v5;
    (*(*(a1 + 48) + 16))();
LABEL_3:
    v6 = v8;
    goto LABEL_4;
  }

  if (a2 == 1)
  {
    v8 = v5;
    [*(a1 + 32) px_switchToTabAndNavigateToDestination:*(a1 + 40) options:*(a1 + 64) completionHandler:*(a1 + 48)];
    goto LABEL_3;
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UIViewController+PXProgrammaticNavigation.m" lineNumber:231 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_4:
}

void __129__UITabBarController_PXProgrammaticNavigation___px_prepareNavigationFromViewController_routingOptions_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = [*(a1 + 32) selectedViewController];
    v4 = v3;
    v5 = *(a1 + 40);
    if (v5 != *(a1 + 32) && v5 != v3)
    {
      PXAssertGetLog();
    }

    if (!v3 || *(a1 + 40) == v3)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v7 = *(a1 + 64);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __129__UITabBarController_PXProgrammaticNavigation___px_prepareNavigationFromViewController_routingOptions_options_completionHandler___block_invoke_76;
      v11[3] = &unk_1E7741E60;
      v11[4] = *(a1 + 32);
      v10 = *(a1 + 48);
      v8 = v10;
      v12 = v10;
      [v4 px_navigateToStateAllowingTabSwitchingWithOptions:v7 completionHandler:v11];
    }
  }

  else
  {
    v9 = *(*(a1 + 48) + 16);

    v9();
  }
}

void __129__UITabBarController_PXProgrammaticNavigation___px_prepareNavigationFromViewController_routingOptions_options_completionHandler___block_invoke_76(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 - 2) < 5)
  {
    v6 = *(a1[5] + 16);
    v8 = v5;
LABEL_3:
    v6();
    v5 = v8;
    goto LABEL_4;
  }

  if (a2 == 1)
  {
    v6 = *(a1[5] + 16);
    v8 = v5;
    goto LABEL_3;
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a1[6] object:a1[4] file:@"UIViewController+PXProgrammaticNavigation.m" lineNumber:197 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_4:
}

@end