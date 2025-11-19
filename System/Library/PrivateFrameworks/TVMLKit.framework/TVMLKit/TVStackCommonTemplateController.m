@interface TVStackCommonTemplateController
@end

@implementation TVStackCommonTemplateController

void __44___TVStackCommonTemplateController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 _updateViewLayout];

    v6 = objc_loadWeakRetained(&to);
    [v3 setSupplementaryCellSection:{objc_msgSend(v6, "_supplementaryViewSectionIndex")}];

    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 stackWrappingView];
    v9 = [v8 supplementaryCellLayoutAttributes];
    [v3 setSupplementaryCellLayoutAttributes:v9];
  }

  objc_destroyWeak(&to);
}

void __56___TVStackCommonTemplateController_scrollViewDidScroll___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [v5 viewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [v5 viewController];
    [v4 performSelector:sel__cancelImpressionsUpdate];
  }
}

void __97___TVStackCommonTemplateController__updateSupplementaryViewControllersWithElements_updateStyles___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 supplementaryViewControllers];
  v9 = [v7 objectAtIndexedSubscript:a3];

  v8 = [*(a1 + 32) viewControllerWithElement:v6 layout:0 existingController:v9];
}

@end