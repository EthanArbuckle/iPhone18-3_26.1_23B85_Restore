@interface UISplitViewController
@end

@implementation UISplitViewController

void __99__UISplitViewController_PXProgrammaticNavigation__navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 - 2) < 5)
  {
    v8 = v5;
    (*(*(a1 + 56) + 16))();
LABEL_3:
    v6 = v8;
    goto LABEL_4;
  }

  if (a2 == 1)
  {
    v8 = v5;
    [*(a1 + 40) navigateToDestination:*(a1 + 48) options:*(a1 + 72) completionHandler:*(a1 + 56)];
    goto LABEL_3;
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UIViewController+PXProgrammaticNavigation.m" lineNumber:438 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_4:
}

@end