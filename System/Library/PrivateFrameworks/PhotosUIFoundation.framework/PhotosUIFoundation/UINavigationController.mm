@interface UINavigationController
@end

@implementation UINavigationController

uint64_t __83__UINavigationController_PhotosUIFoundation__px_preparePopToViewController_forced___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 32) == v5)
  {
    goto LABEL_5;
  }

  v7 = v5;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 isReadyForDismissal] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_5:
    *a3 = 1;
  }

  return MEMORY[0x1EEE66BE0]();
}

uint64_t __83__UINavigationController_PhotosUIFoundation__px_preparePopToViewController_forced___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 32) == v5)
  {
    *a3 = 1;
  }

  else
  {
    v7 = v5;
    if (objc_opt_respondsToSelector())
    {
      [v7 prepareForDismissal];
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

uint64_t __92__UINavigationController_PhotosUICore_PPT__ppt_installTransitionAnimationCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

@end