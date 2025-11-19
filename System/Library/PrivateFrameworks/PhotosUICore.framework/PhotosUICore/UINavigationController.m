@interface UINavigationController
@end

@implementation UINavigationController

uint64_t __79__UINavigationController_PXImageModulationManager__px_imageModulationIntensity__block_invoke()
{
  result = [MEMORY[0x1E69DCCD8] instancesRespondToSelector:sel_px_imageModulationIntensityWithProposedValue_];
  px_imageModulationIntensity_hookExists = result;
  return result;
}

void __100__UINavigationController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 - 2) >= 5)
  {
    if (a2 == 1)
    {
      v7 = *(a1 + 72);
      if ((v7 & 2) != 0)
      {
        v8 = [*(a1 + 32) viewControllers];
        v9 = [v8 indexOfObjectIdenticalTo:*(a1 + 40)];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [v8 subarrayWithRange:{0, v9}];

          v8 = v10;
        }

        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = *(a1 + 80);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __100__UINavigationController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke_2;
        v16[3] = &unk_1E7741EB0;
        v14 = *(a1 + 32);
        v17 = v8;
        v18 = v14;
        v21 = v13;
        v19 = v11;
        v20 = *(a1 + 56);
        v15 = v8;
        [v12 provideViewControllersForDestination:v19 options:v13 completionHandler:v16];
      }

      else
      {
        if ((v7 & 1) == 0)
        {
          PXAssertGetLog();
        }

        [*(a1 + 40) navigateToDestination:*(a1 + 48) options:*(a1 + 80) completionHandler:*(a1 + 56)];
      }
    }

    else if (!a2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UIViewController+PXProgrammaticNavigation.m" lineNumber:347 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __100__UINavigationController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 arrayByAddingObjectsFromArray:v7];
  [*(a1 + 40) setViewControllers:v8 animated:(*(a1 + 64) >> 1) & 1];
  v9 = [v7 lastObject];

  if (([v9 routingOptionsForDestination:*(a1 + 48)] & 3) == 1)
  {
    [v9 navigateToDestination:*(a1 + 48) options:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __133__UINavigationController_PXProgrammaticNavigation___px_prepareNavigationFromViewController_routingOptions_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = [*(a1 + 32) viewControllers];
    if (([v3 containsObject:*(a1 + 40)] & 1) == 0)
    {
      PXAssertGetLog();
    }

    v4 = *(a1 + 40);
    v5 = [v3 lastObject];

    if (v4 != v5)
    {
      if (![*(a1 + 32) px_preparePopToViewController:*(a1 + 40) forced:*(a1 + 64) & 1])
      {
        v10 = 3;
        goto LABEL_13;
      }

      if (*(a1 + 72) == 1)
      {
        v8 = MEMORY[0x1E69DD258];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __133__UINavigationController_PXProgrammaticNavigation___px_prepareNavigationFromViewController_routingOptions_options_completionHandler___block_invoke_81;
        v12[3] = &unk_1E774C620;
        v9 = *(a1 + 40);
        v12[4] = *(a1 + 32);
        v13 = v9;
        [v8 _performWithoutDeferringTransitions:v12];
      }
    }

    v10 = 1;
LABEL_13:
    (*(*(a1 + 48) + 16))(*(a1 + 48), v10, 0, v6, v7);

    return;
  }

  v11 = *(*(a1 + 48) + 16);

  v11();
}

@end